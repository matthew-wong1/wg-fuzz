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
    
    const array0 = new Float32Array([-0.75, -0.25, -1.0, 0.25, 0.25, 0.0, 0.25, 0.5, -0.5, 0.25, 0.75, 0.25, -1.0, 0.75, -0.75, 0.5, -0.25, 0.0, -0.75, 0.0, -0.75, 1.0, -0.5, 1.0, 1.0, 0.0, 1.0, 1.0, -0.5, 0.25, -0.75, -0.75, -1.0, 0.25, 0.75, -0.75, 1.0, 0.0, 0.5, 0.5, 0.5, 0.75, 1.0, 0.25, 0.5, 0.25, 1.0, -0.25, -0.25, -1.0, 0.25, -0.25, 0.0, -0.75, -0.5, -0.5, -0.5, -1.0, -0.75, -0.5, 0.25, 0.75, 0.25, 0.5, 0.75, -0.5, 0.75, -0.75, 0.25, 0.25, -0.5, -0.25, 0.5, 0.0, 1.0, -0.25, -0.5, -0.5, -0.25, 0.75, -0.75, -0.25, -1.0, -1.0, -0.5, -0.75, 0.5, -0.25, 1.0, -1.0, -1.0, 1.0, 0.25, 1.0, -1.0, -0.25, 0.0, 0.75, 0.75, -0.75, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device10.destroy();
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.pushErrorScope("internal");
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    buffer000.destroy()
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const render_bundle_encoder004 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder004",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder004.insertDebugMarker("marker");
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder004.pushDebugGroup("group_marker");
    command_encoder001.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer001.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder004.popDebugGroup();
    
    command_encoder000.copyBufferToBuffer(
        buffer000,
        0,
        buffer000,
        0,
        400
    );
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder003.pushDebugGroup("mygroupmarker")
    command_encoder000.pushDebugGroup("mygroupmarker")
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder004.insertDebugMarker("marker");
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder001.popDebugGroup()
    command_encoder001.insertDebugMarker("mymarker");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    command_encoder002.insertDebugMarker("mymarker");
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device00.pushErrorScope("internal");
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.popDebugGroup()
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    render_bundle_encoder002.insertDebugMarker("marker");
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
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
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
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0030.insertDebugMarker("marker");
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: query000
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0021.insertDebugMarker("marker");
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
    render_pass_encoder0000.insertDebugMarker("marker");
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0031.beginOcclusionQuery(0)
    query001.destroy()
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const array1 = new Float32Array([-1.0, 0.25, -0.5, 1.0, 0.5, 0.5, 0.25, 0.0, -0.25, 0.25, 0.5, 1.0, -0.75, 0.75, -0.25, 1.0, -0.75, -0.25, -0.5, -0.5, 0.75, -1.0, -1.0, 0.25, -0.25, 1.0, -0.5, -0.25, 0.75, -0.25, 0.0, -0.25, -1.0, 0.25, 0.25, 0.75, -1.0, -0.5, -0.75, 0.75, -0.25, -0.5, 1.0, 1.0, -0.25, 0.75, 0.25, -1.0, -1.0, 0.75, 0.75, 0.25, 0.75, 0.75, -0.25, -0.5, 0.5, -0.75, 0.75, 0.25, -0.25, -0.25, 0.75, 0.0, 0.5, -0.5, 0.0, -0.5, -0.5, 1.0, -0.5, 0.75, -0.25, 1.0, 0.0, 0.5, -1.0, 0.0, -0.25, -1.0, -0.25, 0.0, 0.5, 0.75, -0.75, 0.75, 1.0, 0.0, -0.25, -0.25, -0.25, -1.0, -0.25, -0.25, -0.75, -1.0, 1.0, -0.25, 1.0, 0.5, ]);
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0021.pushDebugGroup("group_marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_pass_encoder0030.executeBundles([render_bundle_encoder000, ])
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_bundle_encoder004.setPipeline(render_pipeline000);
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder003.insertDebugMarker("marker");
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder0021.insertDebugMarker("marker");
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_pass_encoder0021.beginOcclusionQuery(0)
    render_pass_encoder0031.setPipeline(render_pipeline000);
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    render_pass_encoder0010.executeBundles([])
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    render_pass_encoder0041.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    render_pass_encoder0041.pushDebugGroup("group_marker");
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0000.setPipeline(render_pipeline000);
    buffer002.destroy()
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

    render_pass_encoder0030.setBindGroup(0, bind_group001);
    const array2 = new Float32Array([-0.75, 1.0, -1.0, 0.0, 0.5, 1.0, 0.0, 0.75, 0.0, 0.0, -1.0, -1.0, -0.75, -0.75, 0.75, -1.0, 0.75, 1.0, 0.25, 0.25, -0.25, 0.0, 0.75, -1.0, 0.0, -0.75, 0.5, 0.75, -0.5, 0.75, -0.5, 0.5, -0.75, 0.25, 0.5, -1.0, 0.25, -1.0, 0.5, -0.5, -1.0, -0.25, 1.0, 0.5, 0.5, -0.5, -0.75, 0.5, 0.5, 1.0, -1.0, 1.0, 1.0, 0.0, -0.75, -0.75, -1.0, 1.0, 1.0, 1.0, 0.25, 0.5, 0.25, -0.5, 0.75, -0.75, 0.5, 0.5, 1.0, -0.25, -0.25, 0.25, 1.0, 0.0, -0.5, -0.75, -0.75, -0.75, 0.75, 1.0, -0.5, 1.0, -0.75, -0.5, -0.5, -0.75, 0.0, 0.75, -0.5, -1.0, 0.25, -0.5, 0.75, 0.75, -0.75, 1.0, 0.0, 0.5, -0.25, 0.0, ]);
    render_pass_encoder0031.endOcclusionQuery()
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0041.setPipeline(render_pipeline000);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    query000.destroy()
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder003.setPipeline(render_pipeline000);
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    device10.destroy();
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setStencilReference(1);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group002);
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0021.setPipeline(render_pipeline001);
    
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0031.endOcclusionQuery()
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
        occlusionQuerySet: query001
    });
    buffer006.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
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

    render_pass_encoder0021.setBindGroup(0, bind_group003);
    query001.destroy()
    const array3 = new Float32Array([0.75, 1.0, 0.75, -0.5, -0.25, 0.5, 0.5, -1.0, 0.75, 0.0, -0.5, 1.0, -0.75, -1.0, 0.5, -0.75, 0.25, 0.25, 1.0, -0.75, 0.5, 0.25, -0.75, 0.5, -0.5, 0.25, 0.25, 0.25, 0.0, -1.0, -0.5, -0.75, 1.0, 0.0, 0.0, 0.5, 0.25, -0.25, 0.25, 0.5, 0.75, 0.0, 0.5, 1.0, 0.0, 0.25, -0.75, 1.0, 1.0, -0.75, 1.0, -0.25, -0.25, 0.0, 0.25, -0.75, 1.0, -0.5, 0.5, -0.75, -0.75, 0.0, -0.75, 0.0, -0.5, -1.0, -0.25, -1.0, 0.0, -1.0, 1.0, 0.0, 0.75, 0.0, 1.0, -1.0, 0.25, -0.75, -0.25, 1.0, -1.0, -0.25, -0.75, 0.25, -0.5, 1.0, 0.5, -0.75, -0.25, 0.0, -0.5, -0.5, -0.75, 0.5, -0.25, 0.25, -0.25, -0.75, -1.0, -0.5, ]);
    render_pass_encoder0031.pushDebugGroup("group_marker");
    {
        await buffer005.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer005.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer005.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0041.setVertexBuffer(0, buffer005);
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const array4 = new Float32Array([0.25, -0.25, 0.0, -0.25, 0.5, 0.25, 0.0, 0.0, -0.75, -1.0, 0.25, -0.75, -0.25, 0.5, -1.0, 0.0, -0.75, -1.0, -1.0, 0.5, 0.5, 0.5, -0.5, 0.5, 1.0, 0.75, -0.75, 0.5, -0.25, -0.25, 0.25, -0.75, 0.0, 0.25, 0.5, -0.25, -0.25, -0.5, -1.0, 0.75, 0.75, 0.75, -1.0, 0.5, -0.75, -1.0, -0.25, 0.75, 0.0, 0.25, 0.5, 1.0, -0.25, -1.0, -1.0, 0.25, 0.5, -1.0, -0.75, -0.75, -0.5, 0.5, 1.0, -0.5, -0.75, 0.25, 1.0, 0.75, -0.75, 0.5, -0.5, 0.75, 0.25, 0.75, -0.75, 0.5, 1.0, -0.25, 0.25, 0.25, 1.0, 0.0, -0.5, 1.0, -1.0, 0.25, -0.75, -0.75, 0.25, -0.5, 1.0, -0.5, 0.25, -0.25, -1.0, -1.0, -1.0, 0.0, 1.0, 0.75, ]);
    
    render_bundle_encoder003.pushDebugGroup("group_marker");
    buffer004.destroy()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array5 = new Float32Array([0.5, -0.75, -0.75, -1.0, -1.0, 0.25, 0.5, -0.75, 0.25, -1.0, -1.0, 0.0, -1.0, 0.25, 0.0, -0.5, 1.0, -0.25, -0.25, 0.0, -0.75, 0.5, -1.0, -0.75, 0.25, 0.25, 0.25, -1.0, 0.0, 0.5, 0.75, -1.0, -0.25, -0.5, -0.75, 0.0, 1.0, -0.25, 0.5, -0.75, 1.0, 0.75, -1.0, -0.25, 0.0, 0.25, 0.25, 1.0, -0.25, 1.0, -0.25, 0.25, 0.25, 1.0, 0.5, 0.5, -1.0, 0.0, -0.75, -0.75, 0.25, 0.5, 0.25, -1.0, -1.0, -0.75, 1.0, 0.5, 1.0, 0.25, -0.5, 0.75, 0.75, -0.5, 1.0, -0.75, 0.75, -0.5, 0.5, -0.5, -0.5, -0.5, 0.25, -0.5, 0.25, -0.75, 0.5, -0.25, 0.0, 0.25, 0.25, 0.5, 1.0, 1.0, -0.25, 0.5, -0.75, -0.5, 0.5, 0.25, ]);
    render_pass_encoder0041.insertDebugMarker("marker");
    
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0010.popDebugGroup();
    
    render_bundle_encoder001.setVertexBuffer(0, buffer002);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
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
    
    render_bundle_encoder001.draw(3);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    render_pass_encoder0040.setPipeline(render_pipeline001);
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder004.insertDebugMarker("marker");
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.setStencilReference(1);
    buffer006.destroy()
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setStencilReference(1);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0010.setPipeline(render_pipeline001);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0041.draw(3);
    render_pass_encoder0050.pushDebugGroup("group_marker");
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0031.setStencilReference(1);
    render_pass_encoder0031.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0004,
            },
        ],
        occlusionQuerySet: undefined
    });
    query000.destroy()
    
    render_pass_encoder0040.insertDebugMarker("marker");
    
    query001.destroy()
    
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
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

    render_pass_encoder0000.setBindGroup(0, bind_group004);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0011.setPipeline(render_pipeline002);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.popDebugGroup();
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setPipeline(render_pipeline000);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer007.destroy()
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer0010, 0, array0, 0, array0.length);
    render_pass_encoder0050.setPipeline(render_pipeline001);
    render_pass_encoder0021.setStencilReference(1);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.pushDebugGroup("group_marker");
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.insertDebugMarker("marker");
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.submit([]);
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0041.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder003.insertDebugMarker("marker");
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.finish();
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.setPipeline(render_pipeline003);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    buffer0011.destroy()
    texture000.destroy();
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setVertexBuffer(0, buffer0011);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0040.pushDebugGroup("group_marker");
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group005);
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    buffer0012.destroy()
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer0010.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0010.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0010.unmap();
        console.log(new Float32Array(data));
    }
    
    render_pass_encoder0050.insertDebugMarker("marker");
    render_bundle_encoder004.insertDebugMarker("marker");
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0004,
            },
        ],
        occlusionQuerySet: query002
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0011.insertDebugMarker("marker");
    render_bundle_encoder002.setPipeline(render_pipeline002);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const render_pass_encoder0012 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: query001
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0031.popDebugGroup();
    buffer003.destroy()
    command_encoder005.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0021.setStencilReference(1);
    
    render_pass_encoder0020.setStencilReference(1);
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    render_pass_encoder0041.insertDebugMarker("marker");
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0041.setStencilReference(1);
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group006);
    
    render_pass_encoder0031.setStencilReference(1);
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer001.destroy()
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0011.setStencilReference(1);
    
    buffer0011.destroy()
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
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    buffer009.destroy()
    
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder003.popDebugGroup();
    device20.pushErrorScope("internal");
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0051.beginOcclusionQuery(0)
    buffer0015.destroy()
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0012.setPipeline(render_pipeline005);
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
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setStencilReference(1);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer0014,
        0
    )
    render_pass_encoder0051.pushDebugGroup("group_marker");
    query000.destroy()
    command_encoder004.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    device00.queue.writeBuffer(buffer007, 0, array3, 0, array3.length);
    render_pass_encoder0031.setStencilReference(1);
    render_pass_encoder0012.setStencilReference(1);
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder0021.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0021.setVertexBuffer(0, buffer0011);
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture002
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
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder002.copyBufferToBuffer(
        buffer005,
        0,
        buffer003,
        0,
        400
    );
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0001.pushDebugGroup("group_marker");
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout003,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0041.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0050.pushDebugGroup("group_marker");
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder003.insertDebugMarker("marker");
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
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

    render_bundle_encoder003.setBindGroup(0, bind_group007);
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0030.drawIndirect(buffer005, 0);
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    buffer0017.destroy()
    render_pass_encoder0050.setStencilReference(1);
    
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0041.setStencilReference(1);
    render_pass_encoder0020.setStencilReference(1);
    {
        await buffer0014.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0014.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0014.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0021.draw(3);
    render_pass_encoder0051.setPipeline(render_pipeline004);
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.pushDebugGroup("group_marker");
    
    
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0012.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder001.copyBufferToBuffer(
        buffer0013,
        0,
        buffer008,
        0,
        400
    );
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer005.destroy()
    render_pass_encoder0021.popDebugGroup();
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout004,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.popDebugGroup();
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout003,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    render_bundle_encoder003.insertDebugMarker("marker");
    command_encoder003.insertDebugMarker("mymarker");
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout001,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0051.popDebugGroup();
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
    
    render_pass_encoder0012.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
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
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder000.setVertexBuffer(0, buffer003);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeBuffer(buffer0016, 0, array0, 0, array0.length);
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
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout000,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.draw(3);
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.popDebugGroup();
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
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0051.setBindGroup(0, bind_group008);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0051.setVertexBuffer(0, buffer0019);
    render_pass_encoder0051.drawIndirect(buffer003, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0011.setVertexBuffer(0, buffer002);
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group009);
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group0010);
    render_pass_encoder0021.popDebugGroup();
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
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group0011);
    render_pass_encoder0021.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0031.setVertexBuffer(0, buffer0015);
    render_pass_encoder0011.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
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
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
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

    render_pass_encoder0040.setBindGroup(0, bind_group0012);
    render_pass_encoder0000.setVertexBuffer(0, buffer0026);
    render_pass_encoder0030.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0000.draw(3);
    render_pass_encoder0040.setVertexBuffer(0, buffer0027);
    render_pass_encoder0031.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0011.end();
    render_pass_encoder0051.drawIndirect(buffer0015, 0);
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
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group0013);
    render_pass_encoder0050.setVertexBuffer(0, buffer0029);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0018, 0);
    render_pass_encoder0041.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.setVertexBuffer(0, buffer0029);
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0010.setVertexBuffer(0, buffer0022);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0031.end();
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    render_pass_encoder0031.drawIndirect(buffer0027, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0050.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer008, "uint16");
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
    
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0012.setBindGroup(0, bind_group0014);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0041.end();
    render_pass_encoder0050.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0020.end();
    render_pass_encoder0012.setVertexBuffer(0, buffer0015);
    render_pass_encoder0000.end();
    render_pass_encoder0010.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0012.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0022, 0);
    render_pass_encoder0012.draw(3);
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndirect(buffer0027, 0);
    command_encoder003.popDebugGroup()
    render_pass_encoder0041.draw(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0051.drawIndirect(buffer008, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0041.draw(3);
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0011.end();
    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0033,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group0015);
    render_pass_encoder0012.end();
    render_pass_encoder0040.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0024, 0);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0020.setIndexBuffer(buffer0031, "uint16");
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0001.setVertexBuffer(0, buffer001);
    render_pass_encoder0001.drawIndirect(buffer001, 0);
    render_pass_encoder0010.drawIndirect(buffer0010, 0);
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0021.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    render_pass_encoder0051.drawIndirect(buffer0024, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0020.draw(3);
    render_pass_encoder0001.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer009, "uint16");
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    command_encoder000.popDebugGroup()
    render_pass_encoder0012.drawIndirect(buffer000, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0030.end();
    render_pass_encoder0010.end();
    command_encoder001.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer0013, 0);
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.setIndexBuffer(buffer003, "uint16");
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0010.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0023, 0);
    render_pass_encoder0012.drawIndirect(buffer004, 0);
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0027, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0001.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer000, 0);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0012.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0041.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0050.drawIndirect(buffer000, 0);
    render_pass_encoder0041.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0050.draw(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer001, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0020.end();
    render_pass_encoder0011.drawIndirect(buffer000, 0);
    render_pass_encoder0041.drawIndirect(buffer004, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer008, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer007, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0050.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0050.end();
    render_pass_encoder0001.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0032, "uint16");
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer005, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0012.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0041.draw(3);
    render_pass_encoder0011.end();
    render_pass_encoder0030.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0031.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0013, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0030.end();
    render_pass_encoder0050.drawIndirect(buffer006, 0);
    render_pass_encoder0012.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0051.drawIndirect(buffer009, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0000.popDebugGroup();
}