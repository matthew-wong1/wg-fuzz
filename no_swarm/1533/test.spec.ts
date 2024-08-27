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
    const array0 = new Float32Array([1.0, 0.25, 0.75, -0.75, -0.5, 0.5, -0.25, 0.25, 0.0, -1.0, -1.0, -0.5, 0.75, -0.5, 0.0, -0.5, 0.5, -0.75, 0.25, 0.0, -1.0, 0.25, -1.0, 0.25, 0.25, 1.0, 0.0, 0.0, 1.0, -0.5, -0.75, 0.0, -0.5, -0.5, 1.0, 0.0, 0.5, 0.0, 0.5, 0.0, -1.0, 0.25, -0.5, -0.5, -0.75, -0.5, 0.75, 0.5, 0.5, -0.5, 1.0, -0.25, 0.0, 0.0, 0.5, 0.25, 1.0, -0.25, -1.0, -0.75, -0.25, 0.5, 0.75, 0.5, 0.5, 0.75, 0.0, 1.0, -0.75, 1.0, 0.0, 0.0, -0.25, -0.75, 0.25, 0.75, -1.0, 1.0, 0.5, 0.5, 1.0, 0.25, -0.25, 0.0, 0.5, -0.75, 1.0, 0.0, -0.25, 0.0, 0.0, -0.25, -0.5, 0.5, 0.25, 1.0, -0.5, -0.75, 0.25, -0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([0.25, -1.0, -0.5, 0.0, -0.5, -1.0, -0.75, 1.0, 0.5, 0.25, 1.0, 0.5, 1.0, 0.5, -0.5, 0.5, 0.25, -0.75, -0.5, 1.0, -1.0, 0.5, 0.75, 0.25, -0.25, 0.0, -0.5, -1.0, 0.25, -0.75, -0.75, 0.75, 1.0, 0.25, 0.75, -0.75, 0.5, 0.0, 1.0, -0.75, -0.75, -0.5, 0.5, 0.75, 0.25, 0.75, -0.25, 0.25, -0.25, -1.0, -0.5, 0.25, 1.0, -0.75, 1.0, -1.0, -0.75, -1.0, 0.5, -1.0, 0.25, 0.25, -0.25, 0.5, 0.5, -0.75, 0.5, -0.25, 1.0, 0.25, 0.5, -0.75, 1.0, -0.5, -1.0, -0.5, 1.0, -0.25, -0.75, 0.0, 1.0, -1.0, 0.75, 1.0, 0.0, -0.25, 0.75, 0.75, -0.75, 0.75, -1.0, 0.5, 0.75, -0.75, 0.0, 0.5, 1.0, 0.5, 0.0, 0.75, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const array2 = new Float32Array([1.0, 1.0, -0.5, 1.0, 0.0, 0.0, -0.5, 1.0, 0.75, -0.5, 0.5, 0.75, 0.5, -1.0, 0.5, 1.0, 0.5, -0.25, 0.75, 0.75, 0.25, -0.25, 1.0, 0.0, 0.25, 1.0, 0.0, -0.5, -0.5, 0.25, -0.5, 0.25, 0.75, 0.75, 1.0, 0.0, -0.25, -0.75, -1.0, 0.75, -1.0, 0.0, 0.75, -0.25, -0.5, -1.0, 0.25, 1.0, 1.0, 0.25, 0.5, 0.25, -1.0, -0.75, 1.0, -0.25, 1.0, -0.25, 0.75, -0.75, -1.0, -1.0, -0.25, 1.0, 0.0, 0.75, 1.0, -1.0, 0.25, -1.0, 0.75, 0.75, 0.0, 1.0, 0.0, -1.0, -1.0, 0.25, -1.0, 0.25, 0.5, -1.0, 0.5, -0.75, 0.25, -0.75, -0.5, 1.0, -0.25, -0.25, -1.0, 0.0, -0.5, 0.5, 0.0, 0.0, -0.75, 0.5, 0.75, -0.5, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.destroy();
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    buffer301.destroy()
    device30.pushErrorScope("internal");
    render_bundle_encoder300.popDebugGroup();
    texture300.destroy();
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
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
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const array3 = new Float32Array([-0.5, 0.25, -0.5, 0.25, 0.0, -0.25, 1.0, -0.25, -1.0, 1.0, -0.75, 0.75, -1.0, 0.25, 0.0, 0.0, 0.25, 0.25, 0.0, -0.25, -1.0, -0.5, -0.25, 0.5, -0.5, 0.75, -0.5, 0.75, 0.0, 0.75, 0.25, -0.25, 0.75, 0.5, 0.0, 1.0, -0.5, 0.75, 0.5, 0.5, -0.5, 0.75, 0.0, 0.5, -1.0, 0.75, 0.5, -0.5, 0.0, -0.25, 1.0, 0.75, -0.5, 1.0, -0.5, 0.0, -0.5, 0.0, -0.25, 0.75, 0.75, 0.75, 0.25, 1.0, -1.0, 0.75, 0.5, 0.0, -0.75, -1.0, -0.75, -0.75, -1.0, -0.75, -0.25, 0.25, 0.0, -1.0, 1.0, -0.5, 0.5, 0.75, 0.0, -0.25, -0.25, -0.75, 0.0, -0.25, 0.25, -1.0, -0.5, -1.0, -0.5, -0.25, 0.0, 0.75, -0.5, -0.25, -1.0, -1.0, ]);
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
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture301.destroy();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("validation");
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const array4 = new Float32Array([-0.25, 1.0, 0.0, 1.0, -0.75, 1.0, -1.0, 0.5, -0.5, 1.0, -0.25, -0.75, 0.5, 0.25, 0.0, 1.0, 0.0, 0.75, 0.75, 0.25, -0.25, -0.25, -0.5, 0.5, 0.0, -0.75, -0.5, 0.5, -0.75, -0.5, -1.0, -1.0, -0.75, 1.0, -0.75, -0.75, 1.0, -0.75, 0.5, 0.25, -0.75, -0.5, -0.25, 0.0, -1.0, 0.25, -0.5, -0.75, -0.25, -0.75, 0.0, -0.75, -0.25, -0.75, -0.75, 1.0, -0.25, 0.5, -0.5, 0.75, -0.5, 0.25, -1.0, -0.25, 0.0, -1.0, -1.0, -1.0, -0.5, -1.0, -0.25, -0.75, -0.75, -0.5, -0.25, 1.0, 0.5, 1.0, 0.5, -1.0, 0.75, 0.25, -1.0, -0.75, 0.5, 0.0, -1.0, -1.0, -0.5, 0.0, -0.25, 0.5, 0.0, -0.25, 0.5, -0.25, 0.5, -1.0, -0.5, -0.5, ]);
    
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
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
    const command_buffer201 = command_encoder201.finish();
    command_encoder200.insertDebugMarker("mymarker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder202.insertDebugMarker("mymarker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    buffer300.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    texture302.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout303]
    });
    command_encoder203.insertDebugMarker("mymarker");
    
    query300.destroy()
    command_encoder203.copyTextureToTexture(
        {
            texture: texture200
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer203 = command_encoder203.finish();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    device30.pushErrorScope("out-of-memory");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    
    render_bundle_encoder300.popDebugGroup();
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query301.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    texture303.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
    device30.destroy();
    buffer200.destroy()
    
    device20.destroy();
    
    
    const array5 = new Float32Array([-0.75, 0.75, -1.0, 0.25, 0.25, -1.0, 1.0, 0.75, -0.75, 0.5, -0.5, 0.0, -0.5, 0.5, -0.75, -1.0, 0.0, -1.0, 0.25, -0.5, -0.5, 0.75, -0.75, 0.0, 0.0, -1.0, -1.0, 0.5, 0.75, -0.75, 0.75, -1.0, -0.75, -0.75, 0.5, -1.0, 0.5, -1.0, -0.75, 1.0, 0.5, -0.5, -0.75, 1.0, 0.75, 0.75, -0.25, -0.5, -0.5, 0.0, -0.5, 0.5, 1.0, -0.75, 0.0, 1.0, -0.75, -1.0, -0.25, 1.0, -0.5, -1.0, 0.75, 0.25, -1.0, 1.0, -0.25, 1.0, 0.75, -0.5, -0.5, -0.75, 0.5, -0.25, -0.5, -1.0, 0.75, 0.75, 0.0, -0.75, -1.0, -0.25, -1.0, 1.0, 0.5, -1.0, 0.25, 0.25, 0.0, -0.5, -0.25, 0.5, 0.0, -0.5, -0.5, 0.75, -0.75, 0.0, -1.0, -0.75, ]);
    
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout303]
    });
    const array6 = new Float32Array([-0.5, -0.75, -0.5, -1.0, 0.25, -1.0, -0.5, -1.0, -0.25, -0.25, 0.0, -0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.75, 1.0, -0.5, -1.0, -0.25, -0.75, 0.5, 0.75, -0.5, 1.0, -0.25, 0.0, -1.0, 0.0, 1.0, 0.5, -0.5, -0.25, 1.0, -1.0, 0.75, -1.0, -1.0, -0.25, 0.75, -0.5, -0.75, 0.25, -1.0, -1.0, 0.75, 0.25, 0.5, -1.0, 0.75, 0.75, 0.75, -0.75, 0.25, -0.5, -0.25, -1.0, 0.0, -0.75, -1.0, 0.75, 0.0, -0.75, 0.25, 0.25, -1.0, 1.0, -0.75, 0.25, 0.5, 0.25, 1.0, -0.75, 0.75, 1.0, 0.75, -0.5, 0.0, -0.5, -0.25, -0.75, -1.0, 0.25, 1.0, -0.5, -0.5, 0.0, 0.75, 0.0, -0.5, -1.0, -0.5, 0.25, -0.75, -0.5, -0.25, 0.5, 0.0, ]);
    
    
    
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    
    
    const array7 = new Float32Array([0.25, -1.0, 0.25, 0.75, 0.5, 1.0, 0.0, 0.25, -1.0, -0.75, 1.0, 0.0, -1.0, -0.75, 0.0, -1.0, -0.25, -0.75, -0.5, 1.0, 1.0, 0.5, -0.25, -0.75, 0.0, -0.75, -0.75, 1.0, 0.5, -1.0, -0.75, -0.25, 1.0, 1.0, -0.5, 0.25, -0.5, -0.25, 0.0, 0.0, 0.0, 0.0, -0.5, -0.75, 0.75, 1.0, -0.5, 0.5, 0.5, 0.0, 0.0, -0.5, -0.5, 0.5, -0.5, -0.5, -0.75, 0.75, 0.5, 0.0, 1.0, 0.75, 0.75, -0.5, 0.5, -0.5, 0.75, 0.75, 0.25, 0.0, 0.0, -0.25, -1.0, -0.25, 0.0, -1.0, 0.5, 0.75, 0.25, 0.0, -0.25, -0.25, 0.0, 0.0, 1.0, 0.75, 0.0, -0.25, 1.0, 1.0, -0.5, -1.0, 0.75, -1.0, -0.25, 1.0, 0.75, -0.5, 0.5, -1.0, ]);
    
    command_encoder202.insertDebugMarker("mymarker");
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    texture500.destroy();
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device70.pushErrorScope("internal");
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
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
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const array8 = new Float32Array([0.75, -1.0, -0.25, -0.75, 0.5, 0.5, 1.0, 0.75, -0.75, 0.0, 0.25, 0.5, -1.0, 0.0, 0.0, -0.75, -0.5, -0.5, -0.5, 0.0, -0.5, 0.0, 0.75, 0.75, 0.0, 0.0, -0.75, -0.25, 0.5, 0.0, -0.5, -0.75, 0.0, -0.25, 0.75, -0.5, 0.25, -1.0, -0.75, -0.25, -0.5, -0.25, -0.25, -1.0, 1.0, -0.25, 0.25, 0.0, -0.5, -0.5, 0.25, 0.75, 0.5, 0.5, 0.75, 0.75, 0.25, -1.0, 0.25, 0.25, 0.5, 0.75, 0.5, 0.25, -0.25, -0.5, 0.0, 0.0, -0.25, -0.75, 1.0, 0.5, -1.0, 0.5, 0.75, 0.75, -1.0, -0.75, -1.0, 1.0, -0.5, 0.25, -1.0, -1.0, 0.75, -1.0, -0.5, -0.75, 0.5, -0.25, 0.5, -0.5, -0.75, -0.5, 1.0, -0.25, 0.5, 1.0, 0.75, -0.25, ]);
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder700.insertDebugMarker("mymarker");
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    
    
    render_bundle_encoder500.popDebugGroup();
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    buffer700.destroy()
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    render_bundle_encoder600.pushDebugGroup("group_marker");
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    
    compute_pass_encoder7000.insertDebugMarker("marker")
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    device50.pushErrorScope("out-of-memory");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    texture500.destroy();
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    device60.destroy();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer500.destroy()
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    query500.destroy()
    render_bundle_encoder500.setPipeline(render_pipeline500);
    
    
    query500.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture501.destroy();
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_bundle_encoder500.popDebugGroup();
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer401.destroy()
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    query400.destroy()
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
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
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    device40.pushErrorScope("internal");
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    command_encoder204.insertDebugMarker("mymarker");
    buffer900.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query301
    });
    
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query401.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder500.popDebugGroup();
    compute_pass_encoder7010.insertDebugMarker("marker")
    device50.destroy();
    device80.pushErrorScope("internal");
    const command_buffer701 = command_encoder701.finish();
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer402.destroy()
    command_encoder401.pushDebugGroup("mygroupmarker")
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
    
    
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    {
        await buffer901.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer901.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer901.unmap();
        console.log(new Float32Array(data));
    }
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
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer404, 0, array8, 0, array8.length);
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
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
    device90.queue.writeBuffer(buffer902, 0, array0, 0, array0.length);
    
    query900.destroy()
    texture800.destroy();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    device90.queue.writeBuffer(buffer902, 0, array6, 0, array6.length);
    compute_pass_encoder7000.insertDebugMarker("marker")
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device40.pushErrorScope("out-of-memory");
    query400.destroy()
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.writeBuffer(buffer404, 0, array6, 0, array6.length);
    
    const command_buffer401 = command_encoder401.finish();
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    command_encoder900.clearBuffer(buffer902);
    
    command_encoder900.insertDebugMarker("mymarker");
    device90.queue.writeBuffer(buffer902, 0, array3, 0, array3.length);
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    buffer400.destroy()
    buffer901.destroy()
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    device40.queue.writeBuffer(buffer404, 0, array5, 0, array5.length);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    compute_pass_encoder7000.popDebugGroup()
    
    command_encoder702.insertDebugMarker("mymarker");
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer903 = device90.createBuffer({
        label: "buffer903",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    device70.queue.submit([command_buffer701, ]);
    
    command_encoder400.copyBufferToTexture(
        {
            buffer: buffer403
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
    device40.queue.writeBuffer(buffer404, 0, array5, 0, array5.length);
    device90.queue.writeBuffer(buffer902, 0, array5, 0, array5.length);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const array9 = new Float32Array([-0.75, -1.0, 0.5, 0.25, -0.5, -0.5, 0.75, 0.25, 0.75, 0.25, 0.25, -1.0, -0.75, -0.25, 0.25, 1.0, 0.25, 0.75, -1.0, -0.5, -1.0, 0.25, -0.5, 0.75, 1.0, 0.25, 1.0, -0.75, 0.0, -0.5, 0.75, -1.0, 0.75, -0.25, -0.5, -1.0, 0.25, 1.0, 0.75, -0.75, -1.0, 0.25, 0.5, -1.0, -1.0, -0.5, -0.25, 0.75, 0.0, -0.75, -0.5, 0.0, -0.25, 0.25, 0.5, 0.5, 0.0, 1.0, 1.0, 0.0, -0.5, 1.0, -0.5, 0.75, 0.75, 0.75, -0.75, 0.5, 0.25, 0.75, -0.75, 0.0, 1.0, 0.75, -1.0, 0.25, -1.0, -0.5, 0.5, -0.25, 0.5, 0.25, -1.0, -0.25, -1.0, 0.75, -0.75, 0.0, -0.25, -0.5, -0.75, -0.5, -0.5, -0.25, -1.0, -0.75, -0.75, 0.0, -0.75, -0.75, ]);
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device70.pushErrorScope("internal");
    
    render_pass_encoder3000.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    
    
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    device90.queue.writeBuffer(buffer902, 0, array1, 0, array1.length);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder900.copyBufferToBuffer(
        buffer903,
        0,
        buffer902,
        0,
        400
    );
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    command_encoder204.insertDebugMarker("mymarker");
    texture400.destroy();
    buffer900.destroy()
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    device90.queue.writeBuffer(buffer902, 0, array4, 0, array4.length);
    buffer901.destroy()
    render_bundle_encoder900.pushDebugGroup("group_marker");
    
    
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer101 = command_encoder101.finish();
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query400.destroy()
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder800.clearBuffer(buffer801);
    device90.queue.writeBuffer(buffer902, 0, array9, 0, array9.length);
    const command_buffer900 = command_encoder900.finish();
    command_encoder702.insertDebugMarker("mymarker");
    const command_buffer800 = command_encoder800.finish();
    
    
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    
    device90.queue.writeBuffer(buffer902, 0, array6, 0, array6.length);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    render_bundle_encoder702.pushDebugGroup("group_marker");
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    command_encoder700.insertDebugMarker("mymarker");
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    device90.queue.writeBuffer(buffer902, 0, array2, 0, array2.length);
    
    
    device90.queue.writeBuffer(buffer902, 0, array3, 0, array3.length);
    
    render_bundle_encoder702.pushDebugGroup("group_marker");
    
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer1100 = command_encoder1100.finish();
    device40.queue.submit([command_buffer401, ]);
    const command_buffer702 = command_encoder702.finish();
    device110.queue.submit([command_buffer1100, ]);
    device70.queue.submit([command_buffer702, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device110.queue.submit([]);
    device90.queue.submit([command_buffer900, ]);
    device80.queue.submit([command_buffer800, ]);
    device40.queue.submit([]);
    device40.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    device90.queue.submit([]);
    device110.queue.submit([command_buffer1100, ]);
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder7000.popDebugGroup()
}