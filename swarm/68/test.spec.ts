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
        powerPreference: undefined
    });
    const array0 = new Float32Array([0.25, -0.25, -0.5, 0.0, 0.75, 1.0, 0.75, -0.75, -0.75, 0.25, 0.25, 1.0, 0.25, 0.5, -0.75, 0.25, 0.25, 0.5, 0.75, 0.5, -1.0, 0.75, 0.0, 1.0, -0.75, 1.0, -0.5, -1.0, 0.0, 0.25, 0.75, 0.0, 0.25, -0.75, -0.25, 0.0, 1.0, -0.5, -0.5, -0.5, 0.0, -0.75, 0.75, -0.25, 0.75, 0.25, -0.75, 0.0, -0.25, 0.75, -1.0, -0.25, 1.0, 0.75, -0.75, -0.25, 0.75, -0.25, 0.5, -1.0, 0.75, -0.75, -1.0, 0.5, 0.0, -0.5, -1.0, -1.0, 1.0, -0.75, 0.5, -1.0, -0.5, 0.25, -0.75, -0.5, 0.75, 0.25, -0.25, -0.5, -0.75, -0.25, 0.25, -0.5, 0.0, 0.25, 0.75, 0.25, 0.5, -0.75, -0.25, -1.0, -0.25, -1.0, -0.75, 1.0, 0.75, 0.0, 0.0, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array1 = new Float32Array([1.0, -0.75, -0.5, 0.25, -0.5, -1.0, 0.5, 0.75, 0.25, -1.0, -1.0, 0.25, 0.0, 1.0, 0.75, 0.25, -1.0, -1.0, 0.0, 0.5, -0.75, -1.0, 0.25, 0.25, 0.5, 0.5, 1.0, 0.75, 0.25, 0.75, -0.5, -1.0, 0.5, -0.75, -0.5, 0.75, 1.0, -0.5, -0.5, 1.0, 0.75, 0.0, 0.5, 1.0, -0.5, 0.0, 0.0, 1.0, 1.0, -0.75, 0.5, 0.75, 1.0, -0.25, 0.75, 1.0, -0.25, -1.0, 0.25, -0.25, -0.5, 0.75, 1.0, -0.5, -0.25, 0.75, 1.0, -0.25, -1.0, -0.25, -0.5, 0.5, 1.0, -1.0, -0.25, 1.0, -1.0, 0.5, -0.25, -0.5, 0.5, 0.5, 1.0, 0.0, -0.5, 0.25, 0.5, 1.0, -0.5, 0.5, -1.0, -0.25, -0.25, -1.0, 1.0, 0.5, 1.0, -0.75, 0.25, -1.0, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_buffer000 = command_encoder000.finish();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array2 = new Float32Array([0.75, -0.5, -1.0, 0.25, -1.0, 0.25, 0.0, -1.0, -0.5, -0.75, 1.0, 0.0, 0.75, 0.5, 1.0, 0.75, 0.25, 0.25, -0.25, 0.5, 1.0, 0.0, -0.5, -0.25, -1.0, 0.25, -0.5, -0.75, -0.5, 0.5, -0.5, -0.25, -0.25, -1.0, -0.25, 0.0, 0.0, 0.0, 0.5, -1.0, -0.5, -0.5, -0.5, 0.75, -0.5, 0.0, 0.75, 0.75, 0.5, -0.25, 1.0, -0.5, 1.0, 0.75, -0.25, 0.5, 0.0, 0.75, -0.5, -0.75, -0.5, -0.25, -0.5, -1.0, 0.75, 0.75, 0.75, -0.25, 1.0, 0.5, -0.5, -0.25, 0.5, 1.0, 0.75, -1.0, -1.0, 0.25, 0.5, 0.25, -1.0, 0.25, -0.5, 0.5, -1.0, -1.0, -0.25, 0.5, 1.0, 0.25, 0.0, -0.75, -1.0, -0.5, -1.0, -1.0, -0.5, -1.0, -1.0, 0.75, ]);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device00.queue.submit([command_buffer000, ]);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    buffer200.destroy()
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
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
    const command_buffer200 = command_encoder200.finish();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    buffer000.destroy()
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    buffer001.destroy()
    const command_buffer300 = command_encoder300.finish();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device40.destroy();
    buffer201.destroy()
    device30.queue.submit([command_buffer300, ]);
    buffer300.destroy()
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.submit([command_buffer200, ]);
    device00.destroy();
    
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device30.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.destroy();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    
    device20.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device50.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([-0.75, -1.0, -0.75, -0.5, 0.0, 0.5, 0.75, -0.75, -0.75, 0.5, 0.0, -0.25, -0.25, -0.5, 0.5, 0.5, -0.5, -1.0, 0.75, 0.0, -1.0, 0.25, 0.0, 0.75, -0.25, -0.75, -1.0, -0.25, 0.25, -0.5, 0.75, -0.75, -0.5, -0.25, -0.25, -1.0, -0.5, 0.25, -0.25, -1.0, -0.75, -0.5, 0.25, -0.75, -1.0, -1.0, -0.75, 0.25, -1.0, 1.0, 1.0, 0.0, 0.75, 1.0, -0.75, 0.5, -0.75, 0.25, -1.0, -0.25, 0.75, -0.5, 0.0, 0.5, -0.75, -0.25, -0.5, 1.0, -0.5, 0.25, 0.5, 0.0, -0.25, 1.0, -0.25, 0.0, -0.75, 0.75, -1.0, 0.5, 0.25, 0.5, -0.75, -0.75, -1.0, 0.5, 0.0, -0.75, 0.5, 0.5, 0.0, 0.5, -0.5, 1.0, -0.25, 0.0, 0.0, 0.25, 1.0, 1.0, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer600 = command_encoder600.finish();
    
    
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    const array4 = new Float32Array([-0.25, 0.0, -0.5, -1.0, 0.5, -0.75, 0.75, 0.25, 1.0, 1.0, -1.0, 0.0, 0.25, 0.75, 0.5, -0.75, 0.5, 0.0, -0.25, -0.5, 1.0, -0.25, 0.5, 0.5, 0.25, 0.75, 0.75, 1.0, 0.0, -1.0, -0.75, -0.25, 0.25, 0.75, -0.5, -0.75, 0.75, 0.5, -1.0, 0.25, -1.0, 0.0, -0.75, 0.0, -0.75, 0.75, -0.25, 1.0, -0.25, -1.0, 0.0, 0.0, 0.75, 0.0, -0.5, -1.0, 1.0, 0.25, -1.0, 0.0, 0.5, 1.0, -0.5, -0.5, -0.5, -0.75, -0.25, 0.25, 0.75, 1.0, 0.0, -0.25, -0.5, 0.75, 0.25, -1.0, 0.25, 0.25, 0.0, -0.5, -0.75, 0.0, -0.5, -0.25, -0.5, -0.25, -0.75, 1.0, 0.5, 0.75, 0.75, -0.25, 0.5, 0.0, -0.25, 0.5, -0.5, 1.0, 0.5, -0.25, ]);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    device90.destroy();
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    command_encoder601.insertDebugMarker("mymarker");
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const command_buffer601 = command_encoder601.finish();
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.submit([command_buffer600, ]);
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
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
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
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
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder602.insertDebugMarker("mymarker");
    const array5 = new Float32Array([-0.75, 1.0, 0.0, 0.75, 0.0, 0.25, 0.25, 0.75, -0.5, -0.25, 1.0, -0.5, 0.75, -0.75, -0.25, -1.0, 0.75, 0.0, -1.0, -1.0, -1.0, 1.0, -1.0, 0.75, 0.5, -0.5, 0.0, -0.5, -1.0, 0.75, 1.0, 1.0, -0.5, 0.75, -0.75, 0.75, 0.5, 0.75, -1.0, 0.75, 0.5, 0.25, -0.25, 0.75, 0.25, -0.5, 0.0, -0.75, -1.0, -0.75, 0.25, -0.75, -1.0, -1.0, -1.0, -0.75, 0.25, 0.5, 0.0, -0.75, 0.25, -0.75, 0.0, -0.5, -0.25, -1.0, -1.0, -0.25, -0.5, 1.0, 0.5, 1.0, -0.25, 0.25, 0.5, -1.0, -1.0, 0.25, 1.0, -1.0, 0.25, -0.75, 1.0, 0.5, 0.5, 0.0, -1.0, -1.0, -1.0, 0.5, 0.0, 0.25, 0.5, -0.25, 0.5, -0.5, 1.0, 0.25, 0.5, -0.75, ]);
    
    render_bundle_encoder600.setPipeline(render_pipeline600);
    
    
    
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
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
    
    device70.queue.writeTexture({ texture: texture701 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device70.queue.writeTexture({ texture: texture701 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
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
    
    device70.queue.writeTexture({ texture: texture701 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder601.setPipeline(render_pipeline603);
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device70.queue.writeTexture({ texture: texture701 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer602 = command_encoder602.finish();
    
    device70.destroy();
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth16unorm",
        dimension: "2d"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
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
        layout: render_pipeline603.getBindGroupLayout(0),
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

    render_bundle_encoder601.setBindGroup(0, bind_group600);
    device100.destroy();
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
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
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_bundle_encoder1100.insertDebugMarker("marker");
    render_bundle_encoder602.setPipeline(render_pipeline603);
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer604 = device60.createBuffer({
        label: "buffer604",
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
                    buffer: buffer603,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer604,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group601);
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
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
    
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    
    
    const array6 = new Float32Array([0.0, 0.5, 0.5, 0.5, -0.5, -1.0, -1.0, -1.0, 0.5, 1.0, -0.5, -1.0, -0.5, 0.5, 1.0, 0.5, 1.0, 0.25, -0.25, 0.25, -0.25, 0.25, -0.75, -0.5, 0.75, 0.5, -0.75, 0.5, 0.0, 0.25, 1.0, 0.75, -0.5, -0.5, -0.75, -1.0, 0.25, -1.0, -0.25, -0.25, 1.0, 0.5, 0.75, 0.0, -0.25, -1.0, -0.5, 1.0, -0.25, 0.0, 0.75, 0.0, -0.75, 0.75, 0.75, 0.0, 0.25, -0.25, 0.0, 0.0, 0.0, -0.5, -0.5, 1.0, -1.0, -0.75, 0.75, 0.0, -0.75, -1.0, -0.5, 0.0, -0.75, -0.5, 0.5, 0.75, 1.0, 0.75, 1.0, 0.25, 0.5, 0.25, 0.5, -0.25, -0.5, 0.5, 0.75, -0.5, 0.5, -0.75, 0.25, 0.75, 0.5, 0.25, 1.0, 1.0, -0.5, -0.75, 0.75, -1.0, ]);
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
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const texture_view6021 = texture602.createView({ label: "texture_view6021" });
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    render_bundle_encoder602.popDebugGroup();
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    device80.queue.writeBuffer(buffer800, 0, array5, 0, array5.length);
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    buffer604.destroy()
    
    compute_pass_encoder6030.setPipeline(compute_pipeline600);
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    
    
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1100.insertDebugMarker("marker");
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder6030.pushDebugGroup("group_marker")
    
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_buffer1100 = command_encoder1100.finish();
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    
    
    
    const render_pipeline607 = device60.createRenderPipeline({
        label: "render_pipeline607",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view6002 = texture600.createView({ label: "texture_view6002" });
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline1100 = device110.createRenderPipeline({
        label: "render_pipeline1100",
        vertex: {
            module: shader_module1101,
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
            module: shader_module1101,
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
    
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    render_bundle_encoder1101.setPipeline(render_pipeline1100);
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline608 = device60.createRenderPipeline({
        label: "render_pipeline608",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device80.queue.writeBuffer(buffer800, 0, array3, 0, array3.length);
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    render_bundle_encoder1100.setPipeline(render_pipeline1100);
    
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout1102 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1102",
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
    
    
    compute_pass_encoder6030.insertDebugMarker("marker")
    
    
    
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer800.destroy()
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder6030.insertDebugMarker("marker")
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder600.popDebugGroup();
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1102]
    });
    const bind_group_layout1103 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1103",
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
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    const texture1102 = device110.createTexture({
        label: "texture1102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const array7 = new Float32Array([1.0, 1.0, 0.5, 0.25, -1.0, 0.0, 0.5, 0.5, 0.75, 0.75, 1.0, -1.0, 0.0, 1.0, 0.25, 0.75, 0.75, 0.25, 0.5, 0.5, 0.75, -0.5, -0.25, -1.0, 1.0, 0.25, 0.0, -0.75, -0.5, 0.5, 0.5, -0.75, -0.75, -0.75, 1.0, 0.0, 0.5, -0.25, 0.0, 0.75, 1.0, -0.5, -0.25, 1.0, -0.75, -1.0, 0.75, 1.0, 0.5, -1.0, -0.5, 0.0, 0.25, -1.0, -0.75, -0.25, 0.5, -0.25, -0.5, -0.25, 0.0, -0.75, -0.75, 0.75, -1.0, 0.75, 0.5, 1.0, -0.25, 1.0, 0.5, -0.25, 0.75, 0.0, -0.5, 0.5, -0.5, 0.5, -1.0, 0.25, 0.0, 1.0, 0.75, 0.75, -0.75, 0.25, 0.75, -0.5, -0.25, 0.75, -0.5, -0.75, -0.75, 1.0, -0.75, 1.0, 0.25, -0.75, -0.5, 1.0, ]);
    const pipeline_layout1101 = device110.createPipelineLayout({ 
        label: "pipeline_layout1101",
        bindGroupLayouts: [bind_group_layout1102]
    });
    const render_bundle_encoder1102 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1102",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    buffer602.destroy()
    device110.queue.submit([command_buffer1100, ]);
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    const render_pass_encoder6040 = command_encoder604.beginRenderPass({
        label: "render_pass_encoder6040",
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
    var shader_module1103_code = "";
    try {
        shader_module1103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1103 = await device110.createShaderModule({ label: "shader_module1103", code: shader_module1103_code })
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    
    const bind_group_layout1104 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1104",
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
    render_bundle_encoder1102.insertDebugMarker("marker");
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline1100 = device110.createComputePipeline({
        label: "compute_pipeline1100",
        layout: pipeline_layout1100,
        compute: {
            module: shader_module1102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder1102.setPipeline(render_pipeline1100);
    render_bundle_encoder602.insertDebugMarker("marker");
    var shader_module1104_code = "";
    try {
        shader_module1104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1104 = await device110.createShaderModule({ label: "shader_module1104", code: shader_module1104_code })
    render_pass_encoder6040.setPipeline(render_pipeline606);
    device60.queue.writeTexture({ texture: texture603 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1101.insertDebugMarker("marker");
    render_bundle_encoder1102.insertDebugMarker("marker");
    
    const pipeline_layout1102 = device110.createPipelineLayout({ 
        label: "pipeline_layout1102",
        bindGroupLayouts: [bind_group_layout1104]
    });
    
    const render_pipeline1101 = device110.createRenderPipeline({
        label: "render_pipeline1101",
        vertex: {
            module: shader_module1104,
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
            module: shader_module1104,
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
    render_bundle_encoder600.insertDebugMarker("marker");
    const command_encoder1101 = device110.createCommandEncoder({ label: "command_encoder1101" });
    
    render_pass_encoder6040.setStencilReference(1);
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    device60.queue.writeTexture({ texture: texture603 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder6040.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    device60.queue.writeTexture({ texture: texture603 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline802 = device80.createRenderPipeline({
        label: "render_pipeline802",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const compute_pipeline1101 = device110.createComputePipeline({
        label: "compute_pipeline1101",
        layout: pipeline_layout1102,
        compute: {
            module: shader_module1102,
            entryPoint: "main"
        }
    });
    
    const command_encoder1102 = device110.createCommandEncoder({ label: "command_encoder1102" });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    render_bundle_encoder1101.pushDebugGroup("group_marker");
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const texture_view6030 = texture603.createView({ label: "texture_view6030" });
    render_bundle_encoder1101.popDebugGroup();
    const texture_view11020 = texture1102.createView({ label: "texture_view11020" });
    command_encoder1101.insertDebugMarker("mymarker");
    const command_encoder605 = device60.createCommandEncoder({ label: "command_encoder605" });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    device60.queue.writeTexture({ texture: texture603 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1105_code = "";
    try {
        shader_module1105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1105 = await device110.createShaderModule({ label: "shader_module1105", code: shader_module1105_code })
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1100 = device110.createBindGroup({
        label: "bind_group1100",
        layout: render_pipeline1100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1101,
                },
            },
        ],
    });

    render_bundle_encoder1101.setBindGroup(0, bind_group1100);
    
    
    
    const bind_group_layout1105 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1105",
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
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1102 = device110.createComputePipeline({
        label: "compute_pipeline1102",
        layout: pipeline_layout1100,
        compute: {
            module: shader_module1105,
            entryPoint: "main"
        }
    });
    const render_pipeline609 = device60.createRenderPipeline({
        label: "render_pipeline609",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    
    
    const compute_pass_encoder11010 = command_encoder1101.beginComputePass({ label: "compute_pass_encoder11010" });
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1103 = device110.createComputePipeline({
        label: "compute_pipeline1103",
        layout: pipeline_layout1101,
        compute: {
            module: shader_module1102,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder11010.pushDebugGroup("group_marker")
    
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    
    command_encoder1102.insertDebugMarker("mymarker");
    const compute_pipeline1104 = device110.createComputePipeline({
        label: "compute_pipeline1104",
        layout: pipeline_layout1102,
        compute: {
            module: shader_module1105,
            entryPoint: "main"
        }
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    render_bundle_encoder1102.insertDebugMarker("marker");
    const texture_view11021 = texture1102.createView({ label: "texture_view11021" });
    var shader_module1106_code = "";
    try {
        shader_module1106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1106 = await device110.createShaderModule({ label: "shader_module1106", code: shader_module1106_code })
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    compute_pass_encoder11010.popDebugGroup()
    const render_pipeline6010 = device60.createRenderPipeline({
        label: "render_pipeline6010",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_bundle_encoder1102.insertDebugMarker("marker");
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    const compute_pipeline1105 = device110.createComputePipeline({
        label: "compute_pipeline1105",
        layout: pipeline_layout1102,
        compute: {
            module: shader_module1102,
            entryPoint: "main"
        }
    });
    const texture_view11022 = texture1102.createView({ label: "texture_view11022" });
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    compute_pass_encoder11010.setPipeline(compute_pipeline1103);
    render_bundle_encoder1101.pushDebugGroup("group_marker");
    const render_pass_encoder6050 = command_encoder605.beginRenderPass({
        label: "render_pass_encoder6050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6030,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pipeline1102 = device110.createRenderPipeline({
        label: "render_pipeline1102",
        vertex: {
            module: shader_module1106,
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
            module: shader_module1106,
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
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    
    
    compute_pass_encoder6030.popDebugGroup()
    const compute_pipeline1106 = device110.createComputePipeline({
        label: "compute_pipeline1106",
        layout: pipeline_layout1102,
        compute: {
            module: shader_module1105,
            entryPoint: "main"
        }
    });
    const pipeline_layout1103 = device110.createPipelineLayout({ 
        label: "pipeline_layout1103",
        bindGroupLayouts: [bind_group_layout1102]
    });
    const render_pipeline1103 = device110.createRenderPipeline({
        label: "render_pipeline1103",
        vertex: {
            module: shader_module1101,
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
            module: shader_module1101,
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
    buffer603.destroy()
    const sampler1102 = device110.createSampler( { label: "sampler1102" } );
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline603.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer606,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer607,
                },
            },
        ],
    });

    render_bundle_encoder602.setBindGroup(0, bind_group602);
    render_bundle_encoder1102.insertDebugMarker("marker");
    const render_pipeline6011 = device60.createRenderPipeline({
        label: "render_pipeline6011",
        vertex: {
            module: shader_module606,
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
            module: shader_module606,
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
    render_pass_encoder6050.setStencilReference(1);
    render_pass_encoder6050.setPipeline(render_pipeline603);
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder1102.insertDebugMarker("mymarker");
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view11010 = texture1101.createView({ label: "texture_view11010" });
    
    const compute_pipeline1107 = device110.createComputePipeline({
        label: "compute_pipeline1107",
        layout: pipeline_layout1102,
        compute: {
            module: shader_module1103,
            entryPoint: "main"
        }
    });
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device120.destroy();
    const array8 = new Float32Array([-0.25, 0.25, 0.75, -1.0, 0.75, -0.5, 0.25, 0.25, -0.5, 0.75, -0.75, 1.0, -0.5, -1.0, 0.0, -0.25, -0.5, 0.25, 0.5, 0.25, -0.5, -0.75, -0.5, -0.5, -0.25, 0.5, 0.75, 0.5, 1.0, 0.75, -0.5, 0.0, -0.5, -0.25, -0.25, -0.5, 0.75, -0.25, -0.5, 0.25, 0.75, 1.0, 0.0, 0.25, 0.25, -0.25, 0.5, 0.0, -0.5, 0.5, -0.25, -0.25, -0.75, 1.0, -0.25, -1.0, 0.75, -1.0, 0.5, -1.0, -1.0, 0.5, 0.25, -0.5, 0.5, -1.0, 1.0, 0.5, -0.75, 1.0, 0.75, -0.75, 0.5, 0.25, 0.5, 0.5, -0.25, 0.75, -0.5, 0.75, 0.25, -1.0, 0.75, -0.25, -0.25, -0.75, -0.75, -0.25, -0.75, 0.75, -0.75, 1.0, -0.25, -0.25, -0.25, 0.25, 1.0, 0.25, -0.25, -0.5, ]);
    const texture_view6003 = texture600.createView({ label: "texture_view6003" });
    const render_pipeline1104 = device110.createRenderPipeline({
        label: "render_pipeline1104",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    var shader_module1107_code = "";
    try {
        shader_module1107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1107 = await device110.createShaderModule({ label: "shader_module1107", code: shader_module1107_code })
    const render_pipeline6012 = device60.createRenderPipeline({
        label: "render_pipeline6012",
        vertex: {
            module: shader_module606,
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
            module: shader_module606,
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
    render_bundle_encoder602.insertDebugMarker("marker");
    
    const compute_pass_encoder11020 = command_encoder1102.beginComputePass({ label: "compute_pass_encoder11020" });
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    const render_pipeline6013 = device60.createRenderPipeline({
        label: "render_pipeline6013",
        vertex: {
            module: shader_module606,
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
            module: shader_module606,
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
    
    device130.queue.writeTexture({ texture: texture1300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1108_code = "";
    try {
        shader_module1108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1108 = await device110.createShaderModule({ label: "shader_module1108", code: shader_module1108_code })
    
    
    
    
    compute_pass_encoder6030.pushDebugGroup("group_marker")
    compute_pass_encoder11020.setPipeline(compute_pipeline1102);
    compute_pass_encoder6030.popDebugGroup()
}