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
    const array0 = new Float32Array([1.0, -0.5, 0.0, 1.0, 0.0, -1.0, 0.25, -0.5, -0.75, -0.5, 1.0, 0.0, 1.0, -0.25, -0.5, -0.25, 0.0, -0.75, -0.25, 0.75, 0.25, 0.75, 0.0, -1.0, 0.25, -0.75, -0.5, -0.25, -0.5, 1.0, 0.5, 0.25, -1.0, -0.25, -0.75, -0.75, -0.25, -0.5, 0.25, 0.25, 0.25, 0.25, 0.25, 1.0, 0.75, 0.75, 0.75, -0.5, -1.0, 0.75, 1.0, -1.0, 1.0, -0.5, -1.0, 0.75, -0.25, 0.75, 0.25, 0.25, 0.5, -0.5, 0.25, -0.25, 1.0, 0.0, 1.0, 0.25, 0.0, -1.0, 0.5, 0.0, 0.0, 0.5, -0.25, -0.5, 0.25, -0.75, -1.0, 0.5, 0.5, -0.5, 0.0, -0.75, 0.25, 0.25, 0.25, 0.75, 0.25, 1.0, -0.5, 1.0, 1.0, 0.5, -0.75, -0.5, 1.0, 1.0, -1.0, 1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.75, 0.25, -0.5, -0.25, 0.0, -0.5, -0.75, 0.75, -0.75, 0.5, -1.0, 0.5, -0.25, -0.25, 0.75, 0.75, -0.5, 0.0, 0.75, 0.75, 0.25, 0.5, 0.25, -0.5, -0.5, 0.75, -0.75, 0.75, 0.25, -1.0, 0.25, -0.75, -0.75, 0.5, 1.0, 0.5, -1.0, -0.5, 0.0, 0.5, -0.75, -0.75, -1.0, -0.5, 0.5, -0.5, 1.0, -0.5, -0.25, 1.0, -0.75, 0.5, 1.0, -0.25, 0.5, -0.75, -1.0, -0.5, 0.5, 0.25, -0.75, 0.0, -0.25, 0.0, 0.75, -1.0, -0.25, 0.75, -1.0, -0.25, 1.0, -1.0, -0.75, -0.25, -0.75, 0.25, 0.25, 0.5, -0.75, 1.0, -0.75, 0.75, 1.0, -0.5, 0.75, -0.75, 0.0, -1.0, -0.25, -0.25, 0.0, 0.0, 0.0, -1.0, 0.5, -0.25, -0.5, 1.0, 0.25, 0.0, ]);
    const array2 = new Float32Array([1.0, -0.25, 1.0, 0.5, 0.75, -0.25, 0.0, -0.5, 0.75, -0.25, 1.0, 0.75, -0.75, 1.0, 0.5, 1.0, 0.0, 0.75, -1.0, -0.25, 0.25, -0.5, -0.25, 1.0, -1.0, 0.5, 0.75, 1.0, 0.25, 0.5, -0.5, 0.25, -0.25, -0.75, 0.25, 0.75, 0.5, 0.0, -0.75, 0.75, -0.75, 1.0, 0.25, -0.5, 0.75, 0.75, -1.0, -1.0, 1.0, 1.0, -0.5, 0.5, 1.0, -0.25, 0.25, -1.0, -0.25, 1.0, -0.25, 1.0, 0.25, -1.0, -0.25, 0.75, 0.25, 0.0, -0.5, -1.0, -0.25, -0.5, 0.25, -0.25, 0.5, 0.25, -0.75, 1.0, -0.25, -0.25, -0.75, 0.0, 0.75, -0.75, -0.25, 0.5, 0.5, -0.75, -1.0, -0.5, 1.0, -0.5, 1.0, 0.0, -0.75, 0.5, 0.5, -0.25, 1.0, 0.0, 0.0, -1.0, ]);
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array3 = new Float32Array([0.5, 0.0, -1.0, -1.0, 0.25, -0.25, -0.25, -0.75, -0.5, 1.0, -0.5, 0.75, -0.5, -1.0, 1.0, -0.25, 0.0, 1.0, -0.5, -1.0, 0.25, -0.75, 0.0, 0.25, -1.0, 0.25, 0.0, -1.0, 0.0, 0.5, -0.25, -0.75, 0.75, -0.75, 0.75, -1.0, -1.0, -1.0, -0.75, 0.0, -0.25, -0.75, 1.0, 0.5, 1.0, -0.25, 1.0, 0.25, -0.5, 0.0, 0.0, -0.25, 0.25, -0.5, -1.0, -1.0, 0.5, 1.0, -1.0, -0.5, 0.25, -0.25, 0.25, 0.5, -0.75, -0.75, 0.25, 1.0, 0.0, -1.0, 1.0, 0.75, 0.25, 0.5, 0.0, -1.0, -0.75, -1.0, 0.0, 0.0, -0.5, 0.5, -0.75, 0.0, 1.0, 0.75, -0.5, -0.75, -0.25, -0.25, -0.5, -0.75, -0.5, 0.5, -1.0, 0.25, -0.5, 1.0, -0.75, 0.0, ]);
    device20.destroy();
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
    const array4 = new Float32Array([-0.5, 0.0, 0.0, 0.0, -0.25, 0.5, 0.75, -0.5, -0.25, 1.0, 0.0, -0.25, -0.25, -0.75, 0.5, 0.5, 0.5, 0.5, 1.0, -0.25, 1.0, 0.25, 0.0, -0.75, 0.25, -0.25, -0.75, -0.75, 1.0, 0.0, 1.0, -0.25, 0.75, 0.75, 0.25, -0.5, 0.75, 0.0, 0.0, -1.0, -1.0, -0.25, 0.5, -0.75, -0.25, 0.5, 1.0, -0.25, -0.5, -0.75, -0.75, 0.25, 0.5, -0.25, 0.25, 0.75, -0.5, -0.75, -0.25, 0.75, -0.5, -1.0, -0.25, -0.25, -0.75, -0.5, -0.75, 0.75, -0.5, -0.75, 0.5, -1.0, 0.0, 1.0, -0.5, -1.0, -0.5, -0.25, 0.0, 0.5, 0.0, -0.25, 0.25, 0.0, 0.5, -0.75, 1.0, -0.75, -0.5, -1.0, 0.75, 0.25, 0.75, -0.25, 0.0, -0.75, 1.0, -1.0, 0.0, -0.5, ]);
    device00.destroy();
    
    const array5 = new Float32Array([0.5, 0.75, 0.0, 0.25, 1.0, -0.25, -1.0, 0.0, -0.75, -0.25, 0.0, -0.5, -1.0, 0.5, -0.75, -1.0, 0.5, -1.0, 0.0, 1.0, 0.5, 0.75, -0.25, 0.25, 1.0, -0.75, -1.0, 0.5, 1.0, -1.0, 0.25, -0.75, -0.5, 0.25, -1.0, -0.75, 0.25, 0.25, -1.0, 0.5, 0.75, 0.75, -0.25, -0.75, -0.5, 0.75, -0.5, -0.25, 0.5, 0.0, 0.25, -0.5, -0.75, 1.0, 0.25, -0.75, -0.25, 0.25, 0.5, 0.5, 0.75, 1.0, -0.25, -0.5, 0.75, -1.0, 0.0, 0.75, -0.75, 0.5, 0.0, -0.5, 0.5, 0.25, 0.0, -0.75, -0.5, -1.0, 0.25, 0.5, 0.75, 0.25, 0.25, -0.75, -0.5, 0.75, -0.75, -1.0, 0.5, 0.5, 0.5, -1.0, -0.75, 0.0, 0.75, -0.5, 0.5, 1.0, 0.0, 0.75, ]);
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const array6 = new Float32Array([-0.5, -0.5, -0.75, 0.5, 0.0, -0.25, 1.0, -0.5, -0.5, 1.0, -0.25, -0.75, -0.75, 0.5, -0.25, 0.25, 0.5, 1.0, -0.25, 0.0, -0.5, -1.0, 0.5, 0.75, -0.75, 1.0, 0.25, -0.75, 0.0, -0.25, 0.0, 0.75, 0.0, 0.5, 0.5, -0.5, 1.0, -0.75, 0.5, -1.0, -0.75, -0.75, -0.5, -0.25, -0.5, 0.5, 0.25, 0.0, -0.25, -0.5, -0.25, -0.5, 0.75, -1.0, 0.75, 1.0, 0.5, 0.25, 0.0, -1.0, 0.25, 0.25, 1.0, -0.75, -0.75, 0.75, 1.0, -0.25, 1.0, -1.0, 0.75, -0.5, 0.25, -0.5, 0.0, 0.25, 0.25, -0.25, -0.5, -0.25, -0.25, -1.0, -0.75, 0.75, -0.75, -0.25, 0.75, 0.5, -0.25, 0.0, 0.25, -1.0, -0.5, 0.25, 1.0, -0.5, -0.25, -0.5, 0.0, 1.0, ]);
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder301.insertDebugMarker("mymarker");
    device00.pushErrorScope("internal");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    command_encoder300.insertDebugMarker("mymarker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
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
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    device20.pushErrorScope("validation");
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    compute_pass_encoder3000.popDebugGroup()
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    command_encoder302.insertDebugMarker("mymarker");
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    command_encoder301.clearBuffer(buffer300);
    
    texture200.destroy();
    command_encoder301.insertDebugMarker("mymarker");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    device40.pushErrorScope("out-of-memory");
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
    device30.destroy();
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_buffer301 = command_encoder301.finish();
    device40.pushErrorScope("internal");
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
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
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
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device40.pushErrorScope("validation");
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer401.destroy()
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query400.destroy()
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.setVertexBuffer(0, buffer400);
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view4003 = texture400.createView({ label: "texture_view4003" });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query401.destroy()
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer402.destroy()
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    
    
    const array7 = new Float32Array([-0.5, 0.5, -1.0, -0.5, -0.75, -0.25, 0.75, -0.25, 1.0, 0.0, 0.25, 1.0, 0.5, -0.25, -0.25, -0.25, 0.25, 0.5, 0.25, 1.0, 0.75, -0.5, -1.0, 0.0, -0.5, 0.75, -0.75, -0.75, 0.25, -0.25, -0.5, 0.75, -0.5, -0.75, -0.25, -1.0, 0.5, 0.5, 1.0, -0.75, 0.75, 0.25, 0.0, 0.25, 0.5, 1.0, -0.75, -1.0, -0.75, 1.0, -1.0, -0.5, 0.0, 0.5, 0.5, -0.25, 0.0, -1.0, 0.75, -0.5, 0.5, 0.0, -0.25, -1.0, -0.25, 0.5, 0.25, 0.0, 0.25, 0.0, 0.0, -0.75, -1.0, -0.25, 0.5, 0.0, -0.75, -0.25, -0.25, -0.25, 0.75, -0.25, -0.25, -0.75, 0.5, 0.75, 0.0, -0.75, -1.0, -0.25, 0.5, 0.0, -1.0, -0.5, -0.5, -0.5, 0.75, -0.25, 0.0, 0.5, ]);
    
    
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query401.destroy()
    
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    
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
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    
    command_encoder302.copyBufferToBuffer(
        buffer300,
        0,
        buffer300,
        0,
        400
    );
    query500.destroy()
    buffer500.destroy()
    
    query400.destroy()
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.submit([]);
    texture401.destroy();
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    
    render_bundle_encoder400.draw(3);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder302.insertDebugMarker("mymarker");
    
    
    device40.queue.writeBuffer(buffer403, 0, array7, 0, array7.length);
    
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    buffer500.destroy()
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
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture_view4004 = texture400.createView({ label: "texture_view4004" });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_bundle_encoder400.draw(3);
    buffer403.destroy()
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    buffer400.destroy()
    const texture_view4005 = texture400.createView({ label: "texture_view4005" });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    buffer501.destroy()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture402.destroy();
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer402.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder401.setPipeline(render_pipeline403);
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const array8 = new Float32Array([0.5, -0.25, 0.0, -1.0, 0.25, 0.5, -0.5, 0.25, 1.0, 0.0, -0.75, -1.0, 0.0, -0.25, -0.75, -1.0, 0.5, 0.5, -0.75, 1.0, -1.0, 0.5, -0.5, 0.0, -0.5, -0.75, 0.0, 0.25, 0.75, -0.75, -0.75, 0.5, 0.0, 1.0, 0.5, 0.5, 0.75, -1.0, -0.25, 0.5, -0.75, -0.75, -0.75, 0.0, 0.75, -1.0, -1.0, -0.5, 0.0, 1.0, 0.25, 0.25, 0.25, -0.5, -0.5, -0.5, -1.0, -0.75, 0.25, -0.5, -0.25, -0.75, 0.5, 0.25, -0.75, -1.0, 0.0, 0.25, -0.25, 0.5, 1.0, -0.25, 1.0, 0.25, -1.0, 0.0, 0.0, -1.0, -1.0, 0.75, -1.0, 0.75, 0.75, -0.5, 1.0, -0.25, -1.0, 0.25, 0.25, 0.25, 1.0, 0.0, 0.5, -0.75, -0.5, 1.0, 0.5, -0.75, -0.25, 0.75, ]);
    device40.destroy();
    query500.destroy()
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device50.queue.submit([]);
    device50.pushErrorScope("internal");
    
    query501.destroy()
    device60.destroy();
    
    
    command_encoder302.popDebugGroup()
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array9 = new Float32Array([-1.0, -0.5, 0.75, 1.0, -0.5, -0.5, 1.0, -1.0, 1.0, 0.5, 0.5, 1.0, -1.0, 0.5, 0.0, -1.0, -1.0, 0.5, -0.75, 0.5, -1.0, -0.5, 1.0, 0.5, 0.0, 0.0, -0.25, 0.5, 0.5, 0.75, 0.25, -0.5, -0.25, -0.75, 1.0, 0.0, -1.0, 1.0, -0.75, -1.0, 1.0, 0.0, -0.25, 0.5, 0.25, 0.25, 0.75, 0.5, -0.25, -0.5, -1.0, 0.0, 0.25, 0.75, 1.0, 0.5, -0.25, 0.25, -1.0, 0.75, -1.0, -0.5, 0.75, 0.5, 0.25, -1.0, -0.5, 0.0, 0.75, -0.5, 0.75, -0.75, -0.5, 1.0, 0.5, -0.75, -1.0, 1.0, 0.25, -1.0, 0.5, 0.0, 0.25, 0.75, 0.25, 0.5, -0.5, -0.5, 0.5, 0.75, 0.25, 0.0, 1.0, -0.75, -0.25, 0.75, 0.75, -0.75, 0.25, -0.5, ]);
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device70.pushErrorScope("internal");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    command_encoder500.clearBuffer(buffer500);
    
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
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    query700.destroy()
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_bundle_encoder401.insertDebugMarker("marker");
    
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
    
    compute_pass_encoder5000.setPipeline(compute_pipeline502);
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
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
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.popDebugGroup()
    
    
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    device50.queue.writeBuffer(buffer502, 0, array8, 0, array8.length);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    const array10 = new Float32Array([0.0, 0.75, -0.25, 0.25, 1.0, 0.75, 0.0, 1.0, -1.0, 1.0, 0.75, 0.25, 0.25, -0.25, 0.75, 0.5, -0.25, -0.5, 1.0, -1.0, 0.0, 0.0, 0.0, 0.5, 1.0, 0.5, 0.5, -0.75, -1.0, -0.5, 0.25, -0.5, 0.25, -0.75, 0.0, -1.0, -0.5, 0.5, 0.75, 1.0, -0.25, -0.75, 0.75, -1.0, 0.0, -0.5, 0.0, 0.0, 0.5, 0.5, 0.75, 0.0, -0.5, -0.5, 0.0, -0.25, 0.0, 0.0, -0.75, -0.75, -1.0, 0.25, 0.25, 0.75, 0.0, -0.25, 1.0, 0.5, 0.75, 0.25, 0.5, 0.0, -0.25, 1.0, -0.5, -0.75, -1.0, -0.75, 0.75, 0.75, -0.5, 0.25, -0.75, 1.0, -0.25, 0.0, -0.25, -0.5, -0.5, 0.75, 0.0, 0.75, -0.25, -0.25, -0.25, -1.0, 0.25, -0.5, -0.25, 0.0, ]);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder5000.popDebugGroup()
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
    
    
    query501.destroy()
    buffer503.destroy()
    
    render_bundle_encoder500.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group501);
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device70.destroy();
    device50.queue.writeBuffer(buffer504, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer502, 0, array7, 0, array7.length);
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    device50.queue.writeBuffer(buffer505, 0, array6, 0, array6.length);
    
    const array11 = new Float32Array([-0.5, -0.25, -0.25, -1.0, -1.0, 0.0, 0.75, -0.75, -0.5, 0.0, 0.0, 0.5, 0.5, -0.25, 0.5, 0.75, -0.75, 0.25, -0.25, 0.25, -0.75, 0.75, -0.75, -0.75, 1.0, -1.0, 0.5, -0.25, 0.75, -0.5, 0.75, -0.75, -1.0, -0.75, -0.25, 0.75, 1.0, 0.0, 0.5, 0.25, 0.0, 0.0, 0.0, 1.0, 0.75, 0.25, 0.75, -1.0, -0.25, 0.5, 0.25, -1.0, 0.75, -1.0, -1.0, 1.0, 1.0, 0.25, 0.25, 0.25, -0.25, 0.5, -1.0, 0.5, 1.0, -0.75, 0.75, -0.75, 1.0, 0.25, 0.0, 0.25, -0.25, -0.5, 0.25, -0.5, 0.0, 0.5, 0.0, -0.25, -0.25, 0.75, 0.75, -1.0, 0.0, -0.75, -0.25, 0.75, -0.25, 0.25, -1.0, 0.25, 0.25, -1.0, 0.75, 0.0, -0.75, -1.0, 0.0, 1.0, ]);
    
    
    
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer507, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer507, 0);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device50.queue.writeBuffer(buffer507, 0, array11, 0, array11.length);
    
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    device50.queue.writeBuffer(buffer507, 0, array10, 0, array10.length);
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    device50.queue.writeBuffer(buffer507, 0, array9, 0, array9.length);
    
    buffer505.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer507, 0, array11, 0, array11.length);
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    
    
    
    
    render_bundle_encoder501.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    buffer507.destroy()
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    texture500.destroy();
    query700.destroy()
    device50.queue.writeBuffer(buffer504, 0, array1, 0, array1.length);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    buffer502.destroy()
    
    device50.queue.writeBuffer(buffer506, 0, array9, 0, array9.length);
    device50.queue.writeBuffer(buffer507, 0, array6, 0, array6.length);
    
    
    
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    
    
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    buffer507.destroy()
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    query501.destroy()
    
    
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder500.popDebugGroup();
    
    {
        await buffer506.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer506.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer506.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    command_encoder302.pushDebugGroup("mygroupmarker")
    command_encoder500.clearBuffer(buffer501);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    
    device50.queue.writeTexture({ texture: texture501 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    query800.destroy()
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query500.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device50.queue.writeBuffer(buffer507, 0, array1, 0, array1.length);
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    buffer506.destroy()
    device80.queue.writeTexture({ texture: texture800 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout504]
    });
    device80.queue.writeTexture({ texture: texture800 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeTexture({ texture: texture800 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    render_bundle_encoder501.setPipeline(render_pipeline500);
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    command_encoder501.clearBuffer(buffer508);
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    
    device50.queue.writeBuffer(buffer504, 0, array1, 0, array1.length);
    command_encoder501.clearBuffer(buffer505);
    
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    texture800.destroy();
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout504]
    });
    command_encoder501.copyBufferToBuffer(
        buffer500,
        0,
        buffer505,
        0,
        400
    );
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_bundle_encoder800.insertDebugMarker("marker");
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder5000.end();
    compute_pass_encoder5000.popDebugGroup()
    const command_buffer501 = command_encoder501.finish();
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer501, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder302.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer500, ]);
}