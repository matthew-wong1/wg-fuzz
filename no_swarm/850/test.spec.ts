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
    
    
    const array0 = new Float32Array([0.5, -0.25, 0.75, -0.25, 0.75, -0.25, -0.5, 0.0, 0.0, 0.75, 0.75, 0.5, -0.25, 0.0, 0.5, 0.5, 0.0, 0.5, -1.0, -0.5, -0.5, -0.25, 0.25, 0.75, -0.5, 1.0, -0.75, 1.0, -0.75, 0.75, -0.5, 0.25, 0.0, 1.0, -0.75, 0.75, 1.0, -1.0, 0.5, 0.5, 0.5, 0.25, 1.0, 1.0, 0.25, -1.0, -0.5, 0.0, -0.5, -0.5, 0.25, 0.25, 0.0, 0.25, 0.25, -1.0, 0.25, -0.75, -0.75, -1.0, -0.75, 0.0, 0.5, 0.75, 0.75, 1.0, -0.75, -0.25, 1.0, 1.0, 0.75, 0.0, 0.75, -0.25, 0.75, 0.0, -1.0, -0.75, -0.25, -0.25, 0.0, 0.0, -0.5, 0.5, -0.25, -0.5, 0.75, 0.5, -0.25, -0.25, -0.75, -1.0, -0.75, 0.25, 0.75, 0.0, 0.0, 0.0, 0.5, -0.5, ]);
    
    
    
    
    const array1 = new Float32Array([0.75, -0.5, 0.5, -0.75, 1.0, 0.5, -0.75, 1.0, -0.25, 1.0, -0.5, 1.0, 0.5, -1.0, 0.25, 0.75, 0.25, -0.25, -1.0, 0.0, -0.75, 0.5, 0.0, 0.25, -0.25, 0.25, -0.25, 1.0, 0.0, 0.0, -0.5, -0.5, 0.5, 0.0, -0.75, 0.0, -0.25, 0.0, -0.75, -0.25, 1.0, -0.5, 0.5, -0.75, 0.25, -0.5, 0.25, 1.0, 1.0, -0.5, 1.0, -0.5, -1.0, -1.0, 0.75, -0.5, 0.5, -0.75, -0.75, -0.25, -0.25, -1.0, 0.25, 0.5, 1.0, -0.25, 0.75, 0.0, -0.75, 0.5, -0.75, -0.5, -0.75, 0.25, 0.0, -0.5, -0.5, 0.25, -0.25, 0.5, -0.25, -1.0, 0.0, -0.25, -0.75, 0.5, 0.75, 0.5, 0.5, 1.0, 0.5, 0.5, -1.0, 0.0, -1.0, -0.25, -0.75, -1.0, 0.0, 0.0, ]);
    
    
    
    
    const array2 = new Float32Array([0.25, 0.75, 0.25, 0.0, -0.75, -1.0, 1.0, 0.25, -0.75, -1.0, 0.0, 0.75, -0.75, 0.75, 0.0, 0.75, 0.5, -1.0, -0.5, -0.5, 0.75, 0.5, 0.25, -0.75, -1.0, 0.0, -0.5, -0.25, -0.75, 0.5, 0.75, 0.25, 0.0, 1.0, 0.5, 0.0, -0.75, 0.0, 1.0, -1.0, -0.75, -1.0, -0.25, 1.0, 1.0, 0.0, -0.5, 0.5, -0.5, -0.25, 0.75, 0.75, -0.75, -0.25, 0.5, 0.0, 1.0, 0.25, 0.25, -0.5, -1.0, -1.0, -1.0, 0.0, -0.75, -0.25, 0.75, 0.75, 0.0, 1.0, 0.75, 0.5, -0.25, -0.25, -0.5, -0.25, -1.0, -0.25, -0.75, 0.5, 0.5, 0.0, 0.75, 1.0, 0.25, 0.25, 1.0, -0.25, 0.0, 0.75, 0.75, -0.5, 1.0, -0.25, -1.0, -0.5, 0.25, -1.0, -0.75, -1.0, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([0.5, -0.5, 0.0, 0.25, -0.5, -0.5, -1.0, -0.25, 1.0, 1.0, 0.75, 1.0, -0.75, -1.0, -0.75, 0.5, 1.0, -0.75, 0.5, 0.0, -0.25, -0.5, 0.75, -0.75, -1.0, 0.0, -0.25, 0.0, 0.0, 0.0, 1.0, -1.0, 1.0, -0.5, -0.75, -0.5, 0.75, 0.0, 1.0, -0.75, -0.25, -1.0, -0.5, 0.25, 1.0, 0.0, -0.5, 1.0, -1.0, 0.25, 1.0, 0.5, -0.5, -0.25, 1.0, 0.0, -0.5, 0.25, 0.5, 0.5, -0.5, -0.5, -0.75, 0.0, -0.25, -0.25, -0.75, -0.25, 0.75, 1.0, -1.0, 0.5, 1.0, -0.75, 0.25, -0.75, 1.0, 0.25, 0.5, -1.0, 0.0, -0.25, 0.25, 0.75, -0.5, 0.5, 0.0, 0.75, 1.0, 1.0, -1.0, -0.25, -1.0, 0.75, -1.0, -1.0, -1.0, 0.5, -0.25, -0.25, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer000.destroy()
    device00.pushErrorScope("validation");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    texture000.destroy();
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    texture001.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("validation");
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
    command_encoder000.pushDebugGroup("mygroupmarker")
    
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
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
    const array4 = new Float32Array([-1.0, -0.75, -0.5, -0.75, -0.5, -1.0, -0.75, 0.75, 0.0, 0.0, -0.5, -0.75, 1.0, 0.0, -0.25, 0.75, -0.75, 1.0, 0.5, -0.25, 1.0, -0.75, 0.75, -0.75, 0.25, 0.75, -0.75, -0.75, 0.0, 0.0, 0.0, -0.5, 0.0, -0.75, -0.25, -0.25, 0.25, 0.75, 0.25, -0.75, 0.0, 0.75, -0.5, 0.25, 0.0, 0.0, 1.0, 0.0, 0.5, 0.75, 0.0, 0.5, 0.25, -0.5, 0.5, 1.0, -0.25, -0.75, 0.0, 0.25, 1.0, 0.5, -1.0, 0.75, -0.25, 0.25, 1.0, -1.0, -1.0, 0.0, 0.75, 0.5, -0.5, 0.75, 0.75, 0.5, 0.0, 0.75, -0.75, 0.25, -1.0, -0.25, -0.25, -1.0, 1.0, -0.25, 0.0, 0.25, -0.5, -1.0, -0.5, 0.0, -1.0, -1.0, -1.0, 1.0, 1.0, 0.0, 0.75, -0.75, ]);
    
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
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array5 = new Float32Array([1.0, 0.75, -0.25, -0.75, 1.0, 0.75, -0.5, -0.5, -0.75, 0.25, 0.25, -0.75, -0.25, -0.75, -1.0, -1.0, -1.0, 1.0, 0.5, -0.5, -0.75, -0.75, -1.0, 0.0, 0.25, 0.0, 0.5, 1.0, 0.25, -1.0, -0.25, 0.0, 0.0, -0.5, -0.75, -0.75, 1.0, -0.75, 0.25, -0.25, 1.0, -0.5, 0.5, 0.0, 1.0, -1.0, 0.5, 0.75, 0.75, -0.75, 1.0, -1.0, 0.75, -0.25, -0.75, 0.75, -1.0, 0.5, 1.0, -0.25, 0.5, -0.75, -0.75, 0.25, -1.0, 0.0, -1.0, 0.0, -0.5, -0.75, 0.25, 0.5, 0.25, 0.5, -0.5, 0.0, 0.5, -0.25, -0.25, -1.0, -0.5, 0.5, 1.0, 1.0, 1.0, -0.5, 1.0, 0.5, 0.5, 0.25, 0.5, 1.0, -1.0, 0.25, 0.5, -1.0, -1.0, 0.0, -1.0, -0.5, ]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const array6 = new Float32Array([0.5, 1.0, 0.5, -0.25, -0.25, 0.0, 0.0, -1.0, 0.5, 0.25, 0.0, -0.25, -1.0, 0.25, -1.0, 1.0, 0.25, 0.25, 0.75, 1.0, -0.75, -0.5, -0.25, 0.0, 0.25, -0.75, -0.25, -0.5, 0.25, 0.25, 0.25, 0.75, -0.5, 0.0, 0.0, 1.0, 0.25, 0.75, 0.5, 0.5, 1.0, -0.25, -0.25, -0.75, -0.75, 0.0, 0.5, 0.75, -0.75, -1.0, -0.25, 1.0, 0.0, -0.75, -0.5, -1.0, -0.75, 0.5, -1.0, 0.25, 0.5, 0.5, 0.25, -0.25, -0.25, 0.0, 0.5, -0.25, -0.5, 0.25, -0.25, 0.75, 0.75, 0.25, -0.5, 0.75, -1.0, 0.75, 1.0, -0.25, -0.25, -0.25, -0.25, -0.5, 0.75, 0.25, 0.5, -1.0, 0.25, -0.75, 0.25, 0.0, 0.5, 0.75, 0.5, 0.5, -0.5, -0.25, 0.0, 0.0, ]);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query000.destroy()
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    query000.destroy()
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer101.destroy()
    buffer001.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query001.destroy()
    
    
    device10.destroy();
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    query001.destroy()
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    device00.pushErrorScope("out-of-memory");
    
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query002
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.executeBundles([])
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_pass_encoder0010.setPipeline(render_pipeline004);
    render_bundle_encoder000.setPipeline(render_pipeline001);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
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
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group000);
    
    
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
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
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    
    
    device00.pushErrorScope("validation");
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array7 = new Float32Array([-0.5, -1.0, -0.5, -0.5, 0.25, -0.25, 0.0, 1.0, -1.0, -1.0, 0.75, -1.0, 0.25, 1.0, -0.25, 0.5, 0.25, 0.75, -0.5, 0.25, 0.0, -0.25, 0.5, 0.75, 0.25, -0.75, 0.5, -0.75, -0.5, -0.25, 1.0, 1.0, -1.0, -0.25, -1.0, -0.25, 0.25, -1.0, 1.0, -0.5, 0.5, 1.0, 0.75, -1.0, 1.0, -1.0, -0.75, 1.0, -0.75, -0.25, 0.0, 0.75, 0.75, -0.5, -0.25, 0.0, 0.0, -1.0, 0.5, 0.75, 0.75, -0.75, -0.25, -0.5, -0.5, 0.0, 0.0, 0.75, 0.0, -1.0, 0.0, 0.75, -0.25, 0.75, 0.0, -1.0, -0.75, 0.5, -0.75, -0.25, 0.5, 0.5, 0.5, 0.25, 0.25, 0.75, -1.0, -0.75, 0.5, -0.5, -1.0, 0.75, -1.0, 0.0, 0.0, 0.0, -0.75, -1.0, -0.25, -1.0, ]);
    
    
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    
    buffer002.destroy()
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer005.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    query002.destroy()
    
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
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0020.setStencilReference(1);
    
    render_bundle_encoder000.popDebugGroup();
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    render_pass_encoder0020.setPipeline(render_pipeline006);
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
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
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    render_pass_encoder0020.insertDebugMarker("marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.destroy();
    texture003.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query004.destroy()
    
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer003.destroy()
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    buffer009.destroy()
    
    
    
    buffer004.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    
    
    query000.destroy()
    
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer007.destroy()
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    texture002.destroy();
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setPipeline(render_pipeline003);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.pushErrorScope("validation");
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    query000.destroy()
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
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
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    query002.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    buffer0011.destroy()
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    query004.destroy()
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    compute_pass_encoder0000.popDebugGroup()
    
    render_pass_encoder0020.popDebugGroup();
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    render_pass_encoder0020.pushDebugGroup("group_marker");
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
    
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    query000.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    query003.destroy()
    query002.destroy()
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder002.setPipeline(render_pipeline0010);
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.destroy();
    render_pass_encoder0020.popDebugGroup();
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    query001.destroy()
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    buffer0010.destroy()
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group003);
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
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer006.destroy()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    query000.destroy()
    query001.destroy()
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query007
    });
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    device00.queue.writeBuffer(buffer0013, 0, array5, 0, array5.length);
    
    
    
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    render_pass_encoder0010.setStencilReference(1);
    
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0030.setStencilReference(1);
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    
    
    buffer0016.destroy()
    render_pass_encoder0040.setStencilReference(1);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder0020.setStencilReference(1);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query005.destroy()
    command_encoder005.resolveQuerySet(
        query004,
        0,
        32,
        buffer004,
        0
    )
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query001.destroy()
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: query004
    });
    render_pass_encoder0050.setPipeline(render_pipeline0012);
    const array8 = new Float32Array([-1.0, -0.25, 0.25, 0.5, -0.5, 0.0, 0.75, -0.25, 0.0, -0.5, 0.75, 0.5, -1.0, 1.0, 0.25, -0.5, 0.5, 0.75, 0.75, -0.75, 0.5, 0.75, 1.0, -0.75, 0.75, -1.0, 0.75, 0.5, 0.5, -0.25, -0.75, -0.5, -0.5, 0.25, 0.5, 1.0, 0.5, 0.5, -0.25, 0.25, -1.0, -0.5, -1.0, -0.5, -1.0, -1.0, -1.0, 0.25, -0.75, 0.0, -1.0, 0.25, 1.0, -1.0, -0.25, 1.0, -1.0, 0.25, 0.25, -0.25, 1.0, 0.5, -0.75, -0.25, 1.0, -0.75, -1.0, -1.0, 0.0, 1.0, 0.5, -0.25, 1.0, 0.5, -0.5, -0.5, 1.0, 0.0, 0.5, -0.25, -0.25, -1.0, 0.0, 0.25, -1.0, 1.0, -0.5, 1.0, 0.75, 0.0, 1.0, -1.0, 0.75, 1.0, -0.5, -0.5, 0.25, 0.5, 0.25, 0.25, ]);
    
    render_pass_encoder0040.setPipeline(render_pipeline0010);
    device00.queue.writeBuffer(buffer0013, 0, array5, 0, array5.length);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.beginOcclusionQuery(0)
    device00.queue.writeBuffer(buffer0013, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer0013, 0, array3, 0, array3.length);
    query005.destroy()
    
    query000.destroy()
    query001.destroy()
    render_pass_encoder0030.setStencilReference(1);
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer0013, 0, array1, 0, array1.length);
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer0013, 0, array5, 0, array5.length);
    render_pass_encoder0020.setStencilReference(1);
    
    query006.destroy()
    
    render_pass_encoder0040.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer0013, 0, array6, 0, array6.length);
    
    device00.queue.writeBuffer(buffer0013, 0, array2, 0, array2.length);
    const texture_view0042 = texture004.createView({ label: "texture_view0042" });
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group004);
    
    render_pass_encoder0050.setStencilReference(1);
    
    
    
    device00.queue.writeBuffer(buffer0013, 0, array5, 0, array5.length);
    device00.pushErrorScope("out-of-memory");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device00.queue.writeBuffer(buffer0019, 0, array0, 0, array0.length);
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    query002.destroy()
    const array9 = new Float32Array([0.75, 1.0, 1.0, -1.0, 0.75, 0.5, -0.75, -0.25, -1.0, 0.75, -0.75, 0.5, 0.75, -1.0, 0.75, 1.0, -0.5, -0.5, 0.5, -0.75, 0.75, 0.5, 0.5, -1.0, -0.25, -1.0, 0.75, 0.0, -1.0, 0.75, -0.75, 0.5, -0.5, -1.0, 0.5, 0.75, -0.25, -0.75, -0.25, -0.75, 0.0, -0.75, 0.0, -1.0, 0.25, -0.5, 0.25, -0.75, -0.25, -0.5, -0.5, 0.0, -1.0, 0.75, -0.75, 1.0, 0.0, 0.5, 0.75, 0.75, 0.5, 0.0, 0.0, 0.0, 0.25, 0.25, 0.25, -0.75, 0.5, 0.5, 0.25, 1.0, -0.25, -0.75, -0.75, 0.5, -1.0, 0.5, -0.5, 0.0, 0.0, -0.75, -0.25, 0.5, 0.25, 0.0, -0.75, 0.5, -0.25, -0.75, 1.0, 0.0, -0.25, -1.0, 0.5, -1.0, 0.0, 0.0, -0.25, -0.25, ]);
    
    
    device00.queue.writeBuffer(buffer0019, 0, array3, 0, array3.length);
    device00.pushErrorScope("internal");
    render_pass_encoder0030.pushDebugGroup("group_marker");
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline0010.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group005);
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    render_pass_encoder0030.popDebugGroup();
    
    device00.queue.writeBuffer(buffer0019, 0, array8, 0, array8.length);
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    query002.destroy()
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0040.setStencilReference(1);
    buffer0017.destroy()
    
    
    device00.queue.writeBuffer(buffer0019, 0, array9, 0, array9.length);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0013, 0, array0, 0, array0.length);
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    device00.queue.writeBuffer(buffer0019, 0, array6, 0, array6.length);
    query008.destroy()
    render_pass_encoder0050.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer0013, 0, array5, 0, array5.length);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    buffer0019.destroy()
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query003.destroy()
    buffer0012.destroy()
    
    device00.queue.writeBuffer(buffer0013, 0, array0, 0, array0.length);
    
    render_pass_encoder0050.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer0013, 0, array4, 0, array4.length);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline0012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group006);
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
    query000.destroy()
    device00.queue.writeBuffer(buffer0013, 0, array4, 0, array4.length);
    
    render_pass_encoder0050.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_bundle_encoder002.popDebugGroup();
    buffer0014.destroy()
    device00.queue.writeBuffer(buffer0013, 0, array3, 0, array3.length);
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setStencilReference(1);
    
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0025,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group007);
    compute_pass_encoder0000.insertDebugMarker("marker")
    {
        await buffer0013.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0013.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0013.unmap();
        console.log(new Float32Array(data));
    }
    
    
    device00.queue.writeBuffer(buffer0013, 0, array3, 0, array3.length);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    
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
    device00.queue.writeBuffer(buffer0013, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer0013, 0, array2, 0, array2.length);
    
    
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0042,
            },
        ],
        occlusionQuerySet: query003
    });
    render_pass_encoder0060.setPipeline(render_pipeline001);
    buffer0023.destroy()
    
    render_pass_encoder0060.insertDebugMarker("marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0020.insertDebugMarker("marker");
    compute_pass_encoder0000.setPipeline(compute_pipeline004);
    
    render_pass_encoder0040.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    buffer0015.destroy()
    
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device00.queue.writeBuffer(buffer0013, 0, array3, 0, array3.length);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    query005.destroy()
    const array10 = new Float32Array([1.0, -0.25, 0.5, 0.25, 0.25, 1.0, -0.75, -0.25, 0.5, 0.25, 0.5, 1.0, 0.75, 1.0, 0.75, -0.75, 0.5, -0.75, 0.25, -0.25, -0.75, -0.5, -1.0, 0.75, 0.5, 1.0, -0.25, 0.0, 0.25, -0.75, 1.0, -0.25, -0.75, 0.75, 0.5, 0.75, 1.0, -0.75, 0.5, -0.75, -0.5, -1.0, 0.0, 0.0, -0.5, 0.0, 0.25, -1.0, 0.75, -1.0, -0.25, 0.75, -0.75, 1.0, -0.75, -0.5, -0.25, -1.0, -0.25, 0.5, 0.25, 0.5, -0.5, 0.0, -1.0, 0.5, 1.0, 0.75, 0.0, 0.25, 0.25, -0.75, 1.0, -0.75, -0.75, 1.0, -0.25, 0.0, 0.0, 0.75, 0.25, -0.5, -0.25, -0.5, 0.25, -0.5, 0.75, 0.5, 0.0, 0.5, 0.5, 0.75, 0.75, -0.25, 1.0, 1.0, -0.75, -0.25, -1.0, 0.75, ]);
    render_pass_encoder0050.setStencilReference(1);
    query001.destroy()
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_pass_encoder0060.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    
    
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    render_pass_encoder0030.pushDebugGroup("group_marker");
    buffer0021.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0027,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group008);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0029,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group009);
    render_pass_encoder0040.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0000.end();
    command_encoder000.popDebugGroup()
    const command_buffer000 = command_encoder000.finish();
    device00.queue.submit([command_buffer000, ]);
}