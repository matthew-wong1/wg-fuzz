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
    
    const array0 = new Float32Array([-1.0, -0.25, 0.75, -1.0, 0.25, -0.5, 0.75, -1.0, -0.5, -1.0, 0.25, 0.0, 0.0, 0.25, 0.75, -0.5, 0.5, -0.25, -0.5, -0.5, -0.75, -1.0, 0.0, 1.0, 0.5, -0.25, 0.0, -0.5, 0.5, 0.25, -0.75, 0.5, -0.25, 0.75, -0.75, -0.75, 0.0, 0.25, -0.5, 0.75, -0.75, 1.0, -1.0, 0.25, 1.0, -0.75, 0.75, -0.5, 0.75, 0.25, 0.25, 0.25, 0.0, 0.25, -0.75, 0.25, 0.5, -0.75, 1.0, -1.0, 0.75, 0.25, -0.25, 0.5, 0.25, -1.0, -1.0, 0.25, 1.0, 0.0, -0.5, 0.75, 0.0, 0.75, 0.0, -0.75, -0.5, 0.5, 0.75, 0.25, 1.0, -0.5, -0.5, 1.0, -0.75, 0.5, -0.75, 0.75, -0.5, 0.75, 1.0, 0.75, -0.5, -0.75, -0.5, -1.0, 0.25, 0.0, 0.0, -0.25, ]);
    const array1 = new Float32Array([-0.5, 0.25, -1.0, -1.0, -0.75, 0.0, 0.75, -0.25, 0.0, -0.25, 0.5, -1.0, 0.75, 0.0, -1.0, -0.75, 0.0, -0.75, 0.5, 1.0, 0.5, -1.0, 1.0, 0.25, 0.0, -1.0, -0.75, -0.75, -0.25, -0.25, -0.25, 0.5, 0.5, -1.0, 1.0, 1.0, -1.0, 1.0, -1.0, 1.0, -0.5, 0.75, 1.0, -0.5, -0.25, 0.75, -1.0, -0.5, 1.0, -0.5, -0.75, -0.25, 0.75, -1.0, 0.25, -0.5, 0.75, -0.5, -0.75, -0.75, 0.5, 1.0, -1.0, -1.0, 0.75, 1.0, -0.75, 0.0, 0.0, -1.0, 0.0, 0.0, -0.5, -0.5, 0.5, 0.0, 0.0, -0.25, 0.5, 0.75, -0.75, 0.5, -0.75, -0.5, 0.25, 0.0, 0.75, 1.0, -0.5, -1.0, 1.0, 0.5, 0.0, 1.0, 0.0, -0.75, -0.25, -1.0, 0.0, 0.75, ]);
    const array2 = new Float32Array([-0.25, 0.25, 0.75, 0.25, 0.5, -0.75, 0.5, 0.25, 0.5, -0.25, -0.25, 0.5, -0.75, 0.75, -0.25, -0.25, 0.5, 0.5, 1.0, -1.0, 0.25, 0.25, 0.75, 0.5, 0.75, 0.75, -0.25, -0.75, -0.5, 0.5, -0.75, 0.75, 0.25, 0.5, -0.25, -1.0, -0.75, -0.5, -0.25, -0.75, -1.0, 1.0, 1.0, -0.75, -0.25, 0.75, -0.75, 0.5, 0.0, 0.5, 0.25, 0.0, 0.75, -0.25, 1.0, -1.0, 0.5, -0.75, 1.0, -0.5, -0.75, 0.25, 1.0, 0.75, -1.0, -0.25, -1.0, -1.0, -0.5, 0.0, 0.5, 1.0, 0.0, 0.25, 0.0, 0.5, 0.0, -0.75, 0.75, -0.25, 0.25, 0.75, -1.0, 0.0, -0.5, 0.25, 0.0, -0.5, 0.5, -0.25, -1.0, 0.25, -0.75, 0.0, -0.75, -1.0, -0.25, 0.25, 0.75, -1.0, ]);
    
    const array3 = new Float32Array([0.0, -1.0, -1.0, 0.75, -0.5, 1.0, 0.5, 0.25, 0.5, 1.0, 0.25, -0.5, 0.5, -0.5, -0.5, -0.25, 0.25, -1.0, -0.5, -1.0, 0.0, -0.25, 0.75, 1.0, -1.0, 0.75, 1.0, -0.5, -0.75, 1.0, 0.25, -0.75, -0.5, 0.0, -0.25, 1.0, -0.25, 0.0, 0.25, 0.25, 0.0, -0.25, -0.25, -0.5, 0.0, 0.25, 0.25, 0.0, 0.25, -1.0, 0.75, -0.75, 1.0, 0.5, 0.75, 0.5, -1.0, -0.25, 0.5, 0.0, 0.5, -0.75, 0.75, -0.25, 0.75, -0.75, -1.0, 1.0, 0.25, 0.75, 0.5, 0.25, 0.5, -1.0, 0.0, -0.75, -0.25, -0.5, -0.25, 1.0, 0.25, -0.75, 0.75, -0.25, 0.5, -1.0, 0.0, -0.5, -0.75, -0.5, -0.25, -0.75, 0.75, 0.75, -0.25, -0.25, 0.75, 1.0, -0.5, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([-0.25, 1.0, 1.0, 1.0, 1.0, -0.75, -0.75, -0.75, 0.25, 1.0, 1.0, 0.25, 1.0, -0.5, -0.5, 0.25, -1.0, -1.0, 0.5, -1.0, -0.75, -0.5, -1.0, 0.5, 0.5, 1.0, 0.25, 0.0, -0.75, 0.5, 0.25, 0.0, 0.25, -1.0, 1.0, 0.75, 1.0, 0.0, 0.0, -0.75, -0.25, -0.25, 0.5, 0.75, -0.75, -0.5, -0.75, -0.5, 1.0, 1.0, 0.25, 1.0, 0.0, 1.0, 0.5, 0.5, -0.5, 1.0, 0.25, 0.25, 0.5, 0.0, 0.0, 0.75, 0.5, 0.5, -0.5, 0.0, 0.0, -1.0, 0.25, 0.75, -1.0, 0.0, 0.0, 0.5, 1.0, 0.0, -0.25, -0.25, 0.5, -0.25, 0.0, -1.0, 0.5, 0.5, 1.0, 1.0, 0.0, 0.75, -0.25, 0.75, -0.5, 0.5, 0.75, 0.25, 0.25, -1.0, 0.75, -1.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.queue.submit([]);
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
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
    
    
    device20.destroy();
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    render_bundle_encoder000.popDebugGroup();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    const command_buffer000 = command_encoder000.finish();
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("out-of-memory");
    const array5 = new Float32Array([-0.25, 0.0, 0.75, -0.75, 0.5, -0.75, 1.0, 0.75, 1.0, 0.5, 0.25, 0.75, 0.5, 1.0, 0.0, -1.0, -0.5, 0.5, -0.5, -0.75, -0.5, 0.0, 0.5, 0.5, 0.5, 0.0, -0.25, -0.5, 0.0, 1.0, -1.0, -0.25, 0.5, 0.5, 0.25, 0.25, -0.5, -1.0, 0.0, -1.0, -0.25, 0.0, 0.25, -0.25, -0.25, -1.0, -0.5, 1.0, -0.5, -1.0, -1.0, 0.25, -0.25, -0.75, -0.25, -0.25, 0.0, -1.0, -0.25, 0.75, 0.25, -0.5, -0.25, -0.75, 0.5, 0.5, 0.25, 0.5, 0.25, 0.5, 0.25, 0.25, -0.25, -1.0, -0.5, 0.5, 0.75, 0.25, -0.5, 0.5, 0.5, 0.75, -1.0, 0.25, 1.0, 0.25, -0.5, 1.0, 1.0, 0.5, 0.75, 1.0, -0.25, -1.0, 0.75, 1.0, 1.0, -1.0, 0.25, -1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    device10.pushErrorScope("out-of-memory");
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
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    texture300.destroy();
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
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
    buffer100.destroy()
    buffer000.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    texture301.destroy();
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
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device30.destroy();
    const array6 = new Float32Array([-0.75, 0.75, -0.5, -1.0, 0.25, 0.0, 0.0, -1.0, -0.75, 0.0, 0.5, 0.5, 1.0, -0.25, 1.0, -1.0, 0.5, 0.5, 1.0, 0.75, 0.5, 0.5, 0.5, -1.0, 1.0, -0.5, -1.0, 1.0, -0.75, 0.25, -0.5, -0.5, 1.0, 0.75, -0.75, -0.5, 0.0, 0.75, 0.75, 0.25, 1.0, -0.5, 1.0, -0.25, 0.25, 1.0, -0.25, 1.0, 1.0, -0.75, 0.25, -0.5, 0.75, 0.5, 0.25, 1.0, -0.5, -0.25, -1.0, -0.5, 0.75, 0.5, 0.0, -0.75, -0.5, 0.75, -0.25, 1.0, -1.0, 0.5, 0.5, 0.25, -0.5, -1.0, 1.0, -0.75, 0.5, 0.0, 0.0, -0.5, 0.5, 0.5, 0.25, 1.0, 0.0, 1.0, 0.25, -0.5, -0.5, -0.75, 0.75, 0.25, 0.0, -0.5, -0.25, 0.0, -1.0, -1.0, 0.75, 1.0, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    buffer101.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    texture000.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture001.destroy();
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32sint",
        dimension: "2d"
    });
    query000.destroy()
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
    
    query000.destroy()
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array7 = new Float32Array([1.0, -0.5, 0.75, 0.5, -0.75, 0.0, 0.75, -0.75, -0.5, 0.0, -0.25, 1.0, -0.5, 0.25, -0.75, 0.75, 0.75, -0.25, 0.0, 0.5, -0.75, -0.75, 0.0, 0.5, 1.0, -0.75, -0.5, 0.75, -0.75, -1.0, 0.75, 0.75, -0.75, -0.75, 0.5, 1.0, 1.0, -0.25, 0.0, -0.5, 0.25, 1.0, 0.0, 0.5, 0.0, -1.0, -0.25, 0.25, -0.5, 0.75, 0.25, 0.75, 0.5, 0.0, -0.5, -0.5, 1.0, 0.75, 0.25, 0.0, 0.25, 0.25, 0.5, 0.75, 0.5, 0.0, 0.0, 0.75, -1.0, 1.0, 0.75, 0.5, -1.0, -0.5, 0.25, -0.25, 0.5, 1.0, 1.0, -0.5, 0.25, 0.0, 0.5, 1.0, -0.75, -1.0, -0.25, -0.5, -1.0, -1.0, -0.5, 1.0, -1.0, 0.75, -0.75, -0.5, 0.25, -0.25, -0.25, -1.0, ]);
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_buffer001 = command_encoder001.finish();
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture002.destroy();
    device30.pushErrorScope("out-of-memory");
    
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
    
    query000.destroy()
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
    device40.pushErrorScope("validation");
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    texture001.destroy();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    texture400.destroy();
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
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
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
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
    
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const command_buffer601 = command_encoder601.finish();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    query400.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
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
    render_pass_encoder2000.insertDebugMarker("marker");
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    device20.pushErrorScope("validation");
    device60.pushErrorScope("out-of-memory");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
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
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
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
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    query001.destroy()
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    const command_buffer603 = command_encoder603.finish();
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
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
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder401.setPipeline(render_pipeline401);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6020.insertDebugMarker("marker")
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder400.setPipeline(render_pipeline401);
    compute_pass_encoder6000.popDebugGroup()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device40.pushErrorScope("validation");
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    compute_pass_encoder6020.insertDebugMarker("marker")
    render_pass_encoder0020.setPipeline(render_pipeline006);
    const array8 = new Float32Array([0.0, 0.25, 0.25, 0.5, -0.25, 0.0, 1.0, 0.0, 0.75, -0.75, 0.5, -0.25, -1.0, 0.0, 0.0, -0.25, 1.0, -0.75, -0.5, 0.25, -1.0, -1.0, 0.75, 0.75, 0.0, 0.5, 0.0, -0.25, 0.5, 0.75, 1.0, 0.5, 1.0, -0.25, 1.0, 0.25, -0.5, 0.5, 0.25, -0.75, 0.0, 1.0, 0.5, -0.75, -0.5, 1.0, 0.5, -1.0, -0.75, 0.25, 1.0, -0.5, 0.25, 0.5, 0.25, 0.0, -0.5, -0.75, 0.0, 1.0, -1.0, -0.25, -0.25, -0.25, -1.0, 0.0, -0.75, 1.0, -0.25, 0.75, 0.0, -0.25, -0.25, 0.5, 0.0, 1.0, 0.5, 1.0, 0.5, -1.0, -0.5, 0.75, 0.25, -0.75, 0.0, -1.0, 0.25, 0.75, -1.0, -0.25, -0.5, 1.0, 0.25, 0.75, -0.75, -0.5, -0.5, 0.75, -0.25, 1.0, ]);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0030.setPipeline(render_pipeline004);
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder600.popDebugGroup();
    compute_pass_encoder6000.setPipeline(compute_pipeline600);
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
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
    
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    
    command_encoder600.insertDebugMarker("mymarker");
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    command_encoder604.pushDebugGroup("mygroupmarker")
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
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    render_pass_encoder0020.setStencilReference(1);
    render_bundle_encoder402.setPipeline(render_pipeline402);
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
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
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder004.insertDebugMarker("mymarker");
    render_bundle_encoder600.setPipeline(render_pipeline600);
    
    
    compute_pass_encoder6020.setPipeline(compute_pipeline600);
    render_pass_encoder0020.setStencilReference(1);
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    
    query001.destroy()
    query400.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group000);
    device60.queue.submit([command_buffer601, command_buffer603, ]);
    render_bundle_encoder400.popDebugGroup();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture005 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setStencilReference(1);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder6040 = command_encoder604.beginComputePass({ label: "compute_pass_encoder6040" });
    render_pass_encoder0020.insertDebugMarker("marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
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
    
    texture600.destroy();
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder402.popDebugGroup();
    compute_pass_encoder0030.setPipeline(compute_pipeline000);
    command_encoder004.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    texture003.destroy();
    device50.queue.submit([]);
    
    command_encoder004.clearBuffer(buffer001);
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
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
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    buffer400.destroy()
    render_pass_encoder0040.setPipeline(render_pipeline004);
    buffer005.destroy()
    
    buffer600.destroy()
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout403]
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.popDebugGroup();
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
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
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
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
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
        layout: compute_pipeline600.getBindGroupLayout(0),
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

    compute_pass_encoder6000.setBindGroup(0, bind_group600);
    query400.destroy()
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout403]
    });
    query000.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group002);
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
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
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.setStencilReference(1);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    
    const command_buffer003 = command_encoder003.finish();
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
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
    command_encoder400.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder401.setVertexBuffer(0, buffer401);
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device60.queue.submit([command_buffer600, ]);
    render_bundle_encoder301.insertDebugMarker("marker");
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const texture_view0052 = texture005.createView({ label: "texture_view0052" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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

    render_bundle_encoder600.setBindGroup(0, bind_group601);
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    query401.destroy()
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
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
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group401);
    render_bundle_encoder001.setPipeline(render_pipeline004);
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.submit([command_buffer603, ]);
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder6020.insertDebugMarker("marker")
    
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer606, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer606, 0);
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    buffer603.destroy()
    device00.queue.writeBuffer(buffer003, 0, array7, 0, array7.length);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    device60.queue.writeBuffer(buffer606, 0, array4, 0, array4.length);
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query001
    });
    
    
    buffer403.destroy()
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    query000.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const command_encoder605 = device60.createCommandEncoder({ label: "command_encoder605" });
    
    buffer602.destroy()
    buffer404.destroy()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_pass_encoder0040.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0020.setPipeline(compute_pipeline005);
    render_pass_encoder0021.setStencilReference(1);
    
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    render_pass_encoder0020.pushDebugGroup("group_marker");
    compute_pass_encoder6040.setPipeline(compute_pipeline603);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    texture006.destroy();
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const compute_pass_encoder6050 = command_encoder605.beginComputePass({ label: "compute_pass_encoder6050" });
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout404]
    });
    buffer008.destroy()
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
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group003);
    
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    compute_pass_encoder6050.pushDebugGroup("group_marker")
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0021.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    compute_pass_encoder6040.insertDebugMarker("marker")
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0053 = texture005.createView({ label: "texture_view0053" });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout406,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    buffer002.destroy()
    compute_pass_encoder0030.popDebugGroup()
    buffer006.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder6050.setPipeline(compute_pipeline606);
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
        
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
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

    compute_pass_encoder6020.setBindGroup(0, bind_group602);
    render_pass_encoder0020.setVertexBuffer(0, buffer004);
    render_pass_encoder0020.drawIndirect(buffer005, 0);
    compute_pass_encoder6000.popDebugGroup()
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: compute_pipeline606.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer609,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6010,
                },
            },
        ],
    });

    compute_pass_encoder6050.setBindGroup(0, bind_group603);
    render_pass_encoder0021.endOcclusionQuery()
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6011, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6011, 0);
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group004);
    const command_buffer004 = command_encoder004.finish();
    compute_pass_encoder6020.popDebugGroup()
    compute_pass_encoder6050.dispatchWorkgroups(100);
    compute_pass_encoder6050.end();
    device00.queue.submit([]);
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
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
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group005);
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
        
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: compute_pipeline603.getBindGroupLayout(0),
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

    compute_pass_encoder6040.setBindGroup(0, bind_group604);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0021.setPipeline(render_pipeline008);
    compute_pass_encoder6050.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder6020.dispatchWorkgroups(100);
    const uint32_6040 = new Uint32Array(3);

    uint32_6040[0] = 100;
    uint32_6040[1] = 1;
    uint32_6040[2] = 1;

    const buffer6014 = device60.createBuffer({
        label: "buffer6014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6014, 0, uint32_6040, 0, uint32_6040.length);

    compute_pass_encoder6040.dispatchWorkgroupsIndirect(buffer6014, 0);
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_pass_encoder0021.setBindGroup(0, bind_group006);
    render_pass_encoder0040.setVertexBuffer(0, buffer000);
    const buffer6015 = device60.createBuffer({
        label: "buffer6015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6016 = device60.createBuffer({
        label: "buffer6016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: compute_pipeline606.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6016,
                },
            },
        ],
    });

    compute_pass_encoder6050.setBindGroup(0, bind_group605);
    compute_pass_encoder6040.end();
    const uint32_6040 = new Uint32Array(3);

    uint32_6040[0] = 100;
    uint32_6040[1] = 1;
    uint32_6040[2] = 1;

    const buffer6017 = device60.createBuffer({
        label: "buffer6017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6017, 0, uint32_6040, 0, uint32_6040.length);

    compute_pass_encoder6040.dispatchWorkgroupsIndirect(buffer6017, 0);
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    render_pass_encoder0030.setVertexBuffer(0, buffer0011);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0017, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0017, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    const command_buffer605 = command_encoder605.finish();
    render_pass_encoder0020.popDebugGroup();
    device40.queue.submit([]);
    command_encoder400.popDebugGroup()
    const command_buffer400 = command_encoder400.finish();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_6050 = new Uint32Array(3);

    uint32_6050[0] = 100;
    uint32_6050[1] = 1;
    uint32_6050[2] = 1;

    const buffer6018 = device60.createBuffer({
        label: "buffer6018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6018, 0, uint32_6050, 0, uint32_6050.length);

    compute_pass_encoder6050.dispatchWorkgroupsIndirect(buffer6018, 0);
    device60.queue.submit([command_buffer605, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0013, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0018, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0018, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0021.setVertexBuffer(0, buffer009);
    compute_pass_encoder6000.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder6020.end();
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0012, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device60.queue.submit([command_buffer601, ]);
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder0030.end();
    render_pass_encoder0040.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0021.end();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0020.end();
    command_encoder002.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    const command_buffer002 = command_encoder002.finish();
    command_encoder604.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group007);
    device30.queue.submit([]);
    const command_buffer604 = command_encoder604.finish();
    device00.queue.submit([command_buffer003, ]);
    const command_buffer602 = command_encoder602.finish();
    render_pass_encoder0030.drawIndexed(3);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer6019 = device60.createBuffer({
        label: "buffer6019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6020 = device60.createBuffer({
        label: "buffer6020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group606 = device60.createBindGroup({
        label: "bind_group606",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6020,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group606);
    compute_pass_encoder6050.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    compute_pass_encoder6020.end();
    compute_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer0017, 0);
    const command_buffer200 = command_encoder200.finish();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.popDebugGroup();
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group008);
    render_pass_encoder0021.setIndexBuffer(buffer0013, "uint16");
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
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
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

    compute_pass_encoder0030.setBindGroup(0, bind_group009);
    const buffer6021 = device60.createBuffer({
        label: "buffer6021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6022 = device60.createBuffer({
        label: "buffer6022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group607 = device60.createBindGroup({
        label: "bind_group607",
        layout: compute_pipeline603.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6022,
                },
            },
        ],
    });

    compute_pass_encoder6040.setBindGroup(0, bind_group607);
    device50.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer001, 0);
    device60.queue.submit([command_buffer604, ]);
    render_pass_encoder0040.drawIndirect(buffer0018, 0);
    compute_pass_encoder6050.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0021.drawIndirect(buffer005, 0);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    compute_pass_encoder6050.end();
    render_pass_encoder0040.drawIndirect(buffer0014, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0025, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0025, 0);
    render_pass_encoder0030.drawIndirect(buffer0017, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer004, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0026, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0026, 0);
    const uint32_6050 = new Uint32Array(3);

    uint32_6050[0] = 100;
    uint32_6050[1] = 1;
    uint32_6050[2] = 1;

    const buffer6023 = device60.createBuffer({
        label: "buffer6023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6023, 0, uint32_6050, 0, uint32_6050.length);

    compute_pass_encoder6050.dispatchWorkgroupsIndirect(buffer6023, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0011, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    compute_pass_encoder6020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    device00.queue.submit([]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    device60.queue.submit([command_buffer602, command_buffer604, ]);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    compute_pass_encoder6020.end();
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder6000.dispatchWorkgroups(100);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const uint32_6020 = new Uint32Array(3);

    uint32_6020[0] = 100;
    uint32_6020[1] = 1;
    uint32_6020[2] = 1;

    const buffer6024 = device60.createBuffer({
        label: "buffer6024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6024, 0, uint32_6020, 0, uint32_6020.length);

    compute_pass_encoder6020.dispatchWorkgroupsIndirect(buffer6024, 0);
    compute_pass_encoder6040.end();
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6025 = device60.createBuffer({
        label: "buffer6025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6025, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6025, 0);
    device00.queue.submit([]);
    device60.queue.submit([command_buffer602, command_buffer603, ]);
    const uint32_6020 = new Uint32Array(3);

    uint32_6020[0] = 100;
    uint32_6020[1] = 1;
    uint32_6020[2] = 1;

    const buffer6026 = device60.createBuffer({
        label: "buffer6026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6026, 0, uint32_6020, 0, uint32_6020.length);

    compute_pass_encoder6020.dispatchWorkgroupsIndirect(buffer6026, 0);
    render_pass_encoder0020.drawIndirect(buffer0023, 0);
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.drawIndirect(buffer0026, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    device50.queue.submit([command_buffer500, ]);
    const uint32_6040 = new Uint32Array(3);

    uint32_6040[0] = 100;
    uint32_6040[1] = 1;
    uint32_6040[2] = 1;

    const buffer6027 = device60.createBuffer({
        label: "buffer6027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6027, 0, uint32_6040, 0, uint32_6040.length);

    compute_pass_encoder6040.dispatchWorkgroupsIndirect(buffer6027, 0);
    compute_pass_encoder6040.popDebugGroup()
    compute_pass_encoder6040.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0020, 0);
    compute_pass_encoder6050.end();
    render_pass_encoder0030.drawIndirect(buffer008, 0);
    device60.queue.submit([command_buffer604, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.end();
    compute_pass_encoder6000.end();
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    compute_pass_encoder6040.popDebugGroup()
    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0028,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0010);
    render_pass_encoder0020.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0017, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0029, 0);
    render_pass_encoder0021.drawIndirect(buffer0017, 0);
    device30.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer0028, 0);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer002, ]);
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0021.drawIndirect(buffer0022, 0);
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0011);
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    compute_pass_encoder6040.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    device00.queue.submit([]);
    device60.queue.submit([command_buffer603, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder6050.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer005, "uint16");
    const buffer6028 = device60.createBuffer({
        label: "buffer6028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6029 = device60.createBuffer({
        label: "buffer6029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group608 = device60.createBindGroup({
        label: "bind_group608",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6029,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group608);
    render_pass_encoder0021.end();
    render_pass_encoder0021.drawIndirect(buffer0029, 0);
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0012);
    device00.queue.submit([command_buffer002, command_buffer003, command_buffer004, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0030, "uint16");
    compute_pass_encoder6020.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0017, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0021.drawIndirect(buffer0017, 0);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0017, 0);
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    const uint32_6040 = new Uint32Array(3);

    uint32_6040[0] = 100;
    uint32_6040[1] = 1;
    uint32_6040[2] = 1;

    const buffer6030 = device60.createBuffer({
        label: "buffer6030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6030, 0, uint32_6040, 0, uint32_6040.length);

    compute_pass_encoder6040.dispatchWorkgroupsIndirect(buffer6030, 0);
    device60.queue.submit([command_buffer601, command_buffer603, ]);
    compute_pass_encoder6000.popDebugGroup()
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0013);
    device60.queue.submit([]);
    render_pass_encoder0030.popDebugGroup();
    device60.queue.submit([command_buffer601, command_buffer605, ]);
    render_pass_encoder0021.draw(3);
    const buffer6031 = device60.createBuffer({
        label: "buffer6031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6032 = device60.createBuffer({
        label: "buffer6032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group609 = device60.createBindGroup({
        label: "bind_group609",
        layout: compute_pipeline606.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6032,
                },
            },
        ],
    });

    compute_pass_encoder6050.setBindGroup(0, bind_group609);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0036, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0036, 0);
    const uint32_6050 = new Uint32Array(3);

    uint32_6050[0] = 100;
    uint32_6050[1] = 1;
    uint32_6050[2] = 1;

    const buffer6033 = device60.createBuffer({
        label: "buffer6033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6033, 0, uint32_6050, 0, uint32_6050.length);

    compute_pass_encoder6050.dispatchWorkgroupsIndirect(buffer6033, 0);
    const buffer6034 = device60.createBuffer({
        label: "buffer6034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6035 = device60.createBuffer({
        label: "buffer6035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6010 = device60.createBindGroup({
        label: "bind_group6010",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6035,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group6010);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0018, 0);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder6050.popDebugGroup()
    device00.queue.submit([]);
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder6050.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0021.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0016, 0);
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0014);
    render_pass_encoder0040.drawIndexed(3);
    compute_pass_encoder6020.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer0021, 0);
    compute_pass_encoder6020.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.end();
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    render_pass_encoder0021.draw(3);
    device40.queue.submit([]);
    compute_pass_encoder6020.popDebugGroup()
    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0040,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0015);
    render_pass_encoder0021.popDebugGroup();
    device60.queue.submit([command_buffer605, ]);
    compute_pass_encoder6040.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([]);
    device60.queue.submit([command_buffer603, ]);
    compute_pass_encoder6020.end();
    render_pass_encoder0021.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    const buffer6036 = device60.createBuffer({
        label: "buffer6036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6037 = device60.createBuffer({
        label: "buffer6037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6011 = device60.createBindGroup({
        label: "bind_group6011",
        layout: compute_pipeline606.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6037,
                },
            },
        ],
    });

    compute_pass_encoder6050.setBindGroup(0, bind_group6011);
    render_pass_encoder0021.drawIndirect(buffer005, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0015, "uint16");
    const buffer6038 = device60.createBuffer({
        label: "buffer6038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6039 = device60.createBuffer({
        label: "buffer6039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6012 = device60.createBindGroup({
        label: "bind_group6012",
        layout: compute_pipeline603.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6039,
                },
            },
        ],
    });

    compute_pass_encoder6040.setBindGroup(0, bind_group6012);
    render_pass_encoder0040.drawIndirect(buffer0018, 0);
    const uint32_6050 = new Uint32Array(3);

    uint32_6050[0] = 100;
    uint32_6050[1] = 1;
    uint32_6050[2] = 1;

    const buffer6040 = device60.createBuffer({
        label: "buffer6040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6040, 0, uint32_6050, 0, uint32_6050.length);

    compute_pass_encoder6050.dispatchWorkgroupsIndirect(buffer6040, 0);
    compute_pass_encoder6040.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    render_pass_encoder0040.drawIndirect(buffer0027, 0);
    compute_pass_encoder6040.popDebugGroup()
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    device00.queue.submit([command_buffer003, ]);
    const buffer6041 = device60.createBuffer({
        label: "buffer6041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6042 = device60.createBuffer({
        label: "buffer6042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6013 = device60.createBindGroup({
        label: "bind_group6013",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6042,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group6013);
    compute_pass_encoder6020.popDebugGroup()
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0041, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0041, 0);
    compute_pass_encoder6040.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer0028, "uint16");
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder6050.end();
    compute_pass_encoder0020.popDebugGroup()
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0042, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    compute_pass_encoder6000.popDebugGroup()
    const buffer6043 = device60.createBuffer({
        label: "buffer6043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6044 = device60.createBuffer({
        label: "buffer6044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6014 = device60.createBindGroup({
        label: "bind_group6014",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6044,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group6014);
    compute_pass_encoder0030.popDebugGroup()
    const uint32_6040 = new Uint32Array(3);

    uint32_6040[0] = 100;
    uint32_6040[1] = 1;
    uint32_6040[2] = 1;

    const buffer6045 = device60.createBuffer({
        label: "buffer6045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6045, 0, uint32_6040, 0, uint32_6040.length);

    compute_pass_encoder6040.dispatchWorkgroupsIndirect(buffer6045, 0);
    render_pass_encoder0030.drawIndirect(buffer007, 0);
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer003, ]);
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    compute_pass_encoder6020.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    render_pass_encoder0030.drawIndirect(buffer0042, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0030.drawIndexed(3);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder0040.drawIndirect(buffer007, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0019, "uint16");
    device50.queue.submit([]);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0025, 0);
    compute_pass_encoder6040.end();
    device60.queue.submit([command_buffer600, ]);
    const uint32_6050 = new Uint32Array(3);

    uint32_6050[0] = 100;
    uint32_6050[1] = 1;
    uint32_6050[2] = 1;

    const buffer6046 = device60.createBuffer({
        label: "buffer6046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6046, 0, uint32_6050, 0, uint32_6050.length);

    compute_pass_encoder6050.dispatchWorkgroupsIndirect(buffer6046, 0);
    const uint32_6040 = new Uint32Array(3);

    uint32_6040[0] = 100;
    uint32_6040[1] = 1;
    uint32_6040[2] = 1;

    const buffer6047 = device60.createBuffer({
        label: "buffer6047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6047, 0, uint32_6040, 0, uint32_6040.length);

    compute_pass_encoder6040.dispatchWorkgroupsIndirect(buffer6047, 0);
    const buffer6048 = device60.createBuffer({
        label: "buffer6048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6049 = device60.createBuffer({
        label: "buffer6049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6015 = device60.createBindGroup({
        label: "bind_group6015",
        layout: compute_pipeline606.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6049,
                },
            },
        ],
    });

    compute_pass_encoder6050.setBindGroup(0, bind_group6015);
    device60.queue.submit([command_buffer602, ]);
    compute_pass_encoder6040.dispatchWorkgroups(100);
    render_pass_encoder0021.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0042, 0);
    compute_pass_encoder6000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    device50.queue.submit([]);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder6040.end();
    render_pass_encoder0040.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0030.end();
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0016);
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    device40.queue.submit([command_buffer400, ]);
    const uint32_6040 = new Uint32Array(3);

    uint32_6040[0] = 100;
    uint32_6040[1] = 1;
    uint32_6040[2] = 1;

    const buffer6050 = device60.createBuffer({
        label: "buffer6050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6050, 0, uint32_6040, 0, uint32_6040.length);

    compute_pass_encoder6040.dispatchWorkgroupsIndirect(buffer6050, 0);
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    compute_pass_encoder6040.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0036, 0);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6051 = device60.createBuffer({
        label: "buffer6051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6051, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6051, 0);
    render_pass_encoder0020.drawIndexed(3);
    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0046,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0017);
    render_pass_encoder0020.drawIndirect(buffer005, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0040.end();
    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0048,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0018);
    device00.queue.submit([command_buffer003, ]);
    const buffer6052 = device60.createBuffer({
        label: "buffer6052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6053 = device60.createBuffer({
        label: "buffer6053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6016 = device60.createBindGroup({
        label: "bind_group6016",
        layout: compute_pipeline606.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6053,
                },
            },
        ],
    });

    compute_pass_encoder6050.setBindGroup(0, bind_group6016);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0021.drawIndirect(buffer0025, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder6050.popDebugGroup()
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder0021.drawIndirect(buffer0017, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.drawIndirect(buffer002, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    compute_pass_encoder6050.end();
    const uint32_6050 = new Uint32Array(3);

    uint32_6050[0] = 100;
    uint32_6050[1] = 1;
    uint32_6050[2] = 1;

    const buffer6054 = device60.createBuffer({
        label: "buffer6054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6054, 0, uint32_6050, 0, uint32_6050.length);

    compute_pass_encoder6050.dispatchWorkgroupsIndirect(buffer6054, 0);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6055 = device60.createBuffer({
        label: "buffer6055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6055, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6055, 0);
    compute_pass_encoder6020.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer0023, "uint16");
    const uint32_6020 = new Uint32Array(3);

    uint32_6020[0] = 100;
    uint32_6020[1] = 1;
    uint32_6020[2] = 1;

    const buffer6056 = device60.createBuffer({
        label: "buffer6056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6056, 0, uint32_6020, 0, uint32_6020.length);

    compute_pass_encoder6020.dispatchWorkgroupsIndirect(buffer6056, 0);
    const buffer6057 = device60.createBuffer({
        label: "buffer6057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6058 = device60.createBuffer({
        label: "buffer6058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6017 = device60.createBindGroup({
        label: "bind_group6017",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6058,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group6017);
    render_pass_encoder0021.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0033, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0040.end();
    const buffer6059 = device60.createBuffer({
        label: "buffer6059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6060 = device60.createBuffer({
        label: "buffer6060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6018 = device60.createBindGroup({
        label: "bind_group6018",
        layout: compute_pipeline606.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6060,
                },
            },
        ],
    });

    compute_pass_encoder6050.setBindGroup(0, bind_group6018);
    device00.queue.submit([command_buffer003, ]);
    device40.queue.submit([]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0039, 0);
    compute_pass_encoder0030.end();
    const uint32_6020 = new Uint32Array(3);

    uint32_6020[0] = 100;
    uint32_6020[1] = 1;
    uint32_6020[2] = 1;

    const buffer6061 = device60.createBuffer({
        label: "buffer6061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6061, 0, uint32_6020, 0, uint32_6020.length);

    compute_pass_encoder6020.dispatchWorkgroupsIndirect(buffer6061, 0);
    device60.queue.submit([command_buffer604, ]);
    device00.queue.submit([command_buffer000, ]);
    device60.queue.submit([command_buffer603, ]);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder6020.end();
    render_pass_encoder0040.drawIndirect(buffer005, 0);
    render_pass_encoder0040.popDebugGroup();
    const uint32_6050 = new Uint32Array(3);

    uint32_6050[0] = 100;
    uint32_6050[1] = 1;
    uint32_6050[2] = 1;

    const buffer6062 = device60.createBuffer({
        label: "buffer6062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6062, 0, uint32_6050, 0, uint32_6050.length);

    compute_pass_encoder6050.dispatchWorkgroupsIndirect(buffer6062, 0);
    compute_pass_encoder6050.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0040.drawIndirect(buffer0018, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device60.queue.submit([command_buffer604, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    device60.queue.submit([command_buffer602, command_buffer604, ]);
    const buffer6063 = device60.createBuffer({
        label: "buffer6063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6064 = device60.createBuffer({
        label: "buffer6064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6019 = device60.createBindGroup({
        label: "bind_group6019",
        layout: compute_pipeline603.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6064,
                },
            },
        ],
    });

    compute_pass_encoder6040.setBindGroup(0, bind_group6019);
    render_pass_encoder0020.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0026, 0);
    compute_pass_encoder6020.end();
    render_pass_encoder0021.drawIndirect(buffer005, 0);
    device60.queue.submit([command_buffer604, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    render_pass_encoder0040.setIndexBuffer(buffer009, "uint16");
    compute_pass_encoder6050.dispatchWorkgroups(100);
    render_pass_encoder0040.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    compute_pass_encoder6000.end();
    device60.queue.submit([command_buffer602, ]);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    const buffer6065 = device60.createBuffer({
        label: "buffer6065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6066 = device60.createBuffer({
        label: "buffer6066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6020 = device60.createBindGroup({
        label: "bind_group6020",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6066,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group6020);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0049, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0049, 0);
    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0051,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0019);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0049, 0);
    compute_pass_encoder6050.popDebugGroup()
    compute_pass_encoder6050.popDebugGroup()
    device60.queue.submit([command_buffer602, ]);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6067 = device60.createBuffer({
        label: "buffer6067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6067, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6067, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0040.end();
    compute_pass_encoder6000.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0053,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0020);
    device60.queue.submit([command_buffer602, command_buffer605, ]);
    device60.queue.submit([]);
    device40.queue.submit([]);
    compute_pass_encoder0030.popDebugGroup()
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0054, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0054, 0);
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0040.drawIndirect(buffer0026, 0);
    compute_pass_encoder6000.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0015, 0);
    const buffer6068 = device60.createBuffer({
        label: "buffer6068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6069 = device60.createBuffer({
        label: "buffer6069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6021 = device60.createBindGroup({
        label: "bind_group6021",
        layout: compute_pipeline606.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6069,
                },
            },
        ],
    });

    compute_pass_encoder6050.setBindGroup(0, bind_group6021);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0011, "uint16");
    compute_pass_encoder6050.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
    device40.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer0054, 0);
    device40.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0021.popDebugGroup();
    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0056,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0021);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0033, 0);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder6050.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0042, 0);
    const buffer6070 = device60.createBuffer({
        label: "buffer6070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6071 = device60.createBuffer({
        label: "buffer6071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6022 = device60.createBindGroup({
        label: "bind_group6022",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6071,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group6022);
    device40.queue.submit([command_buffer400, ]);
    device60.queue.submit([command_buffer604, ]);
    device00.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder0021.end();
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    compute_pass_encoder6050.dispatchWorkgroups(100);
    compute_pass_encoder6040.dispatchWorkgroups(100);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    render_pass_encoder0020.popDebugGroup();
    const uint32_6040 = new Uint32Array(3);

    uint32_6040[0] = 100;
    uint32_6040[1] = 1;
    uint32_6040[2] = 1;

    const buffer6072 = device60.createBuffer({
        label: "buffer6072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6072, 0, uint32_6040, 0, uint32_6040.length);

    compute_pass_encoder6040.dispatchWorkgroupsIndirect(buffer6072, 0);
    render_pass_encoder0020.end();
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer005, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.drawIndexed(3);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder6000.end();
    compute_pass_encoder6050.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0021.draw(3);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    compute_pass_encoder0030.end();
    compute_pass_encoder6050.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder6040.end();
    compute_pass_encoder6020.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0058,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0022);
    render_pass_encoder0021.drawIndirect(buffer0049, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder6040.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0042, 0);
    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0060,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0023);
    const buffer6073 = device60.createBuffer({
        label: "buffer6073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6074 = device60.createBuffer({
        label: "buffer6074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6023 = device60.createBindGroup({
        label: "bind_group6023",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6074,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group6023);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    const buffer6075 = device60.createBuffer({
        label: "buffer6075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6076 = device60.createBuffer({
        label: "buffer6076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6024 = device60.createBindGroup({
        label: "bind_group6024",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6076,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group6024);
    render_pass_encoder0030.drawIndexedIndirect(buffer0042, 0);
    compute_pass_encoder6020.popDebugGroup()
}