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
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array0 = new Float32Array([-0.5, 0.0, 1.0, 0.75, 0.0, -0.5, -0.75, 0.25, 0.5, 0.0, -0.5, -0.25, 0.0, -0.75, 0.75, -0.5, 0.25, -0.25, -0.25, 0.75, 1.0, -0.5, 0.0, -1.0, -0.25, -0.75, 0.0, -0.75, 0.0, 0.25, -0.5, -0.5, 0.5, 0.75, 0.5, 0.25, 1.0, -1.0, 0.25, 0.25, -1.0, 0.0, 0.0, -0.75, -0.75, 1.0, -1.0, 0.0, 0.75, -0.25, 0.25, 0.5, 0.5, -1.0, -0.5, 0.0, -0.75, -0.5, -0.25, -0.5, 1.0, 0.5, -0.5, -1.0, -0.25, 0.5, 0.5, -0.75, 0.0, -0.75, -0.5, 0.5, -1.0, -0.5, 0.5, -0.5, 0.5, -0.5, 0.75, -0.5, 0.25, 0.25, 0.0, 0.75, -0.75, 0.25, 1.0, 1.0, -0.5, 0.25, -1.0, 0.5, 0.0, -0.5, -0.5, -0.75, 0.25, -0.5, 0.75, -0.25, ]);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device00.pushErrorScope("internal");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture001.destroy();
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    device30.queue.submit([]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.pushErrorScope("validation");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    
    
    device10.destroy();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    device30.pushErrorScope("out-of-memory");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device40.pushErrorScope("validation");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture400.destroy();
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.destroy();
    
    const array1 = new Float32Array([0.25, 0.0, 0.0, -1.0, 0.5, 1.0, 0.25, 0.0, -1.0, 0.25, 0.75, 0.5, -0.25, 1.0, 0.5, 0.5, 0.0, -0.25, 0.0, -0.75, -0.25, -1.0, -0.25, -0.75, -0.5, -0.75, -1.0, 1.0, -0.5, -0.75, 1.0, -0.75, 0.25, -0.5, 0.0, -0.5, -1.0, 1.0, -0.25, 0.0, 0.25, -0.5, -0.75, 0.0, 0.5, -0.75, 0.25, -0.25, 0.5, -0.75, -0.5, 0.75, 0.0, -0.25, 0.0, 0.0, 0.0, 0.5, -1.0, 0.25, 1.0, 0.25, 0.75, 0.0, 0.5, 0.75, 0.5, 0.5, 0.5, 1.0, -0.25, -1.0, 0.75, -1.0, -1.0, 0.75, -0.25, -0.25, -0.25, 0.25, -1.0, -0.25, 0.0, -0.5, 0.25, -1.0, 0.5, -0.25, -0.25, 0.75, -0.75, -0.75, -0.5, 0.75, 0.5, -1.0, 0.25, -0.75, 0.75, 0.75, ]);
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder402.insertDebugMarker("marker");
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
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_bundle_encoder401.setPipeline(render_pipeline400);
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder4000.popDebugGroup()
    
    render_bundle_encoder402.setPipeline(render_pipeline400);
    texture100.destroy();
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture401.destroy();
    
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    render_bundle_encoder400.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
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
    
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    texture402.destroy();
    
    
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer400.destroy()
    device30.destroy();
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    device90.pushErrorScope("validation");
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
    
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    texture900.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder400.setPipeline(render_pipeline401);
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    buffer403.destroy()
    query400.destroy()
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
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
    command_encoder900.pushDebugGroup("mygroupmarker")
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
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
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const sampler900 = device90.createSampler( { label: "sampler900" } );
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
    
    
    
    buffer402.destroy()
    
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
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    const command_buffer000 = command_encoder000.finish();
    command_encoder900.copyTextureToTexture(
        {
            texture: texture900
        },
        {
            texture: texture901
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const array2 = new Float32Array([-0.25, 1.0, 1.0, 0.75, -0.25, 0.75, -1.0, -0.75, 0.5, -0.5, 0.5, 1.0, 0.0, 0.25, 0.5, 0.0, 0.0, 1.0, -1.0, -0.25, -0.5, -0.25, -0.25, -0.75, 0.25, 0.75, -1.0, 0.75, 1.0, 0.5, 1.0, 0.5, 0.5, -0.25, -1.0, 0.25, 0.5, 0.5, 0.0, 0.0, 0.5, 0.5, 0.0, 1.0, 0.0, -0.5, 1.0, -0.5, -0.5, -0.75, -0.5, -0.75, 0.25, -0.25, 0.75, -0.5, -0.5, 0.25, -0.5, 0.5, 0.5, -0.25, -0.5, 1.0, 0.75, 1.0, -1.0, 0.0, 0.5, 0.25, 0.0, 0.25, -0.25, 0.5, 0.75, -0.75, 0.25, -0.25, -0.75, 0.25, 0.5, -0.75, -0.75, 0.75, 0.5, -0.75, -1.0, 0.75, 0.75, 0.5, 0.25, 0.75, 0.0, 0.75, 1.0, -0.25, 0.5, 1.0, -1.0, -0.75, ]);
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
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
    
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    query401.destroy()
    
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
    
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group401);
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    device40.queue.writeBuffer(buffer407, 0, array0, 0, array0.length);
    device70.pushErrorScope("out-of-memory");
    
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    compute_pass_encoder4000.setPipeline(compute_pipeline404);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    command_encoder900.insertDebugMarker("mymarker");
    
    
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder9010 = command_encoder901.beginComputePass({ label: "compute_pass_encoder9010" });
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer409,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group402);
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    
    device40.queue.writeTexture({ texture: texture403 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const texture_view9010 = texture901.createView({ label: "texture_view9010" });
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
    buffer401.destroy()
    
    
    const texture_view9011 = texture901.createView({ label: "texture_view9011" });
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4010, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4010, 0);
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder900.insertDebugMarker("mymarker");
    const texture_view9012 = texture901.createView({ label: "texture_view9012" });
    
    const render_pass_encoder9000 = command_encoder900.beginRenderPass({
        label: "render_pass_encoder9000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view9011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module904.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    render_pass_encoder9000.setViewport(0, 0, texture901.width / 2, texture901.height / 2, 0, 1);
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
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
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    buffer900.destroy()
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder9000.setScissorRect(0, 0, texture901.width / 2, texture901.height / 2);
    device40.queue.writeBuffer(buffer4010, 0, array0, 0, array0.length);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    device80.destroy();
    render_bundle_encoder400.popDebugGroup();
    
    buffer409.destroy()
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
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
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device80.destroy();
    const array3 = new Float32Array([0.25, 0.25, 0.25, 1.0, -1.0, -0.25, -0.75, -0.25, 0.75, -0.5, 0.25, 0.25, -0.75, 0.75, 0.0, -0.5, -0.25, 0.0, -0.5, 0.75, -0.5, 0.75, -0.5, -0.75, 0.0, 0.75, 1.0, 0.75, -0.25, 0.5, 0.0, -0.5, 0.0, 0.0, 0.25, -0.75, -0.5, -1.0, 0.25, 1.0, -1.0, 1.0, -0.75, -0.5, -1.0, 0.5, 1.0, -0.75, 0.75, 0.25, -1.0, -1.0, -0.5, 0.5, 0.5, 0.75, -0.5, -0.5, 0.25, -0.75, 0.75, -0.75, -0.25, 0.0, 0.75, 0.0, 0.0, 0.25, 0.0, 0.25, 1.0, -0.25, 0.0, 0.0, 0.5, 0.5, 0.25, -0.75, 0.0, 1.0, 0.0, -0.25, -0.75, -0.5, 1.0, 0.75, -1.0, 1.0, 0.5, -0.5, -1.0, 0.25, -0.5, 0.25, -0.75, -0.75, 0.5, -0.75, 0.75, -0.25, ]);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    buffer400.destroy()
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
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const command_buffer600 = command_encoder600.finish();
    buffer404.destroy()
    
    var shader_module905_code = "";
    try {
        shader_module905_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module905 = await device90.createShaderModule({ label: "shader_module905", code: shader_module905_code })
    
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    render_pass_encoder9000.setViewport(0, 0, texture901.width / 2, texture901.height / 2, 0, 1);
    
    render_pass_encoder9000.setPipeline(render_pipeline900);
    device40.queue.writeTexture({ texture: texture403 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array4 = new Float32Array([-0.5, -1.0, 0.25, 0.25, -0.75, -0.5, 0.5, -0.5, -0.25, 0.25, 0.5, 0.5, 0.0, 0.5, -1.0, 0.5, -1.0, -1.0, -0.75, 0.75, -0.5, 0.5, 0.0, 0.0, 0.25, 0.75, 0.75, 0.5, 0.0, 1.0, 0.25, -1.0, -1.0, -0.5, -0.5, -1.0, 0.0, 0.25, 0.25, 1.0, -0.25, 0.25, 0.0, 0.5, 0.0, -0.5, -0.5, 0.25, -0.25, -1.0, -0.5, 0.75, -0.25, 0.5, -0.5, 0.0, 0.0, 1.0, -0.75, 0.75, -0.75, 1.0, 0.0, -0.75, -1.0, -1.0, -1.0, 0.0, -0.25, 0.75, 0.25, 0.0, 0.75, -0.75, -0.75, -1.0, -1.0, 1.0, 0.0, -1.0, -0.75, 0.75, 0.0, -1.0, 0.25, 1.0, -1.0, -1.0, 1.0, 0.0, 0.0, 0.25, -1.0, -0.5, -0.75, 0.0, 0.0, -0.25, 0.25, 0.25, ]);
    
    compute_pass_encoder4000.popDebugGroup()
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    query901.destroy()
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout701]
    });
    const compute_pass_encoder4001 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4001" });
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout701]
    });
    device40.queue.writeTexture({ texture: texture403 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder9000.setScissorRect(0, 0, texture901.width / 2, texture901.height / 2);
    
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const compute_pipeline900 = device90.createComputePipeline({
        label: "compute_pipeline900",
        layout: pipeline_layout900,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture903 = device90.createTexture({
        label: "texture903",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array5 = new Float32Array([0.5, 0.5, 0.25, -1.0, 0.0, -1.0, 0.25, -0.5, -0.5, -0.75, -0.25, 0.0, -1.0, 0.75, 0.25, 0.5, -0.75, 0.25, -0.25, 0.25, 0.0, -0.5, 0.25, 0.0, 1.0, -1.0, 1.0, -0.75, 0.25, 0.25, -0.5, 0.75, 0.0, 0.75, 0.25, 0.75, -0.75, -0.5, 1.0, 0.5, 1.0, 0.25, 0.25, 1.0, 1.0, -0.75, -0.75, 0.25, 1.0, -0.25, -1.0, 0.0, 0.0, 0.25, -1.0, -0.75, -0.5, 0.25, -0.25, 1.0, 0.5, -0.25, 0.0, -0.25, 0.75, 0.0, 0.75, -0.5, -0.75, -1.0, 0.25, -0.25, 0.75, 1.0, 0.0, -1.0, -1.0, -0.75, -0.25, -0.75, -1.0, 1.0, -0.75, -0.5, 1.0, 0.25, -0.5, 1.0, 0.5, -1.0, 1.0, -1.0, -1.0, 1.0, -0.25, 0.0, -0.25, -0.75, 1.0, -1.0, ]);
    compute_pass_encoder4001.setPipeline(compute_pipeline407);
    compute_pass_encoder9010.insertDebugMarker("marker")
    
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    command_encoder400.copyBufferToTexture(
        {
            buffer: buffer405
        },
        {
            texture: texture403
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder9010 = command_encoder901.beginRenderPass({
        label: "render_pass_encoder9010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view9010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group900 = device90.createBindGroup({
        label: "bind_group900",
        layout: render_pipeline900.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer901,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer902,
                },
            },
        ],
    });

    render_pass_encoder9000.setBindGroup(0, bind_group900);
    const buffer903 = device90.createBuffer({
        label: "buffer903",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    var shader_module906_code = "";
    try {
        shader_module906_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module906 = await device90.createShaderModule({ label: "shader_module906", code: shader_module906_code })
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    device90.queue.writeTexture({ texture: texture903 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const render_pass_encoder9001 = command_encoder900.beginRenderPass({
        label: "render_pass_encoder9001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view9012,
            },
        ],
        occlusionQuerySet: query901
    });
    const compute_pipeline901 = device90.createComputePipeline({
        label: "compute_pipeline901",
        layout: pipeline_layout900,
        compute: {
            module: shader_module904,
            entryPoint: "main"
        }
    });
    const texture904 = device90.createTexture({
        label: "texture904",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view9040 = texture904.createView({ label: "texture_view9040" });
    const command_buffer401 = command_encoder401.finish();
    
    
    
    device70.pushErrorScope("out-of-memory");
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    query901.destroy()
    query900.destroy()
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout401,
        compute: {
            module: shader_module406,
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
    render_pass_encoder9010.pushDebugGroup("group_marker");
    const pipeline_layout706 = device70.createPipelineLayout({ 
        label: "pipeline_layout706",
        bindGroupLayouts: [bind_group_layout701]
    });
    command_encoder501.insertDebugMarker("mymarker");
    render_pass_encoder9001.setViewport(0, 0, texture901.width / 2, texture901.height / 2, 0, 1);
    device40.queue.writeTexture({ texture: texture403 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder9001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    buffer408.destroy()
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    command_encoder400.clearBuffer(buffer406);
    texture003.destroy();
    command_encoder900.copyTextureToBuffer(
        {
            texture: texture901
        },
        {
            buffer: buffer903
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
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
        layout: compute_pipeline407.getBindGroupLayout(0),
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

    compute_pass_encoder4001.setBindGroup(0, bind_group403);
    render_pass_encoder9001.executeBundles([])
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout900]
    });
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout400,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    device40.queue.writeBuffer(buffer4012, 0, array1, 0, array1.length);
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    
    device90.queue.writeTexture({ texture: texture904 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder9001.setStencilReference(1);
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    texture902.destroy();
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
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
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    render_pass_encoder9001.setPipeline(render_pipeline901);
    var shader_module907_code = "";
    try {
        shader_module907_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module907.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module907 = await device90.createShaderModule({ label: "shader_module907", code: shader_module907_code })
    
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer4012, 0, array2, 0, array2.length);
    compute_pass_encoder9010.setPipeline(compute_pipeline900);
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
    const texture_view9030 = texture903.createView({ label: "texture_view9030" });
    device40.queue.writeBuffer(buffer4010, 0, array4, 0, array4.length);
    const command_buffer701 = command_encoder701.finish();
    render_bundle_encoder900.popDebugGroup();
    const command_buffer700 = command_encoder700.finish();
    
    query700.destroy()
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    {
        await buffer4012.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer4012.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer4012.unmap();
        console.log(new Float32Array(data));
    }
    buffer500.destroy()
    
    device60.pushErrorScope("validation");
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const texture_view9031 = texture903.createView({ label: "texture_view9031" });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
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
    
    texture904.destroy();
    const compute_pipeline902 = device90.createComputePipeline({
        label: "compute_pipeline902",
        layout: pipeline_layout900,
        compute: {
            module: shader_module906,
            entryPoint: "main"
        }
    });
    
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    render_pass_encoder9010.setStencilReference(1);
    const pipeline_layout902 = device90.createPipelineLayout({ 
        label: "pipeline_layout902",
        bindGroupLayouts: [bind_group_layout900]
    });
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    texture903.destroy();
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder9010.popDebugGroup();
    compute_pass_encoder4001.dispatchWorkgroups(100);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder9000.setVertexBuffer(0, buffer903);
    render_pass_encoder9010.setPipeline(render_pipeline900);
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4000.end();
    device40.queue.submit([command_buffer401, ]);
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder9000.draw(3);
    device50.queue.submit([command_buffer501, ]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer503 = command_encoder503.finish();
    const buffer904 = device90.createBuffer({
        label: "buffer904",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer905 = device90.createBuffer({
        label: "buffer905",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group901 = device90.createBindGroup({
        label: "bind_group901",
        layout: render_pipeline900.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer904,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer905,
                },
            },
        ],
    });

    render_pass_encoder9010.setBindGroup(0, bind_group901);
    render_pass_encoder9010.setVertexBuffer(0, buffer903);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder9010.setIndexBuffer(buffer902, "uint16");
    render_pass_encoder9000.end();
    compute_pass_encoder4001.end();
    render_pass_encoder9010.drawIndexedIndirect(buffer903, 0);
    const buffer906 = device90.createBuffer({
        label: "buffer906",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer907 = device90.createBuffer({
        label: "buffer907",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group902 = device90.createBindGroup({
        label: "bind_group902",
        layout: compute_pipeline900.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer906,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer907,
                },
            },
        ],
    });

    compute_pass_encoder9010.setBindGroup(0, bind_group902);
    device50.queue.submit([command_buffer502, command_buffer503, ]);
    device40.queue.submit([command_buffer400, ]);
    const buffer908 = device90.createBuffer({
        label: "buffer908",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer909 = device90.createBuffer({
        label: "buffer909",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group903 = device90.createBindGroup({
        label: "bind_group903",
        layout: render_pipeline901.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer908,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer909,
                },
            },
        ],
    });

    render_pass_encoder9001.setBindGroup(0, bind_group903);
    const uint32_9010 = new Uint32Array(3);

    uint32_9010[0] = 100;
    uint32_9010[1] = 1;
    uint32_9010[2] = 1;

    const buffer9010 = device90.createBuffer({
        label: "buffer9010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device90.queue.writeBuffer(buffer9010, 0, uint32_9010, 0, uint32_9010.length);

    compute_pass_encoder9010.dispatchWorkgroupsIndirect(buffer9010, 0);
    render_pass_encoder9010.draw(3);
    render_pass_encoder9001.setVertexBuffer(0, buffer903);
    device30.queue.submit([]);
    render_pass_encoder9001.endOcclusionQuery()
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder9010.setIndexBuffer(buffer903, "uint16");
    render_pass_encoder9001.setIndexBuffer(buffer907, "uint16");
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder9010.end();
    render_pass_encoder9010.end();
    render_pass_encoder9001.draw(3);
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder9001.end();
    compute_pass_encoder5000.popDebugGroup()
    device90.queue.submit([]);
    const command_buffer901 = command_encoder901.finish();
    device60.queue.submit([]);
    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4014,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group404);
    command_encoder900.popDebugGroup()
    device60.queue.submit([]);
    device90.queue.submit([command_buffer901, ]);
    render_pass_encoder9001.end();
    render_pass_encoder9001.popDebugGroup();
    device70.queue.submit([command_buffer701, ]);
    const command_buffer900 = command_encoder900.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.submit([command_buffer700, ]);
    device50.queue.submit([command_buffer503, ]);
    device40.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder9001.drawIndexed(3);
    compute_pass_encoder9010.end();
    device90.queue.submit([command_buffer901, ]);
    render_pass_encoder9001.end();
    render_pass_encoder9010.popDebugGroup();
    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4016,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group405);
    device00.queue.submit([command_buffer000, ]);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder9000.setIndexBuffer(buffer909, "uint16");
    render_pass_encoder9000.popDebugGroup();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4017, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4017, 0);
    compute_pass_encoder4000.popDebugGroup()
    device90.queue.submit([command_buffer900, ]);
    device90.queue.submit([]);
    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4019,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group406);
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder9000.popDebugGroup();
    compute_pass_encoder4000.end();
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder9001.popDebugGroup();
    render_pass_encoder9010.popDebugGroup();
    render_pass_encoder9010.drawIndirect(buffer9010, 0);
    render_pass_encoder9000.popDebugGroup();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4020, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4020, 0);
    render_pass_encoder9001.end();
    const uint32_9010 = new Uint32Array(3);

    uint32_9010[0] = 100;
    uint32_9010[1] = 1;
    uint32_9010[2] = 1;

    const buffer9011 = device90.createBuffer({
        label: "buffer9011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device90.queue.writeBuffer(buffer9011, 0, uint32_9010, 0, uint32_9010.length);

    compute_pass_encoder9010.dispatchWorkgroupsIndirect(buffer9011, 0);
    compute_pass_encoder9010.end();
    device90.queue.submit([command_buffer901, ]);
    const uint32_9010 = new Uint32Array(3);

    uint32_9010[0] = 100;
    uint32_9010[1] = 1;
    uint32_9010[2] = 1;

    const buffer9012 = device90.createBuffer({
        label: "buffer9012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device90.queue.writeBuffer(buffer9012, 0, uint32_9010, 0, uint32_9010.length);

    compute_pass_encoder9010.dispatchWorkgroupsIndirect(buffer9012, 0);
    render_pass_encoder9001.drawIndexedIndirect(buffer902, 0);
    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4022,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group407);
    render_pass_encoder9001.drawIndirect(buffer9011, 0);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder9000.drawIndirect(buffer904, 0);
    compute_pass_encoder4000.popDebugGroup()
    device70.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder4001.end();
    render_pass_encoder9000.drawIndexedIndirect(buffer9011, 0);
    render_pass_encoder9001.drawIndexedIndirect(buffer9010, 0);
    render_pass_encoder9001.end();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder9000.drawIndexed(3);
    render_pass_encoder9010.end();
    compute_pass_encoder4001.end();
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder9001.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: compute_pipeline407.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4024,
                },
            },
        ],
    });

    compute_pass_encoder4001.setBindGroup(0, bind_group408);
    device40.queue.submit([command_buffer400, ]);
    device70.queue.submit([]);
    render_pass_encoder9010.end();
    compute_pass_encoder9010.dispatchWorkgroups(100);
    render_pass_encoder9001.drawIndirect(buffer9011, 0);
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder4000.popDebugGroup()
    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4026,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group409);
    compute_pass_encoder4001.end();
    device50.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
}