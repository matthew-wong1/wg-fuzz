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
    const array0 = new Float32Array([-0.75, 0.0, 0.0, -0.75, 0.75, 0.25, -0.5, -0.25, -0.5, -0.75, -1.0, 0.0, 0.25, 0.25, -0.5, 1.0, 0.0, 0.25, -0.25, -0.75, -0.25, 0.0, 0.0, 0.25, -0.25, -0.75, 0.0, 0.0, 0.75, 0.25, 0.5, 1.0, -0.25, -0.5, 0.75, 0.5, 1.0, -0.5, 0.0, 1.0, -0.75, -0.25, 1.0, 1.0, 0.75, -0.25, -0.75, 0.75, 0.0, -0.25, -0.5, 0.0, 0.25, 0.75, 0.5, 0.75, 0.75, 0.75, -1.0, 0.75, 0.25, 0.25, 0.0, -1.0, 1.0, -1.0, -0.25, -0.25, -1.0, -0.25, -0.5, 0.25, -0.75, -0.5, -1.0, -1.0, -1.0, 0.75, 0.25, -0.75, 0.75, -1.0, 0.75, -0.25, -0.75, 0.5, 1.0, -0.5, 0.5, -1.0, -0.25, 0.5, -0.75, -0.25, 0.5, -1.0, 0.75, -0.25, 0.75, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array1 = new Float32Array([-0.75, -0.5, -0.5, 0.0, 0.75, 0.0, 0.5, 0.5, 0.0, -0.75, -0.5, 0.75, 0.25, 0.5, -1.0, 0.25, -1.0, -0.5, 0.75, -0.5, 1.0, -0.5, -0.5, -0.25, 1.0, 1.0, 0.5, 0.0, 0.25, -0.25, -1.0, -0.5, 0.5, 0.5, 0.25, -0.75, -0.75, 0.0, -0.75, 0.0, -0.25, 0.0, -0.5, 0.75, -0.75, 0.75, 0.5, 1.0, 1.0, 0.25, -0.75, 0.25, 0.5, 0.5, -0.25, 0.25, -0.25, 0.0, 1.0, -0.25, 1.0, 0.75, -0.25, 0.0, 0.5, 0.25, -0.5, 0.0, -0.25, 1.0, -0.25, 0.25, 0.0, 0.5, 0.25, 0.25, 0.5, 0.5, 0.5, -0.75, -0.75, -0.25, -1.0, 0.5, 0.5, -1.0, -1.0, 1.0, 0.5, 0.5, 0.0, -0.75, 0.0, -0.75, 0.25, 0.75, 0.0, 0.5, 0.25, -1.0, ]);
    
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array2 = new Float32Array([-1.0, -0.75, 0.25, -0.75, -0.75, -0.5, 0.5, 0.25, -0.5, -1.0, 0.0, 1.0, -0.5, 0.25, 0.0, 1.0, -0.75, -0.75, -0.25, 0.75, 0.75, -1.0, -0.75, -0.75, -1.0, -0.25, -0.75, 0.75, 0.5, -0.5, 0.0, -0.75, 1.0, 0.5, 0.25, -0.25, -0.75, -0.5, -0.5, -0.5, -1.0, -0.25, -0.75, 0.0, 0.0, -1.0, -0.5, -0.5, 1.0, 1.0, 1.0, -1.0, 1.0, -1.0, 0.75, 0.5, 0.0, -0.5, 0.75, -0.5, 0.5, 0.25, -0.5, 0.25, -0.75, -1.0, 1.0, -1.0, 0.25, 0.5, 0.0, -0.25, -0.25, -1.0, -0.25, 0.0, 0.75, 0.5, -0.25, 0.75, 0.75, -0.25, -1.0, -1.0, -1.0, -0.5, -0.75, 0.25, 0.0, -0.5, 0.75, -0.75, -0.75, 0.5, 0.25, -0.75, 0.5, -1.0, 0.0, 0.5, ]);
    
    const array3 = new Float32Array([0.25, 0.75, 0.75, 0.75, -0.75, -0.75, -0.25, -0.75, -0.75, -0.5, 0.75, -0.25, 0.0, -0.25, -1.0, 0.75, -1.0, 0.5, -0.75, -0.25, 0.0, -0.75, -0.5, -0.75, 0.75, 0.5, 1.0, -0.25, 0.75, 0.25, 0.25, -0.25, -0.25, 0.5, -0.25, 0.0, -1.0, -0.25, 0.0, -0.75, 0.0, -0.25, -0.25, -0.25, -0.5, 0.5, 1.0, 0.75, 1.0, 1.0, 0.25, 0.75, -1.0, -0.75, 1.0, 1.0, 1.0, 0.25, 1.0, 0.75, 0.0, 0.5, 0.75, -0.75, -0.75, -1.0, 0.0, -0.75, 0.5, -0.5, 0.5, 1.0, 0.75, -0.75, -0.75, -0.5, 1.0, -0.75, -0.25, -0.75, -0.75, 0.0, 0.5, -0.25, -0.5, -1.0, 1.0, 0.75, 0.75, 1.0, 1.0, 0.5, -0.5, -0.25, -1.0, -1.0, 1.0, 0.75, 0.5, -1.0, ]);
    
    const array4 = new Float32Array([-0.25, -0.5, 0.25, 0.0, 0.0, 0.0, 0.75, 0.5, -0.75, 0.0, 0.25, -0.5, -0.5, 0.0, 0.75, -0.75, -0.25, 0.25, 0.0, 1.0, 1.0, 0.25, 0.5, -0.5, 0.75, 0.25, 0.5, 0.0, -0.75, 0.25, 0.75, 0.25, -0.25, 0.75, -1.0, -0.5, -0.25, 0.75, -0.25, 1.0, -0.25, 0.0, -0.25, 1.0, 1.0, -1.0, 0.75, -0.5, -0.25, -0.75, -0.5, 0.0, -0.5, 1.0, -0.25, 0.25, -0.5, 1.0, 0.25, -0.5, -0.5, -0.25, 1.0, -0.75, 0.0, 0.5, 0.75, -1.0, 0.75, 0.25, 0.5, -0.75, -0.75, -0.75, 1.0, -0.75, 0.5, 0.0, -0.5, 1.0, -1.0, 0.25, -0.5, -0.75, 0.0, -1.0, -0.5, -1.0, 0.0, 0.75, -0.25, -0.25, 0.5, -1.0, 0.5, -0.5, 0.25, 0.5, -0.25, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array5 = new Float32Array([1.0, 0.75, 1.0, 0.5, -0.25, 0.0, -0.25, -0.25, -0.25, -0.5, -0.25, 0.75, 0.5, 1.0, -0.75, 0.5, 0.0, 1.0, 0.0, 0.75, -0.75, 0.5, 0.75, -1.0, -1.0, 0.25, 0.75, 1.0, -0.25, -0.75, -0.75, 0.75, -1.0, 0.5, 1.0, -1.0, 1.0, 0.5, -0.25, -0.75, -1.0, 0.75, -1.0, 0.0, 0.75, 1.0, -0.75, 0.5, 0.25, -0.5, 0.25, -0.75, 0.5, 0.0, -0.25, 1.0, -0.75, -1.0, 0.25, -0.5, -0.5, 0.0, 0.5, 0.5, 0.75, 0.5, 0.5, 1.0, -0.75, -0.25, -0.25, -1.0, 0.0, 0.5, -0.75, 0.5, 0.25, 0.0, -0.75, 0.25, -0.5, -0.75, 0.5, 0.75, 0.5, -0.75, -1.0, 0.5, -0.25, 0.75, 1.0, 0.75, -0.25, -1.0, -0.75, 0.0, -0.25, 0.5, -0.75, -0.75, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array6 = new Float32Array([-0.75, 0.5, 0.75, 0.75, 0.5, 1.0, 0.0, -1.0, 0.0, 1.0, 0.25, 0.75, 1.0, 0.75, -0.5, -0.25, -0.25, 0.25, -0.75, -0.25, 0.0, -0.25, -1.0, 0.25, 0.0, -0.75, 1.0, -0.75, 0.0, -0.75, 0.0, 0.0, -1.0, -0.25, 0.25, 0.75, -1.0, -1.0, 0.0, 0.5, -0.5, 0.25, 0.75, 0.25, 1.0, 1.0, 0.75, -0.25, 0.0, -0.5, 0.25, 1.0, 0.25, 0.75, -0.75, -0.5, 1.0, -0.75, 1.0, -1.0, -0.5, -0.5, 0.25, -0.75, 0.75, 0.5, 0.0, 0.0, -0.5, -1.0, 0.25, -1.0, -0.25, 0.25, -0.75, -0.5, 0.75, -0.5, 1.0, -0.5, -1.0, 0.5, 0.25, 0.0, -0.25, 0.75, 0.0, 0.75, -1.0, -0.5, -0.75, 0.0, -0.75, 0.25, -0.5, -0.75, 0.5, 1.0, -1.0, 0.5, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    
    
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    
    
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.destroy();
    
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.destroy();
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
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
    command_encoder300.insertDebugMarker("mymarker");
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
    
    buffer300.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    command_encoder300.insertDebugMarker("mymarker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("internal");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const command_buffer300 = command_encoder300.finish();
    
    
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
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
    render_bundle_encoder300.popDebugGroup();
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    const array7 = new Float32Array([0.25, -0.25, 0.25, -0.25, 0.5, 0.0, -0.75, -0.25, -0.75, 1.0, -0.25, -1.0, 0.75, -0.25, 0.0, -0.25, 1.0, 0.5, 1.0, -0.25, 0.25, 0.25, 0.25, 0.0, 1.0, 1.0, 0.25, -0.75, 0.5, -1.0, -0.5, 0.0, 1.0, 1.0, -1.0, -0.75, -0.75, -0.75, -1.0, 0.25, -0.25, -0.75, 0.25, -1.0, 0.75, 0.75, -0.5, -0.25, -1.0, 0.75, 1.0, -0.75, -0.25, 0.25, -0.75, 0.5, -0.75, -1.0, 0.75, 0.75, -1.0, 0.75, -0.75, 0.0, -0.75, -1.0, -1.0, 1.0, 0.25, -0.25, 0.25, 0.75, -0.25, 0.25, -1.0, 0.75, 0.0, 0.75, 0.25, -1.0, 0.5, 1.0, 0.0, -1.0, 0.0, 0.0, -0.5, 0.25, -0.5, -1.0, -0.75, -0.75, 0.0, -0.5, 0.25, -0.5, 0.75, 0.25, 0.5, -0.5, ]);
    device50.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
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
    device40.pushErrorScope("out-of-memory");
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    query300.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    texture400.destroy();
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_buffer401 = command_encoder401.finish();
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    const array8 = new Float32Array([0.25, -0.75, -1.0, -0.5, -1.0, 1.0, 0.0, 0.25, 0.5, 0.25, -1.0, 0.75, -0.25, 0.25, -0.25, -0.25, 0.0, -0.5, 1.0, -0.25, 1.0, 0.0, -1.0, 0.5, -0.75, 0.5, 1.0, 0.25, 1.0, 1.0, -0.25, 1.0, -0.5, -0.75, -0.75, 1.0, 1.0, -0.5, 0.25, 0.0, 0.0, -0.75, 1.0, 0.25, -1.0, 0.75, 0.75, 0.0, 1.0, 1.0, 0.75, -0.25, 0.5, -1.0, -0.25, 0.25, -1.0, 0.0, 0.0, 0.75, 0.0, 0.25, -0.5, 0.5, -1.0, -0.25, -1.0, -0.75, -0.5, 0.0, 0.0, 0.0, 0.0, -0.75, 0.0, 0.25, -0.5, 0.0, -0.25, -1.0, 0.25, -1.0, 0.5, 0.0, -0.5, -0.75, 0.5, -0.5, 0.25, -0.25, 0.0, 1.0, 0.5, 0.0, -0.25, -0.75, -1.0, 0.0, 0.5, -1.0, ]);
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    
    
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    
    
    device20.destroy();
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    device50.pushErrorScope("out-of-memory");
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    const command_buffer400 = command_encoder400.finish();
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    const texture_view2013 = texture201.createView({ label: "texture_view2013" });
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    
    
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    query301.destroy()
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    command_encoder301.clearBuffer(buffer301);
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
    
    
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    buffer402.destroy()
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    command_encoder402.clearBuffer(buffer401);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder402.copyBufferToBuffer(
        buffer400,
        0,
        buffer401,
        0,
        400
    );
    device40.queue.submit([command_buffer401, ]);
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    buffer400.destroy()
    
    command_encoder402.clearBuffer(buffer403);
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    
    query300.destroy()
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder301.copyTextureToBuffer(
        {
            texture: texture301
        },
        {
            buffer: buffer301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder403.copyBufferToBuffer(
        buffer402,
        0,
        buffer403,
        0,
        400
    );
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder302.copyTextureToBuffer(
        {
            texture: texture301
        },
        {
            buffer: buffer301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    command_encoder402.copyTextureToTexture(
        {
            texture: texture400
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const array9 = new Float32Array([0.75, -1.0, 0.0, 0.0, 0.0, -0.75, -0.75, 0.0, 0.75, -0.25, -0.5, -1.0, 0.0, -0.25, 0.0, -0.75, 0.75, -0.75, 0.0, 0.25, -0.25, 0.75, 0.25, -0.5, 1.0, -0.5, -1.0, 1.0, -0.5, -0.5, -1.0, 0.25, 0.25, 1.0, -0.75, 0.25, 0.25, 0.75, -1.0, 0.0, 1.0, 1.0, -1.0, 0.5, 0.25, -0.25, -0.75, 1.0, -0.75, 0.5, 0.75, 0.75, 1.0, -0.25, 0.25, 1.0, 1.0, 1.0, 0.25, -0.75, -0.75, -0.25, 0.0, 0.75, 0.75, 0.75, -0.5, 0.5, 0.5, 0.5, 0.75, 0.5, 0.0, 0.25, 0.5, 0.25, 0.25, -0.75, -0.25, 0.75, 1.0, -0.5, 0.25, -0.5, 1.0, 1.0, 0.25, -0.5, 0.75, 0.75, -0.75, 0.25, 0.25, 0.25, 0.5, -0.75, 0.0, 0.25, -0.75, 0.0, ]);
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    buffer301.destroy()
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder402.clearBuffer(buffer401);
    command_encoder403.clearBuffer(buffer401);
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
    
    command_encoder301.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    command_encoder301.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    compute_pass_encoder3020.setPipeline(compute_pipeline301);
    
    device30.queue.submit([command_buffer300, ]);
    
    
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    buffer303.destroy()
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    command_encoder301.copyTextureToTexture(
        {
            texture: texture300
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
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    command_encoder402.pushDebugGroup("mygroupmarker")
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
    const command_buffer403 = command_encoder403.finish();
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    command_encoder301.copyTextureToTexture(
        {
            texture: texture301
        },
        {
            texture: texture301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder400.popDebugGroup();
    const array10 = new Float32Array([-0.75, 0.75, -0.5, 0.5, -1.0, 0.75, 1.0, 0.25, 0.5, -1.0, 0.5, 0.75, -0.75, -0.25, -0.25, -0.75, 0.25, -0.5, 0.5, -1.0, 0.5, -1.0, 0.75, 0.75, 0.75, -0.5, 0.5, 0.0, 0.0, -0.5, -1.0, -1.0, -1.0, 0.0, 0.5, 0.25, 0.5, 1.0, -0.75, 0.25, 1.0, -0.75, -1.0, 0.75, 0.75, -0.5, 0.75, 0.25, 0.75, -0.75, 0.75, 0.75, 0.0, -1.0, -0.5, -0.75, 1.0, 0.0, -1.0, 0.25, 0.75, 0.75, -0.75, 1.0, 0.75, -0.25, 1.0, -0.5, 0.0, 1.0, -0.25, -1.0, 0.25, 0.25, -0.25, 0.5, 0.0, 0.0, 0.5, -0.25, -0.5, 0.5, 0.75, -0.5, 1.0, -0.25, -1.0, -0.25, 0.5, 0.0, 0.25, -0.75, 0.25, -0.25, 0.0, 0.25, -1.0, 0.0, 0.5, 0.0, ]);
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    texture301.destroy();
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    buffer401.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query301.destroy()
    buffer302.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    command_encoder402.popDebugGroup()
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    buffer403.destroy()
    render_bundle_encoder301.popDebugGroup();
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder400.setPipeline(render_pipeline401);
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer302,
        0
    )
    const command_buffer405 = command_encoder405.finish();
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    command_encoder404.pushDebugGroup("mygroupmarker")
    compute_pass_encoder4040.insertDebugMarker("marker")
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    query300.destroy()
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    command_encoder402.insertDebugMarker("mymarker");
    command_encoder402.copyBufferToBuffer(
        buffer400,
        0,
        buffer401,
        0,
        400
    );
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    texture302.destroy();
    
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    
    
    command_encoder402.insertDebugMarker("mymarker");
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
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group300);
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    device40.queue.submit([command_buffer403, command_buffer405, ]);
    render_pass_encoder3010.setPipeline(render_pipeline300);
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
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    
    compute_pass_encoder3020.popDebugGroup()
    
    
    device60.pushErrorScope("validation");
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    compute_pass_encoder4040.insertDebugMarker("marker")
    
    
    const array11 = new Float32Array([-0.5, 1.0, 0.5, 0.0, 0.75, 0.75, -0.25, 1.0, 0.5, 1.0, 0.25, 0.75, 0.5, 1.0, 0.75, -0.75, 1.0, 0.0, 0.0, 0.5, 0.5, -0.5, -1.0, 1.0, 0.75, 0.75, -0.25, 0.0, -1.0, -0.25, -0.5, -0.5, 0.0, -0.75, 1.0, -0.25, -0.25, -1.0, -0.5, 1.0, -1.0, -0.5, -0.25, -0.25, 0.5, 1.0, 0.25, -0.5, -0.25, -0.25, 0.0, 1.0, 0.5, -1.0, -1.0, -0.5, 1.0, -0.25, -0.75, 1.0, 1.0, 1.0, -1.0, -0.25, 0.75, -0.75, -0.5, 0.0, 0.0, -0.5, 0.75, 0.25, -0.75, 0.5, -1.0, 0.5, 1.0, 1.0, -0.5, 0.0, 1.0, -0.75, 0.75, -1.0, 1.0, -0.75, -0.75, 1.0, 1.0, -0.25, 0.25, -0.25, -0.75, 0.5, 1.0, -0.75, -1.0, 1.0, 0.75, -1.0, ]);
    
    
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    buffer301.destroy()
    device40.queue.submit([command_buffer405, ]);
    command_encoder406.pushDebugGroup("mygroupmarker")
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_encoder407 = device40.createCommandEncoder({ label: "command_encoder407" });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    device30.queue.writeTexture({ texture: texture300 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer402 = command_encoder402.finish();
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
    render_bundle_encoder300.setPipeline(render_pipeline301);
    device00.destroy();
    texture300.destroy();
    command_encoder406.clearBuffer(buffer402);
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("internal");
    
    query301.destroy()
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout302]
    });
    device40.queue.writeBuffer(buffer404, 0, array4, 0, array4.length);
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device60.pushErrorScope("internal");
    device00.queue.writeTexture({ texture: texture000 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout307,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
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
    compute_pass_encoder4040.setPipeline(compute_pipeline400);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer302.destroy()
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer305, 0, array11, 0, array11.length);
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
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    
    query300.destroy()
    command_encoder406.popDebugGroup()
    device20.queue.writeTexture({ texture: texture200 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    render_bundle_encoder301.setPipeline(render_pipeline302);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    const command_buffer407 = command_encoder407.finish();
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout305,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.popDebugGroup();
    
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
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
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout306,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout309,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    
    render_bundle_encoder302.setPipeline(render_pipeline301);
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_bundle_encoder401.setPipeline(render_pipeline402);
    
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    const compute_pipeline3045 = device30.createComputePipeline({
        label: "compute_pipeline3045",
        layout: pipeline_layout309,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer404, 0, array10, 0, array10.length);
    buffer308.destroy()
    texture600.destroy();
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline3046 = device30.createComputePipeline({
        label: "compute_pipeline3046",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    buffer406.destroy()
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
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
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3047 = device30.createComputePipeline({
        label: "compute_pipeline3047",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer309, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer309, 0);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group402);
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group403);
    compute_pass_encoder4040.popDebugGroup()
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4013, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4013, 0);
    compute_pass_encoder3020.end();
    device40.queue.submit([command_buffer402, command_buffer403, ]);
    const command_buffer406 = command_encoder406.finish();
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder4040.end();
    device30.queue.submit([command_buffer300, ]);
    device60.queue.submit([]);
    const command_buffer302 = command_encoder302.finish();
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group302);
    device40.queue.submit([command_buffer403, command_buffer406, command_buffer407, ]);
    render_pass_encoder3010.setVertexBuffer(0, buffer309);
    command_encoder404.popDebugGroup()
    render_pass_encoder3010.drawIndirect(buffer309, 0);
    device40.queue.submit([command_buffer401, ]);
    const command_buffer404 = command_encoder404.finish();
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder4040.popDebugGroup()
    device40.queue.submit([command_buffer403, command_buffer407, ]);
    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4015,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group404);
    device40.queue.submit([command_buffer404, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4040.end();
    render_pass_encoder3010.end();
    device60.queue.submit([]);
    device30.queue.submit([]);
    command_encoder301.popDebugGroup()
    const command_buffer301 = command_encoder301.finish();
    device60.queue.submit([]);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3012, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3012, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder3020.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3010.drawIndirect(buffer3012, 0);
    device40.queue.submit([command_buffer403, command_buffer407, ]);
    compute_pass_encoder3020.popDebugGroup()
    device40.queue.submit([command_buffer406, ]);
    compute_pass_encoder3020.end();
    render_pass_encoder3010.drawIndirect(buffer302, 0);
    device40.queue.submit([command_buffer405, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder4040.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer401, command_buffer403, ]);
}