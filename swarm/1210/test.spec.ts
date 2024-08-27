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
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([0.75, -1.0, 0.25, -0.75, -0.5, -0.5, 0.0, -0.25, -1.0, -0.5, 0.25, 0.5, 0.25, 1.0, -0.25, 0.5, 0.25, 0.75, 1.0, -1.0, 0.25, 0.75, 0.0, -0.5, 0.25, 0.0, 0.75, -0.25, -0.5, -1.0, -1.0, -0.25, -0.5, -1.0, -0.75, 0.25, 0.5, -0.25, -0.5, -0.5, 1.0, 0.25, 0.75, 0.5, 0.5, 0.0, 0.0, -0.5, 0.5, -1.0, -0.5, 0.25, 0.0, 0.5, 0.5, 0.0, -1.0, 0.25, -1.0, -0.25, 0.75, -1.0, 1.0, -1.0, -0.5, 0.75, 0.5, -1.0, 0.25, 0.75, 0.25, 0.5, 0.0, -0.5, 0.75, 0.5, -1.0, -1.0, 1.0, -0.5, 0.0, 0.0, -0.25, 0.5, 0.75, -1.0, 0.5, -1.0, 0.25, 0.0, 1.0, 0.5, -0.5, -0.75, -0.75, -0.5, -0.25, 0.0, -0.5, -0.5, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
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
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.insertDebugMarker("mymarker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
    
    const command_buffer101 = command_encoder101.finish();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    buffer000.destroy()
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device10.destroy();
    query000.destroy()
    
    const array1 = new Float32Array([0.75, 0.5, 1.0, 1.0, -0.5, 1.0, -1.0, 1.0, 0.5, 0.0, -0.25, -1.0, -0.75, 0.75, -0.75, 0.25, -0.5, 0.25, -1.0, -0.25, -1.0, 0.25, -0.5, 0.5, -0.5, 0.0, -0.5, 0.25, 0.75, -0.5, -0.5, 0.5, -0.5, 0.0, 0.5, -0.25, 0.75, -0.5, -0.5, 0.75, 0.0, 0.0, -0.25, 0.25, 0.0, 0.5, -0.75, -0.5, -1.0, 0.5, 0.5, 0.25, -0.5, 0.25, 0.0, -1.0, 0.0, 0.0, -0.75, -0.5, -0.25, 0.75, -1.0, 0.25, -0.5, -1.0, 0.75, 1.0, -1.0, -0.25, -1.0, 0.75, -0.5, 0.25, 0.25, -0.25, -1.0, -1.0, -0.25, 0.25, -0.5, 0.75, -0.25, 1.0, -0.5, -0.75, -0.75, 0.0, 0.75, 1.0, -0.25, 1.0, 0.25, 0.25, -0.25, -0.25, 1.0, -0.25, 1.0, 0.75, ]);
    
    command_encoder100.insertDebugMarker("mymarker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_buffer000 = command_encoder000.finish();
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
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
        occlusionQuerySet: query000
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
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
        occlusionQuerySet: query000
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    texture001.destroy();
    query000.destroy()
    
    command_encoder001.insertDebugMarker("mymarker");
    render_pass_encoder0021.insertDebugMarker("marker");
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.beginOcclusionQuery(0)
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    texture000.destroy();
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_pass_encoder0020.popDebugGroup();
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0021.insertDebugMarker("marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
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
        occlusionQuerySet: query002
    });
    render_pass_encoder0010.beginOcclusionQuery(1)
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0021.pushDebugGroup("group_marker");
    
    
    render_pass_encoder0020.endOcclusionQuery()
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
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
    render_pass_encoder0040.pushDebugGroup("group_marker");
    buffer100.destroy()
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
        occlusionQuerySet: undefined
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const texture_view0033 = texture003.createView({ label: "texture_view0033" });
    render_pass_encoder0050.beginOcclusionQuery(0)
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.setStencilReference(1);
    
    render_pass_encoder0010.setStencilReference(1);
    
    
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
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
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
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
    render_pass_encoder0041.setPipeline(render_pipeline000);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0041.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    render_pass_encoder0040.beginOcclusionQuery(0)
    render_pass_encoder0021.popDebugGroup();
    
    render_pass_encoder0030.setPipeline(render_pipeline000);
    const render_pass_encoder0042 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0042",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0033,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0021.pushDebugGroup("group_marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0050.pushDebugGroup("group_marker");
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
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
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
    texture201.destroy();
    render_pass_encoder0041.setStencilReference(1);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder0031.insertDebugMarker("marker");
    render_pass_encoder0010.endOcclusionQuery()
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0041.setStencilReference(1);
    render_pass_encoder0041.setStencilReference(1);
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    render_pass_encoder0030.setStencilReference(1);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0051.pushDebugGroup("group_marker");
    const render_pass_encoder0043 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0043",
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
    const render_pass_encoder0032 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query003
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0042.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0041.pushDebugGroup("group_marker");
    
    const array2 = new Float32Array([0.75, -0.75, 0.0, 1.0, 0.75, 0.25, 0.5, -1.0, 0.0, 0.75, -0.5, 0.5, -0.25, -1.0, -1.0, 1.0, 1.0, -0.75, -1.0, -1.0, 0.5, 0.0, 0.5, -0.5, 0.25, 1.0, -1.0, 0.5, 0.5, -0.5, -0.25, 1.0, -0.5, -0.75, 0.75, -1.0, -1.0, -1.0, 0.25, 0.25, 0.0, -0.25, -1.0, -0.75, 1.0, 1.0, 0.0, -0.5, -0.75, -1.0, -0.5, 0.0, 0.25, -1.0, 1.0, 0.75, -0.75, 1.0, 1.0, 0.75, -0.75, 0.75, -1.0, -0.5, 1.0, -1.0, 0.75, 0.0, -0.25, 0.75, 0.75, 1.0, 0.0, -0.75, 0.25, 0.0, 1.0, 0.75, -0.25, 0.25, 0.25, -0.5, 0.5, 0.75, 1.0, -0.5, -1.0, 0.5, 0.75, 0.0, 0.25, -0.25, -0.25, 0.5, 0.0, -0.5, -0.25, 0.25, 0.0, -1.0, ]);
    render_pass_encoder0010.endOcclusionQuery()
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pass_encoder0033 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0033",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query003
    });
    render_pass_encoder0040.setPipeline(render_pipeline000);
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    render_pass_encoder0050.insertDebugMarker("marker");
    
    
    render_pass_encoder0010.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0031.pushDebugGroup("group_marker");
    render_pass_encoder0031.setPipeline(render_pipeline001);
    render_pass_encoder0042.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0040.insertDebugMarker("marker");
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0033,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.pushDebugGroup("group_marker");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const render_pass_encoder0052 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0052",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0040.endOcclusionQuery()
    
    const texture_view0034 = texture003.createView({ label: "texture_view0034" });
    texture201.destroy();
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
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0051.setPipeline(render_pipeline002);
    
    render_pass_encoder0052.setStencilReference(1);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0021.insertDebugMarker("marker");
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0043.insertDebugMarker("marker");
    render_pass_encoder0033.insertDebugMarker("marker");
    render_pass_encoder0042.insertDebugMarker("marker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0033.insertDebugMarker("marker");
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0011.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0043.setPipeline(render_pipeline001);
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder0033.setPipeline(render_pipeline001);
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    render_pass_encoder0021.setPipeline(render_pipeline002);
    
    
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0033.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0032.setPipeline(render_pipeline002);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0043.pushDebugGroup("group_marker");
    const texture_view0035 = texture003.createView({ label: "texture_view0035" });
    render_pass_encoder0051.beginOcclusionQuery(0)
    
    render_pass_encoder0033.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0032.insertDebugMarker("marker");
    render_pass_encoder0052.setStencilReference(1);
    buffer001.destroy()
    render_pass_encoder0032.pushDebugGroup("group_marker");
    render_pass_encoder0043.beginOcclusionQuery(1)
    render_pass_encoder0050.endOcclusionQuery()
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0032.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_pass_encoder0042.setPipeline(render_pipeline000);
    
    render_pass_encoder0011.setPipeline(render_pipeline001);
    render_pass_encoder0011.setStencilReference(1);
    texture004.destroy();
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_pass_encoder0050.setPipeline(render_pipeline001);
    render_pass_encoder0020.setPipeline(render_pipeline001);
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0052.insertDebugMarker("marker");
    
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
    render_pass_encoder0043.setStencilReference(1);
    render_pass_encoder0051.insertDebugMarker("marker");
    render_pass_encoder0010.setPipeline(render_pipeline002);
    
    const array3 = new Float32Array([-0.25, -1.0, 0.25, 0.75, 1.0, 0.75, 1.0, -0.25, -0.5, -0.5, -0.75, 0.25, -0.75, -0.75, -0.5, 0.25, -0.5, 0.25, 0.5, -1.0, -0.25, 0.0, 1.0, -0.5, 0.75, 0.5, 0.25, 0.75, -0.75, -0.75, -0.25, -1.0, 0.5, -0.5, 0.75, 0.5, 0.0, 0.0, 0.0, -0.75, 0.25, 0.0, -0.75, -0.75, 0.75, 0.5, -1.0, -0.75, 0.5, 0.5, 0.25, 0.5, 0.75, 0.0, -0.5, -0.5, 1.0, -0.75, 0.75, -0.75, 1.0, 0.5, 0.75, -0.75, -0.25, 0.5, 0.25, -1.0, 1.0, 0.5, -0.75, 1.0, 0.75, 1.0, 0.25, -0.75, 0.25, 1.0, -1.0, 0.0, 1.0, -0.75, -0.25, 0.0, 1.0, -0.75, -0.75, 0.5, 0.5, 0.0, 0.0, 0.25, -0.5, -0.75, -0.75, -0.75, -0.75, 0.75, 0.5, 0.5, ]);
    
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0011.setStencilReference(1);
    const render_pass_encoder0012 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0032,
            },
        ],
        occlusionQuerySet: query003
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
    render_pass_encoder0052.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0050.pushDebugGroup("group_marker");
    
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
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
    render_pass_encoder0042.pushDebugGroup("group_marker");
    
    render_pass_encoder0042.popDebugGroup();
    
    texture200.destroy();
    render_pass_encoder0052.setPipeline(render_pipeline001);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0043.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    render_pass_encoder0051.setStencilReference(1);
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder0012.setPipeline(render_pipeline000);
    buffer002.destroy()
    render_pass_encoder0010.insertDebugMarker("marker");
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
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    render_pass_encoder0040.popDebugGroup();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    render_pass_encoder0052.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder0032.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    compute_pass_encoder0050.insertDebugMarker("marker")
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0033.insertDebugMarker("marker");
    render_pass_encoder0030.setStencilReference(1);
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_pass_encoder0040.pushDebugGroup("group_marker");
    compute_pass_encoder0050.insertDebugMarker("marker")
    render_pass_encoder0032.insertDebugMarker("marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0032.beginOcclusionQuery(1)
    render_pass_encoder0050.setStencilReference(1);
    const array4 = new Float32Array([-0.5, -0.75, -1.0, 0.5, 0.75, -1.0, -0.75, -0.75, -0.75, -0.75, 0.25, 1.0, -1.0, 0.5, 0.0, 0.75, 0.0, -0.75, 0.0, 0.5, -0.25, -0.5, -0.5, 0.75, -0.5, -0.25, -0.75, 0.0, -1.0, 0.25, -1.0, 1.0, -0.25, -0.25, 0.5, -1.0, 0.25, -0.75, 1.0, 0.5, 0.75, -0.5, 1.0, -0.5, 0.25, 0.0, -0.5, 0.75, 1.0, -0.5, 1.0, -0.75, -0.5, -1.0, 0.0, 0.5, 1.0, 0.75, 0.5, 0.5, 0.0, -0.5, 0.25, -0.75, -0.75, -0.25, -0.75, 0.5, 1.0, -0.5, 0.0, 0.25, -1.0, 0.75, 0.5, -0.75, -1.0, 0.0, -0.75, -1.0, 0.5, 1.0, 0.75, -0.5, 0.5, -0.25, 0.5, -0.75, -1.0, -0.5, 1.0, -0.5, 0.75, -1.0, -0.5, 0.0, -0.5, 0.75, -0.25, 0.25, ]);
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
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0033.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    render_pass_encoder0012.pushDebugGroup("group_marker");
    render_pass_encoder0010.popDebugGroup();
    texture002.destroy();
    
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0020.pushDebugGroup("group_marker");
    query001.destroy()
    
    render_pass_encoder0031.insertDebugMarker("marker");
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    query000.destroy()
    query000.destroy()
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0052.setStencilReference(1);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    command_encoder005.copyTextureToBuffer(
        {
            texture: texture004
        },
        {
            buffer: buffer006
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer200.destroy()
    render_pass_encoder0041.pushDebugGroup("group_marker");
    const render_pass_encoder0044 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0044",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query003
    });
    compute_pass_encoder0020.setPipeline(compute_pipeline001);
    render_pass_encoder0044.pushDebugGroup("group_marker");
    compute_pass_encoder0050.insertDebugMarker("marker")
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const render_pass_encoder0013 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0013",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0022,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0032.setStencilReference(1);
    
    render_pass_encoder0042.setStencilReference(1);
    render_pass_encoder0044.setPipeline(render_pipeline000);
    render_bundle_encoder000.setVertexBuffer(0, buffer000);
    render_pass_encoder0040.setStencilReference(1);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout005]
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    render_bundle_encoder000.drawIndirect(buffer000, 0);
    
    render_pass_encoder0032.setStencilReference(1);
    render_pass_encoder0013.setPipeline(render_pipeline000);
    render_pass_encoder0011.pushDebugGroup("group_marker");
    render_pass_encoder0051.setStencilReference(1);
    render_pass_encoder0012.beginOcclusionQuery(1)
    render_pass_encoder0033.insertDebugMarker("marker");
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0043.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group002);
    render_pass_encoder0052.setStencilReference(1);
    render_pass_encoder0032.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0050.setPipeline(compute_pipeline001);
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    buffer008.destroy()
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.popDebugGroup();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_pass_encoder0032.pushDebugGroup("group_marker");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder0051.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    buffer201.destroy()
    render_pass_encoder0033.setStencilReference(1);
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    render_pass_encoder0044.setStencilReference(1);
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0051.insertDebugMarker("marker");
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder0012.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    compute_pass_encoder0050.insertDebugMarker("marker")
    query000.destroy()
    
    render_pass_encoder0032.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder005.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder0052.setStencilReference(1);
    render_pass_encoder0041.setStencilReference(1);
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    device20.destroy();
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder0050.setStencilReference(1);
    
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    compute_pass_encoder0030.setPipeline(compute_pipeline000);
    command_encoder001.insertDebugMarker("mymarker");
    render_pass_encoder0032.endOcclusionQuery()
    render_pass_encoder0033.beginOcclusionQuery(1)
    const render_pass_encoder0022 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query003
    });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    render_pass_encoder0051.insertDebugMarker("marker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_pass_encoder0012.setStencilReference(1);
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_pass_encoder0032.setStencilReference(1);
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

    compute_pass_encoder0050.setBindGroup(0, bind_group003);
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    const render_pass_encoder0023 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0023",
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
    render_pass_encoder0052.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0023.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0023.setPipeline(render_pipeline002);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0044.popDebugGroup();
    render_pass_encoder0013.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0012.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0011.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0040.popDebugGroup();
    buffer0010.destroy()
    render_pass_encoder0040.beginOcclusionQuery(2)
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    
    render_pass_encoder0033.popDebugGroup();
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout005]
    });
    compute_pass_encoder0050.dispatchWorkgroups(100);
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    
    buffer003.destroy()
    const render_pass_encoder0014 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0014",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0035,
            },
        ],
        occlusionQuerySet: query003
    });
    render_pass_encoder0032.setStencilReference(1);
    const texture_view0036 = texture003.createView({ label: "texture_view0036" });
    
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer006,
        0
    )
    render_pass_encoder0022.setPipeline(render_pipeline004);
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.setPipeline(render_pipeline0010);
    render_pass_encoder0042.setStencilReference(1);
    render_pass_encoder0043.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder0014.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0014.setPipeline(render_pipeline008);
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0043.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0021.setStencilReference(1);
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer008.destroy()
    render_pass_encoder0033.endOcclusionQuery()
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0012.insertDebugMarker("marker");
    render_pass_encoder0051.setStencilReference(1);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0033.insertDebugMarker("marker");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0042.setStencilReference(1);
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0031.pushDebugGroup("group_marker");
    render_bundle_encoder001.setVertexBuffer(0, buffer006);
    const array5 = new Float32Array([-0.25, -0.75, 0.5, -1.0, 1.0, 0.0, 0.25, -0.75, 0.0, -1.0, -0.75, -0.75, 0.75, -0.75, 0.25, 0.25, 0.5, -0.75, -0.75, -1.0, -1.0, -0.5, -1.0, 0.0, 0.75, -0.25, 1.0, -0.5, -0.25, 1.0, 0.0, 0.0, 1.0, 0.0, -0.5, 1.0, -0.25, -0.5, 1.0, -0.25, 0.5, 0.0, -0.75, 1.0, -0.5, -1.0, 0.0, 0.75, 1.0, -0.5, 0.5, -0.5, -1.0, -0.75, -0.5, -0.75, 0.25, 1.0, -0.5, -0.75, -0.5, -0.5, -0.75, -1.0, 0.5, 0.25, -0.5, 0.0, -0.75, -0.75, -1.0, 0.75, 0.25, -1.0, -0.5, 0.0, -0.25, -0.25, 0.0, 0.25, 0.5, 0.5, 0.75, 0.5, 1.0, -0.75, -1.0, -0.75, -0.75, 0.75, -0.75, 1.0, -0.5, 0.75, -1.0, 1.0, 0.5, 0.25, -0.5, -0.5, ]);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0020.end();
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0012.popDebugGroup();
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
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group004);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
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
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group005);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0012.endOcclusionQuery()
    compute_pass_encoder0050.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
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
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group006);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0014.popDebugGroup();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder0030.end();
    compute_pass_encoder0030.end();
    render_pass_encoder0033.popDebugGroup();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    const command_buffer005 = command_encoder005.finish();
    compute_pass_encoder0050.end();
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0044.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0052.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0012.popDebugGroup();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    const command_buffer003 = command_encoder003.finish();
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
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group007);
    compute_pass_encoder0030.dispatchWorkgroups(100);
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
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group008);
    render_pass_encoder0031.popDebugGroup();
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
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group009);
    compute_pass_encoder0050.end();
    compute_pass_encoder0030.popDebugGroup()
}