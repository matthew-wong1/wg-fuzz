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
    device00.pushErrorScope("internal");
    const array0 = new Float32Array([-1.0, 0.0, 0.0, 0.75, 0.0, 1.0, 0.25, -0.75, 0.0, -0.25, -1.0, 0.0, 0.5, 0.25, -0.25, 0.5, 0.5, 0.75, -0.25, -0.25, 1.0, -1.0, -0.25, -0.25, 1.0, -0.5, -0.75, 0.0, 0.0, -0.25, 0.75, -0.75, -0.5, -0.5, -0.5, 0.25, -0.75, -0.75, -0.25, 0.25, 0.5, 0.25, 0.75, -1.0, -0.75, 1.0, -0.75, -0.25, -0.25, -0.25, 1.0, 1.0, -0.75, 0.25, -1.0, -1.0, 1.0, -0.25, 0.75, 0.25, 0.5, 0.25, -0.75, -1.0, -0.25, 0.75, 0.5, -0.25, -0.75, -1.0, 0.5, -1.0, 0.0, 1.0, -1.0, -0.75, 0.25, -0.25, 0.0, -1.0, 0.75, 0.0, 0.75, 0.5, 0.5, -1.0, 1.0, 0.25, 0.75, -1.0, 0.25, -0.75, -1.0, 1.0, 0.75, -0.25, -0.75, 0.25, 0.25, 0.25, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    texture000.destroy();
    
    const array1 = new Float32Array([-0.75, -0.25, 1.0, -0.25, 1.0, 0.25, 0.0, -1.0, -0.75, -0.25, 1.0, 0.25, -1.0, -0.25, -0.5, 1.0, 1.0, -0.25, 0.5, -1.0, 0.25, -0.5, -1.0, 0.0, 0.0, -0.25, -1.0, -0.75, -0.5, -1.0, 0.75, -0.75, -0.75, 1.0, 1.0, 0.5, -0.75, -1.0, 1.0, -0.5, -1.0, 0.25, -1.0, -0.25, 1.0, -0.75, -0.5, 0.25, -0.5, 0.0, -0.5, 0.25, -0.75, 0.5, 0.5, 0.75, 0.0, -0.25, -0.5, -0.5, 0.25, -0.5, 0.75, -0.75, 0.0, 0.0, 0.25, -1.0, 0.5, -0.75, -0.25, 0.75, -0.75, 0.75, -0.25, -0.25, 0.5, 0.75, -0.25, -0.75, -0.25, -1.0, -0.25, -0.75, -0.5, -0.75, -1.0, 0.0, 0.5, -0.25, -0.25, 1.0, 0.5, 0.75, -0.75, 0.25, 0.75, 0.75, 0.25, -0.75, ]);
    const array2 = new Float32Array([-0.5, -0.5, -1.0, 0.0, -1.0, -1.0, -0.25, 0.75, 0.25, 1.0, -1.0, -0.25, -1.0, -0.5, -0.75, 0.5, 0.25, -0.25, -0.75, 0.0, 0.75, -0.75, 1.0, -0.5, -0.75, 0.0, 1.0, 0.0, 0.75, 0.0, 0.75, 0.0, 0.5, -0.25, -0.25, -0.75, -0.75, 1.0, -0.25, -0.75, 0.5, 0.75, 1.0, 0.75, 1.0, -0.75, 0.25, -0.75, 0.5, 0.0, -0.25, 0.75, -0.75, -0.75, -0.25, 0.0, 0.0, 0.0, 0.0, -1.0, 0.25, -0.5, 0.5, 1.0, -0.5, 0.75, 0.25, 0.75, -0.25, 0.0, -0.25, 0.25, -0.25, 0.75, 1.0, 0.25, -1.0, 0.0, -0.25, -1.0, 0.5, 0.0, 1.0, 0.25, -0.75, 1.0, -1.0, 0.5, 0.0, 0.25, -0.25, 0.75, -0.25, 0.25, 0.5, -0.5, -0.5, 0.25, 0.5, -0.75, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
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
    command_encoder000.pushDebugGroup("mygroupmarker")
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder001.popDebugGroup();
    
    const array3 = new Float32Array([1.0, -0.25, 0.25, 1.0, 0.75, -0.75, 0.5, 0.25, -0.75, 0.25, -0.25, 0.25, -0.25, -0.5, 1.0, -0.5, -0.5, 0.0, 0.75, -0.5, 0.25, 0.0, 0.25, -1.0, 0.25, 1.0, 0.0, -0.5, -0.5, -1.0, 0.5, 0.25, 0.25, 0.0, 0.75, 1.0, -0.5, -0.75, -0.25, 1.0, -1.0, -0.75, -0.25, -0.5, -0.25, -1.0, 0.25, -0.25, 0.0, 0.25, 1.0, -0.75, -0.75, -0.75, 0.0, -1.0, 0.75, -0.25, 0.75, 1.0, 0.75, -0.25, 0.75, -1.0, -0.75, 0.75, -0.25, -0.75, -0.25, 1.0, 0.0, 0.25, -0.25, 0.0, 0.5, 0.25, 0.75, 0.0, -0.25, -0.5, 1.0, -0.5, -0.25, -0.75, 0.0, 0.5, 0.75, 1.0, 0.75, -1.0, 0.5, -0.5, 0.0, -1.0, -0.5, -1.0, 0.5, 1.0, 0.5, 0.25, ]);
    render_bundle_encoder000.setPipeline(render_pipeline000);
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.queue.submit([]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.insertDebugMarker("mymarker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    device10.queue.submit([]);
    
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
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
    const array4 = new Float32Array([-0.25, -0.75, -0.5, -0.25, -0.5, -0.25, 0.25, 0.75, 0.25, 0.75, 0.5, 0.25, -1.0, 0.0, -1.0, 0.0, -0.75, -0.75, 0.0, 1.0, -0.75, 0.75, 0.25, -0.75, -1.0, -0.5, 0.25, 0.5, -0.75, -0.75, 0.5, 0.0, -0.25, 0.75, 0.0, 1.0, -1.0, -0.25, 0.5, -0.75, 0.75, 1.0, 0.75, 0.25, 0.5, -0.25, -0.5, -0.25, 1.0, -0.5, 1.0, -0.75, -0.5, -0.75, 0.25, 0.5, 0.0, 0.25, -0.25, 0.25, 0.5, 0.5, 0.0, 0.25, 0.75, 1.0, -1.0, 0.5, 0.25, -0.25, -0.5, 0.0, 0.75, 0.5, 0.5, -0.25, 0.5, 0.75, 0.25, -1.0, -0.25, 0.5, 0.75, 0.75, 0.0, -1.0, 0.5, -1.0, -1.0, -0.75, 0.0, 0.75, 0.0, -0.25, -0.25, 0.25, -0.25, 0.0, 1.0, -0.25, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    buffer002.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    
    texture100.destroy();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    buffer101.destroy()
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
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    render_pass_encoder0000.beginOcclusionQuery(0)
    
    render_pass_encoder0000.popDebugGroup();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.endOcclusionQuery()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    render_pass_encoder0000.setPipeline(render_pipeline001);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    texture100.destroy();
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    const array5 = new Float32Array([0.75, 1.0, -0.5, 0.25, 1.0, -0.5, -0.75, 0.5, -0.5, 1.0, 0.5, 0.5, 0.5, 0.75, -0.5, -1.0, 0.5, 0.5, 0.5, -1.0, -0.75, -0.5, -0.25, -0.75, -0.5, -0.25, 0.0, 0.75, 0.0, 0.5, 1.0, 0.0, -0.75, 1.0, 0.0, -0.75, -0.75, 0.5, 0.75, -0.75, -1.0, -0.75, -0.75, 0.25, -0.25, 0.5, 1.0, 0.75, -1.0, -0.5, 0.25, 0.25, 0.0, 0.75, 0.25, -0.25, 0.0, 0.75, -0.5, -0.25, 0.5, -0.75, 1.0, 0.75, -1.0, -0.25, 0.0, -0.25, -0.75, -0.75, -0.5, 0.0, 0.25, -0.5, -0.25, -0.25, 0.5, -1.0, -1.0, 0.25, 0.25, 0.5, -0.5, 0.0, 0.25, 1.0, 0.25, 0.25, 1.0, -0.25, 0.5, 0.0, 0.25, 1.0, 1.0, 1.0, 0.0, 0.0, 1.0, 0.5, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder000.popDebugGroup();
    
    render_pass_encoder0000.insertDebugMarker("marker");
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    
    
    buffer000.destroy()
    
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder0000.setStencilReference(1);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    render_pass_encoder0010.beginOcclusionQuery(0)
    render_bundle_encoder100.popDebugGroup();
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    render_bundle_encoder102.setPipeline(render_pipeline100);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_pass_encoder0010.setPipeline(render_pipeline002);
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    render_bundle_encoder000.setVertexBuffer(0, buffer002);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    buffer104.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group002);
    
    
    render_pass_encoder0010.endOcclusionQuery()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    buffer005.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    buffer100.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    render_pass_encoder0010.beginOcclusionQuery(0)
    texture000.destroy();
    command_encoder101.insertDebugMarker("mymarker");
    
    render_pass_encoder0000.insertDebugMarker("marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    command_encoder102.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder002.setPipeline(render_pipeline003);
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.popDebugGroup();
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group003);
    
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    buffer008.destroy()
    device00.queue.writeBuffer(buffer007, 0, array5, 0, array5.length);
    render_bundle_encoder000.setIndexBuffer(buffer000, "uint16");
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_buffer102 = command_encoder102.finish();
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    render_pass_encoder0001.setPipeline(render_pipeline004);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    
    const array6 = new Float32Array([1.0, 0.0, 1.0, 0.75, -0.5, -1.0, -0.5, -0.5, 0.75, -0.75, 0.5, 0.25, 0.25, 0.0, 0.75, -0.75, 1.0, 0.25, -0.75, 0.25, -1.0, 0.5, -0.5, -0.75, 0.25, -0.25, -0.5, 0.0, 0.5, 0.0, -0.75, -0.25, 0.25, 0.0, 1.0, 0.25, -0.75, 1.0, -0.75, 0.25, 0.25, 0.75, 0.5, 1.0, 0.25, -0.5, 0.5, -0.5, -0.75, 0.75, 0.5, -1.0, -0.75, -0.25, -0.25, 0.0, 1.0, 0.25, 1.0, -1.0, 1.0, -0.25, 0.25, -1.0, -0.25, 0.5, 1.0, 1.0, 0.5, 0.5, 0.75, 1.0, 1.0, -0.75, 0.0, 0.75, -0.5, -0.25, 0.0, 1.0, -0.75, 0.25, -0.25, 1.0, -1.0, 0.25, 0.75, -0.75, 0.75, -0.5, 0.25, -0.5, -0.75, 1.0, -1.0, 0.0, -0.5, 0.25, 0.25, -0.25, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0000.setVertexBuffer(0, buffer006);
    render_bundle_encoder101.setPipeline(render_pipeline101);
    
    buffer102.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder0010.popDebugGroup();
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    query002.destroy()
    
    render_pass_encoder0001.beginOcclusionQuery(3)
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder0000.beginOcclusionQuery(3)
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    device00.pushErrorScope("out-of-memory");
    
    render_bundle_encoder100.setPipeline(render_pipeline101);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
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
        occlusionQuerySet: query001
    });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    render_pass_encoder0010.endOcclusionQuery()
    query001.destroy()
    render_pass_encoder0010.setVertexBuffer(0, buffer000);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture100
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0010.setStencilReference(1);
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
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group004);
    device10.queue.submit([command_buffer102, ]);
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0030.setPipeline(render_pipeline000);
    render_pass_encoder0010.setStencilReference(1);
    buffer103.destroy()
    
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.draw(3);
    
    render_pass_encoder0020.executeBundles([])
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    
    render_pass_encoder0001.insertDebugMarker("marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0030.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0020.setPipeline(render_pipeline002);
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder101.insertDebugMarker("mymarker");
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0001.endOcclusionQuery()
    
    
    buffer009.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    device10.pushErrorScope("out-of-memory");
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    texture001.destroy();
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder0011.popDebugGroup();
    render_bundle_encoder100.setVertexBuffer(0, buffer105);
    buffer007.destroy()
    render_bundle_encoder100.drawIndirect(buffer100, 0);
    render_bundle_encoder001.setVertexBuffer(0, buffer009);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    buffer100.destroy()
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    render_bundle_encoder001.insertDebugMarker("marker");
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
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder0010.popDebugGroup();
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query002.destroy()
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    buffer001.destroy()
    render_pass_encoder0011.setPipeline(render_pipeline000);
    render_bundle_encoder000.drawIndexedIndirect(buffer008, 0);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    render_pass_encoder0011.beginOcclusionQuery(0)
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0011.setStencilReference(1);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder102.popDebugGroup();
    
    render_pass_encoder0010.setIndexBuffer(buffer005, "uint16");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_bundle_encoder001.drawIndirect(buffer000, 0);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.pushErrorScope("out-of-memory");
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer106.destroy()
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer0010,
        0
    )
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    buffer007.destroy()
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
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
    buffer105.destroy()
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    compute_pass_encoder1000.popDebugGroup()
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer0010
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0021.executeBundles([render_bundle_encoder001, ])
    
    device30.queue.submit([]);
    query001.destroy()
    buffer0011.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer006, 0, array6, 0, array6.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    query000.destroy()
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    query001.destroy()
    command_encoder101.copyBufferToBuffer(
        buffer105,
        0,
        buffer102,
        0,
        400
    );
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group005);
    buffer106.destroy()
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    device10.queue.writeBuffer(buffer108, 0, array3, 0, array3.length);
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0000.insertDebugMarker("marker");
    
    
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.insertDebugMarker("marker");
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
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture300.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder0001.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0010.drawIndirect(buffer0011, 0);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_pass_encoder0020.setStencilReference(1);
    
    device10.queue.writeBuffer(buffer1010, 0, array1, 0, array1.length);
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    buffer1010.destroy()
    query003.destroy()
    
    
    command_encoder002.copyBufferToBuffer(
        buffer0013,
        0,
        buffer006,
        0,
        400
    );
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    
    
    
    render_pass_encoder0000.insertDebugMarker("marker");
    buffer0010.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer1010, 0, array0, 0, array0.length);
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer108.destroy()
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    render_pass_encoder0021.setBindGroup(0, bind_group006);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_pass_encoder0001.insertDebugMarker("marker");
    compute_pass_encoder3010.insertDebugMarker("marker")
    device00.pushErrorScope("validation");
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.setVertexBuffer(0, buffer0014);
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0001.beginOcclusionQuery(4)
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer003.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder002.popDebugGroup();
    query003.destroy()
    query003.destroy()
    render_pass_encoder0030.setStencilReference(1);
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    buffer006.destroy()
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture004 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query003
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer0012,
        0
    )
    device00.queue.writeBuffer(buffer0012, 0, array4, 0, array4.length);
    render_bundle_encoder101.setVertexBuffer(0, buffer101);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout004]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder002.setIndexBuffer(buffer003, "uint16");
    command_encoder301.insertDebugMarker("mymarker");
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder002.setIndexBuffer(buffer004, "uint16");
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    
    render_bundle_encoder002.drawIndirect(buffer006, 0);
    device10.queue.writeBuffer(buffer109, 0, array2, 0, array2.length);
    
    render_pass_encoder0001.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    render_pass_encoder0010.drawIndirect(buffer0011, 0);
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer0014
        },
        {
            texture: texture004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query003.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0031.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    command_encoder001.clearBuffer(buffer0013);
    
    render_pass_encoder0031.setPipeline(render_pipeline000);
    device00.queue.writeTexture({ texture: texture004 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder103.copyBufferToBuffer(
        buffer100,
        0,
        buffer105,
        0,
        400
    );
    
    render_pass_encoder0001.setVertexBuffer(0, buffer001);
    render_pass_encoder0001.drawIndirect(buffer001, 0);
    render_pass_encoder0010.end();
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group007);
    compute_pass_encoder3010.popDebugGroup()
    device10.queue.submit([]);
    device10.queue.submit([]);
    render_pass_encoder0030.setVertexBuffer(0, buffer0013);
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    render_pass_encoder0010.draw(3);
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer101, ]);
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group008);
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group009);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder0031.setVertexBuffer(0, buffer008);
    render_pass_encoder0030.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0031.drawIndirect(buffer0011, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0020.setVertexBuffer(0, buffer0010);
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.endOcclusionQuery()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group0010);
    render_pass_encoder0011.setVertexBuffer(0, buffer0010);
    render_pass_encoder0001.end();
    const command_buffer003 = command_encoder003.finish();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    command_encoder000.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([]);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0031.drawIndirect(buffer0018, 0);
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0031.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    render_pass_encoder0020.popDebugGroup();
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0000.draw(3);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0011, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0001.drawIndirect(buffer0019, 0);
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.drawIndirect(buffer0018, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0010.drawIndirect(buffer004, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0030.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0010.drawIndexed(3);
    device00.queue.submit([command_buffer003, ]);
    const command_buffer301 = command_encoder301.finish();
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0011.end();
    render_pass_encoder0020.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0030.end();
    device10.queue.submit([command_buffer101, ]);
    device30.queue.submit([]);
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0020.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0018, 0);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0021.drawIndirect(buffer0021, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.draw(3);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0001.end();
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0000.end();
    render_pass_encoder0030.end();
    render_pass_encoder0000.drawIndirect(buffer0010, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0030.drawIndirect(buffer003, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer000, 0);
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder0030.drawIndirect(buffer005, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0011.end();
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0030.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndexed(3);
}