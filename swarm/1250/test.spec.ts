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
    const array0 = new Float32Array([0.75, -0.25, 0.25, 1.0, -0.5, -0.5, 1.0, -0.5, -1.0, -1.0, 1.0, 0.5, 0.75, -1.0, -1.0, 0.0, 1.0, -1.0, -0.25, -0.5, 0.0, 0.75, 0.0, 0.75, 0.0, 1.0, -0.5, -1.0, 0.0, -0.25, 0.75, 0.5, -0.75, -1.0, -0.5, 0.25, -0.25, 0.75, -0.5, 0.75, 0.25, -0.25, 1.0, 1.0, 0.75, -0.5, 0.25, 0.75, 0.25, -0.75, -0.25, 0.25, 0.5, -0.5, -0.75, 0.0, 0.0, 0.0, -0.75, -1.0, -0.5, 0.5, 0.5, -0.75, -0.5, 0.25, -0.25, 0.25, 0.25, 0.0, 0.0, 0.25, 0.25, -0.75, 1.0, -1.0, 1.0, 0.75, -0.5, 0.0, 0.75, 0.5, 0.25, -0.5, 1.0, -0.75, -0.25, 0.75, 0.0, 0.0, 0.25, -0.25, -0.75, -0.75, 0.75, 0.5, 1.0, 0.0, -0.75, 1.0, ]);
    const array1 = new Float32Array([1.0, 1.0, 0.25, -0.75, -0.5, 0.25, 0.25, 0.5, 0.75, 0.0, -1.0, 0.5, -0.5, 0.5, -0.25, -1.0, -0.5, 0.5, -0.75, -0.5, 0.75, 0.75, 0.5, 1.0, -0.75, 0.75, 0.0, -0.5, 0.25, 0.25, 0.5, -0.25, 0.75, 0.5, -1.0, 0.5, -0.5, 1.0, -0.5, 0.5, 0.5, -0.75, 0.25, -0.25, 0.5, -1.0, -0.25, 0.5, -1.0, -1.0, 0.0, 0.25, 0.0, 0.75, 0.25, 0.5, -0.75, 0.0, -0.25, -0.75, -0.5, -0.25, -1.0, 0.5, 1.0, 1.0, -0.25, -0.25, -1.0, 0.5, 0.5, 0.75, 0.0, 0.75, -0.25, 0.0, -1.0, -0.5, 0.0, 1.0, -1.0, -1.0, -0.5, -0.5, -0.25, -0.25, -0.25, -0.75, 1.0, -0.75, 1.0, -0.5, -0.25, -0.25, 1.0, -0.75, 0.75, 0.25, -0.5, 0.5, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([0.0, 1.0, 1.0, 0.25, 1.0, -0.25, 1.0, 0.5, 0.5, 0.5, -0.25, 0.75, -0.75, 0.25, 1.0, -0.75, -0.5, 0.75, -1.0, 1.0, -0.75, 0.75, -0.75, -1.0, -0.5, 0.5, 0.5, 0.25, -1.0, -0.5, 1.0, 0.5, -0.25, 0.25, -1.0, 0.5, -1.0, 0.75, 0.5, 0.0, -0.25, 0.0, 0.25, 0.75, 0.0, -0.75, 1.0, -0.5, 0.75, -0.75, -0.25, 0.5, 0.5, -0.25, 0.75, -0.5, 0.5, -0.75, 1.0, 0.75, -0.5, -0.5, 1.0, 0.75, -1.0, -0.25, 0.5, 1.0, 0.75, -0.25, -1.0, -0.25, 0.0, 0.5, -0.25, -0.5, -0.25, -0.75, 0.25, -0.25, -0.75, -1.0, 0.5, -0.75, 0.5, 0.5, -0.25, 0.5, -0.75, -0.5, 0.5, -0.5, -0.5, -0.5, -1.0, -0.75, 0.25, -1.0, -0.25, 0.25, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([-0.75, -0.25, 0.75, 0.0, 0.0, 1.0, -0.25, 1.0, -1.0, 0.75, 0.25, 1.0, -0.75, 0.75, 1.0, 0.5, 0.75, -0.5, -0.25, 0.5, 0.75, -1.0, 0.5, -0.25, -0.25, -0.5, 0.5, 0.25, -0.25, 0.0, 0.0, 1.0, 0.75, 0.75, 1.0, 0.75, 0.0, -0.25, 0.75, 0.0, 0.75, -1.0, -1.0, 0.75, 0.0, -0.5, 0.75, 1.0, -1.0, -1.0, -0.25, -1.0, 0.75, -0.5, -0.25, 0.5, -0.75, -0.75, -0.75, 0.5, 0.0, -0.5, -0.75, -0.75, -0.75, -1.0, 0.5, 0.5, 0.0, 0.75, -0.75, -0.5, -0.5, 0.0, -0.25, -0.25, 0.25, 0.0, -0.75, 0.0, 0.75, -0.25, 1.0, -0.5, -0.25, 0.5, 0.0, 0.5, -0.5, 0.75, 1.0, 0.5, -0.75, 0.0, 1.0, 1.0, -0.75, -0.5, 0.0, 0.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    device00.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    
    
    const array4 = new Float32Array([1.0, 0.25, 1.0, 0.5, 0.25, 0.0, 0.25, -1.0, -0.75, 0.75, 0.5, 0.75, -0.5, -0.25, -0.5, 0.0, 0.75, 1.0, 0.75, 0.5, 0.0, -0.25, -0.25, -0.25, -1.0, -0.5, 0.5, 0.75, 0.0, -0.25, 0.5, -1.0, -0.75, -1.0, 0.5, 0.5, -0.25, 0.25, -1.0, -0.75, 0.75, 1.0, 0.5, 0.25, -0.5, -0.25, 1.0, -0.75, -0.25, -1.0, 1.0, 1.0, 0.5, -0.75, 0.0, 0.5, -1.0, 0.25, 0.75, 0.5, 0.25, -0.75, 0.5, 0.5, -1.0, 0.25, 1.0, -0.5, -0.75, 0.5, 0.0, 0.5, 1.0, -1.0, 0.0, 0.5, -0.25, -0.75, 0.5, 0.5, -0.5, 0.5, 0.25, -1.0, -0.75, -0.25, -0.25, 0.75, -1.0, 0.0, 0.25, -0.5, -1.0, -1.0, -0.25, -1.0, 1.0, 0.0, 0.25, -1.0, ]);
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    query201.destroy()
    
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const command_buffer200 = command_encoder200.finish();
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
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
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    query200.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
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
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device20.queue.submit([command_buffer200, ]);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    query201.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    command_encoder100.popDebugGroup()
    
    query100.destroy()
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.pushErrorScope("internal");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    command_encoder101.clearBuffer(buffer100);
    command_encoder100.pushDebugGroup("mygroupmarker")
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
    
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    device20.queue.submit([command_buffer200, ]);
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
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    const command_buffer101 = command_encoder101.finish();
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.pushErrorScope("validation");
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
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    command_encoder102.insertDebugMarker("mymarker");
    
    const command_buffer102 = command_encoder102.finish();
    
    command_encoder100.popDebugGroup()
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    query300.destroy()
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    command_encoder100.insertDebugMarker("mymarker");
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    texture201.destroy();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.submit([]);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    render_bundle_encoder300.setPipeline(render_pipeline302);
    query201.destroy()
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
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
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
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
    query301.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query203
    });
    render_pass_encoder2010.executeBundles([])
    query302.destroy()
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    
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
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2011.setPipeline(render_pipeline200);
    device20.pushErrorScope("validation");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("out-of-memory");
    command_encoder100.pushDebugGroup("mygroupmarker")
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query202
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
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
        occlusionQuerySet: query202
    });
    
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2021.executeBundles([])
    render_pass_encoder2021.beginOcclusionQuery(0)
    const array5 = new Float32Array([-0.75, 0.0, 1.0, 0.25, -1.0, -0.25, -0.5, 0.0, -0.75, 0.25, 1.0, 0.5, -1.0, 1.0, -0.25, 0.5, -0.25, -0.75, 0.25, 0.5, 0.25, -0.75, 0.5, -0.5, -0.25, 0.5, -1.0, -0.75, 0.0, -0.5, -0.75, 0.75, -0.75, -0.75, 1.0, 1.0, -1.0, 1.0, 0.75, 0.5, 0.25, 0.5, -0.25, -0.25, -1.0, 0.75, -0.25, -0.5, 0.75, 0.25, 1.0, -0.25, 0.0, -0.5, 0.5, -0.25, 1.0, 0.0, 0.25, 0.0, 0.25, 0.75, -0.5, -0.5, -0.25, -0.25, -1.0, -0.75, 0.25, -1.0, -0.25, 1.0, 0.5, 0.25, 0.25, -0.5, -0.25, 1.0, 0.25, 0.0, 0.25, 0.0, 0.25, -1.0, 0.25, 0.75, -0.5, -0.25, -0.75, -0.5, 0.75, 0.5, 0.75, 0.5, -0.25, -0.5, -0.75, 1.0, -0.75, 0.25, ]);
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    
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
    render_pass_encoder2030.setPipeline(render_pipeline201);
    
    render_pass_encoder2010.setStencilReference(1);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder2011.beginOcclusionQuery(0)
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    
    query301.destroy()
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2020.setStencilReference(1);
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder2030.insertDebugMarker("marker");
    texture300.destroy();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setStencilReference(1);
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    query200.destroy()
    
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder2021.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const array6 = new Float32Array([1.0, 1.0, -1.0, -0.5, -0.5, -0.25, 0.75, 1.0, -0.25, 0.0, 0.0, -1.0, 1.0, -1.0, 0.25, 0.75, 0.0, 0.0, 0.75, 0.75, -0.5, 0.25, -1.0, -0.25, -0.25, -0.5, 0.0, -0.25, -0.5, 0.0, -0.5, 0.0, 1.0, -1.0, 0.75, 0.0, -1.0, 0.0, -0.5, 0.0, -0.5, -0.25, 1.0, 1.0, -0.5, -0.25, 0.5, 0.25, -0.75, -0.25, 0.0, -0.25, 0.75, -0.75, -0.75, 1.0, 0.5, -0.25, 0.75, -0.5, 1.0, -0.5, 0.75, 0.75, -0.5, -0.5, 0.25, 0.5, 0.75, 0.0, 0.25, 0.25, 0.25, 1.0, 0.5, 0.75, -0.5, -0.25, 0.0, -0.75, 0.75, 0.5, 1.0, -0.75, 0.5, -1.0, -0.75, -1.0, -1.0, 0.0, 0.25, 0.75, -0.5, -0.25, 0.5, -1.0, -1.0, 1.0, 0.5, -0.5, ]);
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
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
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
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
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.executeBundles([])
    render_pass_encoder2030.setStencilReference(1);
    query304.destroy()
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2003,
            },
        ],
        occlusionQuerySet: query202
    });
    texture301.destroy();
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    query302.destroy()
    texture101.destroy();
    
    query101.destroy()
    render_pass_encoder2030.setStencilReference(1);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    query204.destroy()
    render_pass_encoder2030.insertDebugMarker("marker");
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
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
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    command_encoder100.clearBuffer(buffer100);
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
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
    query203.destroy()
    
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    query102.destroy()
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.setPipeline(render_pipeline301);
    render_pass_encoder2050.executeBundles([])
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    render_pass_encoder2021.executeBundles([])
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
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
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([0.25, 0.25, 1.0, -0.5, 0.0, -0.75, -1.0, -0.75, -0.75, -0.5, 1.0, 0.75, -0.5, -0.25, -0.25, -0.75, -1.0, -0.5, -1.0, -0.5, 0.0, 0.0, 0.25, -0.75, -0.25, -0.5, 1.0, -0.5, 1.0, -0.25, 0.0, 0.0, 0.5, -0.75, 0.5, 1.0, -1.0, -1.0, 0.25, 0.0, -0.5, 1.0, 0.5, 0.25, 1.0, -1.0, -0.25, 0.0, 0.0, 0.5, -0.5, -0.5, -0.5, 1.0, -1.0, 0.25, -0.75, 0.0, 0.0, -0.75, 0.0, 0.0, 0.25, 1.0, 0.25, -0.25, 0.5, 0.75, -0.5, 0.25, 0.25, 0.25, 0.0, 0.0, 1.0, 0.0, -0.75, -0.5, 0.5, -0.75, -0.25, -1.0, 0.5, 0.75, -1.0, -0.75, -0.25, -1.0, 0.25, -0.25, -0.25, -0.5, 0.25, 0.5, 0.25, -1.0, 0.0, -0.25, -0.75, 0.25, ]);
    command_encoder400.insertDebugMarker("mymarker");
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    query102.destroy()
    command_encoder203.copyTextureToBuffer(
        {
            texture: texture201
        },
        {
            buffer: buffer201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder201.clearBuffer(buffer201);
    render_pass_encoder2010.setStencilReference(1);
    
    render_pass_encoder2040.setPipeline(render_pipeline200);
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
    texture100.destroy();
    query400.destroy()
    render_pass_encoder2050.setStencilReference(1);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout103]
    });
    texture301.destroy();
    render_pass_encoder2050.insertDebugMarker("marker");
    render_pass_encoder2050.beginOcclusionQuery(0)
    render_pass_encoder2030.pushDebugGroup("group_marker");
    render_pass_encoder2021.setStencilReference(1);
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.beginOcclusionQuery(0)
    query300.destroy()
    render_pass_encoder2011.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const array8 = new Float32Array([0.25, 0.5, 0.25, -0.75, -1.0, 0.25, 0.75, 0.75, 1.0, 0.5, 1.0, -1.0, -1.0, -0.25, 0.25, -0.5, 0.75, 0.0, 0.5, 1.0, 0.75, -0.25, 1.0, 0.5, -0.25, 0.25, -0.75, -0.25, 0.5, -0.5, 0.75, -0.25, -0.75, 0.5, 0.75, -0.5, 0.25, 0.0, 1.0, -0.5, 0.0, -0.75, -0.5, 0.25, -0.5, 0.5, 0.0, 1.0, 0.0, -0.5, 0.5, 0.25, 0.5, -1.0, 0.0, -0.25, 0.75, 0.75, -0.75, -0.5, -1.0, 1.0, 1.0, 0.25, 0.5, 1.0, -0.25, -0.5, 1.0, 0.75, 0.0, 1.0, -0.5, -1.0, 0.25, 0.25, 1.0, 0.75, 0.5, -0.5, -0.25, 0.5, 0.25, 0.25, 0.5, 0.0, -0.5, -0.25, 1.0, -0.25, -0.25, 0.5, -0.75, -0.75, -1.0, -1.0, 0.0, -0.25, 0.75, -0.25, ]);
    
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    query307.destroy()
    render_pass_encoder2050.insertDebugMarker("marker");
    
    render_pass_encoder2011.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    render_pass_encoder2010.insertDebugMarker("marker");
    query400.destroy()
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    
    query105.destroy()
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    render_pass_encoder2030.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    query100.destroy()
    
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    query303.destroy()
    render_pass_encoder2021.setPipeline(render_pipeline201);
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    render_pass_encoder2040.insertDebugMarker("marker");
    render_pass_encoder2010.executeBundles([])
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    render_pass_encoder2021.insertDebugMarker("marker");
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query201
    });
    query305.destroy()
    render_pass_encoder2050.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2030.beginOcclusionQuery(0)
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder2011.setStencilReference(1);
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    
    query401.destroy()
    query307.destroy()
    render_pass_encoder2050.insertDebugMarker("marker");
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query105.destroy()
    render_pass_encoder2050.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    query301.destroy()
    
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder2021.setStencilReference(1);
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
    render_bundle_encoder101.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    render_pass_encoder2010.setPipeline(render_pipeline202);
    render_pass_encoder2030.insertDebugMarker("marker");
    const render_pass_encoder2051 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query203
    });
    render_pass_encoder2041.executeBundles([])
    
    render_pass_encoder2041.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2050.setStencilReference(1);
    render_pass_encoder2051.setPipeline(render_pipeline200);
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    query105.destroy()
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query202.destroy()
    
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2051.pushDebugGroup("group_marker");
    render_pass_encoder2051.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2041.setPipeline(render_pipeline201);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    command_encoder100.clearBuffer(buffer100);
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
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16float",
        dimension: "2d"
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder2040.beginOcclusionQuery(0)
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query201.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    render_pass_encoder2051.beginOcclusionQuery(0)
    render_pass_encoder2021.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    texture200.destroy();
    render_pass_encoder2030.insertDebugMarker("marker");
    
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2003,
            },
        ],
        occlusionQuerySet: query202
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query102.destroy()
    render_pass_encoder2060.setPipeline(render_pipeline202);
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    command_encoder104.pushDebugGroup("mygroupmarker")
    render_pass_encoder2030.popDebugGroup();
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

    render_pass_encoder2011.setBindGroup(0, bind_group200);
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2060.setBindGroup(0, bind_group201);
    render_pass_encoder2050.setPipeline(render_pipeline202);
    render_pass_encoder2020.setPipeline(render_pipeline200);
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2041.setBindGroup(0, bind_group202);
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group203);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder2060.setVertexBuffer(0, buffer208);
    command_encoder100.popDebugGroup()
    render_pass_encoder2060.setIndexBuffer(buffer206, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2011.setVertexBuffer(0, buffer203);
    render_pass_encoder2060.drawIndexed(3);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2010.setVertexBuffer(0, buffer203);
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2050.setBindGroup(0, bind_group204);
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2030.setBindGroup(0, bind_group205);
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    command_encoder104.popDebugGroup()
    render_pass_encoder2060.end();
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    render_pass_encoder2051.setBindGroup(0, bind_group206);
    render_pass_encoder2011.drawIndirect(buffer205, 0);
    render_pass_encoder2041.setVertexBuffer(0, buffer204);
    render_pass_encoder2050.setVertexBuffer(0, buffer208);
    render_pass_encoder2010.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2013, 0);
    render_pass_encoder2060.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2050.draw(3);
    const command_buffer201 = command_encoder201.finish();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2011.drawIndirect(buffer2011, 0);
    render_pass_encoder2041.draw(3);
    device40.queue.submit([]);
    render_pass_encoder2050.end();
    render_pass_encoder2051.setVertexBuffer(0, buffer2013);
    render_pass_encoder2011.drawIndirect(buffer209, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2041.drawIndirect(buffer207, 0);
    const command_buffer206 = command_encoder206.finish();
    device20.queue.submit([command_buffer201, command_buffer206, ]);
    render_pass_encoder2041.end();
    render_pass_encoder2051.setIndexBuffer(buffer2010, "uint16");
    device30.queue.submit([]);
    render_pass_encoder2051.drawIndexed(3);
    render_pass_encoder2041.end();
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2050.drawIndirect(buffer2014, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2030.setVertexBuffer(0, buffer200);
    render_pass_encoder2051.popDebugGroup();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder2060.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2011, 0);
    render_pass_encoder2011.drawIndirect(buffer201, 0);
    render_pass_encoder2051.setIndexBuffer(buffer2016, "uint16");
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group207);
    render_pass_encoder2030.end();
    render_pass_encoder2041.drawIndirect(buffer206, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2020.setVertexBuffer(0, buffer2013);
    render_pass_encoder2030.drawIndirect(buffer2011, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    const command_buffer203 = command_encoder203.finish();
    const command_buffer205 = command_encoder205.finish();
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2050.setIndexBuffer(buffer2011, "uint16");
    device20.queue.submit([command_buffer205, ]);
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group208);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2050.setIndexBuffer(buffer2012, "uint16");
    device40.queue.submit([]);
    render_pass_encoder2051.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer200, 0);
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group209);
    render_pass_encoder2021.setVertexBuffer(0, buffer2016);
    render_pass_encoder2040.setVertexBuffer(0, buffer201);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder2040.end();
    render_pass_encoder2021.drawIndirect(buffer2022, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2011.drawIndirect(buffer205, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2051.drawIndirect(buffer2014, 0);
    device20.queue.submit([command_buffer203, ]);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder2040.drawIndirect(buffer2013, 0);
    render_pass_encoder2051.end();
    render_pass_encoder2021.setIndexBuffer(buffer2012, "uint16");
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2020.drawIndirect(buffer2018, 0);
    render_pass_encoder2050.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2011.drawIndirect(buffer2010, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2010.end();
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    render_pass_encoder2051.popDebugGroup();
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer204, ]);
    device20.queue.submit([command_buffer200, command_buffer202, command_buffer206, ]);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2041.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2010.draw(3);
    render_pass_encoder2030.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2019, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2051.drawIndirect(buffer202, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer203, 0);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2051.drawIndirect(buffer206, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2050.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2051.drawIndirect(buffer205, 0);
    render_pass_encoder2040.draw(3);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2030.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2051.draw(3);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2050.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2011.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2060.popDebugGroup();
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2041.drawIndirect(buffer2011, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2060.drawIndexed(3);
    render_pass_encoder2040.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2041.end();
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2010.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2010.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2041.drawIndirect(buffer200, 0);
    device20.queue.submit([command_buffer201, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2020.end();
    render_pass_encoder2050.end();
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2060.draw(3);
    device20.queue.submit([command_buffer204, ]);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder2050.drawIndirect(buffer2010, 0);
    render_pass_encoder2021.drawIndirect(buffer2015, 0);
    render_pass_encoder2060.drawIndirect(buffer203, 0);
    render_pass_encoder2051.setIndexBuffer(buffer202, "uint16");
    device20.queue.submit([command_buffer200, command_buffer206, ]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2011.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2022, 0);
    render_pass_encoder2021.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2051.drawIndexed(3);
    render_pass_encoder2020.end();
    render_pass_encoder2060.popDebugGroup();
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder2011.end();
    render_pass_encoder2020.end();
    render_pass_encoder2051.drawIndirect(buffer2010, 0);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2013, "uint16");
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2050.end();
    render_pass_encoder2051.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2050.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2021.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer2018, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2051.setIndexBuffer(buffer203, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2060.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2060.drawIndirect(buffer2017, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2020.drawIndirect(buffer206, 0);
    render_pass_encoder2030.drawIndirect(buffer2015, 0);
    render_pass_encoder2060.end();
    device30.queue.submit([]);
    render_pass_encoder2051.drawIndirect(buffer2020, 0);
    device30.queue.submit([]);
    render_pass_encoder2030.end();
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2020.setIndexBuffer(buffer203, "uint16");
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder2050.drawIndirect(buffer2020, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2021.popDebugGroup();
}