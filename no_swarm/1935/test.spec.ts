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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device10.destroy();
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array0 = new Float32Array([0.5, 0.5, -1.0, -1.0, 0.25, 1.0, -0.5, -0.5, 0.0, -0.5, -1.0, 0.5, -0.5, 0.25, -0.25, 1.0, 0.0, 1.0, -0.5, -0.25, 0.0, -0.25, -0.75, 1.0, 0.25, -1.0, 1.0, -0.75, 1.0, 0.0, -0.25, 0.0, 0.75, -0.75, -0.5, 0.5, -1.0, -0.25, 0.0, -0.5, 0.75, -1.0, -1.0, -0.5, 0.25, 0.75, 0.5, -1.0, 0.0, -1.0, 0.0, -0.75, 0.25, 0.25, -1.0, -1.0, -0.25, -0.25, 0.25, 0.5, -0.75, 0.25, 0.0, -0.5, 0.75, -0.25, -1.0, 0.5, -0.25, 1.0, 0.75, 0.25, -0.25, 0.75, -0.75, 0.25, -0.5, -1.0, -0.75, 0.5, -1.0, -0.5, 0.75, -1.0, 0.5, 1.0, -0.75, 1.0, -0.5, -0.5, 0.25, -0.5, -0.5, -0.5, -0.5, -0.25, -0.5, 0.0, -0.75, 0.5, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.destroy();
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    device40.destroy();
    
    
    const array1 = new Float32Array([-0.75, 0.75, 0.75, -0.75, 0.5, -0.75, 0.75, 0.0, -1.0, 0.5, 0.75, 0.5, -0.75, -0.75, 0.75, -1.0, 1.0, 0.5, 0.25, 1.0, -0.5, 0.0, -0.25, 0.5, 0.5, -1.0, 0.75, 0.75, -0.25, -0.5, 0.0, 0.0, -0.5, 0.5, 0.5, -0.25, 0.75, -0.75, 0.75, -0.25, 0.25, 0.5, 0.75, 0.5, -0.5, 0.25, -0.25, 0.75, -0.5, 0.75, 0.0, 0.25, 0.0, 1.0, -0.25, 1.0, 0.75, -0.5, -0.75, 0.0, 0.5, 0.25, 0.25, 0.0, 0.75, 0.75, -0.5, 0.25, 0.25, 0.75, 1.0, 0.25, 0.25, 0.25, -0.25, -0.75, -0.25, -0.5, -0.5, 0.75, 0.0, 0.75, 0.75, -1.0, -0.25, -1.0, 0.75, 0.25, -0.5, -0.75, -0.75, 1.0, -0.25, 0.0, 0.5, -1.0, -1.0, -1.0, 0.5, 0.75, ]);
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([0.75, 0.25, 0.25, -1.0, 1.0, -0.5, 0.25, 0.5, 1.0, 0.25, 0.75, -0.25, 0.5, 0.25, 0.0, -0.5, 1.0, 0.5, 0.5, -0.75, 0.75, 0.0, 0.25, 1.0, -0.25, 0.0, 0.0, 0.75, -0.25, -0.75, -0.75, -0.25, 0.25, -0.75, -0.5, -0.25, 0.75, 0.75, -0.5, -0.5, -0.5, 0.75, -1.0, 1.0, 0.75, -0.5, -0.25, 0.25, 0.25, 0.25, 0.25, -0.75, -0.5, -0.75, -1.0, -0.25, 0.75, -0.5, 0.25, 0.0, 1.0, 0.5, 0.5, 0.0, -0.75, 0.0, -1.0, 0.25, 0.5, -1.0, 0.75, 0.5, 0.0, -1.0, -1.0, 0.75, -0.5, -0.75, 0.0, -0.25, -1.0, 0.5, 1.0, 0.0, -0.25, 0.25, 1.0, -0.5, -0.25, 0.0, 0.75, 0.5, -0.25, -0.75, -0.5, 0.75, -1.0, 0.25, 0.75, -0.25, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device10.destroy();
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
    device20.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device50.destroy();
    
    
    render_bundle_encoder001.popDebugGroup();
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    texture300.destroy();
    device60.destroy();
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
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
    query300.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    device30.pushErrorScope("validation");
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const array3 = new Float32Array([0.75, 0.5, 0.0, -1.0, 0.0, 0.5, 1.0, -1.0, 0.0, 0.5, 0.75, 0.25, 0.75, -1.0, -0.25, 0.0, -0.25, 1.0, 0.75, 0.0, -0.25, 0.25, -0.75, 0.5, 0.0, 0.25, 0.75, -1.0, 0.75, 1.0, -0.25, 0.0, 0.75, -0.75, -0.5, 1.0, -1.0, -0.5, 0.0, -0.75, -0.5, 0.0, 0.75, 0.0, -0.25, -1.0, -0.75, 0.25, 1.0, 1.0, 0.25, 0.5, 0.75, -0.5, 0.5, 0.5, -0.75, -0.25, 0.0, -0.25, 0.0, -0.75, 1.0, -0.75, 1.0, 0.75, -0.5, 0.5, 0.0, 0.25, 0.25, -1.0, -0.75, 0.75, -1.0, -1.0, 1.0, -1.0, 1.0, 1.0, -0.75, -0.75, -1.0, -0.5, -0.5, 1.0, -0.5, 0.0, 0.25, 0.0, 0.5, -0.25, 0.75, -0.5, -0.5, -0.25, -0.5, 0.75, 0.5, 0.75, ]);
    buffer300.destroy()
    render_bundle_encoder300.setPipeline(render_pipeline300);
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    query300.destroy()
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const array4 = new Float32Array([1.0, -0.25, -1.0, 1.0, 0.75, 0.25, 0.25, -0.75, -1.0, 0.75, -0.5, -1.0, 0.25, 0.75, 1.0, -0.75, 0.25, 1.0, 1.0, 0.75, 1.0, 0.75, -0.75, -0.25, -0.75, 1.0, -0.75, 0.0, 0.0, -0.5, 0.0, -0.25, 1.0, 0.75, 0.5, -0.25, 0.5, 0.5, -0.75, -1.0, 0.25, -1.0, 1.0, 0.0, 0.25, -0.5, -0.5, -0.25, -0.5, 0.5, 0.0, 0.75, -0.25, 0.25, -1.0, 1.0, -0.5, 0.25, 0.5, -1.0, 0.0, 0.25, 1.0, -0.5, -0.5, 0.25, 0.25, 0.75, 1.0, -1.0, -1.0, -1.0, 0.0, -0.25, -0.25, -0.25, 1.0, -1.0, 0.25, 0.0, -0.75, -0.25, 0.5, 1.0, -1.0, 0.0, -1.0, 0.75, 0.75, -0.5, 0.25, -1.0, 0.75, -0.25, -1.0, -0.25, -0.25, 0.25, 0.0, -1.0, ]);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder001.popDebugGroup();
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    command_encoder301.insertDebugMarker("mymarker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const command_buffer303 = command_encoder303.finish();
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    
    command_encoder301.clearBuffer(buffer301);
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    
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
    query300.destroy()
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    texture300.destroy();
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    device30.queue.submit([command_buffer303, ]);
    device60.destroy();
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    device00.pushErrorScope("internal");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder300.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    
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
    buffer303.destroy()
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    query300.destroy()
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    command_encoder301.popDebugGroup()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
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
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    command_encoder305.pushDebugGroup("mygroupmarker")
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder301.pushDebugGroup("mygroupmarker")
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    
    
    compute_pass_encoder3020.setPipeline(compute_pipeline301);
    buffer301.destroy()
    const command_buffer304 = command_encoder304.finish();
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    command_encoder305.clearBuffer(buffer303);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    command_encoder300.insertDebugMarker("mymarker");
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder305.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    
    
    render_bundle_encoder300.popDebugGroup();
    device10.destroy();
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    buffer303.destroy()
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder3010.setPipeline(compute_pipeline302);
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer305, 0, array4, 0, array4.length);
    command_encoder305.clearBuffer(buffer305);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    
    
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    command_encoder300.popDebugGroup()
    
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group301);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
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
    
    command_encoder301.popDebugGroup()
    
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    
    
    compute_pass_encoder3000.popDebugGroup()
    command_encoder305.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    command_encoder600.insertDebugMarker("mymarker");
    
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    buffer306.destroy()
    const command_buffer800 = command_encoder800.finish();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    command_encoder305.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const array5 = new Float32Array([-0.25, 1.0, -0.5, 0.75, 1.0, -0.25, 0.25, 0.0, 0.0, -0.75, 0.25, -0.25, 0.25, -0.75, 0.5, -0.25, -0.75, 0.75, 0.25, -0.75, 1.0, 0.75, 1.0, 0.25, -0.75, -0.25, 0.5, 0.0, 0.0, -0.25, -0.5, 0.25, 0.25, 1.0, 0.75, 0.0, -0.75, -1.0, 0.25, 1.0, -0.25, -0.5, 0.0, -1.0, -0.75, 0.25, 0.25, 1.0, -0.5, -0.75, -0.75, -1.0, 1.0, 0.0, 0.0, -0.5, 0.0, -0.75, 0.25, 1.0, 0.0, 0.25, 0.25, 1.0, -0.5, 0.5, -0.5, 0.5, -0.75, -0.75, -0.75, -0.75, 1.0, 1.0, 0.75, 0.0, -0.5, 0.5, -0.5, 1.0, -0.25, -0.5, -0.5, 0.75, 0.75, -0.25, -0.75, -0.25, -1.0, -1.0, -0.25, 0.25, -1.0, 0.0, -0.75, 0.5, 0.0, 0.5, -0.75, 1.0, ]);
    
    command_encoder302.clearBuffer(buffer301);
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pass_encoder3011 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3011" });
    
    
    
    device30.queue.writeBuffer(buffer306, 0, array2, 0, array2.length);
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("validation");
    command_encoder302.copyBufferToTexture(
        {
            buffer: buffer306
        },
        {
            texture: texture300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    buffer305.destroy()
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder305.insertDebugMarker("mymarker");
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    device70.destroy();
    compute_pass_encoder3011.setPipeline(compute_pipeline306);
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    texture800.destroy();
    device10.pushErrorScope("internal");
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
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
    compute_pass_encoder3050.setPipeline(compute_pipeline300);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    query800.destroy()
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    const command_buffer306 = command_encoder306.finish();
    compute_pass_encoder3020.dispatchWorkgroups(100);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3050.insertDebugMarker("marker")
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    compute_pass_encoder3010.popDebugGroup()
    texture800.destroy();
    
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout302,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    query800.destroy()
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    command_encoder801.resolveQuerySet(
        query800,
        0,
        32,
        buffer800,
        0
    )
    
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    command_encoder301.insertDebugMarker("mymarker");
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3050.insertDebugMarker("marker")
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout304]
    });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder302.setPipeline(render_pipeline301);
    const compute_pass_encoder3070 = command_encoder307.beginComputePass({ label: "compute_pass_encoder3070" });
    
    
    
    device30.queue.writeBuffer(buffer304, 0, array4, 0, array4.length);
    buffer801.destroy()
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder3070.setPipeline(compute_pipeline3014);
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module308,
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
            module: shader_module308,
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
    command_encoder801.insertDebugMarker("mymarker");
    
    command_encoder302.copyBufferToBuffer(
        buffer305,
        0,
        buffer305,
        0,
        400
    );
    const compute_pass_encoder8020 = command_encoder802.beginComputePass({ label: "compute_pass_encoder8020" });
    command_encoder801.resolveQuerySet(
        query800,
        0,
        32,
        buffer800,
        0
    )
    
    buffer307.destroy()
    
    
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout303,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    device80.queue.submit([command_buffer800, ]);
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout302,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout303,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    command_encoder801.resolveQuerySet(
        query801,
        0,
        32,
        buffer800,
        0
    )
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    command_encoder301.insertDebugMarker("mymarker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout304,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    command_encoder801.resolveQuerySet(
        query801,
        0,
        32,
        buffer800,
        0
    )
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group302);
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout300,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout305,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module3010,
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
            module: shader_module3010,
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
    
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.setVertexBuffer(0, buffer307);
    
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    
    device30.pushErrorScope("out-of-memory");
    
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout305,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    render_pass_encoder3050.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer309, 0, array0, 0, array0.length);
    command_encoder801.pushDebugGroup("mygroupmarker")
    
    
    const array6 = new Float32Array([-1.0, -0.25, 0.5, -0.25, -0.5, -0.5, 0.25, -0.75, -0.25, -1.0, 0.25, -0.75, -0.5, -1.0, -0.25, 0.75, -1.0, 0.0, 0.25, 1.0, -0.75, 0.25, -0.5, 0.5, -0.25, -1.0, 1.0, 0.25, -0.25, 1.0, 0.5, 0.0, -1.0, 0.5, 0.25, -0.75, -0.25, -1.0, -1.0, 0.5, 0.25, 0.25, 0.75, 0.5, 0.25, 0.75, 0.25, -1.0, 0.5, 0.75, 0.0, 0.0, 0.0, -0.25, 1.0, 0.5, -1.0, 0.75, -0.5, 0.0, -1.0, 0.0, 0.5, 1.0, 0.0, 1.0, -0.75, -0.75, -0.75, 0.75, 0.75, -1.0, -0.5, -0.25, 0.25, -0.75, -0.75, 0.75, 0.5, 0.0, -0.5, -0.75, -0.75, 0.25, 0.0, -0.5, -0.75, 0.5, 1.0, -0.75, 0.75, 0.5, -0.5, -0.75, -0.75, 0.75, 0.5, -0.75, -1.0, 0.5, ]);
    var shader_module3011_code = "";
    try {
        shader_module3011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3011 = await device30.createShaderModule({ label: "shader_module3011", code: shader_module3011_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder803.resolveQuerySet(
        query800,
        0,
        32,
        buffer800,
        0
    )
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    
    compute_pass_encoder3070.pushDebugGroup("group_marker")
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    
    query300.destroy()
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer303,
        0
    )
    render_pass_encoder3000.setStencilReference(1);
    
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    command_encoder801.resolveQuerySet(
        query801,
        0,
        32,
        buffer800,
        0
    )
    compute_pass_encoder3000.popDebugGroup()
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder3000.setPipeline(render_pipeline300);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout304,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const array7 = new Float32Array([-0.75, 0.0, -0.75, -0.75, 1.0, 0.5, -0.75, 0.75, -0.5, 0.75, 1.0, -0.75, -0.5, 0.25, -0.5, -0.5, 1.0, -0.5, -0.75, 0.75, 1.0, 0.25, 1.0, -1.0, 0.5, 0.0, -0.25, 0.5, 0.25, 1.0, 0.5, 0.0, 1.0, -1.0, 0.0, -1.0, -0.25, 0.5, -0.25, -1.0, -0.5, -0.5, -0.75, 0.25, -0.25, 0.0, -0.5, 0.5, 0.5, -1.0, -0.25, 1.0, 0.25, 0.75, 1.0, -0.5, -0.75, 0.5, 1.0, -0.75, 0.5, 0.5, -0.5, -0.75, 1.0, -1.0, 0.75, 1.0, -0.75, 0.5, 0.25, 0.5, -0.75, 0.5, -0.75, 0.5, -0.75, 1.0, 1.0, 0.25, -0.5, 0.0, 0.25, 1.0, 0.25, -0.5, 0.5, 0.5, -0.25, 1.0, 0.5, 0.25, 0.0, -0.25, 1.0, 1.0, -1.0, 0.0, -0.75, 0.0, ]);
    command_encoder803.insertDebugMarker("mymarker");
    query300.destroy()
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3050.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_bundle_encoder301.setIndexBuffer(buffer300, "uint16");
    render_bundle_encoder800.pushDebugGroup("group_marker");
    render_pass_encoder3000.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    device30.queue.writeBuffer(buffer3010, 0, array0, 0, array0.length);
    
    device30.queue.writeBuffer(buffer304, 0, array4, 0, array4.length);
    render_pass_encoder3050.insertDebugMarker("marker");
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout303,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_pass_encoder3050.setPipeline(render_pipeline306);
    
    command_encoder301.copyBufferToBuffer(
        buffer308,
        0,
        buffer306,
        0,
        400
    );
    render_pass_encoder3000.pushDebugGroup("group_marker");
    var shader_module3012_code = "";
    try {
        shader_module3012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3012 = await device30.createShaderModule({ label: "shader_module3012", code: shader_module3012_code })
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder3070.popDebugGroup()
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline3014.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    compute_pass_encoder3070.setBindGroup(0, bind_group303);
    const uint32_3070 = new Uint32Array(3);

    uint32_3070[0] = 100;
    uint32_3070[1] = 1;
    uint32_3070[2] = 1;

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3013, 0, uint32_3070, 0, uint32_3070.length);

    compute_pass_encoder3070.dispatchWorkgroupsIndirect(buffer3013, 0);
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline306.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    compute_pass_encoder3011.setBindGroup(0, bind_group304);
    render_pass_encoder3000.popDebugGroup();
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group305);
    compute_pass_encoder3011.dispatchWorkgroups(100);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group306);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder3050.dispatchWorkgroups(100);
    const command_buffer803 = command_encoder803.finish();
    compute_pass_encoder3011.end();
    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3021,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group307);
    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3023,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group308);
    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3025,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group309);
    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: render_pipeline306.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3027,
                },
            },
        ],
    });

    render_pass_encoder3050.setBindGroup(0, bind_group3010);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder3050.setVertexBuffer(0, buffer3010);
    render_pass_encoder3050.drawIndirect(buffer304, 0);
    render_pass_encoder3050.end();
    render_pass_encoder3000.setVertexBuffer(0, buffer301);
    render_pass_encoder3000.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer3024, "uint16");
    command_encoder801.popDebugGroup()
    render_pass_encoder3000.drawIndexedIndirect(buffer309, 0);
    const command_buffer801 = command_encoder801.finish();
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3050.popDebugGroup()
    device80.queue.submit([command_buffer801, ]);
    compute_pass_encoder3050.end();
    compute_pass_encoder3010.end();
    render_pass_encoder3000.end();
    render_pass_encoder3000.drawIndirect(buffer3020, 0);
    render_pass_encoder3000.drawIndirect(buffer3013, 0);
    compute_pass_encoder3020.end();
    render_pass_encoder3050.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3050.drawIndexed(3);
    compute_pass_encoder3070.end();
    command_encoder302.popDebugGroup()
    compute_pass_encoder3070.dispatchWorkgroups(100);
    const command_buffer301 = command_encoder301.finish();
    command_encoder305.popDebugGroup()
    const command_buffer307 = command_encoder307.finish();
    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline3014.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3029,
                },
            },
        ],
    });

    compute_pass_encoder3070.setBindGroup(0, bind_group3011);
    const command_buffer305 = command_encoder305.finish();
    compute_pass_encoder3050.popDebugGroup()
    device80.queue.submit([]);
    device30.queue.submit([command_buffer304, command_buffer306, ]);
    render_pass_encoder3050.setIndexBuffer(buffer302, "uint16");
    const command_buffer600 = command_encoder600.finish();
    device30.queue.submit([command_buffer301, command_buffer305, ]);
    render_pass_encoder3050.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3050.end();
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder3000.popDebugGroup()
    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3031,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3012);
    compute_pass_encoder3000.end();
    compute_pass_encoder3020.end();
    compute_pass_encoder3010.end();
    device30.queue.submit([command_buffer307, ]);
    render_pass_encoder3000.setIndexBuffer(buffer3012, "uint16");
    const uint32_3011 = new Uint32Array(3);

    uint32_3011[0] = 100;
    uint32_3011[1] = 1;
    uint32_3011[2] = 1;

    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3032, 0, uint32_3011, 0, uint32_3011.length);

    compute_pass_encoder3011.dispatchWorkgroupsIndirect(buffer3032, 0);
    render_pass_encoder3000.drawIndexed(3);
    const command_buffer300 = command_encoder300.finish();
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3033, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3033, 0);
    render_pass_encoder3050.drawIndexedIndirect(buffer305, 0);
    compute_pass_encoder8020.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder3020.end();
    render_pass_encoder3050.end();
    render_pass_encoder3000.drawIndirect(buffer3026, 0);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3034, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3034, 0);
    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3036,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3013);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3000.drawIndexed(3);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3050.drawIndexedIndirect(buffer3013, 0);
    device80.queue.submit([command_buffer800, command_buffer801, ]);
    device80.queue.submit([command_buffer803, ]);
    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3038,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3014);
    render_pass_encoder3050.drawIndirect(buffer304, 0);
    compute_pass_encoder3050.end();
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder3050.popDebugGroup()
    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3015 = device30.createBindGroup({
        label: "bind_group3015",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3040,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3015);
    render_pass_encoder3000.drawIndirect(buffer3030, 0);
    compute_pass_encoder3000.popDebugGroup()
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3041, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3041, 0);
    const command_buffer802 = command_encoder802.finish();
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder3010.end();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3050.draw(3);
    const buffer3042 = device30.createBuffer({
        label: "buffer3042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3043 = device30.createBuffer({
        label: "buffer3043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3016 = device30.createBindGroup({
        label: "bind_group3016",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3043,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3016);
}