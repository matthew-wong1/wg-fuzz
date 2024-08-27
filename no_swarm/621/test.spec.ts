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
    const array0 = new Float32Array([-0.25, 1.0, -0.5, 0.0, -0.5, -0.5, -1.0, 0.5, 1.0, -0.75, 1.0, 0.25, -0.75, 0.0, -1.0, 0.75, -0.5, 0.75, 0.5, -1.0, 0.75, -0.75, -0.25, 0.0, 0.5, 0.25, -0.75, -1.0, -1.0, -0.75, -1.0, -0.75, 0.25, -0.5, 1.0, 0.25, 0.5, -0.75, 0.75, -0.75, 0.25, -0.5, 0.5, -0.75, 0.0, -0.75, -0.25, -0.25, -0.25, 1.0, 0.75, 0.25, -0.5, -0.75, -0.25, 0.25, 0.5, 0.75, -0.75, 1.0, -0.75, -0.5, 0.5, 1.0, -0.25, -1.0, 0.5, 0.75, 0.25, -1.0, 0.0, -0.75, 0.25, 0.75, 0.5, 0.5, -1.0, 0.75, 1.0, 0.5, -1.0, 0.5, 0.75, -1.0, -0.25, 0.5, -0.5, -1.0, -0.75, -0.5, -0.5, 0.0, 0.25, 1.0, -1.0, 0.5, 0.0, 0.5, 0.5, -0.75, ]);
    
    
    const array1 = new Float32Array([0.25, 0.75, -0.25, 0.25, 0.75, 0.5, 0.5, 0.0, -0.5, 0.0, -1.0, 0.75, -0.5, -0.75, 0.75, -1.0, -0.75, 0.25, -1.0, 1.0, 0.25, -1.0, -0.5, -1.0, -0.5, -1.0, 0.0, -0.25, -0.75, -1.0, -0.75, -0.25, 0.5, -0.75, 0.5, -0.75, 0.25, -0.5, 1.0, 0.0, -1.0, 0.75, -0.25, 0.25, -0.25, -1.0, 0.5, 0.25, -0.5, -0.5, 0.75, 0.0, 0.5, -0.5, -1.0, -0.5, 0.0, 1.0, 1.0, -0.25, 0.5, 0.0, -0.75, -0.75, 0.25, -0.75, -0.25, -0.75, -0.75, 0.75, 0.75, 0.5, -0.25, 0.0, -0.25, -1.0, -1.0, 0.5, -0.5, 0.75, -0.75, 0.25, 0.75, -0.25, -0.25, 0.25, 1.0, 1.0, 0.0, -0.5, -0.5, 0.5, -1.0, -0.75, -0.5, -0.75, 0.5, -0.25, -0.5, -1.0, ]);
    const array2 = new Float32Array([-0.5, -0.5, 0.0, 0.25, -0.75, 0.0, 0.25, 0.0, 1.0, -1.0, 0.25, 1.0, 0.25, -0.75, 1.0, 0.75, -0.25, -0.75, 1.0, -0.25, 0.0, 0.0, -0.5, -0.75, -1.0, -0.5, -0.5, -0.5, 0.0, 1.0, -0.5, -1.0, 0.75, 1.0, 1.0, 0.0, -0.5, -0.75, -0.75, 1.0, 0.25, 1.0, 0.0, -0.75, 0.0, -0.75, -1.0, -0.25, -0.75, -1.0, 0.25, 0.0, -0.25, 0.5, -0.75, 0.25, -1.0, -0.75, -0.5, -0.5, 0.5, 1.0, 0.5, -0.75, -1.0, 1.0, -1.0, 0.5, 0.25, 0.0, 0.0, -0.25, 0.5, -1.0, -0.25, 1.0, 0.5, -0.25, -0.25, -1.0, -1.0, 0.0, 0.0, -1.0, 0.75, -0.75, 0.75, 0.0, 0.0, 0.75, -0.25, 0.25, 0.5, 0.5, 1.0, -0.5, -0.75, 0.5, -0.75, 0.25, ]);
    
    const array3 = new Float32Array([0.75, 1.0, -0.75, 1.0, -1.0, -0.5, 0.75, 0.5, 0.25, 0.75, 0.25, -0.25, 0.25, 0.5, 1.0, 0.0, -1.0, -0.5, -0.75, -0.5, 0.75, 0.5, 0.75, 0.0, 1.0, 0.0, -1.0, 0.25, -1.0, 0.75, -1.0, 0.75, -0.5, 0.25, -0.75, -0.25, -1.0, 0.0, -0.25, 0.0, 0.5, -0.5, 0.0, 0.75, 0.5, 0.25, -0.5, 0.25, 1.0, -1.0, 0.5, 0.75, -1.0, 1.0, 0.0, 0.0, 1.0, -0.75, -0.25, -0.5, 0.25, -0.75, 0.75, 0.0, 1.0, 0.5, -0.5, 0.5, 0.75, -0.25, -0.75, -0.25, -0.5, 0.5, -0.75, -0.75, 0.25, -0.25, -0.75, -1.0, -1.0, -0.75, 0.75, 1.0, -1.0, 0.75, 0.25, 0.0, -0.25, 0.5, -0.5, 0.25, -0.25, -1.0, 0.25, 0.25, 0.75, 0.0, 0.75, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([1.0, -0.25, 0.5, 0.0, -0.25, -0.5, 0.5, -0.25, -0.25, 0.75, 0.5, -1.0, 0.75, -0.5, -0.5, 0.0, 0.75, -0.5, 1.0, 0.75, -0.25, 1.0, 1.0, 0.0, -0.75, 0.5, -0.25, 0.25, 0.75, 0.0, -0.25, 0.75, -1.0, 0.25, 0.0, -0.5, 0.75, -0.25, 0.5, 0.5, -0.5, 0.0, 0.25, -1.0, -0.25, -0.75, 1.0, 1.0, -0.75, 0.0, -1.0, -0.25, 0.5, 0.75, 0.75, -1.0, 0.25, 0.25, -0.75, 0.25, 0.5, 0.75, -1.0, 0.5, 0.0, -0.5, 0.5, -1.0, -0.25, 0.5, 0.25, -0.75, 0.5, 0.5, 0.0, -1.0, 0.0, -1.0, 0.5, -0.75, -1.0, 0.75, 0.0, -1.0, 0.75, 0.5, 0.0, -0.75, 1.0, -0.25, -0.25, -0.75, -0.5, 0.5, 0.25, -0.25, -0.5, -1.0, -1.0, -0.75, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    texture000.destroy();
    buffer000.destroy()
    query000.destroy()
    device00.pushErrorScope("validation");
    const array5 = new Float32Array([-0.75, -1.0, -1.0, -0.75, -0.75, -0.5, -0.5, 0.5, 0.5, -1.0, 0.25, 1.0, 0.5, 0.0, 0.25, -0.5, -1.0, 0.25, -1.0, -0.25, -1.0, -0.25, -1.0, 1.0, 0.25, -0.75, -0.75, -0.75, 0.25, 0.0, -0.75, 0.75, 1.0, -0.5, -0.75, 1.0, -0.25, 0.75, -1.0, 0.0, -0.5, 1.0, 0.5, 0.5, 0.5, 0.75, 0.0, -0.25, 0.75, -0.5, 0.25, -0.5, -0.5, -1.0, 0.5, 0.5, -0.5, 0.5, 0.75, -0.5, 0.5, 1.0, 0.75, -0.75, -0.25, -0.75, 1.0, -0.75, 0.25, -1.0, -0.25, 1.0, -0.75, -1.0, 1.0, 0.25, -0.5, -0.5, -0.5, 1.0, 1.0, 1.0, 0.0, -1.0, -1.0, -0.25, -1.0, 0.25, -1.0, 0.25, 1.0, -0.75, -0.5, 1.0, 0.5, 0.25, -0.5, -0.25, -0.5, -0.25, ]);
    const array6 = new Float32Array([-0.25, -0.25, 1.0, -1.0, 0.5, 0.75, 1.0, -0.25, 0.0, -1.0, -0.5, 0.0, 0.75, -1.0, 1.0, 0.5, -0.75, 0.25, 1.0, 0.0, -1.0, 0.5, 0.5, 1.0, -0.75, -0.25, 1.0, -0.5, -1.0, 0.0, 0.0, -0.75, 0.5, 1.0, -0.25, -1.0, -0.75, 1.0, 0.0, -0.5, 0.0, 0.25, 0.0, -1.0, 0.5, -0.5, -0.75, -0.25, -0.25, -1.0, 0.5, -0.25, -0.5, 0.5, -1.0, -0.25, 0.25, 1.0, 0.5, 0.75, -1.0, -0.5, 0.25, 0.0, -1.0, -0.5, 0.0, 1.0, 1.0, 1.0, -0.25, 0.0, 0.5, -0.25, 1.0, -0.75, 1.0, -1.0, 0.75, 0.75, -0.75, -0.75, 1.0, 0.25, -0.25, 0.25, -0.25, -0.5, -1.0, 0.5, 1.0, -1.0, 0.0, 0.5, 0.5, 1.0, 0.25, 0.75, -0.25, 0.75, ]);
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
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
    
    
    render_bundle_encoder000.setPipeline(render_pipeline001);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    
    
    
    const array7 = new Float32Array([0.0, -1.0, 0.25, -1.0, 1.0, -0.5, -1.0, -1.0, -0.75, 0.75, -0.75, -0.75, 0.25, -0.75, -0.25, -0.5, -0.5, 0.75, -0.25, 1.0, -0.25, -1.0, -0.75, -0.25, 1.0, 1.0, 0.5, -0.25, -0.5, -0.5, -1.0, 0.5, 0.75, 0.0, 0.75, 0.75, 0.75, -0.5, 0.75, 0.75, 0.75, 1.0, 0.75, -0.5, 0.5, 0.5, 0.0, 0.25, 0.75, -1.0, -1.0, -1.0, 1.0, 0.25, 0.75, 0.0, -0.5, 0.25, 0.25, -0.75, 0.75, 0.25, 1.0, 0.25, 1.0, -1.0, -0.5, -0.75, -0.5, -0.25, -0.5, 0.5, -0.25, -0.75, 0.5, -0.75, 0.75, -0.25, -0.5, 0.75, -0.75, -0.75, -0.5, 0.0, -0.5, -1.0, 0.75, 1.0, 1.0, -0.25, -1.0, -0.5, -0.75, -0.75, 0.75, 1.0, -0.25, -0.25, -0.75, 1.0, ]);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    render_bundle_encoder002.setPipeline(render_pipeline000);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    texture001.destroy();
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder002.insertDebugMarker("marker");
    query000.destroy()
    render_bundle_encoder002.popDebugGroup();
    const command_buffer000 = command_encoder000.finish();
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array8 = new Float32Array([-0.75, 1.0, 0.5, -0.25, -0.5, 0.25, -0.25, 0.25, 0.25, 0.0, 0.5, 0.25, -1.0, 1.0, 0.75, -0.5, 0.5, 0.75, 0.5, 1.0, -1.0, -0.5, -0.5, 0.5, 1.0, 0.25, 0.75, 0.5, -0.5, -0.75, -0.75, 0.75, 0.25, -0.5, 0.75, -0.5, -0.25, 0.5, 1.0, 0.75, 0.25, -0.25, -0.25, 1.0, -1.0, 1.0, 1.0, 0.75, -1.0, 0.25, -0.75, -1.0, -0.75, -0.5, 0.75, -0.5, 0.0, -0.75, 0.5, 1.0, 0.0, -1.0, 0.25, 0.5, 0.75, -1.0, -1.0, 0.25, 0.5, 0.5, -0.5, 0.0, 0.25, 0.25, 1.0, 0.25, -1.0, 0.75, 0.25, 0.25, 1.0, 0.25, -0.25, -0.75, 0.5, -0.25, -0.25, 0.0, 0.0, 0.25, 1.0, 0.0, -1.0, -0.5, -0.25, 0.25, -0.75, 0.25, 0.5, 0.25, ]);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    buffer003.destroy()
    
    
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    buffer002.destroy()
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    buffer001.destroy()
    render_bundle_encoder002.popDebugGroup();
    
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    query001.destroy()
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const texture_view0061 = texture006.createView({ label: "texture_view0061" });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
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
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    
    render_bundle_encoder000.popDebugGroup();
    
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    
    buffer005.destroy()
    
    texture006.destroy();
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.popDebugGroup();
    
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.popDebugGroup();
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const texture0010 = device00.createTexture({
        label: "texture0010",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    texture009.destroy();
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    texture007.destroy();
    compute_pass_encoder0010.insertDebugMarker("marker")
    texture004.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    texture003.destroy();
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    const array9 = new Float32Array([-0.25, 0.0, 0.5, 0.75, 0.5, 1.0, 0.75, -0.25, 0.0, -1.0, 0.25, -0.75, -0.5, 0.0, 0.0, -0.25, -0.75, 0.0, 0.25, -1.0, 0.5, -0.25, -0.75, -0.75, 1.0, -1.0, 0.0, -0.75, -0.5, -1.0, 0.0, -0.5, 1.0, 0.0, 1.0, 0.25, 0.5, -0.75, 0.25, 0.5, 0.0, 0.75, 0.0, 0.0, -1.0, 0.25, -0.5, 0.0, 0.0, -1.0, 0.0, -1.0, 1.0, 0.5, -0.25, -1.0, -1.0, -1.0, 0.75, -0.25, -0.75, -0.5, -1.0, -1.0, -0.25, -1.0, -1.0, -1.0, -1.0, 0.25, -0.75, 0.75, 0.25, 0.5, 1.0, -0.5, -0.5, -0.75, 0.75, -0.75, 0.75, 0.25, 0.0, 0.0, 1.0, -0.75, 0.25, 0.0, -0.5, 1.0, 1.0, 0.0, 0.5, 0.0, 1.0, -0.25, 0.75, -1.0, 0.25, 0.75, ]);
    const texture_view0080 = texture008.createView({ label: "texture_view0080" });
    
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    query002.destroy()
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const texture0011 = device00.createTexture({
        label: "texture0011",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16float",
        dimension: "2d"
    });
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
    const texture_view0052 = texture005.createView({ label: "texture_view0052" });
    texture0010.destroy();
    
    const array10 = new Float32Array([-0.75, 0.75, 0.5, -1.0, 1.0, -0.5, 1.0, 0.0, -0.75, 0.0, 0.0, -1.0, 0.75, 0.75, 0.0, -0.5, -0.5, -1.0, -0.25, 0.75, 0.75, 0.25, 0.5, 0.0, -0.5, 0.75, 0.75, -0.25, 0.0, 1.0, -0.5, 0.5, 0.5, -0.5, 0.5, 0.75, 0.5, -0.25, 0.75, -1.0, 0.0, -1.0, 0.75, 1.0, -0.75, 1.0, 0.75, -0.5, -0.25, 0.75, -0.5, -1.0, 0.75, -1.0, -0.75, 0.25, 0.75, 0.25, -0.25, -0.25, 0.0, 0.0, 0.5, 0.25, 1.0, -0.25, -1.0, -0.75, 0.25, 0.0, 1.0, 1.0, -0.75, 0.25, -0.25, -0.5, 0.0, -0.25, -1.0, 0.75, -0.5, -0.75, -0.75, 0.5, -0.25, -0.75, 1.0, -1.0, 0.0, 0.0, 0.5, 0.75, -1.0, 1.0, 1.0, -0.75, 0.0, 0.0, -0.75, 1.0, ]);
    texture0011.destroy();
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    texture008.destroy();
    compute_pass_encoder0010.popDebugGroup()
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0060,
            },
        ],
        occlusionQuerySet: query002
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0020.executeBundles([])
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    
    render_pass_encoder0020.setPipeline(render_pipeline004);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer006.destroy()
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query002.destroy()
    query002.destroy()
    compute_pass_encoder0010.popDebugGroup()
    
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group003);
    query000.destroy()
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    
    query000.destroy()
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    buffer009.destroy()
    
    
    query000.destroy()
    buffer004.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    texture005.destroy();
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array11 = new Float32Array([1.0, 0.25, -1.0, -0.75, 1.0, -0.75, 0.75, 0.5, 0.5, -1.0, 0.75, -0.5, -0.25, -0.75, 1.0, -0.5, -0.5, -1.0, -0.75, -1.0, 0.25, 0.25, 0.25, -1.0, -0.5, -0.75, -1.0, -0.75, 0.5, 0.5, 1.0, -0.25, -1.0, -1.0, -0.25, 0.0, -0.75, -0.75, 0.5, -0.5, 0.0, -1.0, -1.0, 0.0, 0.25, -0.5, 0.0, 0.75, 0.0, -1.0, -0.75, -0.5, -0.75, -0.5, -0.75, -0.75, 0.75, 0.75, 1.0, 0.0, -1.0, -0.5, -0.5, -0.75, -0.75, 0.75, -1.0, -0.75, -1.0, 0.25, -0.5, -1.0, 0.25, 0.5, 0.75, -0.75, 0.5, 0.75, 0.5, -0.5, 1.0, 0.25, -0.75, 1.0, -1.0, 0.25, -0.25, 0.0, 0.5, -0.75, -0.25, 0.75, 0.0, 0.0, -0.75, -0.5, -1.0, 0.25, -0.5, -0.5, ]);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    query001.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query003.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    query004.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer0011.destroy()
    
    texture002.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device00.pushErrorScope("out-of-memory");
    query001.destroy()
    const texture0012 = device00.createTexture({
        label: "texture0012",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture0012.destroy();
    
    render_pass_encoder0020.insertDebugMarker("marker");
    
    render_pass_encoder0020.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    
    query003.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer0010.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0020.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    buffer007.destroy()
    buffer0012.destroy()
    query004.destroy()
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_bundle_encoder001.popDebugGroup();
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group004);
    query003.destroy()
    
    query004.destroy()
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    query000.destroy()
    render_bundle_encoder002.popDebugGroup();
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    render_pass_encoder0020.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0060,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0030.setPipeline(render_pipeline009);
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture0013 = device00.createTexture({
        label: "texture0013",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view00130 = texture0013.createView({ label: "texture_view00130" });
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    query003.destroy()
    query002.destroy()
    query004.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_pass_encoder0020.setStencilReference(1);
    
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0030.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    render_pass_encoder0030.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query003.destroy()
    render_pass_encoder0030.insertDebugMarker("marker");
    
    render_pass_encoder0020.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    
    
    device20.pushErrorScope("out-of-memory");
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
    device00.pushErrorScope("internal");
    render_pass_encoder0020.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_pass_encoder0020.setStencilReference(1);
    
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline009.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group005);
    render_pass_encoder0020.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    query002.destroy()
    const texture_view00131 = texture0013.createView({ label: "texture_view00131" });
    texture0013.destroy();
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    render_pass_encoder0020.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    query001.destroy()
    render_pass_encoder0030.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    buffer0018.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder0030.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    render_pass_encoder0020.setStencilReference(1);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    compute_pass_encoder0010.insertDebugMarker("marker")
    query200.destroy()
    buffer0015.destroy()
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    render_pass_encoder0020.setStencilReference(1);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    buffer008.destroy()
    
    query005.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer201.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.end();
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    query005.destroy()
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder0010.setPipeline(render_pipeline006);
    buffer0019.destroy()
    query002.destroy()
    query201.destroy()
    
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    query003.destroy()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const array12 = new Float32Array([-0.25, 1.0, -1.0, 0.0, 1.0, 0.75, 0.75, -0.25, -0.25, -0.75, -0.75, -1.0, 0.0, 0.5, -0.75, -0.25, -0.75, 0.25, 0.25, -0.75, 0.5, 1.0, -1.0, 1.0, 0.75, 1.0, -0.5, 0.5, 1.0, -1.0, -1.0, -1.0, 1.0, 0.5, -0.75, 0.25, -1.0, -0.75, -1.0, 0.5, 1.0, 0.25, -0.25, -0.75, 0.75, 0.0, 1.0, 0.0, 0.5, 0.5, 0.75, -0.75, -1.0, -0.5, 0.0, 1.0, 0.5, 0.5, 0.25, -0.75, 0.0, -0.75, -1.0, 1.0, 0.5, -0.75, 0.5, 1.0, -1.0, 0.0, 0.0, 1.0, 0.75, 0.25, 0.75, -1.0, -0.5, -1.0, 0.75, -0.75, 0.0, 0.5, 0.75, -0.5, -0.5, 1.0, -0.5, 0.25, 0.25, 1.0, 1.0, -0.25, -1.0, -0.75, 0.25, 0.75, 0.75, 1.0, -0.5, 0.0, ]);
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer0017.destroy()
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    render_pass_encoder0010.insertDebugMarker("marker");
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
        vertex: {
            module: shader_module0010,
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
            module: shader_module0010,
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
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.insertDebugMarker("marker");
    
    
    render_pass_encoder0030.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder000.popDebugGroup();
    
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    query000.destroy()
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    
    
    query001.destroy()
    
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    
    render_bundle_encoder001.popDebugGroup();
    
    
    const array13 = new Float32Array([-0.75, -0.75, -0.25, 0.5, 0.25, 0.25, -0.25, 0.5, 1.0, -0.5, -0.5, 0.0, -1.0, 0.5, -1.0, -0.5, 0.5, 0.5, -0.25, -0.5, 0.5, -0.5, -0.25, -0.5, 0.5, 0.25, 1.0, 0.5, -0.75, -0.75, -0.5, -1.0, -0.75, 1.0, 0.5, -0.25, -1.0, 0.75, 0.25, -0.25, 0.25, 0.0, 1.0, 0.0, 0.75, 0.0, 0.0, 1.0, 0.0, 0.5, 0.75, -0.5, 0.25, 0.5, 0.25, 0.0, 0.75, 0.25, 0.75, 0.0, -1.0, 0.75, 0.75, 0.25, 0.75, 0.5, 0.5, 0.75, -0.5, -0.75, 0.5, -0.5, -0.5, 0.5, 0.75, -0.25, 1.0, -0.5, 0.75, 0.25, -0.75, -0.75, 0.25, 0.0, 0.5, -1.0, -1.0, -0.25, -0.75, -1.0, 1.0, 0.5, -0.75, -1.0, -0.5, 0.25, 0.25, 0.0, -0.75, -0.25, ]);
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    render_pass_encoder0020.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
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
    
    
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0030.popDebugGroup();
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group006);
    device00.queue.submit([command_buffer000, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}