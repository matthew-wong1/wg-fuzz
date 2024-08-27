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
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
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
    device00.pushErrorScope("out-of-memory");
    texture000.destroy();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const array0 = new Float32Array([1.0, 1.0, -0.5, 0.25, -0.25, -0.75, -1.0, -0.75, 0.75, -0.25, 0.75, 0.5, 0.75, 0.0, 1.0, 1.0, -0.75, 0.75, -0.5, -1.0, -0.5, -0.75, -1.0, 0.0, -1.0, 0.5, -0.75, 0.5, 0.5, 0.5, 0.75, -0.25, 0.5, -0.25, 1.0, -0.5, 0.75, -0.75, -0.5, 0.25, -1.0, -0.5, -1.0, -0.25, 1.0, 1.0, -1.0, -0.5, -0.75, 1.0, -1.0, -1.0, -0.25, -0.25, -0.75, 0.0, 0.5, 0.25, 0.0, 0.75, -0.25, -1.0, -0.25, 1.0, 0.5, 0.0, -0.25, -0.25, 0.5, -0.25, 0.25, 1.0, -0.75, 0.0, 0.5, 1.0, 0.0, 0.25, -0.5, 0.25, 0.0, -0.5, -0.75, 1.0, -0.75, 0.75, 0.75, 0.75, 0.25, 0.5, -1.0, -0.5, 0.75, 0.0, -0.5, 0.0, 0.0, -0.5, 0.25, -0.75, ]);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    query001.destroy()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.destroy();
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device10.pushErrorScope("out-of-memory");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
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
    
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture002.destroy();
    device40.pushErrorScope("out-of-memory");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query002.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
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
    
    
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    query000.destroy()
    
    device00.destroy();
    
    
    
    
    const array1 = new Float32Array([0.5, 0.75, -0.75, -0.75, 0.0, -0.5, -1.0, 1.0, -1.0, -0.75, 0.0, 0.75, -0.75, 0.25, 0.25, 0.75, -1.0, 0.75, 0.75, 0.75, 0.75, 0.75, -0.75, -0.25, -0.25, 0.0, 1.0, -0.75, 0.0, 1.0, 0.0, 0.5, 0.25, 0.25, -0.25, 0.0, 0.0, -0.5, 0.0, 0.25, 0.25, -0.25, 0.75, 0.0, -1.0, 0.5, -1.0, -0.5, -0.25, 1.0, 0.25, -0.75, 0.5, 0.0, -0.75, 0.75, -1.0, 0.75, 0.5, 0.75, 0.5, -1.0, -0.5, 0.5, 0.75, 1.0, 1.0, 1.0, 1.0, 0.0, 1.0, -0.25, -0.5, 1.0, -0.5, 0.5, 0.0, 0.0, 0.5, 0.0, 0.25, -1.0, 0.5, 0.5, 0.75, 0.75, -0.75, 0.5, 0.25, 0.75, 0.0, -0.75, 0.5, 0.0, 0.25, 0.5, -0.75, 0.75, 0.75, 0.5, ]);
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device50.destroy();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.destroy();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
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
    
    
    
    
    device40.pushErrorScope("validation");
    
    query400.destroy()
    const array2 = new Float32Array([1.0, -0.75, -0.75, 0.75, 0.5, -0.5, -0.5, 0.25, -1.0, -0.5, -0.75, 0.75, -0.25, -0.25, 0.25, -0.75, -0.75, 0.5, 0.5, -0.5, -0.25, 0.5, 0.75, -0.5, 0.0, 1.0, -0.25, 0.0, 1.0, -0.5, 0.25, 0.75, 0.25, -0.5, -0.25, -0.25, 1.0, 0.25, 1.0, -0.25, 1.0, 1.0, 1.0, 0.75, 0.0, -0.5, 1.0, 0.75, -0.75, 0.75, 1.0, 1.0, 0.0, -0.75, -0.5, -1.0, -0.5, -0.5, 0.5, 0.5, -1.0, -0.75, -1.0, 0.75, -1.0, -1.0, 0.5, 0.0, 0.0, -0.5, 0.25, 0.0, -1.0, 0.0, 1.0, 0.25, -0.75, 0.5, -0.75, 0.25, 0.5, 1.0, -0.25, 0.25, -0.5, -1.0, 0.25, -0.25, -0.25, -0.75, 0.75, -1.0, -0.25, -1.0, 0.5, 1.0, 0.25, 0.25, 0.5, 1.0, ]);
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
    device50.pushErrorScope("validation");
    const array3 = new Float32Array([-0.5, 0.0, -0.75, -0.5, 0.75, 0.75, 0.5, 0.0, 0.25, 0.5, -0.25, 0.5, -0.5, 0.5, -0.5, -0.5, 1.0, 0.25, 0.5, -0.25, -0.75, -0.75, 0.5, 0.75, 0.5, 0.75, 0.25, 0.5, -0.75, -0.75, 1.0, -0.25, -0.25, -0.75, 0.25, 0.0, 0.0, 0.75, -0.75, -0.5, -0.75, 1.0, 0.25, 0.0, 0.75, 0.5, 0.0, 0.5, -0.5, 1.0, -0.25, -0.25, -1.0, 0.5, -1.0, -1.0, -0.5, 1.0, 1.0, 0.5, 0.5, 0.25, 0.5, 0.0, 0.75, 0.25, -0.5, 0.75, -1.0, -0.5, -0.5, -0.75, -0.75, 1.0, -1.0, 1.0, 0.75, 0.75, -1.0, 0.25, 0.5, -0.75, 0.0, 0.25, 0.25, -0.5, -0.75, -0.25, 1.0, -0.25, 0.5, -0.75, -0.75, 0.75, -0.25, 0.25, -0.75, -0.5, -1.0, -1.0, ]);
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    query400.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device70.pushErrorScope("out-of-memory");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
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
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("validation");
    texture700.destroy();
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("out-of-memory");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    query200.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
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
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    query401.destroy()
    device60.destroy();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device70.pushErrorScope("validation");
    
    render_bundle_encoder700.setPipeline(render_pipeline700);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
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
    query402.destroy()
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query402.destroy()
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device40.pushErrorScope("internal");
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer700,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer701,
                },
            },
        ],
    });

    render_bundle_encoder700.setBindGroup(0, bind_group700);
    
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
    texture400.destroy();
    query403.destroy()
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
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    render_bundle_encoder700.insertDebugMarker("marker");
    query400.destroy()
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    query101.destroy()
    
    query402.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    texture701.destroy();
    render_bundle_encoder100.setPipeline(render_pipeline101);
    buffer701.destroy()
    query101.destroy()
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    device10.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    query400.destroy()
    const array4 = new Float32Array([-0.25, -0.5, -0.25, -0.25, 0.0, -0.25, -1.0, -0.75, -0.75, -0.75, -0.75, 0.0, 0.75, -0.5, 0.75, -0.25, -0.75, 0.5, 0.25, 0.75, 0.5, 0.5, -1.0, -0.75, -0.5, -1.0, -0.5, -0.5, -0.5, 0.0, -0.25, 0.5, -0.5, 0.0, -0.5, -0.5, -1.0, -1.0, -0.5, 1.0, 0.25, -0.25, -1.0, 0.5, 1.0, -0.25, -0.25, 0.75, -1.0, -1.0, 0.25, -0.75, 0.75, 1.0, 0.75, 0.0, 0.25, -0.5, -0.75, 0.5, -1.0, -0.25, -1.0, 1.0, 0.25, 1.0, 1.0, -0.25, 0.75, -0.5, -1.0, 0.5, 1.0, -1.0, -0.25, -0.5, 0.75, -1.0, -0.25, 1.0, -1.0, 0.5, 0.25, -0.75, 0.0, -0.75, -0.25, -0.25, 1.0, 0.0, 0.25, -0.25, -0.25, -0.25, 0.75, 0.0, -0.25, 0.5, 0.25, 1.0, ]);
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
    
    
    query403.destroy()
    
    
    
    buffer700.destroy()
    
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query403.destroy()
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture003.destroy();
    device70.destroy();
    
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    texture401.destroy();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    
    
    const array5 = new Float32Array([0.5, 0.75, 0.0, 0.0, 0.75, 0.75, -0.5, 0.5, -0.5, -0.25, -0.75, -0.75, -0.5, 1.0, 0.75, 0.25, -0.75, -0.75, 0.25, 0.25, -0.75, 0.0, 0.0, 0.5, 0.25, 1.0, -0.75, 0.5, 0.0, -1.0, -0.5, 0.75, 0.0, -0.5, 0.5, 1.0, -0.75, -0.75, -0.25, 1.0, -0.75, 0.25, -1.0, 1.0, 0.0, -0.5, -1.0, 0.25, -0.75, 0.75, -1.0, 0.0, -0.25, -1.0, 0.75, -0.25, 0.0, -1.0, 0.5, 0.25, 1.0, 0.75, -0.75, -0.5, 0.5, 0.25, -0.75, 1.0, -0.75, -0.75, 0.25, 0.75, 0.0, 1.0, 0.25, 1.0, 0.75, -0.5, -0.25, 0.5, 1.0, 1.0, -0.75, 1.0, 0.75, -1.0, -0.75, -0.25, -1.0, -0.25, -0.25, -0.25, 0.25, -0.5, 0.25, -0.5, -0.5, 1.0, -0.75, 0.0, ]);
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([1.0, 0.25, -0.75, -1.0, 0.0, -0.75, -0.75, -0.25, 1.0, 0.75, 0.75, -0.5, 1.0, 0.75, -0.25, -0.75, 0.5, -0.5, 0.0, 0.25, 0.75, -0.25, -0.5, -1.0, 0.0, 0.75, 1.0, -0.25, 0.75, -0.75, -1.0, 0.0, 0.25, 0.25, -0.5, 0.0, -0.5, -0.75, 0.5, -0.25, -0.75, 0.0, 1.0, 0.75, -0.5, -0.75, -0.75, 0.0, 0.25, 0.5, 0.0, -0.25, -1.0, -0.5, 0.25, -1.0, 1.0, -1.0, -1.0, -0.25, 0.5, 0.25, -1.0, -0.75, -0.5, -0.5, -0.75, -0.75, 1.0, -0.5, 0.75, 0.0, -0.5, -0.75, 0.25, 0.25, 0.5, -0.25, 0.5, 0.25, -1.0, 0.5, 1.0, 0.25, -0.25, -0.5, -0.25, -0.25, 1.0, -0.5, 1.0, 0.0, 0.75, 0.5, 0.0, 0.5, -0.75, 1.0, 0.25, 0.25, ]);
    
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    texture402.destroy();
    
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    query402.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    
    query401.destroy()
    
    query406.destroy()
    
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    device80.pushErrorScope("validation");
    query001.destroy()
    
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
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
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    
    query401.destroy()
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
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    render_bundle_encoder400.setPipeline(render_pipeline400);
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("out-of-memory");
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const query407 = device40.createQuerySet({
        label: "query407",
        type: "occlusion",
        count: 32,
    });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    query401.destroy()
    
    texture400.destroy();
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    query900.destroy()
    const array7 = new Float32Array([-0.5, -0.5, 0.0, -0.75, -0.5, 0.0, 0.75, 1.0, 0.0, -0.75, 0.25, -0.75, -1.0, 0.75, 0.0, -0.75, 0.5, 0.75, 0.25, 0.25, 0.75, 0.75, 0.25, -0.25, 0.0, -1.0, 0.75, -0.75, -1.0, -0.75, 0.25, 0.25, -0.75, -0.25, 0.0, 0.25, 0.25, 0.75, -0.25, 0.0, 0.25, -0.75, 1.0, -0.75, 0.5, 0.0, -0.5, -1.0, 1.0, -0.75, 0.75, -0.5, -0.5, 0.0, -0.75, -1.0, 0.25, -0.75, 0.0, -0.75, 1.0, 0.0, 1.0, -0.25, -0.5, 0.25, -0.75, -0.75, -0.75, 1.0, 0.25, -0.75, 0.0, 0.75, 0.5, 0.5, 0.75, -1.0, -1.0, 0.25, -0.5, -1.0, -0.25, 1.0, 0.25, 0.0, -0.25, 1.0, 0.75, -0.75, -0.25, 0.25, 0.25, -0.25, 0.0, -1.0, -0.75, 0.25, 1.0, 0.75, ]);
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    
    
    const array8 = new Float32Array([0.0, -0.25, -1.0, 0.0, 0.0, -1.0, 0.75, 0.5, 0.25, 0.5, 1.0, 0.25, 0.5, 0.75, 0.5, -1.0, 0.0, 0.25, 0.5, -0.25, 0.5, 0.75, 0.75, -0.5, -1.0, 1.0, 1.0, 0.5, 0.25, 0.75, 0.0, -0.5, -1.0, -0.25, -0.25, 1.0, 0.5, -0.75, 0.75, -1.0, 0.0, 0.0, 0.25, -0.25, 0.75, -0.25, 0.0, 0.25, -0.25, 0.5, 0.0, -0.25, -1.0, -1.0, -0.5, 0.25, 0.25, -0.75, 0.25, -0.75, 0.75, 0.0, -0.75, -1.0, 0.75, 0.25, -0.75, 0.0, 0.75, 0.5, -0.25, 1.0, 0.25, -0.75, 1.0, -0.5, -1.0, 0.75, -1.0, -0.5, -0.75, 0.75, -1.0, 0.25, -0.75, 1.0, 0.5, 0.75, 0.75, 0.75, 0.25, -0.25, -1.0, -0.25, 0.75, -1.0, -0.25, 0.5, 0.75, 0.75, ]);
    texture001.destroy();
    const array9 = new Float32Array([0.75, 0.75, 0.5, 0.0, -0.75, 0.0, 1.0, -0.75, -1.0, -0.75, -1.0, 0.0, -1.0, -0.5, -0.25, -1.0, 1.0, -0.25, -0.25, 0.5, 0.5, -0.5, 0.25, -0.75, 1.0, 0.75, 0.75, -1.0, 0.75, 0.5, 0.5, -1.0, 0.25, 0.5, -0.25, -0.25, -0.25, -0.25, 0.75, -1.0, 0.75, -0.5, -0.5, 0.0, 0.5, -0.25, 0.75, -0.25, -1.0, 0.75, 1.0, 0.5, 0.0, -0.5, 0.0, 0.0, 0.25, -0.25, 1.0, 1.0, -0.75, 0.25, -1.0, 0.5, -0.5, -0.75, 0.75, 0.0, -1.0, -0.75, 0.25, 0.75, -0.75, 0.75, -1.0, 1.0, -0.5, 1.0, -0.75, 0.0, 0.5, -0.5, 0.5, 0.0, 0.5, 0.75, -0.25, -0.5, 0.5, -1.0, 0.5, 0.5, -0.5, 0.5, -0.75, 1.0, 0.0, 0.5, 0.25, 0.5, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array10 = new Float32Array([-0.75, -0.5, 0.25, -0.5, 0.25, -0.25, -0.75, 0.25, -0.25, 0.0, 0.75, -1.0, 1.0, -1.0, 0.0, 0.25, 0.75, -1.0, -0.25, -1.0, 0.0, 0.0, 0.25, 0.25, -0.5, 0.0, 0.25, 0.75, -0.75, 0.5, 0.5, -0.25, 0.75, 0.25, -0.25, 0.5, -0.75, 0.75, 0.5, 0.25, -0.25, 0.25, 0.75, -0.25, 0.0, -0.5, 0.5, -0.75, -0.75, 0.25, 1.0, 0.75, -1.0, 0.0, 0.75, 1.0, -1.0, -0.25, 0.0, 0.25, 0.25, 1.0, 1.0, -1.0, -0.5, -0.75, -1.0, 0.75, -0.25, 0.25, 0.25, 1.0, -0.75, 0.25, -1.0, 0.25, 1.0, 0.5, 0.25, 0.0, -0.75, -0.5, -0.5, -0.25, 0.75, 0.75, -1.0, -0.5, -0.75, -1.0, 1.0, -0.25, -0.25, -0.5, -1.0, 0.5, -0.5, 0.0, 0.25, 1.0, ]);
    
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    
    device40.destroy();
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    query902.destroy()
    render_bundle_encoder800.insertDebugMarker("marker");
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    query903.destroy()
    
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query800.destroy()
    
    render_bundle_encoder800.insertDebugMarker("marker");
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device90.pushErrorScope("validation");
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
    query902.destroy()
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder800.insertDebugMarker("marker");
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
    query404.destroy()
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    query901.destroy()
    
    
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
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
    
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    query403.destroy()
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    device80.pushErrorScope("validation");
    
    
    
    
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32uint",
        dimension: "2d"
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
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const array11 = new Float32Array([-0.75, 0.25, -0.75, 1.0, -1.0, 1.0, -0.25, 0.0, -0.25, -0.75, 0.0, -0.5, -0.25, 0.75, 0.0, 0.0, -1.0, 0.0, -0.25, -0.75, -0.75, -1.0, -0.25, 0.5, 1.0, 0.5, -0.75, 1.0, -0.25, 0.0, 0.75, -0.75, -0.25, -0.25, 0.25, 0.75, -0.25, -0.75, -0.25, 0.0, 0.25, 0.25, 0.75, 0.5, 0.5, 0.75, -0.75, 0.75, 0.75, -0.25, -0.5, -1.0, 0.5, 0.5, 1.0, -0.5, -0.5, 0.0, -0.5, 0.75, 0.75, 0.0, 0.75, 0.25, 0.75, -0.25, 0.5, 0.75, -1.0, -1.0, 1.0, -0.5, -0.75, 0.25, -0.5, 0.75, -0.5, 0.5, -0.75, 0.5, -1.0, 0.75, 0.0, 0.25, 1.0, 0.75, 0.0, 1.0, -1.0, -1.0, -0.75, -0.75, 0.0, 0.75, 0.75, 1.0, 1.0, 0.5, -0.5, 0.0, ]);
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    
    
    query902.destroy()
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
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
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const texture_view7021 = texture702.createView({ label: "texture_view7021" });
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    
    
    render_bundle_encoder901.insertDebugMarker("marker");
    query102.destroy()
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("validation");
    
    
    const sampler804 = device80.createSampler( { label: "sampler804" } );
    const array12 = new Float32Array([0.0, -0.5, -0.75, -0.25, -0.5, 0.25, -0.5, -0.25, -0.25, -0.75, 0.5, -0.5, 1.0, -0.25, 0.75, -1.0, -1.0, -0.25, -0.25, 0.25, -1.0, -1.0, -1.0, 0.25, -1.0, -0.75, -1.0, 1.0, -1.0, 1.0, 1.0, 0.5, -0.5, -1.0, -0.75, 0.0, -0.75, 1.0, -0.5, -1.0, 0.75, 0.0, -0.5, 0.0, 0.75, -0.5, -1.0, -0.75, -0.75, -0.25, 0.25, -0.5, 1.0, -0.25, 1.0, -0.75, -0.25, -0.25, -1.0, -0.25, 0.5, 0.75, -1.0, -0.75, 0.0, 0.0, 0.75, -0.75, 0.0, -1.0, 0.5, 0.5, -0.75, -1.0, 0.75, 0.0, 0.75, 0.25, -1.0, 0.25, -0.25, 0.0, 1.0, -0.5, 0.25, -1.0, -0.25, -0.25, 1.0, -0.75, -0.25, -0.25, 0.25, -0.5, 0.75, 0.0, -0.75, 0.75, 1.0, -1.0, ]);
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    
    query902.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const array13 = new Float32Array([-0.25, 1.0, 1.0, 1.0, -1.0, 0.75, 0.25, -0.25, -1.0, 0.5, -1.0, 1.0, 1.0, -1.0, 0.25, -1.0, 0.75, 1.0, 0.0, -1.0, -0.5, 0.75, -0.5, -0.25, -0.5, 0.0, -0.75, 0.25, 0.75, -0.5, 1.0, 0.0, 0.25, 1.0, -0.25, 0.75, -0.5, 1.0, 0.75, 0.0, 1.0, 0.25, 0.5, 1.0, -0.5, -0.75, 1.0, 0.25, 0.0, -0.75, -0.75, 0.75, -0.5, 0.5, 0.0, -0.25, 0.25, 0.25, -1.0, 0.5, -0.75, 1.0, -1.0, 0.75, -0.5, 0.0, -0.25, 0.0, -0.5, 0.75, -0.25, 0.5, 0.75, -0.5, 0.0, 0.25, 0.75, -0.5, -1.0, 0.0, 1.0, 0.0, 0.0, 0.0, -0.5, 1.0, -0.5, 0.5, 0.25, 0.0, 1.0, 0.0, 0.5, 0.0, -0.5, -0.25, 0.0, 0.75, 0.25, -0.75, ]);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    render_bundle_encoder902.pushDebugGroup("group_marker");
    render_bundle_encoder902.insertDebugMarker("marker");
    texture900.destroy();
    
    query200.destroy()
    texture200.destroy();
    
    device90.pushErrorScope("internal");
    device80.pushErrorScope("internal");
    render_bundle_encoder902.insertDebugMarker("marker");
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    const array14 = new Float32Array([0.25, -1.0, -0.5, -1.0, -0.5, 0.25, 0.75, 1.0, 0.75, -0.75, 0.75, -0.75, -0.75, 0.25, 0.5, 1.0, -0.5, 0.0, -0.25, 0.5, 0.0, 0.25, 1.0, 0.5, 0.25, 0.5, 0.75, -0.5, 0.5, -0.5, 0.5, 0.0, 0.75, -0.5, 1.0, -0.75, 0.0, -0.25, 0.25, 0.0, -0.25, 0.25, 1.0, 0.5, -0.5, 0.0, 1.0, 0.5, -1.0, 0.25, 0.0, 0.25, 0.25, 0.5, -0.25, -0.75, -1.0, 0.75, 0.0, -0.75, -1.0, 0.75, 1.0, -0.75, 0.5, 0.75, -0.25, 1.0, -0.25, 1.0, -0.5, 0.0, -1.0, 0.75, 0.25, -1.0, 0.25, 0.75, 0.0, -0.5, 0.0, 0.25, 0.5, 0.0, 0.25, -0.75, 1.0, -0.5, 0.25, 0.5, -0.5, 0.5, 0.25, -0.75, -0.75, -0.25, 1.0, 0.25, 1.0, 1.0, ]);
    render_bundle_encoder902.insertDebugMarker("marker");
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    render_bundle_encoder900.insertDebugMarker("marker");
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query801.destroy()
    
    render_bundle_encoder902.insertDebugMarker("marker");
    
    const bind_group_layout903 = device90.createBindGroupLayout({ 
        label: "bind_group_layout903",
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
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    
    
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
    
    
    
    render_bundle_encoder902.pushDebugGroup("group_marker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device100.destroy();
    query801.destroy()
    texture900.destroy();
    
    render_bundle_encoder901.insertDebugMarker("marker");
    query902.destroy()
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    render_bundle_encoder800.insertDebugMarker("marker");
    
    
    
    const bind_group_layout904 = device90.createBindGroupLayout({ 
        label: "bind_group_layout904",
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
    query801.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder800.setPipeline(render_pipeline800);
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    device80.destroy();
    
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
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
    
    
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture902.destroy();
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    query401.destroy()
    texture901.destroy();
    query900.destroy()
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture004.destroy();
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder903 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder903",
        colorFormats: ["bgra8unorm"]
    });
    texture1101.destroy();
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query901.destroy()
    texture902.destroy();
    device110.destroy();
    
    render_bundle_encoder903.pushDebugGroup("group_marker");
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture_view5003 = texture500.createView({ label: "texture_view5003" });
    
    const array15 = new Float32Array([1.0, 0.5, 0.75, -0.5, -0.5, -0.5, -1.0, -0.5, 0.0, -0.25, -1.0, 1.0, 0.75, 1.0, 1.0, -0.5, -0.75, 0.25, -0.5, 1.0, -0.5, -0.5, -1.0, -0.75, 0.25, -0.75, -0.25, 0.75, 1.0, 0.75, -0.25, -0.5, 1.0, -0.25, 0.25, 0.5, -1.0, -0.25, -0.25, 0.5, -1.0, -1.0, -1.0, 0.75, -0.5, -0.75, -1.0, 0.0, 0.5, 0.0, -0.75, 0.0, 0.0, 0.5, 0.75, -1.0, -0.25, 0.0, 0.25, 0.75, 0.75, -0.75, 1.0, 1.0, 0.25, -0.75, 0.0, -0.25, -0.5, 0.0, -0.75, -1.0, 0.0, -0.75, -0.75, -0.25, 0.75, 0.25, -1.0, -0.75, 0.25, -1.0, 0.5, -0.75, -0.75, 1.0, -0.25, 1.0, 0.25, -0.25, -0.5, -0.25, 0.5, 0.0, 0.75, 0.75, 0.75, -1.0, 0.5, -1.0, ]);
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
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
    device50.pushErrorScope("out-of-memory");
    const render_pipeline1300 = device130.createRenderPipeline({
        label: "render_pipeline1300",
        vertex: {
            module: shader_module1300,
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
            module: shader_module1300,
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
    
    const texture_view9001 = texture900.createView({ label: "texture_view9001" });
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
    
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder1300.pushDebugGroup("group_marker");
    render_bundle_encoder902.insertDebugMarker("marker");
    device130.queue.submit([]);
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}