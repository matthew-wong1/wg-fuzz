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
    const array0 = new Float32Array([-0.25, 1.0, -0.25, -0.75, 0.75, -0.75, 0.0, 0.0, -0.75, -0.5, -1.0, 0.75, -1.0, 1.0, 0.5, 0.25, -0.25, 0.0, 0.25, 0.25, 1.0, 0.0, 0.75, -0.25, -0.5, -0.25, 0.25, 0.75, 0.5, 0.0, 0.0, -0.25, 0.75, -0.75, -0.25, 0.75, -1.0, 0.5, -0.75, 1.0, -0.25, -1.0, 0.75, -0.75, 0.0, 0.5, -0.5, 0.75, 0.25, 0.5, 0.5, 1.0, -0.75, -1.0, 0.75, 0.25, -0.25, 0.5, 1.0, 0.75, -0.75, -0.5, -1.0, -0.5, -1.0, -1.0, -0.5, 0.75, 0.25, -0.5, -1.0, -0.5, 0.5, 1.0, -0.25, 0.5, -0.25, -0.25, -0.5, 0.5, 1.0, 0.5, -1.0, 0.5, 1.0, -0.5, 1.0, 0.0, -0.75, -0.75, 1.0, -0.5, -0.75, -1.0, 0.75, -0.25, -0.5, -0.5, -0.75, -0.5, ]);
    const array1 = new Float32Array([-0.5, 0.25, -0.75, 1.0, 0.5, -1.0, 1.0, 0.0, 0.5, 1.0, 0.25, 0.5, -0.75, 0.75, 1.0, 0.25, -0.75, -0.25, 0.75, -1.0, 0.0, 0.25, 0.25, 0.0, 0.25, -0.75, 1.0, 0.25, 0.0, 1.0, 0.25, 1.0, 0.5, 0.0, -0.5, -1.0, 0.75, -0.25, 0.5, 1.0, -0.75, 0.75, 0.0, 0.5, 0.5, 1.0, 0.25, 0.0, 0.25, -0.75, 0.75, -0.25, -0.75, 0.25, -0.5, 0.75, -0.25, 0.25, 1.0, 1.0, 0.25, 0.75, -0.25, -1.0, 1.0, 0.75, 1.0, -0.25, -0.25, 0.75, 0.25, 0.0, 0.0, 0.25, -0.5, -0.5, 1.0, 0.75, 0.0, -1.0, -1.0, -0.75, 1.0, 0.75, -0.25, 0.75, -0.25, 0.0, 1.0, -0.5, -0.5, 0.25, 0.75, 0.25, 1.0, -0.5, 0.75, -1.0, -0.25, -1.0, ]);
    
    const array2 = new Float32Array([0.0, -0.25, -0.5, -0.5, 0.5, -0.25, 0.5, -0.25, -0.5, -0.25, -0.25, 0.0, 1.0, -1.0, -0.5, 0.5, 0.75, -0.25, 1.0, -0.25, 0.5, 0.5, -1.0, 0.0, -1.0, -0.75, 0.0, -0.75, 0.75, -0.5, -0.5, -1.0, 0.5, 0.75, -0.5, 0.5, 0.25, 0.5, 0.75, -0.75, 1.0, -1.0, -1.0, 0.75, 0.5, -0.5, -0.25, -0.5, -1.0, -0.5, 0.5, -0.5, 1.0, -1.0, -0.5, 0.0, -0.5, -0.75, 0.75, 0.5, -0.75, 0.5, 0.25, 0.75, -0.5, 0.5, 0.5, 0.75, 0.0, -1.0, 0.0, 0.75, 0.75, -0.25, -0.5, -0.25, -0.75, 0.75, -0.75, -0.5, -0.5, -0.25, 0.0, 0.5, -0.25, 0.0, 0.0, -0.5, -0.75, 0.0, -0.75, 0.5, -1.0, 0.5, -1.0, 0.0, 0.25, -1.0, -0.25, 0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    query000.destroy()
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    query000.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    buffer000.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    query000.destroy()
    
    buffer001.destroy()
    
    render_bundle_encoder000.popDebugGroup();
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
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
    query000.destroy()
    
    
    
    query000.destroy()
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
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
    render_pass_encoder0000.popDebugGroup();
    
    render_pass_encoder0000.popDebugGroup();
    
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query001.destroy()
    render_pass_encoder0000.popDebugGroup();
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder000.popDebugGroup();
    
    texture001.destroy();
    render_pass_encoder0000.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.executeBundles([])
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0000.executeBundles([])
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array3 = new Float32Array([0.75, 0.5, -0.75, 0.0, -1.0, 0.25, 1.0, -1.0, -1.0, 0.0, -1.0, -0.5, 0.0, 0.75, -0.25, -1.0, 0.75, -0.25, 1.0, 0.5, 1.0, -0.5, 0.0, -0.5, -0.75, 0.5, 0.25, 0.75, 0.25, 0.25, 0.25, 1.0, 0.5, -0.5, 0.75, 0.0, 0.0, 0.75, 1.0, 0.25, -0.25, -0.5, 1.0, 1.0, 0.0, -1.0, -1.0, 1.0, 0.75, 0.0, -0.25, 1.0, -0.5, -1.0, 0.75, 0.5, 1.0, 0.0, -0.5, 1.0, 0.75, -0.25, -1.0, -0.5, -0.25, 0.75, -0.5, 1.0, -0.5, 0.75, -0.25, -0.5, -1.0, -1.0, 0.75, -0.25, 0.0, -0.75, 1.0, 0.75, -0.25, 0.5, 0.75, 1.0, -0.75, 0.0, 0.75, 0.0, 0.0, -1.0, 0.25, 1.0, -1.0, 0.25, 0.5, -0.25, 0.0, 0.25, -0.5, 0.0, ]);
    render_pass_encoder0000.setStencilReference(1);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0000.setPipeline(render_pipeline000);
    
    device00.pushErrorScope("out-of-memory");
    buffer000.destroy()
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_buffer001 = command_encoder001.finish();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    texture002.destroy();
    render_bundle_encoder001.setPipeline(render_pipeline001);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0000.insertDebugMarker("marker");
    command_encoder000.popDebugGroup()
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0000.insertDebugMarker("marker");
    
    
    render_pass_encoder0030.setPipeline(render_pipeline001);
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    query001.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_pass_encoder0030.setStencilReference(1);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_buffer000 = command_encoder000.finish();
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setStencilReference(1);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setPipeline(render_pipeline001);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
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

    render_pass_encoder0030.setBindGroup(0, bind_group000);
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
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    
    
    buffer004.destroy()
    command_encoder006.clearBuffer(buffer004);
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
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
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0060.insertDebugMarker("marker");
    
    command_encoder005.clearBuffer(buffer000);
    texture003.destroy();
    query002.destroy()
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder005.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    query002.destroy()
    query001.destroy()
    render_pass_encoder0060.insertDebugMarker("marker");
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0030.insertDebugMarker("marker");
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query000.destroy()
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    command_encoder005.copyBufferToBuffer(
        buffer002,
        0,
        buffer005,
        0,
        400
    );
    device00.queue.submit([command_buffer000, ]);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query000.destroy()
    
    render_pass_encoder0040.setStencilReference(1);
    buffer002.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    query000.destroy()
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
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

    render_pass_encoder0040.setBindGroup(0, bind_group002);
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    device00.queue.writeBuffer(buffer008, 0, array0, 0, array0.length);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
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
    
    
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer008,
        0
    )
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
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
    render_pass_encoder0030.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    render_pass_encoder0050.setPipeline(render_pipeline003);
    
    
    
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
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
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    
    render_pass_encoder0060.executeBundles([render_bundle_encoder000, render_bundle_encoder002, ])
    render_bundle_encoder002.setPipeline(render_pipeline003);
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder002.insertDebugMarker("marker");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
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
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder006.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const render_pass_encoder0061 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0061",
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
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0051.setPipeline(render_pipeline004);
    const render_pass_encoder0071 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0071",
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
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    render_pass_encoder0061.setPipeline(render_pipeline005);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    render_pass_encoder0070.setPipeline(render_pipeline002);
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
    
    command_encoder008.copyBufferToTexture(
        {
            buffer: buffer004
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
    
    render_bundle_encoder001.popDebugGroup();
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0030.setVertexBuffer(0, buffer008);
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0071.pushDebugGroup("group_marker");
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    command_encoder009.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    command_encoder007.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0050.insertDebugMarker("marker");
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder0040.setVertexBuffer(0, buffer009);
    render_pass_encoder0061.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder009.copyTextureToTexture(
        {
            texture: texture004
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
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0071.setPipeline(render_pipeline003);
    
    render_pass_encoder0061.setStencilReference(1);
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.popDebugGroup();
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder009.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer009,
        0
    )
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pass_encoder0090 = command_encoder009.beginRenderPass({
        label: "render_pass_encoder0090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query004
    });
    render_pass_encoder0040.setStencilReference(1);
    query002.destroy()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0090.setPipeline(render_pipeline004);
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    render_pass_encoder0041.setStencilReference(1);
    render_pass_encoder0000.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0090.pushDebugGroup("group_marker");
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0070.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query000.destroy()
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout003,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    render_pass_encoder0041.setPipeline(render_pipeline001);
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer007,
        0
    )
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0090.insertDebugMarker("marker");
    
    
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0080.pushDebugGroup("group_marker");
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout001,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
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
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0000.pushDebugGroup("group_marker");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0080.setPipeline(render_pipeline007);
    
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group003);
    render_pass_encoder0000.setStencilReference(1);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder0090.setStencilReference(1);
    render_pass_encoder0050.insertDebugMarker("marker");
    const render_pass_encoder0081 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0081",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query004
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0071.setBindGroup(0, bind_group004);
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder0090.setStencilReference(1);
    render_pass_encoder0090.setStencilReference(1);
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
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

    render_pass_encoder0000.setBindGroup(0, bind_group005);
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    buffer000.destroy()
    render_pass_encoder0030.draw(3);
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setVertexBuffer(0, buffer0012);
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
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

    render_pass_encoder0070.setBindGroup(0, bind_group006);
    
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_pass_encoder0000.setStencilReference(1);
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    command_encoder007.resolveQuerySet(
        query004,
        0,
        32,
        buffer006,
        0
    )
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
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0080.setBindGroup(0, bind_group007);
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
    render_pass_encoder0040.drawIndirect(buffer007, 0);
    buffer0020.destroy()
    render_pass_encoder0000.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0090.beginOcclusionQuery(0)
    
    
    render_pass_encoder0000.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0080.setVertexBuffer(0, buffer005);
    render_pass_encoder0030.setStencilReference(1);
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    const array4 = new Float32Array([-1.0, -0.25, 0.75, -1.0, -1.0, 1.0, 0.5, 0.5, 0.75, -0.5, -1.0, -0.75, 1.0, -0.75, 0.5, 0.25, -0.5, -0.25, -0.5, -0.75, 0.0, 0.0, 0.5, 0.5, -0.25, -0.5, -1.0, 0.25, 0.0, 0.25, -0.75, -1.0, -0.5, -1.0, 0.25, 0.75, 0.75, -0.25, 0.75, 0.25, 0.75, 0.0, 1.0, -0.75, 0.25, 1.0, 0.25, -0.25, 0.75, 0.0, 0.0, -0.5, -0.75, 0.75, 0.25, -0.5, 0.25, -0.5, 0.75, 0.25, 0.75, -1.0, 0.25, 0.75, -0.25, 0.0, 0.0, -0.25, 0.0, -1.0, -0.25, -1.0, -0.5, -0.5, -1.0, 0.0, 0.75, 1.0, 0.0, -0.25, -0.5, 0.5, 0.0, -0.5, 1.0, 0.75, 0.25, -1.0, -0.25, 1.0, 0.25, 1.0, -0.75, -0.75, 0.75, -1.0, -0.5, -1.0, 0.25, 0.25, ]);
    render_pass_encoder0030.draw(3);
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_pass_encoder0070.setStencilReference(1);
    
    
    render_pass_encoder0041.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    texture003.destroy();
    render_bundle_encoder002.popDebugGroup();
    command_encoder005.copyBufferToBuffer(
        buffer000,
        0,
        buffer0014,
        0,
        400
    );
    render_pass_encoder0070.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout003,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0040.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0031.insertDebugMarker("marker");
    buffer001.destroy()
    render_pass_encoder0031.setPipeline(render_pipeline009);
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
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0061.setBindGroup(0, bind_group008);
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    buffer0011.destroy()
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0081.setPipeline(render_pipeline007);
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0041.insertDebugMarker("marker");
    render_pass_encoder0000.popDebugGroup();
    buffer0013.destroy()
    
    render_pass_encoder0090.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0081.setStencilReference(1);
    
    render_pass_encoder0031.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
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
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0081.setBindGroup(0, bind_group009);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0090.insertDebugMarker("marker");
    render_pass_encoder0071.setStencilReference(1);
    command_encoder008.resolveQuerySet(
        query005,
        0,
        32,
        buffer009,
        0
    )
    buffer009.destroy()
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
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
    render_pass_encoder0080.drawIndirect(buffer0017, 0);
    render_pass_encoder0080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0090.setStencilReference(1);
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    device00.queue.writeBuffer(buffer0022, 0, array0, 0, array0.length);
    {
        await buffer0016.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0016.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0016.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0061.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0081.setVertexBuffer(0, buffer005);
    render_pass_encoder0041.pushDebugGroup("group_marker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0051.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder004.copyBufferToBuffer(
        buffer0022,
        0,
        buffer0010,
        0,
        400
    );
    
    
    device00.queue.writeBuffer(buffer0023, 0, array0, 0, array0.length);
    render_pass_encoder0081.beginOcclusionQuery(0)
    render_pass_encoder0071.pushDebugGroup("group_marker");
    render_bundle_encoder001.setVertexBuffer(0, buffer008);
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0061.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0070.pushDebugGroup("group_marker");
    buffer0019.destroy()
    
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer0018,
        0
    )
    render_pass_encoder0071.setStencilReference(1);
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0090.insertDebugMarker("marker");
    
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    buffer0021.destroy()
    render_pass_encoder0051.setStencilReference(1);
    render_pass_encoder0071.insertDebugMarker("marker");
    command_encoder003.copyTextureToTexture(
        {
            texture: texture004
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder009.insertDebugMarker("mymarker");
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer009,
        0
    )
    buffer005.destroy()
    
    buffer0012.destroy()
    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0026,
                },
            },
        ],
    });

    render_pass_encoder0090.setBindGroup(0, bind_group0010);
    buffer007.destroy()
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0081.beginOcclusionQuery(0)
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.drawIndirect(buffer0014, 0);
    render_pass_encoder0080.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0090.setVertexBuffer(0, buffer004);
    render_pass_encoder0071.setStencilReference(1);
    
    render_pass_encoder0061.pushDebugGroup("group_marker");
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder0071.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0040.pushDebugGroup("group_marker");
    command_encoder006.copyBufferToTexture(
        {
            buffer: buffer0018
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0081.endOcclusionQuery()
    render_pass_encoder0071.setVertexBuffer(0, buffer008);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0090.popDebugGroup();
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
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline009.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group0011);
    render_pass_encoder0070.setVertexBuffer(0, buffer0013);
    render_pass_encoder0061.setVertexBuffer(0, buffer007);
    render_pass_encoder0000.end();
    render_pass_encoder0061.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer0022, "uint16");
    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0030,
                },
            },
        ],
    });

    render_pass_encoder0051.setBindGroup(0, bind_group0012);
    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0032,
                },
            },
        ],
    });

    render_pass_encoder0041.setBindGroup(0, bind_group0013);
    render_pass_encoder0071.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0090.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0090.draw(3);
    render_pass_encoder0061.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0061.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0051.setVertexBuffer(0, buffer0023);
    render_pass_encoder0070.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0080.drawIndirect(buffer008, 0);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0081.setIndexBuffer(buffer0016, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0070.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0031.setVertexBuffer(0, buffer0018);
    render_pass_encoder0071.drawIndirect(buffer0022, 0);
    render_pass_encoder0090.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0061.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0081.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0061.drawIndirect(buffer006, 0);
    render_pass_encoder0050.setVertexBuffer(0, buffer0032);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0000.draw(3);
    render_pass_encoder0070.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0070.draw(3);
    render_pass_encoder0041.setVertexBuffer(0, buffer0012);
    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0034,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group0014);
    render_pass_encoder0081.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0081.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0022, 0);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0061.end();
    render_pass_encoder0081.end();
    render_pass_encoder0060.setVertexBuffer(0, buffer0027);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer003, 0);
    render_pass_encoder0050.drawIndirect(buffer0010, 0);
    render_pass_encoder0081.drawIndexed(3);
    render_pass_encoder0041.end();
    render_pass_encoder0090.drawIndexed(3);
    render_pass_encoder0061.end();
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0090.drawIndirect(buffer0013, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0041.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0070.end();
    render_pass_encoder0041.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
    render_pass_encoder0090.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0071.drawIndirect(buffer0016, 0);
    render_pass_encoder0051.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0061.drawIndirect(buffer001, 0);
    render_pass_encoder0090.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0022, 0);
    render_pass_encoder0050.drawIndirect(buffer002, 0);
    render_pass_encoder0000.drawIndirect(buffer0013, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0034, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0061.end();
    render_pass_encoder0050.draw(3);
    render_pass_encoder0050.drawIndirect(buffer001, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0000.draw(3);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0020, 0);
    render_pass_encoder0061.draw(3);
    render_pass_encoder0081.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0000.end();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0000.drawIndirect(buffer0015, 0);
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder0061.drawIndexed(3);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0060.end();
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0090.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0071.end();
    render_pass_encoder0070.drawIndirect(buffer0029, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0031.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0071.draw(3);
    render_pass_encoder0090.end();
    command_encoder005.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer005, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0080.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0071.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0034, "uint16");
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0061.end();
    render_pass_encoder0081.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0050.setIndexBuffer(buffer009, "uint16");
    const command_buffer008 = command_encoder008.finish();
    const command_buffer007 = command_encoder007.finish();
    render_pass_encoder0030.drawIndirect(buffer009, 0);
    device00.queue.submit([command_buffer004, command_buffer008, ]);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0080.draw(3);
    render_pass_encoder0050.end();
    render_pass_encoder0041.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0000.drawIndexed(3);
    const command_buffer009 = command_encoder009.finish();
    render_pass_encoder0090.end();
    render_pass_encoder0090.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0080.drawIndirect(buffer0019, 0);
    render_pass_encoder0061.drawIndexed(3);
    render_pass_encoder0000.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0090.drawIndexed(3);
    render_pass_encoder0051.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0010, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer0012, 0);
    render_pass_encoder0060.drawIndirect(buffer003, 0);
    render_pass_encoder0051.drawIndirect(buffer002, 0);
    render_pass_encoder0051.drawIndirect(buffer009, 0);
    render_pass_encoder0071.popDebugGroup();
    device00.queue.submit([command_buffer005, command_buffer008, ]);
    device00.queue.submit([command_buffer005, command_buffer009, ]);
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    render_pass_encoder0060.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0070.drawIndirect(buffer0027, 0);
    render_pass_encoder0051.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer008, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0080.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0081.drawIndirect(buffer004, 0);
    render_pass_encoder0080.drawIndirect(buffer003, 0);
    render_pass_encoder0081.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0080.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0061.drawIndexed(3);
    render_pass_encoder0050.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0061.draw(3);
    render_pass_encoder0041.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0090.draw(3);
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0081.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0061.draw(3);
    render_pass_encoder0050.end();
    render_pass_encoder0070.draw(3);
    render_pass_encoder0061.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0061.drawIndirect(buffer0034, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0070.drawIndirect(buffer0031, 0);
    render_pass_encoder0071.drawIndirect(buffer0014, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0080.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0080.endOcclusionQuery()
    render_pass_encoder0090.endOcclusionQuery()
    render_pass_encoder0081.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0061.drawIndirect(buffer000, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0090.drawIndirect(buffer0022, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0000.drawIndirect(buffer003, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0028, 0);
    device00.queue.submit([command_buffer003, command_buffer007, ]);
    render_pass_encoder0090.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0081.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0070.drawIndirect(buffer0028, 0);
    render_pass_encoder0081.end();
    render_pass_encoder0080.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0025, 0);
    render_pass_encoder0081.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0031.drawIndirect(buffer0024, 0);
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    render_pass_encoder0081.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0071.drawIndexed(3);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0061.drawIndirect(buffer0014, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0061.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0010, 0);
    render_pass_encoder0061.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0081.drawIndirect(buffer0011, 0);
    render_pass_encoder0080.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0071.end();
    render_pass_encoder0050.end();
    render_pass_encoder0061.drawIndirect(buffer0029, 0);
    render_pass_encoder0081.drawIndirect(buffer000, 0);
    render_pass_encoder0041.drawIndexed(3);
    device00.queue.submit([command_buffer003, command_buffer007, command_buffer009, ]);
    render_pass_encoder0090.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0070.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0021, 0);
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0000.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0071.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0051.end();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer009, 0);
    render_pass_encoder0090.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0081.drawIndexed(3);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0041.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0028, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0090.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    render_pass_encoder0070.drawIndirect(buffer0026, 0);
    render_pass_encoder0070.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0071.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0090.drawIndirect(buffer0026, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0040.drawIndexed(3);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0031.draw(3);
    render_pass_encoder0090.end();
    render_pass_encoder0051.draw(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    render_pass_encoder0050.drawIndirect(buffer008, 0);
    render_pass_encoder0040.drawIndexed(3);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0070.end();
    render_pass_encoder0080.end();
    render_pass_encoder0071.drawIndexed(3);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0040.drawIndirect(buffer0027, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0070.drawIndirect(buffer006, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer007, 0);
    render_pass_encoder0080.draw(3);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0041.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0090.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0060.drawIndirect(buffer0017, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0031.drawIndirect(buffer0030, 0);
    render_pass_encoder0090.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0090.draw(3);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0051.drawIndexed(3);
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0060.drawIndirect(buffer0030, 0);
    render_pass_encoder0090.end();
    render_pass_encoder0090.popDebugGroup();
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0071.drawIndirect(buffer0034, 0);
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0061.drawIndexedIndirect(buffer0024, 0);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0060.draw(3);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0061.drawIndirect(buffer0032, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0031.end();
}