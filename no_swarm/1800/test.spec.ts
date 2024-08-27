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
    device00.destroy();
    const array0 = new Float32Array([0.5, 0.0, 0.5, -0.75, -0.75, 0.0, -0.75, 1.0, -1.0, 0.75, 0.25, 0.25, -0.75, -0.75, 1.0, -0.25, 0.0, -0.5, 0.25, 0.5, -0.75, 0.0, -1.0, 0.25, 0.5, 0.5, -0.25, 0.75, -0.75, 0.25, -1.0, 0.25, 0.75, -0.75, 0.25, 0.0, 0.0, 0.25, 0.75, -0.5, -0.5, -0.75, 0.5, 0.25, -1.0, 0.25, -0.75, 0.0, 0.0, 0.25, 0.75, -0.5, -1.0, 0.0, -0.5, -1.0, 0.75, 0.5, 0.5, 0.0, 0.25, -0.5, -1.0, 1.0, 0.75, -0.25, -0.25, -0.25, 1.0, -0.25, 1.0, 0.25, 0.0, 1.0, -0.75, 0.25, -0.5, -0.5, -0.75, 1.0, 0.75, 0.0, -0.5, 0.0, 1.0, -0.75, 0.25, -0.25, 0.0, 0.75, 0.0, -0.25, 0.5, 0.75, -0.25, 1.0, -0.5, 0.5, -0.75, 0.25, ]);
    
    
    
    
    
    const array1 = new Float32Array([0.0, 0.25, 0.75, -1.0, -0.75, 0.5, 0.75, 0.5, -0.25, -0.5, -1.0, 0.0, 0.75, 1.0, -0.25, -0.75, 0.25, 0.25, -0.25, -0.5, -0.5, -0.75, 0.5, 0.25, -1.0, -1.0, -1.0, -0.25, 0.75, -1.0, -0.75, 0.0, 0.0, 0.75, -0.5, -0.75, 0.75, -0.5, 0.0, -0.5, 1.0, 1.0, 0.75, 0.5, 0.5, -0.25, 0.75, 0.0, -1.0, -0.75, -1.0, -0.5, -0.75, 0.5, 1.0, 1.0, 0.5, 0.25, -0.75, -1.0, -1.0, 0.0, 0.75, 0.25, 0.0, 1.0, -1.0, 1.0, 1.0, 0.75, -0.5, 0.0, -1.0, -0.25, 0.5, 0.25, 1.0, 0.75, 0.0, 1.0, -0.5, 1.0, 0.75, 0.5, -0.75, 0.75, 0.25, 0.25, -0.25, 0.5, 0.5, -1.0, -0.75, 0.25, 0.5, 0.0, -0.25, -0.5, 0.25, 1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([-1.0, 0.75, -1.0, 0.5, 0.0, 0.25, 0.5, -1.0, 0.75, -0.25, -1.0, -0.5, -1.0, 1.0, -0.5, 1.0, 0.75, 0.25, -0.25, -0.25, -0.5, -0.75, -0.25, 0.0, -0.75, 0.25, 0.25, 0.5, 0.75, 0.0, -0.75, 0.5, 0.25, -0.5, 0.5, 0.0, -0.5, -0.75, 0.75, -0.75, -0.75, 0.25, -0.75, 0.75, 0.25, -0.25, 0.75, 0.5, 1.0, -0.75, -0.25, 0.25, -0.25, 0.25, 0.25, 0.5, 0.25, -0.5, 0.25, -1.0, 0.75, 0.75, -0.5, 1.0, -0.25, -0.25, 1.0, 1.0, 0.25, 0.0, -0.5, 0.25, -1.0, -0.25, -0.25, -1.0, -0.5, -0.25, -0.5, 0.75, 0.25, 0.25, 0.75, -0.75, 0.25, 0.25, 0.5, -0.5, -1.0, -0.75, -0.25, 0.5, 0.0, -0.25, 0.75, -0.75, -0.25, 0.5, 0.5, 0.75, ]);
    
    const array3 = new Float32Array([0.5, -0.75, -0.75, 0.0, -0.5, 0.5, 0.5, -0.5, -0.25, 0.25, -0.75, 0.0, 0.75, -0.75, -0.5, -0.75, 0.25, 1.0, 0.75, 0.25, 0.0, -0.25, -0.25, -0.75, 1.0, -0.5, 0.75, -0.5, -0.25, -0.25, 0.25, 1.0, -1.0, 0.25, 0.0, 0.0, -0.5, 0.75, 0.25, -0.75, -0.5, 1.0, -0.5, 0.0, 0.5, 0.25, -1.0, -0.25, 1.0, 0.75, -0.5, -0.5, -0.5, -0.25, 0.5, 1.0, 0.25, 0.25, 0.75, 0.0, 0.5, -0.75, -0.25, 0.0, 0.25, 0.25, -1.0, -0.5, 0.0, -0.5, 1.0, -0.75, -0.5, -0.25, -0.75, 0.25, -1.0, 1.0, 0.75, 0.5, -0.5, -0.5, -1.0, 1.0, -1.0, 1.0, -0.5, 0.75, 1.0, -0.25, 0.75, 0.5, 0.75, 0.0, 1.0, 0.25, -1.0, -0.5, 0.25, -0.5, ]);
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
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
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    
    const array4 = new Float32Array([0.5, 0.5, -0.5, 1.0, 0.75, 0.5, 1.0, -1.0, -1.0, -0.25, 0.0, -0.75, 1.0, 0.5, -0.5, 0.25, 1.0, 1.0, -0.5, 0.0, -0.75, -0.75, -1.0, -1.0, -0.5, 0.75, -1.0, -0.75, 0.75, 0.75, -0.5, -0.5, -0.25, 1.0, 0.25, 0.25, -1.0, -0.25, -1.0, -0.5, 0.25, 0.0, 0.0, -0.25, -0.25, -1.0, -0.75, 0.25, 1.0, 0.0, 0.5, 0.25, -1.0, -1.0, 0.25, 0.5, 0.75, -0.5, 0.5, -1.0, 0.5, 1.0, 1.0, -0.5, -0.5, -0.75, -1.0, 0.5, 0.0, -0.25, 0.25, 0.5, 1.0, 0.75, 0.25, -0.75, -0.75, 1.0, 0.0, 0.5, 0.0, 0.75, 1.0, 0.5, -0.5, 1.0, -1.0, -0.75, 1.0, 0.25, -0.25, -0.5, 0.25, 0.75, 0.5, -0.25, -0.75, 0.75, -1.0, -0.5, ]);
    const array5 = new Float32Array([-0.25, 1.0, -0.25, -0.5, 0.25, 0.5, 0.5, -0.5, -0.25, 0.0, -0.5, -1.0, 0.5, 0.5, 0.5, -0.5, -1.0, 1.0, 1.0, -0.75, 1.0, 1.0, 0.5, 0.5, -0.5, -0.75, 0.0, -0.75, -0.75, 1.0, -0.25, 0.5, 0.5, 0.5, 1.0, 0.75, 0.5, -0.5, 0.75, 0.75, -0.5, 0.5, 0.25, -1.0, -1.0, -0.75, 0.5, -0.25, -0.75, 0.75, 0.5, -1.0, -0.75, 0.0, -1.0, -0.5, 0.25, -1.0, -0.25, 1.0, -1.0, -0.25, 0.0, 0.0, 0.25, -0.75, -1.0, 1.0, 0.5, 0.0, -0.25, 0.75, 0.75, 0.75, 0.25, 0.5, 0.75, -1.0, -0.75, -0.5, 0.0, -0.25, -0.25, -0.25, -1.0, 1.0, 0.5, 0.75, 0.0, 0.0, -1.0, 0.5, 0.25, 0.75, 0.0, -1.0, 0.75, -0.25, -1.0, -0.5, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.pushErrorScope("internal");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder300.insertDebugMarker("mymarker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const array6 = new Float32Array([1.0, -1.0, -0.5, -1.0, 0.0, 1.0, 0.0, 0.0, -0.25, -0.75, 0.25, -1.0, -0.75, 0.25, 0.75, -0.75, 0.25, -1.0, 1.0, 1.0, 0.0, 0.75, -1.0, -0.75, 0.25, 0.5, 0.0, -0.25, 0.25, 0.25, -0.5, -0.75, -0.25, 0.0, 0.75, -1.0, 0.25, -0.5, 0.25, 0.75, 0.0, -1.0, 1.0, -1.0, -0.25, -1.0, 0.75, -1.0, -0.25, 1.0, 0.75, 0.75, -0.75, 0.75, -0.25, -0.25, 0.0, 0.25, 0.75, -1.0, -0.5, 0.25, 0.25, 0.25, -0.5, -0.5, 1.0, 0.75, 0.75, 0.25, -1.0, 0.25, 0.25, -0.25, 0.0, 0.75, -0.5, -0.25, -0.75, 1.0, 0.75, 0.0, 0.0, 1.0, -0.5, 0.0, 0.5, 1.0, 1.0, -0.25, -0.75, 0.25, 0.5, 0.0, 0.75, -0.5, 0.5, -1.0, 0.5, 0.5, ]);
    
    
    
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
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    command_encoder301.insertDebugMarker("mymarker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    query300.destroy()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder301.insertDebugMarker("mymarker");
    
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
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder300.clearBuffer(buffer301);
    command_encoder300.pushDebugGroup("mygroupmarker")
    
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
    command_encoder300.popDebugGroup()
    
    command_encoder301.clearBuffer(buffer301);
    command_encoder301.clearBuffer(buffer301);
    buffer301.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    query301.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    query301.destroy()
    
    command_encoder301.popDebugGroup()
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    device20.pushErrorScope("internal");
    
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_buffer301 = command_encoder301.finish();
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    device20.queue.submit([]);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
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
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
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
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    render_bundle_encoder300.popDebugGroup();
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder200.insertDebugMarker("mymarker");
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
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
    const array7 = new Float32Array([-1.0, 1.0, -0.5, -0.5, 0.5, -0.25, -0.25, 1.0, -0.75, 0.25, 1.0, -1.0, 0.75, -0.25, 0.0, 1.0, -1.0, 1.0, 0.0, -0.5, 0.75, -0.25, 1.0, 0.25, -0.75, -0.75, 1.0, -1.0, -1.0, -0.75, -0.75, 1.0, -0.75, 0.0, 1.0, 0.25, 1.0, 0.75, 0.0, 0.75, 0.0, -1.0, -0.25, -0.75, 0.0, 0.25, 1.0, 0.0, -0.5, 0.25, -0.5, -0.25, 0.25, -1.0, 0.25, 1.0, -0.75, 1.0, 0.5, -0.25, 0.25, -0.75, 0.75, -0.25, 1.0, 0.0, 0.0, -0.5, 0.25, 0.0, 0.25, -0.25, -1.0, -0.75, -1.0, -1.0, -0.25, -1.0, -1.0, 0.25, 0.25, 0.75, -0.75, 0.75, -0.25, -1.0, 0.75, -0.75, 0.75, -0.5, 0.25, -0.75, 0.0, -0.25, 0.25, 0.5, 0.75, -0.25, 0.75, 0.25, ]);
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([0.5, -1.0, 0.0, 0.0, 0.25, 1.0, 0.5, -1.0, -0.5, 0.0, -0.25, -0.75, 0.25, -0.25, 0.5, -1.0, 0.0, 0.5, 0.25, 1.0, -0.75, -0.75, 0.5, -0.5, 1.0, 1.0, 0.0, 0.25, 0.5, -0.25, 0.5, 0.75, -0.25, -1.0, -0.75, 0.25, 0.0, -0.75, -1.0, -1.0, 0.25, 0.75, 0.0, -0.5, -0.5, -0.5, 0.75, 1.0, 0.5, 0.0, 0.0, -1.0, -0.5, 0.0, 0.5, -1.0, -0.25, 1.0, 0.25, -0.5, -0.25, 0.25, -1.0, 0.0, -0.5, 0.25, 1.0, -0.5, -1.0, 0.75, 0.0, -0.5, -0.5, 0.0, -0.75, -0.75, 0.25, 0.5, -1.0, 0.5, -0.75, -0.25, 0.25, 0.75, 0.25, -0.5, -0.25, -0.5, -0.5, 0.0, 0.75, 1.0, 0.25, -1.0, -0.5, -0.75, 1.0, 0.75, 0.0, -0.75, ]);
    
    
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    command_encoder300.pushDebugGroup("mygroupmarker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query200.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    command_encoder200.insertDebugMarker("mymarker");
    
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    command_encoder300.copyBufferToBuffer(
        buffer303,
        0,
        buffer302,
        0,
        400
    );
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
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
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    device30.queue.submit([command_buffer301, ]);
    command_encoder400.insertDebugMarker("mymarker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    query302.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    render_bundle_encoder300.setPipeline(render_pipeline301);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    buffer200.destroy()
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder303.clearBuffer(buffer302);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    texture300.destroy();
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    compute_pass_encoder3020.setPipeline(compute_pipeline300);
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_bundle_encoder301.insertDebugMarker("marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    query200.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    command_encoder303.clearBuffer(buffer300);
    device30.queue.writeBuffer(buffer305, 0, array7, 0, array7.length);
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer302, 0, array8, 0, array8.length);
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder303.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query302.destroy()
    render_bundle_encoder302.setPipeline(render_pipeline301);
    
    
    query300.destroy()
    texture201.destroy();
    
    texture300.destroy();
    
    device40.pushErrorScope("out-of-memory");
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
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder304.clearBuffer(buffer301);
    const array9 = new Float32Array([-0.25, -1.0, 0.0, -0.5, -0.25, -0.75, 0.5, -0.75, 1.0, 0.75, -0.75, -0.25, 0.0, 0.75, -0.5, -0.25, 1.0, 0.75, -0.5, 0.5, 0.75, -0.5, -1.0, -0.25, 0.0, -0.25, 0.75, 0.25, 0.0, 0.75, -0.5, 0.25, -0.5, 1.0, 0.75, 0.75, 0.0, -0.75, -0.5, 0.25, -0.75, 0.75, 0.5, 0.5, -0.5, 0.0, -1.0, -0.25, -0.75, -0.5, 1.0, 0.25, 0.75, -1.0, 0.5, 0.0, -0.25, 0.0, 0.25, 1.0, -0.5, -0.75, -1.0, -0.75, 0.0, 0.25, -0.25, -0.75, 1.0, -0.5, 0.0, -0.25, 1.0, -0.5, -0.25, 0.25, -1.0, 1.0, -0.5, -0.75, -0.25, 1.0, 0.25, 0.25, -1.0, -0.5, 0.75, 1.0, 0.0, 1.0, 0.5, 1.0, 0.25, 0.25, -0.5, -0.5, 0.25, 0.75, -0.75, 0.0, ]);
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    command_encoder304.copyBufferToBuffer(
        buffer300,
        0,
        buffer302,
        0,
        400
    );
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    device30.pushErrorScope("out-of-memory");
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer302, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer302, 0, array8, 0, array8.length);
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
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    buffer302.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
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
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    command_encoder304.resolveQuerySet(
        query300,
        0,
        32,
        buffer307,
        0
    )
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    buffer305.destroy()
    
    
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    render_bundle_encoder201.popDebugGroup();
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    command_encoder304.copyBufferToTexture(
        {
            buffer: buffer303
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
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder305.resolveQuerySet(
        query300,
        0,
        32,
        buffer302,
        0
    )
    buffer304.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_pass_encoder2000.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer201.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    buffer303.destroy()
    
    
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
        occlusionQuerySet: query200
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    command_encoder304.resolveQuerySet(
        query300,
        0,
        32,
        buffer302,
        0
    )
    
    render_bundle_encoder300.setVertexBuffer(0, buffer306);
    
    command_encoder305.copyBufferToTexture(
        {
            buffer: buffer300
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
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_bundle_encoder202.insertDebugMarker("marker");
    compute_pass_encoder3030.setPipeline(compute_pipeline300);
    query200.destroy()
    command_encoder304.pushDebugGroup("mygroupmarker")
    render_bundle_encoder301.popDebugGroup();
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    query201.destroy()
    compute_pass_encoder3030.insertDebugMarker("marker")
    const array10 = new Float32Array([-0.5, -0.25, 1.0, 0.25, -1.0, 0.25, 0.25, 1.0, -0.5, -0.75, 0.0, -0.25, 0.5, 0.25, -0.25, 0.5, 0.75, 1.0, 1.0, -0.5, -0.75, -0.75, 0.5, -0.5, -0.75, -0.25, 0.0, 1.0, -0.5, 1.0, -0.25, -0.5, -0.25, 0.25, -0.25, 1.0, 1.0, -0.75, 0.5, -0.5, 0.75, 0.0, -0.5, 0.75, -0.75, 0.75, -1.0, 0.5, 0.0, 0.25, -0.75, 0.5, 0.25, 0.0, -0.75, 0.5, -0.75, 0.5, 0.5, -0.25, 0.0, 0.5, -0.75, 1.0, 0.75, 0.75, 0.0, -0.5, 0.0, -0.75, 0.75, 0.25, 0.25, 0.0, -0.5, 0.75, -1.0, -0.75, 0.5, 1.0, 0.0, -0.75, -0.5, -0.25, -1.0, 1.0, 0.0, -0.25, -0.5, -0.5, -0.5, 0.75, -1.0, 0.75, 1.0, -1.0, 0.5, 0.5, 1.0, 0.75, ]);
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device30.queue.writeBuffer(buffer307, 0, array3, 0, array3.length);
    
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    const command_buffer305 = command_encoder305.finish();
    compute_pass_encoder2010.insertDebugMarker("marker")
    device30.queue.submit([command_buffer305, ]);
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    compute_pass_encoder3040.insertDebugMarker("marker")
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer308, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer308, 0);
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3030.insertDebugMarker("marker")
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    device50.destroy();
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3020.popDebugGroup()
    render_bundle_encoder300.draw(3);
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder3000.end();
    texture400.destroy();
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    command_encoder300.resolveQuerySet(
        query302,
        0,
        32,
        buffer301,
        0
    )
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
    render_bundle_encoder301.setPipeline(render_pipeline304);
    render_bundle_encoder200.popDebugGroup();
    
    device30.queue.writeBuffer(buffer308, 0, array1, 0, array1.length);
    
    command_encoder300.copyBufferToBuffer(
        buffer300,
        0,
        buffer308,
        0,
        400
    );
    
    
    device30.queue.writeBuffer(buffer309, 0, array0, 0, array0.length);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer307.destroy()
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    command_encoder300.popDebugGroup()
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    command_encoder300.copyBufferToBuffer(
        buffer307,
        0,
        buffer305,
        0,
        400
    );
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder2000.setStencilReference(1);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    buffer300.destroy()
    query300.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_buffer300 = command_encoder300.finish();
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3040.setPipeline(compute_pipeline306);
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    render_pass_encoder2000.setStencilReference(1);
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3020.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer308, 0, array0, 0, array0.length);
    
    device30.queue.writeTexture({ texture: texture300 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4000.popDebugGroup()
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    buffer307.destroy()
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
    
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    compute_pass_encoder3040.popDebugGroup()
    
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer308, 0, array3, 0, array3.length);
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    const command_buffer200 = command_encoder200.finish();
    
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array10, 0, array10.length);
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
    
    
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    {
        await buffer306.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer306.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer306.unmap();
        console.log(new Float32Array(data));
    }
    query302.destroy()
    
    
    
    device30.queue.writeBuffer(buffer308, 0, array7, 0, array7.length);
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group302);
    render_bundle_encoder201.popDebugGroup();
    buffer202.destroy()
    buffer308.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    compute_pass_encoder2010.popDebugGroup()
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
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture201.destroy();
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    
    
    render_bundle_encoder301.popDebugGroup();
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline306.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group303);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    device30.pushErrorScope("validation");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
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
    device20.queue.writeTexture({ texture: texture202 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3040.insertDebugMarker("marker")
    compute_pass_encoder3040.dispatchWorkgroups(100);
    buffer306.destroy()
    
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    buffer3013.destroy()
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3040.insertDebugMarker("marker")
    
    query400.destroy()
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group304);
    const array11 = new Float32Array([0.75, -0.5, 0.0, 0.0, -1.0, 1.0, 0.75, -0.75, -0.5, -0.75, 0.75, 1.0, 0.5, -1.0, 0.25, 1.0, -0.25, 0.25, 0.75, 0.25, 0.0, 0.5, -0.25, 0.75, 0.75, 0.0, -0.25, 0.0, 0.5, -0.25, 0.5, -0.5, 0.25, -0.5, 0.0, -0.75, 0.5, -1.0, -0.25, -0.75, 0.75, -0.75, 0.0, 0.5, -0.25, 0.5, -0.5, 0.75, -0.25, 0.5, 0.75, -0.25, 0.0, 0.0, -1.0, -0.75, 0.75, 0.25, 0.5, -1.0, -0.75, 0.25, -0.75, 0.0, -0.75, 0.25, 1.0, -0.25, -0.25, 0.25, 0.75, 1.0, -0.75, 1.0, 0.5, 0.75, -0.5, 0.75, 0.5, -0.25, 0.75, -0.75, -0.25, -0.5, 0.75, 0.5, 0.75, 0.25, 1.0, 1.0, 0.75, 0.25, 1.0, -0.25, -1.0, -0.5, 0.75, 0.0, 0.25, -0.5, ]);
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const array12 = new Float32Array([0.0, 0.0, -0.25, -0.5, -0.25, 1.0, 0.0, 0.75, 0.0, -0.75, 0.25, 1.0, 0.25, -0.25, 0.75, 0.0, -0.5, -0.25, -0.75, -0.5, -0.5, -1.0, 0.25, 1.0, -1.0, 0.75, -0.75, -1.0, -0.5, 0.5, 1.0, 0.25, 0.5, 1.0, 0.75, -1.0, -0.5, 0.75, 0.5, -0.5, 0.75, 0.25, -0.75, 0.0, -0.75, 0.0, 0.25, -0.25, -0.75, -0.75, 1.0, 0.0, -0.25, 0.5, -0.75, 0.0, 0.5, 0.5, -0.5, 0.75, -0.5, 0.5, -1.0, -1.0, 0.5, 1.0, 0.75, 1.0, -0.25, -0.5, 1.0, 0.75, 0.5, -1.0, -0.5, -1.0, 0.5, -0.5, 0.0, 0.5, -0.5, 0.75, 1.0, 0.0, -0.25, 0.5, 0.5, 1.0, 1.0, -0.5, -0.5, 0.25, -0.5, 0.75, 0.75, -0.5, 0.25, -0.25, -0.25, -1.0, ]);
    const array13 = new Float32Array([-0.5, -0.75, -0.25, -1.0, 0.0, -0.25, 0.5, 1.0, 1.0, -0.75, 0.75, -0.25, 0.25, 1.0, -0.75, -0.5, 0.5, 0.5, 0.75, -1.0, 0.75, 0.0, 0.75, 0.25, 0.5, 0.0, -0.5, -0.75, 1.0, 1.0, -1.0, -1.0, -0.5, 0.0, -0.5, -1.0, 0.5, -0.75, -0.75, 0.5, -0.5, -1.0, 0.5, -0.5, 1.0, -0.25, -1.0, 1.0, 0.5, -0.5, 0.75, -0.25, 0.75, -0.5, 0.25, -0.25, 0.75, -0.5, 0.25, -1.0, 0.0, 0.75, 0.25, -1.0, 0.25, -1.0, -0.75, 0.0, 1.0, 1.0, -1.0, 0.75, 0.25, -0.25, -0.25, -1.0, 0.25, -1.0, 0.75, -0.5, 0.5, 0.75, 1.0, 0.25, 0.25, -1.0, -1.0, 0.5, 1.0, 0.75, 0.0, -0.5, -0.25, 1.0, 1.0, 0.0, 0.0, -0.75, -0.75, -0.25, ]);
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
    render_pass_encoder2000.executeBundles([render_bundle_encoder201, ])
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
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
    query200.destroy()
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3016, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3016, 0);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder300.drawIndirect(buffer306, 0);
    compute_pass_encoder3020.insertDebugMarker("marker")
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer3016, 0, array7, 0, array7.length);
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const command_buffer401 = command_encoder401.finish();
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3017, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3017, 0);
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
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
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

    compute_pass_encoder3000.setBindGroup(0, bind_group305);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder3020.end();
    compute_pass_encoder3040.end();
    compute_pass_encoder2010.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3020, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3020, 0);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder3000.end();
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder3040.dispatchWorkgroups(100);
    device40.queue.submit([]);
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3021, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3021, 0);
    command_encoder304.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
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
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3030.setBindGroup(0, bind_group306);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group307);
    const command_buffer304 = command_encoder304.finish();
    const command_buffer000 = command_encoder000.finish();
    device20.queue.submit([command_buffer200, ]);
    device30.queue.submit([command_buffer300, ]);
    command_encoder201.popDebugGroup()
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder3000.end();
    device30.queue.submit([command_buffer304, ]);
    compute_pass_encoder3040.end();
    render_pass_encoder2020.endOcclusionQuery()
    device20.queue.submit([]);
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
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group308);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer304, ]);
    device50.queue.submit([]);
    device50.queue.submit([]);
    compute_pass_encoder3030.end();
    compute_pass_encoder3000.end();
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
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group309);
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
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group3010);
    render_pass_encoder2020.endOcclusionQuery()
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3030.end();
    compute_pass_encoder3020.end();
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder4000.popDebugGroup()
    const command_buffer201 = command_encoder201.finish();
    compute_pass_encoder3040.popDebugGroup()
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2020.endOcclusionQuery()
    compute_pass_encoder3020.end();
    command_encoder400.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder3040.popDebugGroup()
    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline306.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3033,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3011);
    device30.queue.submit([command_buffer305, ]);
    device30.queue.submit([]);
    device30.queue.submit([command_buffer303, ]);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder3000.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3034, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3034, 0);
    device30.queue.submit([command_buffer301, ]);
    device40.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    compute_pass_encoder3020.end();
    compute_pass_encoder3040.end();
    compute_pass_encoder3020.popDebugGroup()
    device30.queue.submit([command_buffer300, command_buffer304, ]);
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder2020.endOcclusionQuery()
    device30.queue.submit([command_buffer303, ]);
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
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group3012);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3040.end();
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
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group3013);
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
        
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group3014);
    render_pass_encoder2010.endOcclusionQuery()
}