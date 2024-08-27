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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    device20.destroy();
    
    const array0 = new Float32Array([0.0, -0.5, 0.25, 0.5, 0.25, -0.5, 1.0, -0.25, -1.0, 0.75, 0.0, -1.0, -0.5, 0.0, 0.5, -1.0, -0.5, 0.25, -0.25, -0.5, 0.25, -1.0, 0.75, 0.75, 0.0, -0.5, 0.75, 0.25, 0.25, 1.0, -0.75, 0.75, -0.25, 0.75, 0.75, 0.5, -0.25, 0.75, 0.75, 0.25, -0.25, 0.25, -0.5, 1.0, 0.5, 0.75, 0.0, 0.75, 0.0, -1.0, 0.0, 0.5, 0.0, -0.5, -0.5, 0.5, 1.0, 1.0, 0.5, 0.25, 0.0, 0.0, -0.75, 0.5, -0.5, 1.0, 1.0, 0.0, 1.0, 0.5, 0.0, 0.5, 0.75, -0.5, -0.5, 0.75, -0.5, 0.75, -0.25, 0.0, -0.25, 1.0, -0.5, 1.0, -0.25, -0.5, 0.75, 0.75, 0.5, 0.75, -1.0, 1.0, 0.75, 0.5, 1.0, -0.25, 0.25, 0.5, 0.5, -0.25, ]);
    const array1 = new Float32Array([0.0, -0.25, 0.5, -0.5, -1.0, 0.75, -0.5, 1.0, -1.0, -0.75, 0.5, -0.25, -0.75, 0.25, -0.75, 0.25, -1.0, -1.0, 0.75, -0.25, -0.25, 0.75, -0.5, -1.0, 0.0, -0.25, -0.75, -0.75, -0.75, -0.25, 0.5, 1.0, 0.25, -0.5, 0.5, -0.5, -0.75, -1.0, 0.25, 0.0, 0.0, -0.25, 0.75, -0.25, -0.75, 1.0, -0.75, 0.5, 0.25, 0.5, 0.75, -0.25, 0.25, -1.0, 0.0, -0.75, 0.0, -0.25, 0.5, 0.0, -0.25, -0.25, -0.25, -0.75, -0.5, 0.75, 0.25, -0.75, 0.75, 0.75, 0.75, 0.75, 0.75, 0.75, -0.75, -0.5, -0.75, -1.0, 1.0, 0.25, 0.5, 0.75, -0.25, -0.5, 0.25, -1.0, -1.0, 0.25, -0.5, 0.25, 0.75, -0.5, 1.0, -0.75, -0.25, 0.25, 0.25, -0.25, -1.0, -0.5, ]);
    
    
    const array2 = new Float32Array([0.25, 0.5, 0.75, 0.75, -0.75, 0.25, 0.25, 1.0, 0.25, 0.0, 0.25, 0.25, 1.0, -1.0, -1.0, -1.0, 0.0, 0.5, 0.5, -0.5, 1.0, -0.75, -0.75, 0.75, -0.25, 0.25, -0.5, 1.0, -0.5, 0.25, 0.0, 0.25, 0.0, 0.0, 0.25, -0.75, -0.5, 0.5, 1.0, 0.75, 0.5, 1.0, 0.25, 0.75, 0.25, 0.0, -1.0, 0.5, -0.25, 1.0, -1.0, 0.5, 0.75, 0.75, 0.0, -0.75, -1.0, -0.5, -1.0, -0.25, 0.0, -0.25, 1.0, -0.25, -1.0, -1.0, 0.0, -0.25, 0.25, -1.0, -1.0, -0.25, 0.75, -0.5, -0.75, -0.5, 0.25, 0.25, 1.0, -0.5, 0.75, 1.0, 0.5, 0.5, -1.0, 0.75, -0.75, 0.25, 1.0, -0.25, -0.5, 0.75, 0.5, 0.75, 0.5, 0.25, 0.0, 0.25, -0.5, 0.5, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    device00.destroy();
    
    
    
    const array3 = new Float32Array([1.0, -0.5, 0.0, 0.0, 0.25, 0.5, -0.5, 1.0, 0.75, 0.0, -0.5, 0.25, 1.0, 0.5, -1.0, 0.0, 0.0, 1.0, 0.5, 0.25, -0.5, -0.5, 0.25, 0.0, -0.75, 0.5, 1.0, 0.75, -0.25, 0.25, -0.25, -0.5, 0.0, -1.0, 0.25, -0.5, -0.25, 0.5, 0.75, 0.0, 0.25, -0.25, -0.75, 0.75, -0.5, -0.5, 0.0, 0.25, 0.75, -0.25, 0.0, 0.75, 0.0, 0.5, -0.5, -0.25, -0.5, 0.75, -0.75, 0.25, -0.25, 0.75, 0.5, 1.0, -0.75, 0.5, -0.5, 0.0, -0.75, -0.5, -0.75, 1.0, 0.5, -1.0, 1.0, -0.25, -1.0, -1.0, -0.5, 0.75, 0.5, -0.75, 0.25, -0.25, -1.0, 0.0, -0.25, -0.5, 0.5, -0.75, -0.25, 1.0, 0.75, -1.0, -1.0, 0.5, 1.0, 1.0, 1.0, 0.5, ]);
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array4 = new Float32Array([0.25, -0.5, -1.0, 1.0, 0.25, -0.5, -0.5, -0.25, -0.75, -1.0, -1.0, -1.0, -0.5, -0.25, 0.25, 0.25, -0.75, 1.0, 0.5, -0.75, 0.25, 1.0, 0.25, 0.0, 0.0, -1.0, -0.25, 0.25, -0.25, -0.5, 1.0, 0.75, -0.25, 0.5, 0.0, -0.5, 0.75, -1.0, -0.25, 0.25, -1.0, 0.5, -0.5, -0.75, 0.75, -1.0, -0.5, 0.0, -0.75, -1.0, -0.75, -0.25, 1.0, -1.0, 1.0, 1.0, 0.25, -0.25, 0.5, -0.25, -1.0, -1.0, 0.5, -0.5, -0.75, 0.25, 0.5, 0.0, 0.75, -0.25, -0.5, 1.0, -0.5, 0.0, -0.75, -0.25, 1.0, -0.25, 0.75, -0.75, 0.0, 0.5, -0.5, 0.25, 0.5, 0.25, -0.5, 0.25, 0.5, 0.75, -1.0, 0.75, 0.0, 0.0, 0.25, 1.0, -0.5, -1.0, 0.0, 0.5, ]);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array5 = new Float32Array([0.5, 0.75, -0.25, 1.0, 0.5, -0.25, 0.0, -0.5, -0.25, -0.5, 1.0, 0.75, 0.25, 0.5, 0.0, -0.25, -0.25, 0.75, 0.5, -0.75, -0.5, -0.25, 0.25, 0.0, 0.5, -0.25, 0.25, 0.5, 1.0, 0.0, 0.25, -1.0, -0.25, -0.5, 0.5, -0.75, -0.5, 0.5, 0.0, -0.25, -0.75, -1.0, 0.5, -0.25, -0.5, 0.25, -0.25, -0.5, 0.75, 0.5, -0.25, 1.0, 1.0, 1.0, -0.25, 1.0, 0.75, -0.25, -0.75, 0.25, -0.25, -1.0, 0.5, -0.5, -0.25, 0.25, 0.5, -0.25, -0.75, -0.25, 0.5, 0.25, 0.25, 0.75, -0.75, -0.5, 0.75, 0.0, -1.0, 0.75, -0.25, -1.0, -0.5, 0.5, 1.0, -0.25, -0.25, 0.75, 0.75, 1.0, 0.75, 0.75, 1.0, -0.5, -1.0, 0.5, -0.5, -0.5, 0.25, -0.75, ]);
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.destroy();
    const array6 = new Float32Array([-0.25, -0.75, 0.0, 0.25, 0.0, -1.0, -0.75, -1.0, -0.75, 0.25, -0.75, 0.25, 0.0, 0.5, -0.25, -0.75, 0.0, 0.5, -0.25, -0.75, -0.75, 0.5, 0.0, -1.0, 1.0, 0.25, -0.25, 0.5, 0.5, -0.25, 0.0, -0.5, 0.0, -0.75, 0.75, 0.0, -0.75, -1.0, 0.75, 0.5, 0.5, 0.5, 0.0, 0.0, 0.5, -0.5, 1.0, 0.5, -1.0, 0.75, 0.5, -0.5, -1.0, -0.25, -1.0, 0.0, 1.0, 0.25, -0.5, 0.0, 0.0, 0.25, -0.25, -0.5, 1.0, -0.75, -0.5, 0.25, -0.75, 0.0, 0.5, -1.0, -0.75, -0.75, 0.25, 0.5, 0.75, 0.25, -0.75, -1.0, 0.75, -0.75, 0.5, -0.75, -1.0, 0.5, -0.5, 0.25, 0.25, 0.75, 0.75, -0.75, -0.25, 0.5, 0.0, 0.25, 0.0, -0.75, 0.25, -0.5, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const command_buffer300 = command_encoder300.finish();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder300.popDebugGroup();
    query300.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    query300.destroy()
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    query400.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    texture400.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    
    buffer300.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    texture400.destroy();
    device60.pushErrorScope("internal");
    
    device30.pushErrorScope("internal");
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    device50.pushErrorScope("validation");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
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
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device40.destroy();
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query600.destroy()
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
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
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.destroy();
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
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    buffer301.destroy()
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    query300.destroy()
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    query300.destroy()
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
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
    
    
    buffer302.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder600.setPipeline(render_pipeline600);
    render_bundle_encoder100.setPipeline(render_pipeline101);
    query600.destroy()
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    texture500.destroy();
    
    
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer601,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer602,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.popDebugGroup();
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    {
        await buffer501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer501.unmap();
        console.log(new Float32Array(data));
    }
    
    query600.destroy()
    
    render_bundle_encoder601.insertDebugMarker("marker");
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    
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
    render_bundle_encoder301.insertDebugMarker("marker");
    device50.destroy();
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder602.setPipeline(render_pipeline600);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    buffer303.destroy()
    
    
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
    
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder601.insertDebugMarker("marker");
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
    
    buffer602.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.pushErrorScope("validation");
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query600.destroy()
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.setVertexBuffer(0, buffer601);
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    query602.destroy()
    render_bundle_encoder600.popDebugGroup();
    
    
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    render_bundle_encoder600.draw(3);
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.setPipeline(render_pipeline600);
    
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    
    
    query301.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    render_bundle_encoder300.popDebugGroup();
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    
    
    
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer605,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group601);
    
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    query301.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    buffer304.destroy()
    buffer604.destroy()
    
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    compute_pass_encoder3010.setPipeline(compute_pipeline301);
    
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    
    render_bundle_encoder301.setPipeline(render_pipeline300);
    
    render_bundle_encoder602.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    device60.destroy();
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    device40.pushErrorScope("validation");
    
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
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
    
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_bundle_encoder301.insertDebugMarker("marker");
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    texture300.destroy();
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
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    
    render_bundle_encoder302.setPipeline(render_pipeline300);
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout308,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout307,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    compute_pass_encoder3010.insertDebugMarker("marker")
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
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
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group300);
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query300
    });
    buffer301.destroy()
    
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder3030.pushDebugGroup("group_marker");
    render_bundle_encoder302.popDebugGroup();
    render_pass_encoder3030.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder302.insertDebugMarker("marker");
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder301.popDebugGroup()
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.popDebugGroup();
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer307, 0, array2, 0, array2.length);
    render_pass_encoder3030.setStencilReference(1);
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_bundle_encoder300.popDebugGroup();
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout309,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3030.setPipeline(render_pipeline300);
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    render_pass_encoder3030.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer307, 0, array0, 0, array0.length);
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
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout309,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    command_encoder304.pushDebugGroup("mygroupmarker")
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder304.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    buffer308.destroy()
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    query302.destroy()
    device70.pushErrorScope("internal");
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder302.setVertexBuffer(0, buffer304);
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    buffer304.destroy()
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout303]
    });
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder3040.setPipeline(compute_pipeline3020);
    buffer306.destroy()
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder3030.popDebugGroup();
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    texture301.destroy();
    
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
    buffer000.destroy()
    command_encoder302.copyBufferToBuffer(
        buffer303,
        0,
        buffer307,
        0,
        400
    );
    {
        await buffer305.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer305.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer305.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder3020.setStencilReference(1);
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout304]
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module301,
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
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder3020.insertDebugMarker("marker");
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    query701.destroy()
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_pass_encoder3020.setPipeline(render_pipeline301);
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    query701.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_bundle_encoder302.setIndexBuffer(buffer301, "uint16");
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout309,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.insertDebugMarker("marker");
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout309,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer307, 0, array2, 0, array2.length);
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query301
    });
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3020.setBindGroup(0, bind_group301);
    compute_pass_encoder3010.popDebugGroup()
    const render_pass_encoder3031 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query303
    });
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3021.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pass_encoder3032 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3032",
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
    render_pass_encoder3032.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_bundle_encoder302.drawIndexedIndirect(buffer307, 0);
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder3032.setPipeline(render_pipeline300);
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
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline3020.getBindGroupLayout(0),
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

    compute_pass_encoder3040.setBindGroup(0, bind_group302);
    render_pass_encoder3021.setPipeline(render_pipeline300);
    render_pass_encoder3020.setVertexBuffer(0, buffer302);
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
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group303);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder3020.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder3020.drawIndirect(buffer3011, 0);
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
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3032.setBindGroup(0, bind_group304);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3032.setVertexBuffer(0, buffer303);
    render_pass_encoder3032.draw(3);
    compute_pass_encoder3040.dispatchWorkgroups(100);
    render_pass_encoder3031.setPipeline(render_pipeline300);
    render_pass_encoder3032.setIndexBuffer(buffer304, "uint16");
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3031.setBindGroup(0, bind_group305);
    render_pass_encoder3020.end();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3031.setVertexBuffer(0, buffer302);
    render_pass_encoder3031.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3031.draw(3);
    compute_pass_encoder3040.end();
    render_pass_encoder3031.draw(3);
    render_pass_encoder3032.draw(3);
    render_pass_encoder3032.end();
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
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
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

    render_pass_encoder3021.setBindGroup(0, bind_group306);
    command_encoder304.popDebugGroup()
    compute_pass_encoder3010.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3021.setVertexBuffer(0, buffer3013);
    render_pass_encoder3021.drawIndirect(buffer3017, 0);
    render_pass_encoder3021.end();
    render_pass_encoder3032.setIndexBuffer(buffer307, "uint16");
    const command_buffer304 = command_encoder304.finish();
    command_encoder302.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder3021.drawIndirect(buffer3012, 0);
    device30.queue.submit([command_buffer304, ]);
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
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3030.setBindGroup(0, bind_group307);
    render_pass_encoder3030.setVertexBuffer(0, buffer302);
    render_pass_encoder3032.setIndexBuffer(buffer3016, "uint16");
    render_pass_encoder3030.draw(3);
    render_pass_encoder3031.drawIndexedIndirect(buffer306, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3030.end();
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
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
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

    compute_pass_encoder3010.setBindGroup(0, bind_group308);
    device20.queue.submit([]);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder3020.popDebugGroup();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder3021.drawIndirect(buffer300, 0);
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder3032.drawIndirect(buffer3025, 0);
    render_pass_encoder3031.drawIndirect(buffer303, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3032.drawIndirect(buffer305, 0);
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer303, command_buffer304, ]);
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
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline3020.getBindGroupLayout(0),
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

    compute_pass_encoder3040.setBindGroup(0, bind_group309);
    render_pass_encoder3031.end();
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
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group3010);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3032.drawIndexedIndirect(buffer3014, 0);
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
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline3020.getBindGroupLayout(0),
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

    compute_pass_encoder3040.setBindGroup(0, bind_group3011);
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3032, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3032, 0);
    device70.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3032.popDebugGroup();
    render_pass_encoder3032.end();
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3021.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3032.setIndexBuffer(buffer3029, "uint16");
    render_pass_encoder3020.draw(3);
    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
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
                    buffer: buffer3033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3034,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3012);
    render_pass_encoder3021.drawIndexedIndirect(buffer3018, 0);
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder3010.popDebugGroup()
    device60.queue.submit([]);
    render_pass_encoder3032.popDebugGroup();
    render_pass_encoder3031.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3032.end();
    render_pass_encoder3021.end();
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer304, ]);
    render_pass_encoder3030.drawIndirect(buffer3032, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder3020.end();
    render_pass_encoder3031.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3032.drawIndexedIndirect(buffer3014, 0);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3031.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3032.drawIndirect(buffer3021, 0);
    device00.queue.submit([]);
    render_pass_encoder3032.drawIndirect(buffer3021, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3032.drawIndirect(buffer3015, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3034, 0);
    render_pass_encoder3030.end();
    device30.queue.submit([]);
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
        layout: compute_pipeline3020.getBindGroupLayout(0),
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

    compute_pass_encoder3040.setBindGroup(0, bind_group3013);
    render_pass_encoder3021.popDebugGroup();
    compute_pass_encoder3040.end();
    render_pass_encoder3021.end();
    render_pass_encoder3030.setIndexBuffer(buffer308, "uint16");
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
        layout: compute_pipeline301.getBindGroupLayout(0),
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
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3032.drawIndirect(buffer3032, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3030.setIndexBuffer(buffer3015, "uint16");
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder3030.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer3030, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3021.end();
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder3020.drawIndexedIndirect(buffer3030, 0);
    device70.queue.submit([]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3021.draw(3);
    compute_pass_encoder3040.dispatchWorkgroups(100);
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

    compute_pass_encoder3010.setBindGroup(0, bind_group3015);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder3030.setIndexBuffer(buffer3016, "uint16");
    device30.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder3031.drawIndirect(buffer3011, 0);
    compute_pass_encoder3040.end();
    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3042 = device30.createBuffer({
        label: "buffer3042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3016 = device30.createBindGroup({
        label: "bind_group3016",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3042,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3016);
    render_pass_encoder3020.drawIndirect(buffer3025, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3031.end();
    const buffer3043 = device30.createBuffer({
        label: "buffer3043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3044 = device30.createBuffer({
        label: "buffer3044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3017 = device30.createBindGroup({
        label: "bind_group3017",
        layout: compute_pipeline3020.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3044,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3017);
    compute_pass_encoder3040.popDebugGroup()
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    const buffer3045 = device30.createBuffer({
        label: "buffer3045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3046 = device30.createBuffer({
        label: "buffer3046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3018 = device30.createBindGroup({
        label: "bind_group3018",
        layout: compute_pipeline3020.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3046,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3018);
    render_pass_encoder3032.drawIndirect(buffer3010, 0);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder3030.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder3021.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3020.drawIndirect(buffer3035, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3047 = device30.createBuffer({
        label: "buffer3047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3047, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3047, 0);
    render_pass_encoder3031.popDebugGroup();
    device30.queue.submit([command_buffer303, command_buffer304, ]);
    render_pass_encoder3032.setIndexBuffer(buffer3038, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer3044, 0);
    render_pass_encoder3021.drawIndirect(buffer309, 0);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3048 = device30.createBuffer({
        label: "buffer3048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3048, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3048, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3047, 0);
    render_pass_encoder3031.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder3030.end();
    render_pass_encoder3032.end();
    render_pass_encoder3030.drawIndirect(buffer3037, 0);
    render_pass_encoder3031.popDebugGroup();
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder3030.setIndexBuffer(buffer3029, "uint16");
    compute_pass_encoder3040.end();
    render_pass_encoder3020.end();
    compute_pass_encoder3010.popDebugGroup()
}