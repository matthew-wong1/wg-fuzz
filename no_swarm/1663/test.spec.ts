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
    const array0 = new Float32Array([0.5, -0.75, 1.0, 0.0, 0.25, -0.75, 0.5, -1.0, -1.0, 0.5, 1.0, 0.0, 0.0, 0.75, 0.0, 1.0, 0.5, -0.5, -0.5, 0.75, -1.0, 0.0, -0.25, 0.0, 0.0, 0.0, -0.75, 0.5, 1.0, -0.75, 0.25, -0.5, -0.25, -0.5, 1.0, 0.5, -0.25, -0.25, -1.0, -0.25, 0.75, 0.0, -0.75, -0.75, -0.25, -0.75, 0.75, 0.0, 0.0, 1.0, 0.75, -0.5, 0.0, -0.75, -0.75, -0.5, -0.5, -1.0, 0.5, 0.25, 0.75, 0.0, 0.25, -0.75, 0.0, 0.5, 0.75, 0.75, 0.5, -0.75, 0.0, -0.25, 0.75, 0.0, -1.0, 1.0, 0.25, 0.0, 0.75, 0.0, -0.25, 0.0, 0.0, -0.5, 1.0, 1.0, 0.25, 0.5, 1.0, -1.0, 0.5, 0.0, -1.0, -0.5, -0.5, -0.5, -0.5, 0.5, 0.75, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.0, 1.0, 1.0, 1.0, -0.75, 0.25, 0.5, -1.0, -0.75, 0.0, -0.25, 1.0, 0.25, -1.0, -1.0, 0.5, -0.75, -0.25, 1.0, 0.5, -1.0, 0.0, 0.75, -0.25, -0.25, 1.0, -0.75, 0.0, -0.5, -0.25, 0.5, 0.5, 0.5, -0.5, -1.0, 0.0, 0.75, 0.5, 0.25, 0.25, -1.0, -0.25, -1.0, -0.5, 0.5, -0.25, 0.0, -0.75, -0.75, 0.0, 0.25, -0.75, 0.75, -0.5, 0.75, 1.0, 0.25, 1.0, 0.75, -0.75, -0.5, -1.0, -0.25, 0.75, 1.0, -0.25, -0.75, 0.25, -0.25, -0.75, -0.75, 0.5, 0.75, 0.5, -0.5, 0.5, 0.75, 0.0, -0.25, 0.25, 1.0, -1.0, 1.0, -1.0, -0.5, 0.0, 1.0, -0.25, -0.5, 0.25, -0.5, 1.0, 0.75, 0.25, -0.5, -0.5, 1.0, 0.0, -0.5, -0.75, ]);
    const array2 = new Float32Array([-1.0, 0.75, 0.5, 1.0, 1.0, -0.5, 0.25, -0.75, 0.5, 0.25, -0.25, 1.0, -0.25, 0.0, 0.25, -0.25, -0.25, 0.0, -1.0, 0.75, -0.25, -0.75, -0.75, -0.75, 0.0, 0.5, -0.5, -0.75, 0.5, 0.25, 0.75, -1.0, -1.0, -0.75, 0.5, 0.75, 0.25, 0.25, 0.75, 0.25, 0.0, 0.5, -1.0, -0.5, -0.75, 0.5, -0.5, -0.75, 0.25, -0.25, -1.0, -0.25, -0.25, 1.0, -0.75, 1.0, -0.25, 0.0, -0.25, -1.0, 0.5, -0.75, -0.25, 0.5, 0.25, -0.75, 1.0, -0.25, -1.0, -0.75, -0.25, 0.5, 0.0, -0.75, 0.5, 0.0, 0.25, -0.5, 0.75, -0.25, 0.0, -0.25, -0.5, 0.0, -1.0, 0.75, -0.5, -1.0, 1.0, -0.75, 1.0, 0.75, -0.25, 0.0, 0.5, 1.0, -0.75, -0.5, 1.0, 0.5, ]);
    const array3 = new Float32Array([-0.5, 0.0, 0.5, -0.5, 0.75, 1.0, 0.25, 0.0, -0.5, 0.5, 0.75, -0.75, 0.0, 0.75, 0.0, 0.5, -0.25, 0.25, -1.0, 0.5, 0.75, 0.75, -0.5, 0.75, -0.5, -0.5, -0.25, 0.25, -0.5, -0.75, -0.75, -0.75, 0.0, 0.25, -1.0, -1.0, -0.25, 0.5, -0.25, 0.75, -0.5, -0.5, 1.0, -1.0, 0.5, 0.0, -0.5, 0.75, 0.5, -0.25, 0.5, -0.5, -0.25, -1.0, -0.5, 0.25, 0.5, -0.25, 0.25, -0.25, -1.0, 0.0, -0.5, 0.25, -0.25, 1.0, 0.5, -0.75, 1.0, -0.5, 0.0, 0.75, -1.0, -0.75, 0.75, 0.5, 1.0, -0.75, 0.0, 0.0, 0.25, 0.75, 0.0, 0.75, -0.5, -0.5, 0.75, 1.0, -0.25, 0.0, 1.0, -0.5, 0.5, -0.25, 0.0, -0.75, -0.75, -0.75, 0.75, 0.25, ]);
    const array4 = new Float32Array([-0.75, -0.75, 0.5, 0.75, -0.25, 0.5, -0.75, -0.5, 0.5, -0.75, 0.0, 0.5, -0.25, -0.5, 0.0, -0.75, -0.5, -0.25, 1.0, -1.0, -1.0, 1.0, -0.75, -1.0, 0.75, 0.75, -0.25, -1.0, -0.75, 1.0, 0.5, 1.0, 0.25, 1.0, 0.0, 0.25, 0.25, 0.5, -0.75, 0.25, -0.25, 0.5, 0.75, 0.25, 0.5, 0.25, -0.5, -0.25, 0.25, 1.0, 0.75, 0.75, 1.0, 0.25, 0.5, 0.0, 0.25, 0.25, -1.0, -0.75, 0.0, -1.0, -0.25, 0.75, -0.5, -0.5, 0.75, 1.0, -0.25, 0.5, -1.0, 0.25, 0.0, 0.75, 0.25, 0.75, 1.0, 0.75, 0.25, -0.25, 1.0, -1.0, 1.0, 0.5, 0.75, 0.25, -0.25, 1.0, -0.75, 0.0, 1.0, -0.5, 0.5, 0.75, 0.5, -1.0, 1.0, -0.5, 0.25, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    query100.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device10.destroy();
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("out-of-memory");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    texture000.destroy();
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_buffer000 = command_encoder000.finish();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    device00.queue.submit([command_buffer000, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.pushErrorScope("validation");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    buffer000.destroy()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    device10.pushErrorScope("validation");
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
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
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder001.popDebugGroup();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const array5 = new Float32Array([1.0, 0.25, 1.0, -0.25, -0.5, 0.25, 1.0, -0.5, -0.25, 1.0, -0.25, -0.25, -0.25, -0.25, 0.25, -1.0, 1.0, 1.0, -0.5, 0.5, 0.25, -0.5, 0.0, -0.75, 0.25, -0.75, 1.0, 0.75, 0.0, 1.0, -0.25, -0.25, 0.75, -0.75, -0.25, -0.75, 0.0, 1.0, 0.0, 0.0, -0.75, -1.0, 0.75, 0.75, 0.25, 0.5, 1.0, 0.25, -1.0, -0.75, -1.0, 0.0, -0.75, 1.0, -0.5, -0.25, 0.5, 0.5, -1.0, -0.75, -1.0, 1.0, 0.75, -1.0, 0.75, -0.25, 0.0, -0.25, -0.5, -1.0, 1.0, -0.5, 0.25, 0.5, -1.0, -0.25, 0.0, 0.25, 0.25, 0.75, -0.75, 0.5, 0.5, 0.0, 1.0, 0.75, -1.0, 1.0, -0.75, -1.0, -0.5, 0.25, 0.75, -0.25, -0.5, 0.25, 0.5, 0.0, 0.25, -0.5, ]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder001.pushDebugGroup("group_marker");
    texture002.destroy();
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    
    const array6 = new Float32Array([0.25, -0.5, 0.75, 0.75, 0.75, 1.0, -0.75, 1.0, -1.0, -1.0, -0.5, -0.75, 1.0, -0.5, 1.0, -0.5, -1.0, -1.0, 0.5, -1.0, 1.0, -0.75, -0.25, -1.0, 0.25, 0.5, -0.5, 0.0, -0.25, -0.25, 0.25, -0.5, 0.75, -1.0, -0.25, -1.0, 0.25, 0.25, 0.75, 1.0, 0.25, 0.5, 0.25, -0.75, -1.0, 1.0, -1.0, -0.5, 1.0, -0.5, 0.5, 0.25, 1.0, -0.25, -0.75, -1.0, 1.0, 0.5, 0.25, 0.75, -0.5, 0.75, -1.0, 0.0, 0.25, -0.25, 0.5, 0.75, 0.0, -1.0, 0.5, 0.25, 0.75, 0.75, -0.75, -0.5, 0.75, 0.5, -1.0, 0.25, -0.75, 0.0, 0.0, -0.25, -0.75, 0.75, 0.25, -0.5, -0.75, -0.5, -0.75, -0.25, 0.5, -0.75, -1.0, -1.0, 0.25, 0.25, 1.0, 0.5, ]);
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    buffer001.destroy()
    render_bundle_encoder000.setPipeline(render_pipeline001);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query001.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
        layout: render_pipeline001.getBindGroupLayout(0),
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
    
    command_encoder002.insertDebugMarker("mymarker");
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    
    query003.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    query000.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    compute_pass_encoder0030.insertDebugMarker("marker")
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query300.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    compute_pass_encoder0010.popDebugGroup()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    command_encoder004.clearBuffer(buffer004);
    query003.destroy()
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    
    device00.pushErrorScope("out-of-memory");
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    
    const compute_pass_encoder0031 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0031" });
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
    
    const command_buffer005 = command_encoder005.finish();
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    query003.destroy()
    compute_pass_encoder0031.pushDebugGroup("group_marker")
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    const command_buffer002 = command_encoder002.finish();
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder002.setPipeline(render_pipeline002);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    compute_pass_encoder0031.popDebugGroup()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder001.setVertexBuffer(0, buffer000);
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    query100.destroy()
    render_bundle_encoder000.popDebugGroup();
    buffer003.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    render_bundle_encoder000.setVertexBuffer(0, buffer005);
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    texture001.destroy();
    
    device20.pushErrorScope("internal");
    query300.destroy()
    
    
    buffer301.destroy()
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    render_bundle_encoder301.popDebugGroup();
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder001.drawIndirect(buffer000, 0);
    texture300.destroy();
    
    query000.destroy()
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const array7 = new Float32Array([0.25, -0.25, 1.0, 0.25, -0.25, -0.75, -0.25, -0.75, 0.0, -0.75, -0.75, 0.0, -0.25, 0.25, 0.75, -0.5, 0.25, -1.0, -0.75, -0.75, -0.75, -0.75, 1.0, 0.25, 0.75, 0.0, 0.75, -0.5, -0.5, 0.0, 0.25, -0.25, 0.0, -0.75, 0.0, 0.0, 1.0, -0.5, -0.75, -0.5, -0.25, -0.25, 0.5, -0.25, -0.25, 0.0, -0.75, 0.75, 0.25, 0.0, -0.25, -0.25, -0.75, -1.0, -1.0, 0.75, 0.75, -1.0, -0.25, -1.0, 1.0, 0.5, -0.25, 1.0, 0.75, -0.5, -0.5, 0.75, 0.5, 1.0, -0.25, 0.75, 0.75, 0.5, -1.0, 0.5, 0.25, -1.0, -0.25, -0.25, 0.25, -0.5, 1.0, -0.75, 0.25, -0.5, 0.75, -1.0, -0.75, 1.0, -1.0, -1.0, 1.0, 0.0, 1.0, -1.0, -0.25, 0.25, 0.5, 0.25, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    query001.destroy()
    texture004.destroy();
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_bundle_encoder000.setIndexBuffer(buffer001, "uint16");
    query300.destroy()
    
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    query003.destroy()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0011.insertDebugMarker("marker")
    compute_pass_encoder0011.insertDebugMarker("marker")
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: query003
    });
    buffer300.destroy()
    query000.destroy()
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    render_pass_encoder0030.setPipeline(render_pipeline006);
    render_pass_encoder0030.insertDebugMarker("marker");
    
    
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    query003.destroy()
    render_pass_encoder0030.insertDebugMarker("marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_bundle_encoder000.setIndexBuffer(buffer000, "uint16");
    
    
    buffer006.destroy()
    
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0032,
            },
        ],
        occlusionQuerySet: undefined
    });
    query300.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder0040.setPipeline(render_pipeline005);
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device30.queue.submit([]);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query002.destroy()
    
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    render_bundle_encoder000.setIndexBuffer(buffer001, "uint16");
    buffer002.destroy()
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    buffer301.destroy()
    
    render_pass_encoder0040.pushDebugGroup("group_marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view0033 = texture003.createView({ label: "texture_view0033" });
    
    device10.queue.submit([]);
    const array8 = new Float32Array([0.25, 0.75, -0.75, -0.75, 0.5, -1.0, 0.75, 0.0, -0.25, 0.25, -0.5, -0.25, -0.75, 0.0, -1.0, -0.25, -0.25, -0.75, -1.0, 0.75, -0.5, -0.5, 0.75, -0.75, 0.5, -0.75, -1.0, 0.0, -0.5, 0.25, -0.5, 0.25, -1.0, -0.25, 0.0, 0.75, -0.5, 0.0, -1.0, 0.75, -1.0, 0.0, -0.5, -0.75, 0.75, 0.75, 0.25, -0.5, 0.75, 0.0, 0.75, -0.5, 0.25, -1.0, -0.25, -0.75, -0.5, 0.25, -1.0, 0.25, 1.0, 0.0, 0.5, -1.0, 1.0, 0.25, 1.0, -0.75, -0.25, 0.5, 0.25, 0.5, 0.25, 0.0, 0.0, 1.0, -0.5, -1.0, 1.0, -0.25, -0.5, -1.0, 0.5, 1.0, 0.25, -0.5, 0.25, -0.75, -0.75, -1.0, 0.5, -0.75, 0.0, -1.0, -1.0, 0.75, 0.0, -0.25, -0.5, 0.0, ]);
    device30.destroy();
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    query003.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    render_pass_encoder0010.setPipeline(render_pipeline0010);
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
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
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group003);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0033,
            },
        ],
        occlusionQuerySet: query002
    });
    
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.popDebugGroup();
    render_bundle_encoder000.drawIndexedIndirect(buffer009, 0);
    compute_pass_encoder0030.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query000
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0031.setPipeline(render_pipeline001);
    render_pass_encoder0040.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    texture002.destroy();
    render_pass_encoder0011.setPipeline(render_pipeline0010);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    device00.queue.writeBuffer(buffer009, 0, array2, 0, array2.length);
    render_pass_encoder0011.pushDebugGroup("group_marker");
    render_pass_encoder0031.setStencilReference(1);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0040.pushDebugGroup("group_marker");
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query003.destroy()
    compute_pass_encoder0030.setPipeline(compute_pipeline000);
    buffer0010.destroy()
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.destroy();
    
    device40.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array9 = new Float32Array([-0.5, 0.0, 0.5, -1.0, 0.25, 0.25, -0.75, 0.5, -0.5, 1.0, 0.75, 0.25, 1.0, -0.75, 0.25, -0.25, -0.25, -1.0, -1.0, -0.75, -0.25, 0.0, 0.75, 0.0, -1.0, 1.0, 0.0, 1.0, -0.25, -0.5, 0.75, 0.75, -0.5, -1.0, -0.25, -1.0, -0.5, -0.5, -0.25, 0.75, 0.25, 0.5, -0.5, 0.25, 0.0, 0.75, -0.75, 1.0, -0.75, -0.5, 0.25, 0.5, 1.0, -0.75, 0.5, 0.0, 0.0, -1.0, 1.0, -0.5, -0.75, -0.75, 1.0, -0.5, -0.5, 0.0, 0.25, -0.75, 0.5, 0.75, 0.5, -0.5, 0.5, 1.0, -0.75, -0.25, 0.25, -1.0, -0.25, -0.25, -0.75, 0.75, 0.25, -0.75, -0.25, -1.0, 1.0, 0.5, 0.0, -0.75, 1.0, 0.0, -0.75, -1.0, -1.0, -0.5, 0.25, 0.0, 0.5, -0.25, ]);
    
    
    const array10 = new Float32Array([-1.0, 1.0, 1.0, -0.25, 0.0, -0.25, 0.0, -1.0, 1.0, 1.0, -0.25, -0.75, -0.5, 0.0, 0.75, -1.0, -1.0, 0.25, 0.5, 0.75, -0.75, 0.5, 1.0, 1.0, -0.75, -0.5, 0.0, -0.75, -1.0, -1.0, 0.0, -0.5, -0.25, 0.0, 1.0, 0.75, 0.0, 0.25, -0.25, 0.75, -1.0, -0.25, -0.75, 0.0, -1.0, 0.25, -1.0, -0.5, 0.75, 1.0, 0.5, -0.5, 1.0, 1.0, 0.75, 0.75, 0.5, 0.0, 0.25, 0.5, -0.5, -0.75, 0.25, 0.0, 0.75, -1.0, 0.0, -1.0, -0.75, -0.5, 0.0, 0.5, 0.25, -0.5, -0.5, -0.75, -0.5, 0.0, -1.0, 0.25, -1.0, -0.75, -0.75, 1.0, -0.75, 0.5, 0.75, -0.75, -0.25, 0.25, 0.0, 0.0, 0.25, 0.25, -0.75, -1.0, 0.5, 0.0, 0.0, -1.0, ]);
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query500.destroy()
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array11 = new Float32Array([0.25, -1.0, 0.0, -0.5, -0.75, 0.75, -0.75, 1.0, -0.25, -0.25, -0.75, -0.25, -1.0, 1.0, 1.0, 1.0, 0.5, 0.5, 1.0, -0.75, -0.25, 0.75, 0.25, 0.25, -0.75, -0.25, 0.75, 0.75, 1.0, 0.75, 0.5, -0.5, -0.25, 0.5, -1.0, -0.75, 0.75, 0.25, -1.0, 1.0, 0.0, -0.25, 0.25, 1.0, 0.75, 1.0, -1.0, 0.5, 1.0, -0.25, 1.0, 0.75, 0.0, 0.5, -0.5, 0.75, 0.0, 0.75, -0.25, -0.5, -1.0, -0.25, 0.25, -0.5, -0.5, 0.5, -0.75, 1.0, 0.5, -0.5, -0.5, 0.5, 0.75, -0.75, -0.25, -0.5, -0.25, 0.25, 0.0, -0.5, 0.75, 0.75, -0.75, -0.25, 1.0, 0.5, 0.25, 1.0, -1.0, 0.75, -0.25, 0.75, -0.75, -1.0, 0.5, 1.0, -0.25, -0.25, -0.75, 0.0, ]);
    const array12 = new Float32Array([-0.5, 0.0, -0.25, 0.0, -1.0, 0.75, 0.5, -0.25, -0.75, 0.25, 0.5, -0.75, -0.25, -0.75, -0.5, -1.0, 0.75, -0.5, 0.75, -0.75, -1.0, 0.0, -0.25, 0.5, -0.25, 0.25, 1.0, 0.0, -1.0, -0.5, -0.75, -0.5, 0.5, 0.0, -0.75, 0.75, -1.0, 0.25, 0.5, 1.0, -1.0, 0.0, 0.5, 1.0, 0.75, 0.5, 1.0, 0.75, -0.5, 0.75, -0.75, 0.0, 0.25, 0.25, -0.75, -0.5, 0.0, 0.75, 1.0, 0.25, 0.0, 0.5, 0.5, 1.0, -1.0, -1.0, -0.25, -0.75, -0.25, 0.75, 0.5, 0.75, -0.5, 0.5, -0.75, 1.0, -0.5, 0.25, 0.0, 0.75, 0.25, 0.0, -0.75, 0.0, 0.5, -0.75, 0.25, 0.25, -0.25, -1.0, -0.5, -0.5, -0.75, -0.25, 0.5, -1.0, -0.5, -0.5, 0.5, 1.0, ]);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer008,
        0
    )
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device50.queue.writeTexture({ texture: texture500 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer500.destroy()
    
    device50.destroy();
    render_bundle_encoder301.insertDebugMarker("marker");
    const array13 = new Float32Array([0.0, 1.0, 0.75, 0.5, -0.75, -1.0, 1.0, -0.75, 0.0, 0.0, -0.25, -0.25, 0.5, 0.0, -0.5, 0.5, 0.0, -0.5, 0.5, 0.75, -0.75, -0.5, 0.25, 0.5, 0.75, -0.75, 0.0, -0.5, -0.5, -0.5, 0.75, 0.25, 0.5, 0.0, -0.25, -0.25, 0.25, 1.0, -0.5, 1.0, 0.5, 0.5, -0.5, -0.5, 0.75, 0.75, 0.0, -0.5, -0.75, -0.5, -0.75, 0.75, -1.0, 0.0, -1.0, 0.5, -0.5, 0.75, 0.75, -0.25, 0.25, 1.0, -1.0, -0.5, -0.75, 0.25, 0.75, -0.25, 1.0, 0.25, 1.0, -0.75, 1.0, -0.5, 0.75, 0.0, 0.5, 0.0, -1.0, -0.75, -0.75, 0.75, -0.25, -0.75, 0.75, 0.75, -0.25, 1.0, 0.25, -0.75, -0.25, 0.5, -1.0, -1.0, -1.0, 0.0, 0.75, 0.25, 0.75, 1.0, ]);
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array14 = new Float32Array([0.5, 0.5, -0.5, 0.25, 0.25, -1.0, 0.5, 0.5, 0.5, 0.25, -0.5, -0.25, 1.0, 0.25, 0.5, -0.25, 0.0, -0.5, -0.75, 0.75, -1.0, -1.0, -0.75, -1.0, 0.5, 0.25, -1.0, -0.5, 0.25, 0.25, 0.5, 0.0, 0.5, 0.0, 0.0, -0.75, -0.5, 0.0, -0.5, -0.5, 0.5, 0.0, 0.0, 0.5, -1.0, 0.0, -1.0, 0.5, 0.25, -0.25, 0.25, -0.25, 0.25, -1.0, -0.25, 0.75, 0.75, 0.25, -0.5, -0.25, 0.25, 0.25, 0.25, 1.0, -0.25, 0.5, -0.5, -0.25, 1.0, 0.0, -1.0, -0.25, 0.25, 0.0, -0.5, -1.0, -0.75, -0.75, -0.25, -1.0, 1.0, 1.0, 0.0, -0.5, -1.0, -1.0, -1.0, 0.0, -0.5, 1.0, 0.25, -1.0, 0.75, -1.0, 0.0, 0.25, 1.0, 0.75, -0.25, 0.0, ]);
    const array15 = new Float32Array([-1.0, 0.75, -1.0, 1.0, -0.25, 0.25, -0.25, 1.0, 0.75, 0.25, 0.0, -1.0, -0.75, -0.25, -0.5, -1.0, -0.25, 1.0, -0.25, 1.0, -0.5, 0.25, -0.5, 0.75, 0.0, 1.0, 0.25, -0.75, -1.0, -0.25, -1.0, -0.25, 1.0, 1.0, 0.25, -0.25, 0.75, -0.25, 1.0, -1.0, -0.25, -1.0, -0.75, -0.25, 0.0, -0.75, -0.5, 0.0, 0.75, 0.25, -0.25, 0.0, 1.0, 0.0, -0.5, 0.75, 0.0, -0.75, 0.25, -1.0, -0.25, 0.25, -0.25, -0.75, 0.0, 0.0, 0.25, 0.5, 1.0, 0.0, -1.0, -0.75, 0.5, -0.25, -0.75, 1.0, 0.25, 0.0, -1.0, 0.75, 0.75, 0.5, 0.0, -1.0, 0.5, 0.75, 0.25, 0.5, 0.75, 0.25, -0.5, 0.25, -0.25, 0.0, 1.0, -0.5, 1.0, -0.25, -0.25, 0.25, ]);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const array16 = new Float32Array([-0.5, 0.75, -0.25, 0.0, 0.5, -0.25, -0.25, 0.0, -0.75, 0.75, 0.25, -1.0, 1.0, 1.0, 1.0, -1.0, 1.0, 0.0, -0.25, 0.0, 0.0, -0.75, 0.75, 0.75, -0.75, 0.5, -0.5, 0.5, -1.0, 1.0, 0.0, 0.0, -0.75, 1.0, 0.25, -0.5, 0.5, 1.0, 0.5, -0.5, -1.0, 0.0, -0.5, -0.5, 0.5, 0.25, 0.25, -0.5, -0.25, 0.75, 0.5, 1.0, 0.5, 0.25, 0.75, 0.5, -0.5, 0.5, 1.0, 1.0, -0.5, -0.5, 0.25, 0.0, 1.0, 0.5, -0.25, -0.75, -0.25, -1.0, -0.5, -0.75, -1.0, -0.5, -0.25, 0.0, 0.0, -1.0, -0.25, 0.5, -0.5, 0.0, 0.0, 0.0, -0.25, -1.0, 0.5, 0.5, 0.0, -0.25, 1.0, 0.5, -1.0, 0.75, 0.25, -1.0, -1.0, 0.5, 0.5, 0.5, ]);
    
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const array17 = new Float32Array([0.25, 0.5, 0.5, -0.5, -0.75, 0.5, 1.0, -0.5, -0.5, 0.75, 0.25, 0.5, -0.25, 0.25, -0.75, 0.0, 0.25, -0.75, -0.75, 0.0, 0.0, -0.75, 0.5, 0.25, 0.5, -0.75, 1.0, 0.0, 0.25, -0.75, 0.0, 0.0, -0.25, -0.25, -0.5, 0.25, -0.5, 0.75, 0.75, -0.25, -0.75, -0.25, -0.5, 0.5, 0.5, -0.25, 0.25, -0.75, 0.25, -1.0, 0.75, 0.75, -0.75, -1.0, -0.25, 0.25, -0.75, 0.0, 0.0, -0.75, 1.0, 0.5, -0.5, 0.75, -0.25, -0.75, -0.25, 0.75, -0.25, 1.0, 0.75, 0.0, 0.0, 0.5, 0.25, -1.0, 0.25, 1.0, 0.25, 1.0, 1.0, 0.25, 0.0, 1.0, 0.75, -0.75, 0.75, 0.5, -0.5, -0.25, 0.0, 1.0, 0.25, 0.25, 0.5, -0.25, 0.75, 0.75, 0.75, -0.25, ]);
    
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    texture302.destroy();
    
    
    device40.pushErrorScope("out-of-memory");
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device60.pushErrorScope("validation");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device00.queue.writeBuffer(buffer0012, 0, array16, 0, array16.length);
    const array18 = new Float32Array([-0.75, -0.5, 1.0, 1.0, -0.5, -0.25, -0.75, 0.5, 0.25, 0.5, 0.5, -1.0, 1.0, -1.0, 0.0, -0.25, 0.75, -1.0, 0.5, -1.0, -1.0, 1.0, -0.75, 0.0, -0.75, -0.5, -0.75, -0.5, 0.5, -0.25, -0.25, 1.0, 1.0, -0.25, 0.75, 0.75, 0.25, 0.25, -1.0, 1.0, 0.0, 0.25, -0.75, -0.5, -0.25, 0.0, -0.75, 0.0, 0.75, 0.0, -0.5, -0.25, 0.25, -0.75, 0.75, 0.0, -0.25, 0.5, 0.5, 1.0, -0.75, -0.75, -0.5, 0.25, 1.0, -1.0, -0.5, 1.0, -0.25, -0.25, 1.0, -0.75, -0.75, -0.25, 0.5, -0.5, -0.25, -1.0, 0.75, 0.5, 0.0, 0.25, -0.25, -0.75, -0.5, 0.75, 0.75, 0.75, 0.0, 0.5, -0.75, 0.25, 0.5, -1.0, 0.0, 1.0, -0.5, 1.0, 0.75, 0.75, ]);
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16uint",
        dimension: "2d"
    });
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
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
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
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
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("out-of-memory");
    
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    device70.queue.writeTexture({ texture: texture700 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device60.queue.writeBuffer(buffer600, 0, array14, 0, array14.length);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout700,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0040.setPipeline(compute_pipeline005);
    device70.queue.writeTexture({ texture: texture700 }, array18, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
    
    
    render_bundle_encoder702.insertDebugMarker("marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    device70.queue.writeTexture({ texture: texture700 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.queue.submit([]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}