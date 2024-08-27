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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array0 = new Float32Array([0.5, 0.75, 0.75, 0.75, 0.25, -0.5, 0.25, -0.5, -0.75, -0.25, -1.0, 0.0, -0.75, -0.75, 0.25, 0.75, -0.75, 0.75, 0.0, 1.0, 0.75, 0.25, 1.0, -0.5, -0.75, 1.0, -0.25, -0.5, 0.75, 0.75, -0.5, 0.25, 0.75, -0.75, 0.25, -1.0, 1.0, -1.0, 0.0, -0.75, 1.0, 0.5, -0.25, -0.5, 0.0, -1.0, 1.0, -0.25, 0.75, 0.75, -0.25, 0.25, -0.5, -0.25, 0.5, -0.25, 0.5, 0.75, 0.25, -0.5, -0.75, -1.0, 0.0, 0.25, -0.5, -0.5, 0.25, 0.75, -0.25, 0.0, -1.0, 1.0, 0.25, -0.5, 1.0, -0.75, 0.75, 0.25, 0.75, 0.0, -0.25, -0.25, 0.0, 1.0, -0.25, 0.75, 0.0, 0.75, -0.75, 1.0, 0.25, -0.75, 0.0, -0.5, 0.25, 0.25, -0.75, 0.75, -0.25, 0.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer000.destroy()
    
    buffer001.destroy()
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
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
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    texture000.destroy();
    
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
    query000.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    command_encoder000.insertDebugMarker("mymarker");
    buffer002.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array1 = new Float32Array([1.0, -0.25, 0.25, -1.0, -1.0, 0.0, 0.5, -0.75, -1.0, -0.5, -1.0, -0.25, -0.5, -1.0, -0.25, -0.25, 0.25, -0.25, 1.0, 1.0, 1.0, 0.5, 1.0, 0.75, 0.0, -1.0, -0.25, -0.5, 0.25, -0.75, 1.0, -1.0, 0.25, -1.0, -0.25, -1.0, -1.0, 0.5, -0.5, 1.0, -0.75, 0.5, 0.75, -0.75, 0.5, -0.5, -0.25, 0.75, -0.25, -1.0, -1.0, -0.75, 0.25, -0.25, -0.25, -0.5, -0.5, 0.75, 1.0, 0.5, -0.5, -0.25, 0.25, 0.0, -1.0, -0.75, 1.0, 0.75, -0.5, -1.0, 0.5, 0.25, 0.5, -0.5, 0.0, 0.5, 0.75, -0.25, -0.25, 0.25, 0.75, -1.0, -0.5, -0.25, -0.5, -0.25, 0.5, -0.25, 0.5, 0.75, 1.0, -1.0, -0.25, 0.5, 0.75, 0.5, -0.5, -1.0, -0.5, 1.0, ]);
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    command_encoder000.copyBufferToBuffer(
        buffer003,
        0,
        buffer002,
        0,
        400
    );
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.popDebugGroup();
    query001.destroy()
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    compute_pass_encoder0001.insertDebugMarker("marker")
    
    texture002.destroy();
    
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device00.pushErrorScope("out-of-memory");
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    texture006.destroy();
    buffer004.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    
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
    const adapter4 = await gpu.requestAdapter({
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
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    compute_pass_encoder0000.popDebugGroup()
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_pass_encoder0000.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const array2 = new Float32Array([0.75, 0.75, 0.75, 0.5, 1.0, -0.75, -0.25, 0.75, -0.75, 0.75, 0.25, -0.25, -1.0, 1.0, -1.0, 0.0, -0.25, 0.5, 0.5, -0.25, -0.75, -0.5, -0.5, 0.75, 0.0, -0.5, 1.0, -0.75, 0.75, 0.5, -0.5, 0.5, -0.5, 0.0, 0.25, -1.0, 0.0, -1.0, 0.25, 0.25, 0.0, -1.0, 0.75, 1.0, -1.0, 0.5, -0.5, 1.0, 0.0, -0.25, 1.0, 0.5, -0.5, 1.0, 0.75, 1.0, -1.0, 1.0, -0.5, 0.25, -0.5, 0.5, -0.5, 0.75, 0.75, 0.75, 0.25, 1.0, 0.25, -0.5, -1.0, -0.5, 1.0, -0.25, -0.25, 1.0, 0.25, -0.5, -0.5, 0.75, 1.0, -1.0, 0.0, -1.0, 1.0, 0.25, -0.5, -0.5, -0.25, -0.5, 0.5, -0.75, -0.75, 0.75, -0.25, 0.5, -0.5, -1.0, -0.75, 0.75, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0000.setPipeline(render_pipeline000);
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    texture004.destroy();
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const array3 = new Float32Array([0.75, 0.0, 0.25, 1.0, 0.25, -1.0, -0.75, -0.25, -0.5, -0.25, 0.0, -0.25, -0.25, 0.75, -0.5, 0.25, -0.25, 1.0, -1.0, -0.5, 0.0, 0.5, 0.75, 1.0, 0.0, -1.0, 0.5, -0.75, 0.5, 0.0, 0.5, 0.0, -0.75, -1.0, -1.0, 0.75, 0.5, -1.0, 1.0, -0.25, 0.5, 0.75, -1.0, 0.5, -0.25, -0.75, -0.5, -0.5, 0.25, 0.5, 0.5, 0.75, 0.5, 0.5, -0.25, 0.25, 0.75, 0.0, 0.25, -0.75, 0.5, -0.5, 0.75, -0.5, -0.25, 0.25, 1.0, 0.0, 0.75, 1.0, 0.5, -0.75, -0.5, 0.0, 0.75, 1.0, -0.25, -0.5, 0.75, 0.25, 0.5, -0.25, -0.75, 0.0, 0.5, 0.25, -0.5, -1.0, -0.75, 0.0, -1.0, -0.25, 0.5, -0.25, -0.75, 0.0, -0.25, -0.75, -0.5, 0.5, ]);
    
    
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
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
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
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer006,
        0
    )
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer003
        },
        {
            texture: texture005
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    device40.pushErrorScope("internal");
    render_pass_encoder0001.insertDebugMarker("marker");
    
    render_pass_encoder0001.setPipeline(render_pipeline000);
    
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0001.beginOcclusionQuery(0)
    render_bundle_encoder000.setPipeline(render_pipeline001);
    texture005.destroy();
    compute_pass_encoder0001.insertDebugMarker("marker")
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder002.setPipeline(render_pipeline002);
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder0001.endOcclusionQuery()
    
    render_bundle_encoder001.popDebugGroup();
    
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    buffer006.destroy()
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder001.setVertexBuffer(0, buffer003);
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder002.popDebugGroup();
    buffer004.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
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
        occlusionQuerySet: query002
    });
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
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
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0021.insertDebugMarker("marker");
    
    command_encoder400.clearBuffer(buffer400);
    const array4 = new Float32Array([-0.25, -0.5, -0.5, 1.0, -0.25, -0.75, 0.25, -0.5, 1.0, 1.0, 0.0, 0.5, 0.75, -0.5, 0.5, 0.5, -0.75, -1.0, 0.0, 0.5, 0.0, -0.75, 0.75, 1.0, 0.25, 0.0, -1.0, 1.0, 0.0, -1.0, -0.5, 0.25, 0.0, 0.0, 0.25, 1.0, -0.5, 1.0, 0.0, -0.5, -0.25, 1.0, -0.75, -1.0, -0.25, -0.25, 0.0, -0.75, -0.25, 0.25, -0.75, 1.0, 0.75, -0.25, 1.0, -0.25, -0.5, 0.5, 1.0, -0.75, 0.5, 1.0, 0.75, 1.0, 0.5, 0.75, 0.25, 0.5, 1.0, 1.0, -0.5, 1.0, 1.0, -1.0, 0.0, -0.75, 0.0, 0.25, 0.75, -0.25, -0.5, -0.5, 0.75, 0.25, -0.75, -0.5, -0.75, -0.75, -1.0, 0.0, 0.0, -0.75, 0.0, -0.75, 0.0, 0.75, 0.0, 0.5, 0.5, -1.0, ]);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer007,
        0
    )
    render_pass_encoder0020.setStencilReference(1);
    
    
    command_encoder000.insertDebugMarker("mymarker");
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder0000.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
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
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0070,
            },
        ],
        occlusionQuerySet: query001
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
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
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group001);
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
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    render_pass_encoder0021.setPipeline(render_pipeline000);
    
    buffer003.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    render_bundle_encoder400.popDebugGroup();
    texture003.destroy();
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    query200.destroy()
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    query001.destroy()
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
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
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer000.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    command_encoder002.copyTextureToTexture(
        {
            texture: texture000
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
    render_bundle_encoder000.setVertexBuffer(0, buffer001);
    compute_pass_encoder0020.insertDebugMarker("marker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder400.insertDebugMarker("marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder0021.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_bundle_encoder002.insertDebugMarker("marker");
    query002.destroy()
    device20.pushErrorScope("out-of-memory");
    
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    buffer007.destroy()
    render_pass_encoder0020.setStencilReference(1);
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group002);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder0020.setPipeline(render_pipeline002);
    render_bundle_encoder001.draw(3);
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
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0010.setPipeline(render_pipeline005);
    
    
    render_pass_encoder0021.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder0021.setVertexBuffer(0, buffer001);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer008, 0, array1, 0, array1.length);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.draw(3);
    compute_pass_encoder0001.setPipeline(compute_pipeline003);
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
    
    buffer0010.destroy()
    buffer400.destroy()
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder300.insertDebugMarker("mymarker");
    texture400.destroy();
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer005.destroy()
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder0010.insertDebugMarker("marker");
    device30.pushErrorScope("validation");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    
    
    render_pass_encoder0000.insertDebugMarker("marker");
    command_encoder001.pushDebugGroup("mygroupmarker")
    render_pass_encoder0001.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0021.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0001.setStencilReference(1);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    render_pass_encoder0010.setScissorRect(0, 0, texture007.width / 2, texture007.height / 2);
    command_encoder300.pushDebugGroup("mygroupmarker")
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.insertDebugMarker("marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
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
    command_encoder200.insertDebugMarker("mymarker");
    render_bundle_encoder401.setPipeline(render_pipeline401);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    compute_pass_encoder0000.setPipeline(compute_pipeline002);
    
    query200.destroy()
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.insertDebugMarker("marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    texture007.destroy();
    buffer0011.destroy()
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.setStencilReference(1);
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer005
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    
    const array5 = new Float32Array([-1.0, -0.75, 0.5, -0.25, 0.5, 0.25, 0.25, 0.5, -1.0, 0.5, 0.75, 0.5, -0.75, 1.0, 0.0, 0.75, 0.25, -1.0, 0.25, -0.75, 0.5, 0.75, -1.0, -0.25, 0.75, 0.0, -0.75, -0.25, 0.0, 1.0, 0.25, 0.75, -0.5, 0.25, 0.75, -0.25, 0.25, 0.0, 0.5, 0.25, 0.25, -1.0, 0.25, -0.5, -0.75, -1.0, -0.75, 0.75, -1.0, -0.25, 0.75, 0.0, -0.75, 0.75, -0.5, 0.25, 1.0, 0.75, 0.5, -0.5, -0.25, -0.75, 0.25, -0.75, 1.0, 0.5, -0.75, -1.0, 0.0, 0.25, 1.0, 0.0, 1.0, -1.0, -0.5, 1.0, 1.0, 0.0, 0.75, 0.0, -1.0, -0.75, -1.0, 0.25, 0.0, 1.0, -1.0, 0.75, -0.25, -0.25, 0.5, -0.75, 1.0, -0.75, 0.75, 1.0, -0.5, 0.75, 0.25, -0.25, ]);
    command_encoder400.pushDebugGroup("mygroupmarker")
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    query000.destroy()
    render_pass_encoder0011.setPipeline(render_pipeline004);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    texture007.destroy();
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.popDebugGroup();
    device50.pushErrorScope("out-of-memory");
    render_pass_encoder0010.setViewport(0, 0, texture007.width / 2, texture007.height / 2, 0, 1);
    const render_pass_encoder0002 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0070,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    command_encoder000.copyBufferToBuffer(
        buffer005,
        0,
        buffer000,
        0,
        400
    );
    
    render_pass_encoder0001.setStencilReference(1);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder0002.insertDebugMarker("marker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0002.setScissorRect(0, 0, texture007.width / 2, texture007.height / 2);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query000.destroy()
    
    
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query002.destroy()
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group003);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture402.destroy();
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
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

    render_pass_encoder0000.setBindGroup(0, bind_group004);
    
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    buffer0012.destroy()
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group005);
    
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
    buffer0017.destroy()
    render_pass_encoder0011.insertDebugMarker("marker");
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0011.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0021.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    render_pass_encoder0021.setStencilReference(1);
    
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0001.setBindGroup(0, bind_group006);
    command_encoder001.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer005, 0);
    device40.queue.writeBuffer(buffer403, 0, array1, 0, array1.length);
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    render_pass_encoder0002.setPipeline(render_pipeline007);
    const command_buffer200 = command_encoder200.finish();
    render_bundle_encoder000.setIndexBuffer(buffer0018, "uint16");
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    query002.destroy()
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0002.setBindGroup(0, bind_group007);
    command_encoder002.copyBufferToBuffer(
        buffer009,
        0,
        buffer0018,
        0,
        400
    );
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    buffer0019.destroy()
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0002.pushDebugGroup("group_marker");
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    query202.destroy()
    
    buffer0013.destroy()
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder001.drawIndirect(buffer002, 0);
    buffer0020.destroy()
    device00.queue.writeBuffer(buffer0014, 0, array0, 0, array0.length);
    render_pass_encoder0020.setVertexBuffer(0, buffer002);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder0001.setVertexBuffer(0, buffer007);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder000.drawIndexedIndirect(buffer002, 0);
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    
    device00.queue.writeBuffer(buffer0021, 0, array1, 0, array1.length);
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    buffer0016.destroy()
    
    render_pass_encoder0001.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    render_bundle_encoder002.popDebugGroup();
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
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group008);
    query201.destroy()
    render_pass_encoder0021.end();
    device60.destroy();
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    
    buffer009.destroy()
    render_pass_encoder0001.draw(3);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_pass_encoder0020.drawIndirect(buffer0014, 0);
    render_pass_encoder0002.setVertexBuffer(0, buffer001);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0021.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0021.draw(3);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer500 = command_encoder500.finish();
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder0002.drawIndirect(buffer0013, 0);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0000.setVertexBuffer(0, buffer0020);
    render_pass_encoder0000.drawIndirect(buffer000, 0);
    render_pass_encoder0000.end();
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group009);
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
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group0010);
    render_pass_encoder0010.setVertexBuffer(0, buffer001);
    render_pass_encoder0001.end();
    render_pass_encoder0002.draw(3);
    render_pass_encoder0010.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.setVertexBuffer(0, buffer0019);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0011.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0002.end();
    render_pass_encoder0011.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0011.drawIndirect(buffer002, 0);
    device20.queue.submit([command_buffer200, ]);
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
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0011);
    render_pass_encoder0011.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    const command_buffer001 = command_encoder001.finish();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0002.end();
    render_pass_encoder0021.drawIndirect(buffer002, 0);
    render_pass_encoder0020.popDebugGroup();
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    render_pass_encoder0021.drawIndirect(buffer002, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0020.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0010.drawIndexed(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0011.drawIndirect(buffer002, 0);
    command_encoder300.popDebugGroup()
    compute_pass_encoder0020.end();
    device50.queue.submit([]);
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0001.drawIndirect(buffer0017, 0);
    device00.queue.submit([command_buffer001, ]);
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
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0012);
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    device40.queue.submit([command_buffer400, ]);
    device30.queue.submit([]);
    render_pass_encoder0000.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0030, "uint16");
    device40.queue.submit([]);
    compute_pass_encoder0020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0020.popDebugGroup();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0032, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0000.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0033, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0033, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0001.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0001.popDebugGroup();
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0013);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0002.draw(3);
    const command_buffer002 = command_encoder002.finish();
    compute_pass_encoder0001.end();
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder0002.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0028, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0001.drawIndirect(buffer0033, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0031, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder0001.end();
    command_encoder000.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0020.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0020.drawIndexed(3);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0002.drawIndexedIndirect(buffer0010, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0011.drawIndirect(buffer0034, 0);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder0020.end();
    device40.queue.submit([]);
    render_pass_encoder0021.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    device50.queue.submit([]);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0033, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer005, 0);
    render_pass_encoder0001.drawIndexed(3);
    compute_pass_encoder0000.popDebugGroup()
    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0037,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0014);
    render_pass_encoder0010.drawIndirect(buffer002, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder4000.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder3000.popDebugGroup()
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder0002.drawIndirect(buffer0022, 0);
    render_pass_encoder0011.drawIndirect(buffer0037, 0);
    device00.queue.submit([command_buffer000, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0002.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0032, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer0033, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder0011.drawIndirect(buffer0020, 0);
    device00.queue.submit([]);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0038, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0038, 0);
    render_pass_encoder0002.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0000.drawIndirect(buffer0033, 0);
    device40.queue.submit([]);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    render_pass_encoder0001.drawIndirect(buffer0033, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    render_pass_encoder0011.drawIndirect(buffer0032, 0);
    render_pass_encoder0001.end();
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.drawIndirect(buffer0037, 0);
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0002.drawIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0001.setIndexBuffer(buffer0028, "uint16");
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0015);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0000.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0028, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0001.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer0033, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0002.popDebugGroup();
    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0042,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0016);
    render_pass_encoder0001.drawIndexedIndirect(buffer0032, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0002.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0033, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer0038, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0011.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0021.drawIndirect(buffer0032, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0001.end();
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0038, 0);
    device30.queue.submit([]);
    render_pass_encoder0002.draw(3);
    render_pass_encoder0001.setIndexBuffer(buffer0036, "uint16");
    device50.queue.submit([]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer009, 0);
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
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0017);
    render_pass_encoder0021.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0021.drawIndexedIndirect(buffer002, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0032, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0037, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0045, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0045, 0);
    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
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
                    buffer: buffer0046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0047,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0018);
    render_pass_encoder0011.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0002.drawIndirect(buffer0011, 0);
    render_pass_encoder0002.drawIndirect(buffer002, 0);
    render_pass_encoder0021.drawIndirect(buffer002, 0);
    render_pass_encoder0011.end();
    device40.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer0036, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0002.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0011.drawIndirect(buffer0045, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0002.drawIndirect(buffer002, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0011.drawIndirect(buffer002, 0);
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder0001.end();
    render_pass_encoder0001.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0038, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0000.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0048, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0048, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0045, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0001.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0001.drawIndirect(buffer006, 0);
    render_pass_encoder0011.drawIndirect(buffer002, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer002, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0000.drawIndirect(buffer0048, 0);
    render_pass_encoder0000.drawIndirect(buffer0033, 0);
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0002.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0032, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder0021.endOcclusionQuery()
    device00.queue.submit([]);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0000.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0002.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0045, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0049, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0049, 0);
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0019);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer0049, 0);
    device40.queue.submit([]);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0023, 0);
    device40.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0050, 0);
}