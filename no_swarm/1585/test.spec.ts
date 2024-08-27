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
    const array0 = new Float32Array([0.0, -0.25, -0.5, 0.75, 0.5, -0.25, -0.25, -0.25, 0.5, -0.5, -0.25, 0.25, -1.0, -1.0, -0.5, 0.0, 0.25, 0.75, 0.25, -0.75, -0.75, 0.0, -1.0, -1.0, -0.75, 0.5, 0.75, 0.5, 0.5, 1.0, 0.0, 0.0, 0.0, -0.75, 0.5, 0.5, 0.5, 0.0, 0.25, 0.25, -0.5, 0.25, -0.25, 0.0, 0.75, -0.75, 0.0, 0.0, -1.0, -0.25, -0.75, 0.0, 1.0, -1.0, 1.0, 1.0, -0.75, -0.75, 0.75, -1.0, 0.75, -0.5, 0.5, 0.5, 0.25, 0.25, -0.25, 0.25, 1.0, -0.25, 1.0, -0.75, -0.5, -0.75, 0.75, 1.0, 0.75, 0.5, -0.75, -0.75, -0.75, 0.75, 0.0, 1.0, 0.25, -1.0, -0.75, -0.25, -0.75, -1.0, -0.75, 0.25, 0.5, -0.5, 0.0, -1.0, 0.0, -0.25, -1.0, 0.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([-1.0, 0.75, -0.5, -0.25, -0.75, 0.75, 0.25, 0.25, 1.0, 0.5, 0.5, 1.0, 0.0, 0.25, -0.25, 0.0, -0.25, -0.75, -0.5, -0.75, 0.5, 0.75, 0.75, -0.5, 0.0, 0.25, 0.0, 0.75, 0.0, 0.25, -1.0, 0.0, -1.0, 1.0, 0.75, 1.0, 0.25, 0.0, 0.5, 1.0, -0.25, -1.0, 1.0, -1.0, 0.75, 1.0, 0.75, 0.5, -0.25, 0.5, 0.25, 0.0, 0.25, -0.5, -0.5, -1.0, -0.5, 0.5, 0.0, 0.0, 0.0, 1.0, -1.0, 0.5, -1.0, -0.75, -1.0, 0.0, 1.0, 0.75, 1.0, 1.0, -1.0, -0.5, -0.25, -1.0, -0.5, 0.0, -0.25, -0.5, -1.0, -0.25, -1.0, -0.75, -0.5, -0.25, 0.5, 0.0, 0.75, 0.75, -1.0, 0.75, -1.0, 0.25, -0.5, 0.75, -0.75, 0.0, -1.0, 1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    device20.pushErrorScope("out-of-memory");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const array2 = new Float32Array([1.0, 0.5, -0.75, -0.25, -0.5, 0.75, -0.5, -0.25, 0.0, 1.0, 0.5, 0.0, 0.5, 0.25, 0.0, -1.0, 0.75, 0.5, -0.25, 1.0, -0.5, -0.75, -0.5, 1.0, -0.5, 0.0, -1.0, -0.75, 0.0, 0.0, -0.5, 0.0, -1.0, 0.5, -1.0, -0.5, -0.75, 1.0, 0.25, 0.0, -0.75, -1.0, -1.0, -0.25, 0.0, 0.25, 0.5, -0.75, -0.75, 0.25, -0.75, -0.75, -0.25, -0.75, 0.5, 0.5, 0.75, -1.0, 0.75, -0.5, -0.25, -0.5, 0.5, -0.25, 1.0, 0.75, -0.5, -1.0, 0.75, -0.25, -0.25, -0.75, -1.0, -0.5, 0.25, -0.25, -0.25, 0.5, -0.5, 0.75, -0.25, 0.5, -0.5, -1.0, 0.5, -1.0, -0.75, -0.25, -0.5, 0.75, 0.5, -0.25, 1.0, 0.0, 0.5, 0.75, 0.0, 0.0, 1.0, 0.75, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device30.queue.submit([]);
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2001.insertDebugMarker("marker");
    render_pass_encoder2001.setStencilReference(1);
    
    query201.destroy()
    render_pass_encoder2001.beginOcclusionQuery(0)
    render_pass_encoder2000.executeBundles([])
    
    render_pass_encoder2001.setStencilReference(1);
    render_pass_encoder2001.executeBundles([])
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2001.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
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
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2001.executeBundles([])
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    render_pass_encoder2001.endOcclusionQuery()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
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
    device00.destroy();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder2000.executeBundles([])
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query201.destroy()
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    texture201.destroy();
    const command_buffer300 = command_encoder300.finish();
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
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2000.executeBundles([])
    
    
    
    render_pass_encoder2001.pushDebugGroup("group_marker");
    
    const array3 = new Float32Array([0.0, -1.0, -0.75, 0.75, -0.25, 0.5, 0.0, 0.25, 0.75, 1.0, 0.0, -0.25, -0.5, -0.75, 0.0, 0.25, 0.5, 1.0, -0.5, -0.25, 1.0, 0.25, -0.75, -0.25, 0.5, -1.0, 0.25, -0.25, 0.5, 0.75, -0.75, 0.0, -0.25, -1.0, 0.0, 0.5, -0.25, 0.75, -0.75, -0.25, 0.25, 0.0, 1.0, 1.0, -1.0, -0.25, -0.25, 0.25, -0.75, -0.5, -0.5, 0.0, -0.5, -0.25, 0.0, 1.0, 0.75, 1.0, 0.5, 0.25, 1.0, 1.0, 0.0, 0.75, 0.0, -1.0, -0.25, -0.5, 0.5, -0.5, -0.5, -0.75, -0.25, -0.5, 0.25, 0.5, -0.25, 0.0, -1.0, 0.25, -0.25, 0.25, 0.5, -0.75, -0.75, -1.0, -1.0, 0.0, -0.5, 0.25, -1.0, 0.0, 0.5, -0.5, 0.0, -0.25, -0.25, 0.75, 0.25, -1.0, ]);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    texture202.destroy();
    query200.destroy()
    render_pass_encoder2001.setStencilReference(1);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query203.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder2000.executeBundles([render_bundle_encoder201, ])
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    query202.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    render_pass_encoder2001.insertDebugMarker("marker");
    render_pass_encoder2001.setStencilReference(1);
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_buffer301 = command_encoder301.finish();
    render_bundle_encoder201.insertDebugMarker("marker");
    
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2001.setStencilReference(1);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2001.popDebugGroup();
    buffer200.destroy()
    
    const array4 = new Float32Array([0.25, -1.0, -0.5, 0.5, 0.5, -0.75, 0.0, -1.0, 1.0, -1.0, -1.0, -1.0, 0.0, -1.0, -1.0, 0.75, -0.25, 0.0, -0.25, -0.5, 0.0, 0.0, 0.75, -1.0, -0.75, 0.0, 0.25, -0.5, -1.0, -0.5, 0.5, 0.5, -1.0, 0.75, -0.25, 0.25, 0.5, -0.5, -1.0, 1.0, -0.5, -0.5, 1.0, -1.0, -0.5, 0.5, 1.0, 0.75, 0.0, -0.25, 0.25, -1.0, -0.5, 0.0, 0.5, 0.25, -0.5, -1.0, -0.75, -0.75, -0.25, 0.25, 0.0, -0.5, 0.5, -1.0, -1.0, 0.25, 0.75, 0.75, -0.25, -0.25, -1.0, 0.25, -0.5, -1.0, -1.0, 0.75, -0.75, 0.5, -1.0, -0.25, 0.25, -1.0, 0.25, -0.75, 0.25, 0.5, 0.5, -0.25, 0.25, 0.0, -0.75, 1.0, 0.25, 0.5, 0.25, -0.25, 0.75, -0.25, ]);
    query300.destroy()
    render_bundle_encoder200.popDebugGroup();
    device40.pushErrorScope("out-of-memory");
    
    
    texture200.destroy();
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    query201.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2001.pushDebugGroup("group_marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    texture300.destroy();
    render_pass_encoder2001.executeBundles([])
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device30.pushErrorScope("internal");
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    
    
    
    buffer301.destroy()
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    command_encoder401.pushDebugGroup("mygroupmarker")
    render_pass_encoder2001.executeBundles([])
    device30.queue.submit([command_buffer301, ]);
    
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    texture203.destroy();
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
    const array5 = new Float32Array([0.25, -0.5, -0.5, -0.5, -0.75, -1.0, -1.0, 0.75, 0.5, -0.75, -0.75, 1.0, 0.75, -0.25, 1.0, 0.0, -0.75, 0.25, 0.25, -0.75, 1.0, -0.25, -0.25, -1.0, 1.0, -0.75, 0.5, 0.5, 0.5, -0.5, 0.75, -0.5, -0.5, 0.25, -0.5, -0.5, -1.0, 1.0, -0.5, 1.0, 0.25, 0.5, 0.75, 0.0, 0.75, 1.0, -0.75, -0.5, -0.25, 0.25, 0.75, 0.75, 0.25, 1.0, -0.25, 0.0, 0.25, 0.5, -0.25, 0.25, 0.0, -0.75, 0.5, 0.25, -0.75, 0.5, 0.75, -0.75, 0.5, -1.0, 1.0, -1.0, -1.0, 0.25, -0.5, -1.0, 0.75, -1.0, 0.25, 0.25, -0.25, -0.25, -1.0, -0.5, -0.5, -0.25, 0.0, -0.75, 0.25, 0.5, -0.75, -0.25, 0.0, 0.75, -1.0, 0.5, -0.25, 0.25, 0.5, -0.5, ]);
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.executeBundles([])
    command_encoder401.insertDebugMarker("mymarker");
    command_encoder401.popDebugGroup()
    query202.destroy()
    
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    query300.destroy()
    
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
    query201.destroy()
    
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    device20.queue.submit([command_buffer201, ]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    device20.pushErrorScope("internal");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder401.insertDebugMarker("mymarker");
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    query203.destroy()
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    device00.pushErrorScope("out-of-memory");
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    
    
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("validation");
    compute_pass_encoder4010.setPipeline(compute_pipeline401);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query302.destroy()
    
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder2001.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_pass_encoder2001.popDebugGroup();
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    buffer400.destroy()
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    buffer302.destroy()
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
    const array6 = new Float32Array([-0.75, -1.0, 0.75, 0.25, 0.5, 0.5, -1.0, 0.75, 0.5, -0.25, 0.25, -1.0, -0.75, 0.25, 0.75, -0.5, -0.5, 0.5, 1.0, -0.5, 1.0, -0.75, -0.75, 0.0, -0.5, 0.5, -1.0, 0.75, -1.0, -0.25, -1.0, 0.75, 0.75, 0.5, -0.75, 0.25, -0.25, -0.25, 0.5, 0.75, -0.5, 0.25, -0.25, -0.5, 1.0, 0.0, 0.75, 0.0, 0.25, -0.25, 0.75, -0.25, 0.75, -1.0, 0.75, 0.0, 0.5, 0.75, 1.0, -0.25, 1.0, 0.5, 0.75, 0.0, -0.25, 1.0, -0.75, -0.25, 1.0, -0.25, -1.0, 0.25, -0.25, -0.25, 0.25, -0.25, -0.5, -0.75, -0.75, 0.5, 0.25, -0.75, -1.0, 0.25, 0.25, -0.75, 0.25, -0.5, -0.75, 1.0, -0.25, -0.5, -0.25, 0.0, -0.5, 1.0, -0.75, -0.75, -1.0, 1.0, ]);
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
    
    render_pass_encoder2000.popDebugGroup();
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    buffer201.destroy()
    
    
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.executeBundles([])
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query301.destroy()
    const compute_pass_encoder4021 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4021" });
    buffer303.destroy()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    buffer202.destroy()
    device40.pushErrorScope("validation");
    query203.destroy()
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder202.setPipeline(render_pipeline200);
    compute_pass_encoder4010.insertDebugMarker("marker")
    texture402.destroy();
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    query205.destroy()
    render_bundle_encoder300.popDebugGroup();
    command_encoder400.clearBuffer(buffer401);
    query204.destroy()
    
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4021.setPipeline(compute_pipeline402);
    texture402.destroy();
    
    
    compute_pass_encoder4020.setPipeline(compute_pipeline403);
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    
    query205.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    
    compute_pass_encoder4020.popDebugGroup()
    
    command_encoder402.copyTextureToBuffer(
        {
            texture: texture400
        },
        {
            buffer: buffer401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    const render_pass_encoder2002 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query206
    });
    query205.destroy()
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder301.setPipeline(render_pipeline300);
    command_encoder302.resolveQuerySet(
        query301,
        0,
        32,
        buffer302,
        0
    )
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    compute_pass_encoder4010.insertDebugMarker("marker")
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    query301.destroy()
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_pass_encoder2002.insertDebugMarker("marker");
    
    
    command_encoder400.insertDebugMarker("mymarker");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    query202.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    query303.destroy()
    compute_pass_encoder3020.setPipeline(compute_pipeline301);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    buffer302.destroy()
    render_pass_encoder2000.setPipeline(render_pipeline200);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder401.clearBuffer(buffer401);
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    command_encoder203.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    buffer301.destroy()
    compute_pass_encoder4021.insertDebugMarker("marker")
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    
    command_encoder203.copyTextureToTexture(
        {
            texture: texture200
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device20.queue.submit([command_buffer201, ]);
    command_encoder203.resolveQuerySet(
        query206,
        0,
        32,
        buffer204,
        0
    )
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query300.destroy()
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    device50.pushErrorScope("internal");
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2030.executeBundles([])
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder202.popDebugGroup();
    
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    command_encoder303.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder2020.popDebugGroup()
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    render_pass_encoder2031.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2002.beginOcclusionQuery(0)
    compute_pass_encoder4021.insertDebugMarker("marker")
    buffer305.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    compute_pass_encoder2020.insertDebugMarker("marker")
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder2002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group301);
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    render_pass_encoder2031.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_bundle_encoder300.setVertexBuffer(0, buffer302);
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
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    render_pass_encoder2031.setStencilReference(1);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    texture400.destroy();
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder2030.setPipeline(render_pipeline200);
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder2001.pushDebugGroup("group_marker");
    buffer402.destroy()
    compute_pass_encoder3020.dispatchWorkgroups(100);
    command_encoder400.copyTextureToTexture(
        {
            texture: texture401
        },
        {
            texture: texture402
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder4021.pushDebugGroup("group_marker")
    render_pass_encoder2001.setPipeline(render_pipeline202);
    const render_pass_encoder2003 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2003",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query205
    });
    buffer500.destroy()
    render_bundle_encoder202.setVertexBuffer(0, buffer203);
    query203.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    compute_pass_encoder4021.popDebugGroup()
    
    render_pass_encoder2002.pushDebugGroup("group_marker");
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder2031.setPipeline(render_pipeline202);
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder2002.setPipeline(render_pipeline200);
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    query204.destroy()
    command_encoder202.resolveQuerySet(
        query205,
        0,
        32,
        buffer203,
        0
    )
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer204.destroy()
    render_bundle_encoder300.setIndexBuffer(buffer303, "uint16");
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2003.setPipeline(render_pipeline202);
    compute_pass_encoder3030.setPipeline(compute_pipeline302);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2020.setPipeline(compute_pipeline200);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group302);
    compute_pass_encoder3020.end();
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group203);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4010.popDebugGroup()
    const command_buffer400 = command_encoder400.finish();
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder4021.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder2002.popDebugGroup();
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3010, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3010, 0);
    render_pass_encoder2000.setVertexBuffer(0, buffer205);
    compute_pass_encoder2000.dispatchWorkgroups(100);
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
        layout: compute_pipeline403.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group400);
    device30.queue.submit([command_buffer302, ]);
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
        layout: compute_pipeline402.getBindGroupLayout(0),
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

    compute_pass_encoder4021.setBindGroup(0, bind_group401);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_pass_encoder2031.setBindGroup(0, bind_group204);
    render_pass_encoder2031.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder2031.setVertexBuffer(0, buffer205);
    compute_pass_encoder2000.end();
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    render_pass_encoder2003.setBindGroup(0, bind_group205);
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
        layout: compute_pipeline401.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group402);
    compute_pass_encoder3030.end();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4010, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4010, 0);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
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
        layout: compute_pipeline402.getBindGroupLayout(0),
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

    compute_pass_encoder4021.setBindGroup(0, bind_group403);
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder4021.dispatchWorkgroups(100);
    command_encoder401.popDebugGroup()
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group206);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2003.setVertexBuffer(0, buffer2011);
    compute_pass_encoder3030.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group303);
    render_pass_encoder2030.setVertexBuffer(0, buffer206);
    render_pass_encoder2003.drawIndirect(buffer201, 0);
    command_encoder303.popDebugGroup()
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2015, 0);
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group207);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder2020.popDebugGroup()
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
        layout: compute_pipeline401.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group404);
    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2021,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group208);
    compute_pass_encoder4021.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2003.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2001.setVertexBuffer(0, buffer205);
    render_pass_encoder2003.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2002.endOcclusionQuery()
    render_pass_encoder2001.drawIndirect(buffer2017, 0);
    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2023,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group209);
    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2025,
                },
            },
        ],
    });

    render_pass_encoder2002.setBindGroup(0, bind_group2010);
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder2002.setVertexBuffer(0, buffer209);
    compute_pass_encoder2000.end();
    render_pass_encoder2002.drawIndirect(buffer204, 0);
    render_pass_encoder2003.setIndexBuffer(buffer2017, "uint16");
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2031.end();
    compute_pass_encoder2000.end();
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder2002.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2002.end();
    render_pass_encoder2030.draw(3);
    compute_pass_encoder4020.end();
    compute_pass_encoder2000.end();
    render_pass_encoder2000.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer202, 0);
    render_pass_encoder2003.setIndexBuffer(buffer2024, "uint16");
    device30.queue.submit([command_buffer303, ]);
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder2001.setIndexBuffer(buffer204, "uint16");
    compute_pass_encoder4021.dispatchWorkgroups(100);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2001.end();
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder3020.popDebugGroup()
    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2027,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2011);
    compute_pass_encoder2020.end();
    render_pass_encoder2002.end();
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group304);
    render_pass_encoder2000.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2030.end();
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder2020.end();
    device20.queue.submit([]);
    render_pass_encoder2002.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2003.end();
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2020.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2002.end();
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
        layout: compute_pipeline401.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group405);
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3016,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group305);
    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4018,
                },
            },
        ],
    });

    compute_pass_encoder4021.setBindGroup(0, bind_group406);
    render_pass_encoder2003.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2021, "uint16");
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder4010.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2028, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2028, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2031.drawIndirect(buffer2028, 0);
    compute_pass_encoder3030.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2030,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2012);
    render_pass_encoder2002.draw(3);
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder2001.drawIndexedIndirect(buffer2025, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder3030.popDebugGroup()
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4019, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4019, 0);
    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4021,
                },
            },
        ],
    });

    compute_pass_encoder4021.setBindGroup(0, bind_group407);
    render_pass_encoder2003.drawIndexed(3);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder2020.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2031.setIndexBuffer(buffer2016, "uint16");
    device30.queue.submit([]);
    device50.queue.submit([command_buffer500, ]);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4020.end();
    render_pass_encoder2002.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2002.popDebugGroup();
    compute_pass_encoder4021.dispatchWorkgroups(100);
    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4023,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group408);
    render_pass_encoder2003.drawIndirect(buffer2023, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2031.end();
    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4025,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group409);
    compute_pass_encoder3030.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2003.drawIndexed(3);
    compute_pass_encoder2020.end();
    render_pass_encoder2001.drawIndexed(3);
    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2032,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2013);
    render_pass_encoder2001.end();
    render_pass_encoder2031.drawIndexed(3);
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3018,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group306);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2001.end();
    render_pass_encoder2000.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2003.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2033, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2033, 0);
    render_pass_encoder2002.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder3030.end();
    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2035,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2014);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2003.popDebugGroup();
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3019, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3019, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2002.drawIndexedIndirect(buffer2025, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2000.draw(3);
    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3021,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group307);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2031.drawIndexedIndirect(buffer2028, 0);
    device40.queue.submit([command_buffer400, ]);
    device30.queue.submit([]);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder2002.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2030.drawIndirect(buffer204, 0);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder2020.end();
    render_pass_encoder2030.draw(3);
    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4027,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4010);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3022, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3022, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2030.drawIndirect(buffer2030, 0);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2003.drawIndirect(buffer2033, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2022, "uint16");
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder2003.endOcclusionQuery()
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2036, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2036, 0);
    render_pass_encoder2031.setIndexBuffer(buffer207, "uint16");
    device20.queue.submit([]);
    device50.queue.submit([]);
    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3024,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group308);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2030.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2012, 0);
    render_pass_encoder2031.drawIndirect(buffer2030, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2000.draw(3);
    const uint32_4021 = new Uint32Array(3);

    uint32_4021[0] = 100;
    uint32_4021[1] = 1;
    uint32_4021[2] = 1;

    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4028, 0, uint32_4021, 0, uint32_4021.length);

    compute_pass_encoder4021.dispatchWorkgroupsIndirect(buffer4028, 0);
    render_pass_encoder2002.drawIndirect(buffer2027, 0);
    compute_pass_encoder3030.end();
    render_pass_encoder2030.draw(3);
    render_pass_encoder2001.drawIndirect(buffer2033, 0);
    render_pass_encoder2003.end();
    compute_pass_encoder4021.popDebugGroup()
    render_pass_encoder2003.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2001.drawIndirect(buffer2021, 0);
    render_pass_encoder2000.drawIndexed(3);
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([command_buffer400, ]);
    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3026,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group309);
    render_pass_encoder2030.setIndexBuffer(buffer206, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2003.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2020, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2033, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2031.popDebugGroup();
    const uint32_4021 = new Uint32Array(3);

    uint32_4021[0] = 100;
    uint32_4021[1] = 1;
    uint32_4021[2] = 1;

    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4029, 0, uint32_4021, 0, uint32_4021.length);

    compute_pass_encoder4021.dispatchWorkgroupsIndirect(buffer4029, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2001.popDebugGroup();
    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2038,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2015);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2002.end();
    compute_pass_encoder4021.dispatchWorkgroups(100);
    render_pass_encoder2031.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2031.drawIndirect(buffer2036, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2001.setIndexBuffer(buffer2035, "uint16");
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4030, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4030, 0);
    compute_pass_encoder4010.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder2030.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2039, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2039, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2036, 0);
    compute_pass_encoder4020.end();
    render_pass_encoder2000.drawIndirect(buffer2029, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2031, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4031, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4031, 0);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder4021.dispatchWorkgroups(100);
    render_pass_encoder2001.end();
    render_pass_encoder2031.end();
    compute_pass_encoder2020.end();
    render_pass_encoder2031.end();
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3027, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3027, 0);
    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2041,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2016);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndirect(buffer2039, 0);
    render_pass_encoder2003.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2030.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2034, "uint16");
    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3029,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3010);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2043,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2017);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2031.drawIndexed(3);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2002.drawIndexedIndirect(buffer2036, 0);
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2002.drawIndexedIndirect(buffer205, 0);
    compute_pass_encoder4021.popDebugGroup()
    render_pass_encoder2000.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2030.drawIndirect(buffer2039, 0);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2036, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2044, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2044, 0);
    render_pass_encoder2003.draw(3);
    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4033 = device40.createBuffer({
        label: "buffer4033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4033,
                },
            },
        ],
    });

    compute_pass_encoder4021.setBindGroup(0, bind_group4011);
    compute_pass_encoder4021.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer2028, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2031.setIndexBuffer(buffer2024, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2000.drawIndirect(buffer2033, 0);
    device30.queue.submit([command_buffer303, ]);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2028, 0);
    const buffer4034 = device40.createBuffer({
        label: "buffer4034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4035 = device40.createBuffer({
        label: "buffer4035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4035,
                },
            },
        ],
    });

    compute_pass_encoder4021.setBindGroup(0, bind_group4012);
    render_pass_encoder2000.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2028, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder2003.draw(3);
    render_pass_encoder2031.drawIndirect(buffer2044, 0);
    render_pass_encoder2002.drawIndirect(buffer2017, 0);
    render_pass_encoder2003.end();
    device30.queue.submit([command_buffer301, ]);
    device20.queue.submit([command_buffer202, ]);
    const buffer4036 = device40.createBuffer({
        label: "buffer4036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4037 = device40.createBuffer({
        label: "buffer4037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4037,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4013);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2002.drawIndirect(buffer2044, 0);
    compute_pass_encoder3030.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder2001.setIndexBuffer(buffer201, "uint16");
    device20.queue.submit([command_buffer200, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer303, ]);
    device30.queue.submit([command_buffer301, ]);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2001.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder4021.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2036, 0);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder2000.popDebugGroup()
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4038 = device40.createBuffer({
        label: "buffer4038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4038, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4038, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2012, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder2002.drawIndirect(buffer2036, 0);
    render_pass_encoder2031.drawIndirect(buffer2041, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2044, 0);
    compute_pass_encoder3030.end();
    render_pass_encoder2001.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2036, 0);
    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3031,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3011);
    render_pass_encoder2002.popDebugGroup();
    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3033,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3012);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2045, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2045, 0);
    render_pass_encoder2031.drawIndirect(buffer2036, 0);
    device30.queue.submit([]);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2044, 0);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder4021.popDebugGroup()
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3034, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3034, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2002.drawIndirect(buffer2036, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder2003.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2002.drawIndirect(buffer2045, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2003.drawIndirect(buffer2018, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2002.drawIndirect(buffer2035, 0);
    render_pass_encoder2002.drawIndirect(buffer2038, 0);
    render_pass_encoder2003.popDebugGroup();
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2002.setIndexBuffer(buffer2024, "uint16");
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([]);
    compute_pass_encoder2000.end();
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2000.end();
    compute_pass_encoder4020.popDebugGroup()
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4039 = device40.createBuffer({
        label: "buffer4039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4039, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4039, 0);
    render_pass_encoder2002.drawIndirect(buffer2044, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2000.end();
    render_pass_encoder2001.setIndexBuffer(buffer2036, "uint16");
    compute_pass_encoder2020.end();
    compute_pass_encoder2000.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder2001.drawIndirect(buffer2031, 0);
    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3036,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3013);
    render_pass_encoder2031.setIndexBuffer(buffer202, "uint16");
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    device30.queue.submit([]);
    render_pass_encoder2000.setIndexBuffer(buffer2044, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2002.drawIndexed(3);
    render_pass_encoder2001.end();
    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3038,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3014);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2029, 0);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4021.end();
    render_pass_encoder2003.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2000.drawIndirect(buffer2040, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder3020.end();
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder4010.end();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4040 = device40.createBuffer({
        label: "buffer4040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4040, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4040, 0);
    render_pass_encoder2003.drawIndexedIndirect(buffer2033, 0);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder4020.end();
    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2047,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2018);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder2000.end();
    device40.queue.submit([]);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3015 = device30.createBindGroup({
        label: "bind_group3015",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3040,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3015);
    render_pass_encoder2001.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2030.drawIndirect(buffer2039, 0);
    compute_pass_encoder4021.dispatchWorkgroups(100);
    render_pass_encoder2002.drawIndirect(buffer2039, 0);
    render_pass_encoder2002.end();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2028, 0);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3041, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3041, 0);
    device40.queue.submit([command_buffer402, ]);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3042 = device30.createBuffer({
        label: "buffer3042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3042, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3042, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder2031.setIndexBuffer(buffer206, "uint16");
    const buffer4041 = device40.createBuffer({
        label: "buffer4041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4042 = device40.createBuffer({
        label: "buffer4042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4014 = device40.createBindGroup({
        label: "bind_group4014",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4042,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4014);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2044, 0);
    render_pass_encoder2031.drawIndirect(buffer2040, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2003.drawIndirect(buffer2045, 0);
    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2049,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2019);
    compute_pass_encoder2000.end();
    device30.queue.submit([]);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder2000.setIndexBuffer(buffer2041, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2031.drawIndirect(buffer2044, 0);
    render_pass_encoder2001.drawIndirect(buffer2033, 0);
    render_pass_encoder2002.drawIndirect(buffer2028, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2003.drawIndirect(buffer2040, 0);
    render_pass_encoder2003.drawIndirect(buffer2036, 0);
    device50.queue.submit([]);
    render_pass_encoder2000.end();
    render_pass_encoder2030.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2002.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2002.drawIndirect(buffer202, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2047, "uint16");
    render_pass_encoder2002.setIndexBuffer(buffer2041, "uint16");
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2031.drawIndexedIndirect(buffer2033, 0);
    device30.queue.submit([command_buffer303, ]);
    device50.queue.submit([]);
    render_pass_encoder2031.drawIndirect(buffer2026, 0);
    render_pass_encoder2003.drawIndirect(buffer209, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2031.drawIndirect(buffer2034, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2001.drawIndirect(buffer2030, 0);
    render_pass_encoder2031.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2030.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2000.drawIndexed(3);
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder3030.end();
    render_pass_encoder2001.drawIndirect(buffer2046, 0);
    compute_pass_encoder3020.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer2022, 0);
    render_pass_encoder2000.drawIndirect(buffer2036, 0);
    const buffer4043 = device40.createBuffer({
        label: "buffer4043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4044 = device40.createBuffer({
        label: "buffer4044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4015 = device40.createBindGroup({
        label: "bind_group4015",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4044,
                },
            },
        ],
    });

    compute_pass_encoder4021.setBindGroup(0, bind_group4015);
    device20.queue.submit([command_buffer201, command_buffer202, command_buffer203, ]);
    device30.queue.submit([command_buffer303, ]);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    compute_pass_encoder2000.end();
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder2001.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2033, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder2003.drawIndirect(buffer200, 0);
    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2051,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2020);
    const buffer3043 = device30.createBuffer({
        label: "buffer3043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3044 = device30.createBuffer({
        label: "buffer3044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3016 = device30.createBindGroup({
        label: "bind_group3016",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3044,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3016);
    render_pass_encoder2000.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2000.drawIndirect(buffer2038, 0);
    render_pass_encoder2003.drawIndexed(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2002.setIndexBuffer(buffer2016, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4045 = device40.createBuffer({
        label: "buffer4045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4045, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4045, 0);
    render_pass_encoder2003.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2002.drawIndirect(buffer202, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer2028, 0);
    compute_pass_encoder2020.popDebugGroup()
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2052, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2052, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2028, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder2002.drawIndirect(buffer2039, 0);
    device20.queue.submit([command_buffer200, ]);
    const buffer4046 = device40.createBuffer({
        label: "buffer4046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4047 = device40.createBuffer({
        label: "buffer4047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4016 = device40.createBindGroup({
        label: "bind_group4016",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4047,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4016);
    render_pass_encoder2002.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2000.drawIndirect(buffer2052, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2039, 0);
    const buffer4048 = device40.createBuffer({
        label: "buffer4048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4049 = device40.createBuffer({
        label: "buffer4049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4017 = device40.createBindGroup({
        label: "bind_group4017",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4049,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4017);
    render_pass_encoder2031.drawIndirect(buffer2038, 0);
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4050 = device40.createBuffer({
        label: "buffer4050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4050, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4050, 0);
    render_pass_encoder2003.end();
    render_pass_encoder2000.drawIndirect(buffer2039, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2000.drawIndirect(buffer2011, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer2022, "uint16");
    const buffer4051 = device40.createBuffer({
        label: "buffer4051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4052 = device40.createBuffer({
        label: "buffer4052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4018 = device40.createBindGroup({
        label: "bind_group4018",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4052,
                },
            },
        ],
    });

    compute_pass_encoder4021.setBindGroup(0, bind_group4018);
    compute_pass_encoder2020.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2002.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2031, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2030.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2050, "uint16");
    compute_pass_encoder4010.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2003.drawIndirect(buffer2045, 0);
    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2054,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2021);
    render_pass_encoder2003.popDebugGroup();
    compute_pass_encoder4010.end();
    render_pass_encoder2000.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2028, 0);
    render_pass_encoder2001.drawIndirect(buffer2039, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2031.drawIndirect(buffer2032, 0);
    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2056,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2022);
    device20.queue.submit([command_buffer201, ]);
    device50.queue.submit([]);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2000.popDebugGroup();
    device50.queue.submit([]);
    compute_pass_encoder3030.end();
    compute_pass_encoder4021.dispatchWorkgroups(100);
    const buffer3045 = device30.createBuffer({
        label: "buffer3045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3046 = device30.createBuffer({
        label: "buffer3046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3017 = device30.createBindGroup({
        label: "bind_group3017",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3046,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3017);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2030.drawIndirect(buffer207, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder2003.drawIndirect(buffer2052, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2003.draw(3);
    const buffer4053 = device40.createBuffer({
        label: "buffer4053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4054 = device40.createBuffer({
        label: "buffer4054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4019 = device40.createBindGroup({
        label: "bind_group4019",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4054,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4019);
    render_pass_encoder2003.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2003.draw(3);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    const buffer4055 = device40.createBuffer({
        label: "buffer4055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4056 = device40.createBuffer({
        label: "buffer4056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4020 = device40.createBindGroup({
        label: "bind_group4020",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4056,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4020);
    compute_pass_encoder3030.end();
    compute_pass_encoder3020.dispatchWorkgroups(100);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder3020.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2052, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2031.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2057, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2057, 0);
    render_pass_encoder2031.drawIndirect(buffer2039, 0);
    render_pass_encoder2000.drawIndirect(buffer2033, 0);
    compute_pass_encoder4020.popDebugGroup()
    const buffer3047 = device30.createBuffer({
        label: "buffer3047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3048 = device30.createBuffer({
        label: "buffer3048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3018 = device30.createBindGroup({
        label: "bind_group3018",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3048,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3018);
    render_pass_encoder2000.setIndexBuffer(buffer2040, "uint16");
    render_pass_encoder2002.drawIndirect(buffer2033, 0);
    const buffer3049 = device30.createBuffer({
        label: "buffer3049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3050 = device30.createBuffer({
        label: "buffer3050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3019 = device30.createBindGroup({
        label: "bind_group3019",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3050,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3019);
    compute_pass_encoder3030.end();
    render_pass_encoder2003.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2033, 0);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndirect(buffer2045, 0);
    render_pass_encoder2030.popDebugGroup();
    const buffer4057 = device40.createBuffer({
        label: "buffer4057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4058 = device40.createBuffer({
        label: "buffer4058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4021 = device40.createBindGroup({
        label: "bind_group4021",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4058,
                },
            },
        ],
    });

    compute_pass_encoder4021.setBindGroup(0, bind_group4021);
    render_pass_encoder2030.drawIndirect(buffer202, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2001.endOcclusionQuery()
    compute_pass_encoder3030.dispatchWorkgroups(100);
    const buffer4059 = device40.createBuffer({
        label: "buffer4059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4060 = device40.createBuffer({
        label: "buffer4060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4022 = device40.createBindGroup({
        label: "bind_group4022",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4060,
                },
            },
        ],
    });

    compute_pass_encoder4021.setBindGroup(0, bind_group4022);
    render_pass_encoder2002.end();
    const buffer3051 = device30.createBuffer({
        label: "buffer3051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3052 = device30.createBuffer({
        label: "buffer3052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3020 = device30.createBindGroup({
        label: "bind_group3020",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3052,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3020);
    render_pass_encoder2000.setIndexBuffer(buffer2048, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2003.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2000.drawIndirect(buffer2036, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder2003.end();
    render_pass_encoder2030.draw(3);
    compute_pass_encoder4021.dispatchWorkgroups(100);
    render_pass_encoder2031.setIndexBuffer(buffer2043, "uint16");
    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2059,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2023);
    compute_pass_encoder2000.end();
    device40.queue.submit([]);
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2002.setIndexBuffer(buffer200, "uint16");
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2030.setIndexBuffer(buffer2040, "uint16");
    compute_pass_encoder4021.popDebugGroup()
    render_pass_encoder2031.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2028, 0);
    render_pass_encoder2000.end();
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2031.end();
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder4021.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2003.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2003.drawIndirect(buffer2032, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2028, 0);
    device50.queue.submit([]);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4061 = device40.createBuffer({
        label: "buffer4061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4061, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4061, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2003.drawIndexedIndirect(buffer2045, 0);
    const uint32_4021 = new Uint32Array(3);

    uint32_4021[0] = 100;
    uint32_4021[1] = 1;
    uint32_4021[2] = 1;

    const buffer4062 = device40.createBuffer({
        label: "buffer4062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4062, 0, uint32_4021, 0, uint32_4021.length);

    compute_pass_encoder4021.dispatchWorkgroupsIndirect(buffer4062, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.drawIndirect(buffer2057, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2033, "uint16");
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder2002.drawIndexedIndirect(buffer2057, 0);
    const buffer4063 = device40.createBuffer({
        label: "buffer4063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4064 = device40.createBuffer({
        label: "buffer4064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4023 = device40.createBindGroup({
        label: "bind_group4023",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4064,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4023);
    render_pass_encoder2030.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2002.setIndexBuffer(buffer2049, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2057, "uint16");
    render_pass_encoder2003.draw(3);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder3030.end();
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2002.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2003.drawIndirect(buffer2035, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2002.drawIndexed(3);
    device30.queue.submit([]);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2003.drawIndexedIndirect(buffer2052, 0);
    const buffer3053 = device30.createBuffer({
        label: "buffer3053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3054 = device30.createBuffer({
        label: "buffer3054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3021 = device30.createBindGroup({
        label: "bind_group3021",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3054,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3021);
    render_pass_encoder2000.drawIndirect(buffer2023, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2003.drawIndexedIndirect(buffer2044, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder2002.end();
    render_pass_encoder2003.drawIndexedIndirect(buffer2056, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2052, 0);
    device50.queue.submit([]);
    render_pass_encoder2003.drawIndirect(buffer2014, 0);
    render_pass_encoder2002.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2018, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    const buffer4065 = device40.createBuffer({
        label: "buffer4065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4066 = device40.createBuffer({
        label: "buffer4066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4024 = device40.createBindGroup({
        label: "bind_group4024",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4066,
                },
            },
        ],
    });

    compute_pass_encoder4021.setBindGroup(0, bind_group4024);
    render_pass_encoder2001.drawIndirect(buffer2010, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndirect(buffer2033, 0);
    render_pass_encoder2001.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2030.draw(3);
    render_pass_encoder2031.popDebugGroup();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4067 = device40.createBuffer({
        label: "buffer4067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4067, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4067, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2030.drawIndirect(buffer2057, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2033, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2060, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2060, 0);
    render_pass_encoder2000.drawIndirect(buffer2052, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder2030.drawIndirect(buffer2031, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2036, 0);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder2031.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2052, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer202, 0);
    compute_pass_encoder4021.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2052, 0);
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder2020.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2044, "uint16");
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder2001.drawIndirect(buffer2044, 0);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder3030.end();
    render_pass_encoder2001.drawIndirect(buffer204, 0);
    compute_pass_encoder2020.end();
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4068 = device40.createBuffer({
        label: "buffer4068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4068, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4068, 0);
    render_pass_encoder2031.drawIndirect(buffer2057, 0);
    render_pass_encoder2002.end();
    const buffer4069 = device40.createBuffer({
        label: "buffer4069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4070 = device40.createBuffer({
        label: "buffer4070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4025 = device40.createBindGroup({
        label: "bind_group4025",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4070,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4025);
    render_pass_encoder2000.drawIndirect(buffer2042, 0);
    compute_pass_encoder4010.end();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2003.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2029, "uint16");
    compute_pass_encoder4021.end();
    compute_pass_encoder4021.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2034, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2030.drawIndirect(buffer2044, 0);
    render_pass_encoder2030.drawIndirect(buffer209, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2003.drawIndirect(buffer2027, 0);
    render_pass_encoder2002.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2039, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4071 = device40.createBuffer({
        label: "buffer4071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4071, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4071, 0);
    render_pass_encoder2001.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2020.end();
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer2036, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2001.drawIndirect(buffer2052, 0);
    render_pass_encoder2003.popDebugGroup();
    render_pass_encoder2002.drawIndirect(buffer2060, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2031, "uint16");
    const buffer3055 = device30.createBuffer({
        label: "buffer3055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3056 = device30.createBuffer({
        label: "buffer3056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3022 = device30.createBindGroup({
        label: "bind_group3022",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3056,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3022);
    render_pass_encoder2001.popDebugGroup();
    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2062,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2024);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer2045, 0);
    render_pass_encoder2030.drawIndirect(buffer2057, 0);
    device30.queue.submit([]);
    render_pass_encoder2002.drawIndirect(buffer2036, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer2046, 0);
    render_pass_encoder2003.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2052, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2000.drawIndirect(buffer2042, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer202, 0);
    const buffer3057 = device30.createBuffer({
        label: "buffer3057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3058 = device30.createBuffer({
        label: "buffer3058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3023 = device30.createBindGroup({
        label: "bind_group3023",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3058,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3023);
    device20.queue.submit([command_buffer200, ]);
    const buffer4072 = device40.createBuffer({
        label: "buffer4072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4073 = device40.createBuffer({
        label: "buffer4073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4026 = device40.createBindGroup({
        label: "bind_group4026",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4073,
                },
            },
        ],
    });

    compute_pass_encoder4021.setBindGroup(0, bind_group4026);
    render_pass_encoder2003.drawIndirect(buffer2057, 0);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2003.drawIndexedIndirect(buffer2052, 0);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer2033, 0);
    const buffer3059 = device30.createBuffer({
        label: "buffer3059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3060 = device30.createBuffer({
        label: "buffer3060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3024 = device30.createBindGroup({
        label: "bind_group3024",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3060,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3024);
    render_pass_encoder2000.end();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4021.dispatchWorkgroups(100);
    render_pass_encoder2002.drawIndirect(buffer2036, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2031.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2056, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2064,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2025);
    render_pass_encoder2003.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2044, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2028, 0);
    const buffer4074 = device40.createBuffer({
        label: "buffer4074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4075 = device40.createBuffer({
        label: "buffer4075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4027 = device40.createBindGroup({
        label: "bind_group4027",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4075,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4027);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer205, 0);
    device40.queue.submit([command_buffer401, ]);
    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2066,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2026);
    render_pass_encoder2030.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2036, 0);
    const buffer3061 = device30.createBuffer({
        label: "buffer3061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3062 = device30.createBuffer({
        label: "buffer3062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3025 = device30.createBindGroup({
        label: "bind_group3025",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3062,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3025);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2002.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2031.end();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2030.drawIndirect(buffer2052, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2002.end();
    compute_pass_encoder4021.end();
    render_pass_encoder2000.drawIndirect(buffer2039, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4076 = device40.createBuffer({
        label: "buffer4076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4076, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4076, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2003.setIndexBuffer(buffer2058, "uint16");
    render_pass_encoder2003.setIndexBuffer(buffer2019, "uint16");
    compute_pass_encoder4021.end();
    render_pass_encoder2000.drawIndirect(buffer2033, 0);
    render_pass_encoder2003.drawIndirect(buffer2036, 0);
    render_pass_encoder2000.drawIndirect(buffer2044, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2049, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder2003.drawIndirect(buffer208, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2022, 0);
    render_pass_encoder2001.drawIndexed(3);
    compute_pass_encoder2020.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2002.setIndexBuffer(buffer2061, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2003.end();
    compute_pass_encoder4021.end();
    compute_pass_encoder3030.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer402, ]);
    const buffer2067 = device20.createBuffer({
        label: "buffer2067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2068,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2027);
    render_pass_encoder2001.drawIndirect(buffer2039, 0);
    compute_pass_encoder4010.end();
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4077 = device40.createBuffer({
        label: "buffer4077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4077, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4077, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2012, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2003.drawIndirect(buffer2028, 0);
    render_pass_encoder2030.drawIndirect(buffer2039, 0);
    render_pass_encoder2002.setIndexBuffer(buffer2027, "uint16");
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2052, 0);
    compute_pass_encoder3020.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2003.drawIndirect(buffer2036, 0);
    render_pass_encoder2003.drawIndirect(buffer2057, 0);
    render_pass_encoder2000.drawIndirect(buffer2060, 0);
    compute_pass_encoder4020.popDebugGroup()
    device30.queue.submit([]);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3063 = device30.createBuffer({
        label: "buffer3063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3063, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3063, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2020, 0);
    device40.queue.submit([command_buffer401, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2002.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2052, 0);
    device30.queue.submit([]);
    compute_pass_encoder4020.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2057, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.draw(3);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder2003.end();
    render_pass_encoder2003.drawIndexed(3);
    render_pass_encoder2003.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2039, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2000.drawIndirect(buffer2028, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2031.drawIndirect(buffer205, 0);
    render_pass_encoder2003.drawIndexed(3);
    render_pass_encoder2000.drawIndirect(buffer206, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2062, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const buffer4078 = device40.createBuffer({
        label: "buffer4078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4079 = device40.createBuffer({
        label: "buffer4079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4028 = device40.createBindGroup({
        label: "bind_group4028",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4079,
                },
            },
        ],
    });

    compute_pass_encoder4021.setBindGroup(0, bind_group4028);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2002.setIndexBuffer(buffer2042, "uint16");
    render_pass_encoder2003.end();
    render_pass_encoder2031.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2003.drawIndirect(buffer2065, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4080 = device40.createBuffer({
        label: "buffer4080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4080, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4080, 0);
    render_pass_encoder2002.setIndexBuffer(buffer2066, "uint16");
    compute_pass_encoder2020.end();
    compute_pass_encoder4021.dispatchWorkgroups(100);
    render_pass_encoder2003.setIndexBuffer(buffer2034, "uint16");
    render_pass_encoder2003.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2003.drawIndirect(buffer2033, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2039, 0);
    const uint32_4021 = new Uint32Array(3);

    uint32_4021[0] = 100;
    uint32_4021[1] = 1;
    uint32_4021[2] = 1;

    const buffer4081 = device40.createBuffer({
        label: "buffer4081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4081, 0, uint32_4021, 0, uint32_4021.length);

    compute_pass_encoder4021.dispatchWorkgroupsIndirect(buffer4081, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2001.drawIndirect(buffer2043, 0);
    render_pass_encoder2030.drawIndirect(buffer2022, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2028, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2002.draw(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2022, 0);
    compute_pass_encoder4021.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer2044, 0);
    compute_pass_encoder4021.popDebugGroup()
    render_pass_encoder2003.end();
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3064 = device30.createBuffer({
        label: "buffer3064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3064, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3064, 0);
    render_pass_encoder2002.drawIndirect(buffer2028, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2002.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2030.drawIndirect(buffer2033, 0);
    render_pass_encoder2001.drawIndirect(buffer2060, 0);
    render_pass_encoder2001.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2028, 0);
    const buffer3065 = device30.createBuffer({
        label: "buffer3065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3066 = device30.createBuffer({
        label: "buffer3066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3026 = device30.createBindGroup({
        label: "bind_group3026",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3066,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3026);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder2002.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2000.drawIndirect(buffer2065, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder4021.end();
    render_pass_encoder2030.drawIndirect(buffer2059, 0);
    render_pass_encoder2003.drawIndexedIndirect(buffer2067, 0);
    device30.queue.submit([command_buffer300, ]);
    device20.queue.submit([]);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3067 = device30.createBuffer({
        label: "buffer3067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3067, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3067, 0);
    render_pass_encoder2001.drawIndirect(buffer2024, 0);
    const uint32_4021 = new Uint32Array(3);

    uint32_4021[0] = 100;
    uint32_4021[1] = 1;
    uint32_4021[2] = 1;

    const buffer4082 = device40.createBuffer({
        label: "buffer4082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4082, 0, uint32_4021, 0, uint32_4021.length);

    compute_pass_encoder4021.dispatchWorkgroupsIndirect(buffer4082, 0);
    device50.queue.submit([]);
    const buffer4083 = device40.createBuffer({
        label: "buffer4083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4084 = device40.createBuffer({
        label: "buffer4084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4029 = device40.createBindGroup({
        label: "bind_group4029",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4084,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4029);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2002.drawIndexedIndirect(buffer2019, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2069, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2069, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder2020.end();
    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2071,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2028);
    compute_pass_encoder4020.popDebugGroup()
    const buffer3068 = device30.createBuffer({
        label: "buffer3068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3069 = device30.createBuffer({
        label: "buffer3069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3027 = device30.createBindGroup({
        label: "bind_group3027",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3069,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3027);
    render_pass_encoder2030.drawIndirect(buffer2039, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2003.drawIndexedIndirect(buffer2060, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder2002.popDebugGroup();
    const buffer3070 = device30.createBuffer({
        label: "buffer3070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3071 = device30.createBuffer({
        label: "buffer3071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3028 = device30.createBindGroup({
        label: "bind_group3028",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3071,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3028);
    render_pass_encoder2003.setIndexBuffer(buffer200, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2039, 0);
    const buffer2072 = device20.createBuffer({
        label: "buffer2072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2073 = device20.createBuffer({
        label: "buffer2073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2029 = device20.createBindGroup({
        label: "bind_group2029",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2073,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2029);
    device50.queue.submit([command_buffer500, ]);
    device30.queue.submit([command_buffer302, ]);
    const buffer2074 = device20.createBuffer({
        label: "buffer2074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2075 = device20.createBuffer({
        label: "buffer2075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2030 = device20.createBindGroup({
        label: "bind_group2030",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2075,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2030);
    const uint32_4021 = new Uint32Array(3);

    uint32_4021[0] = 100;
    uint32_4021[1] = 1;
    uint32_4021[2] = 1;

    const buffer4085 = device40.createBuffer({
        label: "buffer4085",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4085, 0, uint32_4021, 0, uint32_4021.length);

    compute_pass_encoder4021.dispatchWorkgroupsIndirect(buffer4085, 0);
    render_pass_encoder2003.drawIndirect(buffer2038, 0);
    render_pass_encoder2002.drawIndirect(buffer206, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder2002.drawIndexedIndirect(buffer2069, 0);
    render_pass_encoder2002.drawIndirect(buffer2060, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2057, 0);
    compute_pass_encoder2020.end();
    compute_pass_encoder3030.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    compute_pass_encoder3020.end();
    render_pass_encoder2030.drawIndirect(buffer2035, 0);
    render_pass_encoder2003.drawIndexed(3);
    compute_pass_encoder3030.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2001.setIndexBuffer(buffer2049, "uint16");
    device30.queue.submit([]);
    render_pass_encoder2002.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2044, 0);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2046, 0);
    device50.queue.submit([]);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2002.setIndexBuffer(buffer2017, "uint16");
    const buffer3072 = device30.createBuffer({
        label: "buffer3072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3073 = device30.createBuffer({
        label: "buffer3073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3029 = device30.createBindGroup({
        label: "bind_group3029",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3073,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3029);
    render_pass_encoder2003.drawIndirect(buffer2042, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    const buffer4086 = device40.createBuffer({
        label: "buffer4086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4087 = device40.createBuffer({
        label: "buffer4087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4030 = device40.createBindGroup({
        label: "bind_group4030",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4087,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4030);
    render_pass_encoder2003.end();
    render_pass_encoder2031.end();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2000.drawIndirect(buffer2044, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder3030.popDebugGroup()
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3074 = device30.createBuffer({
        label: "buffer3074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3074, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3074, 0);
    render_pass_encoder2003.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2030.drawIndirect(buffer201, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2057, "uint16");
    render_pass_encoder2003.drawIndirect(buffer2044, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2073, 0);
    render_pass_encoder2031.drawIndirect(buffer2028, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer2073, "uint16");
    compute_pass_encoder3020.popDebugGroup()
    const buffer2076 = device20.createBuffer({
        label: "buffer2076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2077 = device20.createBuffer({
        label: "buffer2077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2031 = device20.createBindGroup({
        label: "bind_group2031",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2077,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2031);
    render_pass_encoder2002.drawIndirect(buffer2069, 0);
    compute_pass_encoder4021.end();
    render_pass_encoder2001.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2003.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder2003.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2031.drawIndirect(buffer2046, 0);
    render_pass_encoder2001.drawIndirect(buffer2044, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2001.drawIndirect(buffer2044, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3075 = device30.createBuffer({
        label: "buffer3075",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3075, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3075, 0);
    render_pass_encoder2002.drawIndirect(buffer2045, 0);
    render_pass_encoder2003.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2030.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder4010.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2003.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2003.drawIndirect(buffer2050, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4088 = device40.createBuffer({
        label: "buffer4088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4088, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4088, 0);
    device30.queue.submit([command_buffer301, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2064, 0);
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2003.drawIndirect(buffer2060, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2024, 0);
    compute_pass_encoder3020.end();
    compute_pass_encoder4021.end();
    render_pass_encoder2031.popDebugGroup();
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder4021.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndexedIndirect(buffer2062, 0);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2078 = device20.createBuffer({
        label: "buffer2078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2078, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2078, 0);
    const buffer2079 = device20.createBuffer({
        label: "buffer2079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2080 = device20.createBuffer({
        label: "buffer2080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2032 = device20.createBindGroup({
        label: "bind_group2032",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2080,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2032);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder2002.setIndexBuffer(buffer2070, "uint16");
    render_pass_encoder2030.end();
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer302, ]);
    device40.queue.submit([]);
    render_pass_encoder2031.setIndexBuffer(buffer2080, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder3020.dispatchWorkgroups(100);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder2003.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2030.drawIndirect(buffer2028, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2028, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer205, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2081 = device20.createBuffer({
        label: "buffer2081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2081, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2081, 0);
    const buffer4089 = device40.createBuffer({
        label: "buffer4089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4090 = device40.createBuffer({
        label: "buffer4090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4031 = device40.createBindGroup({
        label: "bind_group4031",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4090,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4031);
    render_pass_encoder2002.end();
    const buffer4091 = device40.createBuffer({
        label: "buffer4091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4092 = device40.createBuffer({
        label: "buffer4092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4032 = device40.createBindGroup({
        label: "bind_group4032",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4092,
                },
            },
        ],
    });

    compute_pass_encoder4021.setBindGroup(0, bind_group4032);
    device20.queue.submit([command_buffer203, ]);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3076 = device30.createBuffer({
        label: "buffer3076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3076, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3076, 0);
    const uint32_4021 = new Uint32Array(3);

    uint32_4021[0] = 100;
    uint32_4021[1] = 1;
    uint32_4021[2] = 1;

    const buffer4093 = device40.createBuffer({
        label: "buffer4093",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4093, 0, uint32_4021, 0, uint32_4021.length);

    compute_pass_encoder4021.dispatchWorkgroupsIndirect(buffer4093, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2031.drawIndirect(buffer2048, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2060, "uint16");
    render_pass_encoder2002.drawIndexedIndirect(buffer2057, 0);
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder2000.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2001.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2025, 0);
    compute_pass_encoder2020.end();
    const buffer2082 = device20.createBuffer({
        label: "buffer2082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2083 = device20.createBuffer({
        label: "buffer2083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2033 = device20.createBindGroup({
        label: "bind_group2033",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2083,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2033);
    render_pass_encoder2000.drawIndirect(buffer2069, 0);
    render_pass_encoder2002.drawIndexedIndirect(buffer2045, 0);
    const buffer3077 = device30.createBuffer({
        label: "buffer3077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3078 = device30.createBuffer({
        label: "buffer3078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3030 = device30.createBindGroup({
        label: "bind_group3030",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3078,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3030);
    render_pass_encoder2031.drawIndirect(buffer2069, 0);
    compute_pass_encoder4021.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder2001.drawIndirect(buffer2058, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer2028, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2002.drawIndexedIndirect(buffer2028, 0);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2002.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder2003.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2003.drawIndexedIndirect(buffer2078, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2030.drawIndirect(buffer2081, 0);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2000.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2031.end();
    const buffer3079 = device30.createBuffer({
        label: "buffer3079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3080 = device30.createBuffer({
        label: "buffer3080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3031 = device30.createBindGroup({
        label: "bind_group3031",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3080,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3031);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2003.drawIndirect(buffer2017, 0);
    compute_pass_encoder2020.popDebugGroup()
    const buffer3081 = device30.createBuffer({
        label: "buffer3081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3082 = device30.createBuffer({
        label: "buffer3082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3032 = device30.createBindGroup({
        label: "bind_group3032",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3082,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3032);
    render_pass_encoder2000.drawIndirect(buffer2029, 0);
    compute_pass_encoder3030.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder2000.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2078, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2003.drawIndexedIndirect(buffer2033, 0);
    device30.queue.submit([command_buffer303, ]);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3083 = device30.createBuffer({
        label: "buffer3083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3083, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3083, 0);
    compute_pass_encoder3020.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2048, 0);
    const buffer2084 = device20.createBuffer({
        label: "buffer2084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2085 = device20.createBuffer({
        label: "buffer2085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2034 = device20.createBindGroup({
        label: "bind_group2034",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2085,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2034);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndirect(buffer2036, 0);
    render_pass_encoder2000.drawIndirect(buffer2028, 0);
    render_pass_encoder2000.drawIndirect(buffer2032, 0);
    render_pass_encoder2002.drawIndirect(buffer2069, 0);
    render_pass_encoder2001.drawIndirect(buffer2070, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder2003.drawIndirect(buffer2044, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2086 = device20.createBuffer({
        label: "buffer2086",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2086, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2086, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2059, "uint16");
    render_pass_encoder2002.end();
    render_pass_encoder2002.popDebugGroup();
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    compute_pass_encoder2000.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2031.end();
    render_pass_encoder2002.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2078, 0);
    render_pass_encoder2031.drawIndirect(buffer2086, 0);
    render_pass_encoder2003.drawIndirect(buffer2036, 0);
    render_pass_encoder2030.drawIndirect(buffer2057, 0);
    compute_pass_encoder2020.end();
}