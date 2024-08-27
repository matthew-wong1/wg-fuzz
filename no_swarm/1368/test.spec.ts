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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array0 = new Float32Array([-0.75, -0.25, 0.0, -0.75, -1.0, -1.0, 0.75, -0.5, -1.0, 0.5, -0.75, 0.0, 1.0, 0.25, 1.0, 1.0, -0.25, -0.25, -0.5, -0.75, 1.0, 0.5, 0.5, 0.0, 0.0, -0.75, 0.5, 1.0, -0.25, -0.25, -0.25, 0.75, -0.5, -0.75, 0.25, -0.5, -0.5, 0.25, -0.5, 0.75, 1.0, 0.75, 0.5, 0.75, -0.25, 0.0, 0.0, -0.75, 0.5, 0.75, 0.5, 0.0, 0.0, 0.5, 0.75, 1.0, 0.5, 0.25, 0.0, 1.0, -1.0, -1.0, 0.25, 0.25, 0.0, -1.0, -0.25, -1.0, -1.0, 0.25, 0.5, -0.5, 0.25, -0.25, -0.75, 0.5, -0.75, -1.0, -0.5, 1.0, -1.0, 0.25, -0.25, -0.5, 0.5, -1.0, 0.75, -0.75, -0.75, 0.75, 1.0, 0.75, 0.5, 1.0, 1.0, 1.0, 0.0, 0.75, -0.5, -0.5, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    command_encoder200.insertDebugMarker("mymarker");
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
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
    device20.pushErrorScope("validation");
    
    
    const array1 = new Float32Array([-0.75, -0.5, 0.5, -1.0, -0.75, 0.75, -0.75, 0.75, 0.25, 0.25, -0.5, -0.75, -0.25, -0.5, 0.25, -0.5, -0.5, 0.0, 0.75, -0.25, 0.75, 1.0, 0.0, 0.25, -0.75, -0.25, 0.0, -0.75, -0.25, -1.0, 1.0, -0.75, -0.5, 0.25, 0.5, 0.0, -0.25, -0.25, 0.0, 0.0, -0.75, -0.25, 0.25, 0.0, -0.75, -0.5, -0.25, 0.0, -1.0, 1.0, 0.5, 0.0, 1.0, -0.75, 0.25, 0.25, -0.75, 0.25, -0.5, -0.75, 0.25, 1.0, 1.0, 1.0, 0.25, 0.25, -0.25, -0.75, 0.75, 0.0, 0.0, 0.5, 0.0, -0.5, 0.0, 0.75, -0.75, -0.25, 0.75, 0.5, -1.0, 0.5, -0.5, -0.5, -0.75, -0.5, 0.5, -0.75, 1.0, 0.0, 0.0, 0.75, 0.75, -0.5, 0.75, -0.75, 0.0, -0.75, -1.0, 0.75, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer000 = command_encoder000.finish();
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder101.popDebugGroup();
    buffer200.destroy()
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    query201.destroy()
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
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
    device10.destroy();
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    query201.destroy()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device30.pushErrorScope("validation");
    const array2 = new Float32Array([-0.5, -0.5, 0.75, -0.75, 0.5, 1.0, 1.0, -0.25, 0.5, 0.0, -0.5, -0.75, 1.0, -1.0, -0.75, 0.0, -0.25, 1.0, 0.75, -0.5, 0.75, 0.5, 0.25, -0.5, -0.5, 1.0, -1.0, 0.25, 1.0, 0.25, 0.0, -0.5, 0.75, -0.5, 0.75, 0.0, 0.5, -0.5, -0.5, -1.0, 0.75, -0.75, -0.25, 0.75, 0.0, 0.25, 0.5, 0.0, -0.75, 1.0, -1.0, 0.25, -0.5, 0.5, 1.0, 1.0, 0.25, 0.0, 0.25, 1.0, 0.25, 0.75, 0.75, -0.75, -0.75, 0.75, 0.75, 0.25, 1.0, -0.25, 0.25, 0.75, 0.0, 0.0, 0.75, 0.5, 0.0, 1.0, -0.25, 0.75, -0.25, -0.25, -0.75, -0.25, 0.0, 0.75, 0.75, 1.0, 0.75, 0.25, -0.5, -0.25, -1.0, 0.25, -0.25, -0.25, -0.5, -0.75, -0.75, 0.5, ]);
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query203
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer202.destroy()
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    render_pass_encoder2010.setStencilReference(1);
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    
    query200.destroy()
    
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_pass_encoder2010.beginOcclusionQuery(0)
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
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
    render_bundle_encoder103.pushDebugGroup("group_marker");
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder300.insertDebugMarker("mymarker");
    
    
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device30.queue.submit([]);
    render_pass_encoder2000.setStencilReference(1);
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
    render_pass_encoder2011.pushDebugGroup("group_marker");
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
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
    render_pass_encoder2011.setStencilReference(1);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder3000.setStencilReference(1);
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
    render_pass_encoder2020.executeBundles([])
    texture300.destroy();
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2020.insertDebugMarker("marker");
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
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setStencilReference(1);
    
    render_pass_encoder2000.setPipeline(render_pipeline200);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    device60.pushErrorScope("internal");
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2011.pushDebugGroup("group_marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_pass_encoder2021.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2010.setPipeline(render_pipeline200);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
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
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group200);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    render_pass_encoder2020.setStencilReference(1);
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
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder2021.insertDebugMarker("marker");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_pass_encoder2010.endOcclusionQuery()
    
    render_pass_encoder2021.setStencilReference(1);
    
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2020.executeBundles([])
    
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

    render_pass_encoder2000.setBindGroup(0, bind_group201);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_pass_encoder2000.setVertexBuffer(0, buffer203);
    buffer201.destroy()
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2010.beginOcclusionQuery(0)
    
    render_pass_encoder2010.insertDebugMarker("marker");
    
    query201.destroy()
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query203
    });
    render_pass_encoder2021.setStencilReference(1);
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
    command_encoder203.copyBufferToBuffer(
        buffer202,
        0,
        buffer201,
        0,
        400
    );
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2030.pushDebugGroup("group_marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    texture301.destroy();
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder2021.setPipeline(render_pipeline200);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder3000.executeBundles([])
    device40.destroy();
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder2020.setPipeline(render_pipeline200);
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query203
    });
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2031.beginOcclusionQuery(0)
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    render_pass_encoder2030.beginOcclusionQuery(0)
    render_pass_encoder2011.executeBundles([])
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    render_pass_encoder2011.executeBundles([])
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder2010.setVertexBuffer(0, buffer200);
    
    render_pass_encoder2000.draw(3);
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    render_pass_encoder2031.pushDebugGroup("group_marker");
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2012,
            },
        ],
        occlusionQuerySet: query200
    });
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
    render_pass_encoder2031.setPipeline(render_pipeline200);
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    render_pass_encoder2031.setStencilReference(1);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    render_pass_encoder3000.setPipeline(render_pipeline300);
    render_pass_encoder2030.setPipeline(render_pipeline202);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2010.insertDebugMarker("marker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder101.popDebugGroup();
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.popDebugGroup();
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.draw(3);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2000.end();
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    texture200.destroy();
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
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
    const array3 = new Float32Array([-0.25, 0.75, -1.0, 0.0, 0.5, -0.75, -0.5, 0.0, -1.0, 0.5, -1.0, 0.75, 0.5, -0.75, 0.5, -0.25, -0.25, 0.25, 0.0, -1.0, 0.75, -1.0, 0.0, -1.0, 0.5, 0.0, 0.0, -0.5, -0.5, -1.0, -0.25, 1.0, 1.0, -1.0, 0.5, -0.5, 0.25, -0.75, -1.0, -0.25, -1.0, 0.5, 1.0, 0.75, -0.75, -0.75, -0.5, 0.75, 0.5, 0.25, 0.25, 0.0, 0.75, 0.25, 1.0, 0.5, 0.0, -0.5, -0.25, -0.25, 0.25, -0.25, 0.75, 0.25, -0.25, 0.5, 0.25, 1.0, -1.0, 0.75, 0.0, -0.25, 0.75, 0.25, 0.0, -0.5, 1.0, -1.0, 0.5, 0.0, -1.0, -0.25, 0.75, -0.25, 0.75, -0.5, 0.25, -0.75, 0.0, -1.0, -0.25, 0.5, -0.75, 0.75, 0.5, 0.0, -0.5, -0.25, -0.5, -0.75, ]);
    
    const texture_view2013 = texture201.createView({ label: "texture_view2013" });
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2031.setStencilReference(1);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder600.pushDebugGroup("mygroupmarker")
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer203.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder2001.setPipeline(render_pipeline202);
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    render_bundle_encoder201.setPipeline(render_pipeline202);
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query202
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2011.executeBundles([])
    
    render_pass_encoder2001.setStencilReference(1);
    
    render_pass_encoder2031.insertDebugMarker("marker");
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
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
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device10.destroy();
    command_encoder201.insertDebugMarker("mymarker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const array4 = new Float32Array([-0.5, -1.0, -0.5, -0.25, -0.5, 0.75, -1.0, 1.0, 0.25, 0.5, -1.0, 0.75, 0.0, -1.0, -0.5, -0.25, -0.25, -1.0, -0.5, -0.75, -0.75, 0.25, 1.0, -0.25, -0.75, -0.75, 0.0, 0.25, -0.5, -0.75, -1.0, 0.0, 1.0, 0.0, 0.75, 0.25, 0.0, 0.0, 0.5, 0.25, 0.25, 1.0, -0.75, 0.5, 0.5, -0.25, 0.75, 1.0, -0.25, 0.75, 1.0, 0.75, 0.5, -1.0, -0.5, 1.0, 0.5, 0.25, 0.25, -1.0, 0.25, 0.0, 1.0, -0.25, 0.75, 0.25, 0.75, 0.75, -0.75, -0.75, 0.25, -1.0, -0.5, -1.0, -1.0, -0.25, -0.5, -0.25, 0.25, 0.0, 0.75, 0.75, 1.0, 0.25, 1.0, 1.0, 0.0, 1.0, 0.75, -0.75, 0.75, -1.0, 0.75, -0.5, 1.0, 0.75, -1.0, 1.0, 0.25, 0.25, ]);
    query100.destroy()
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    command_encoder600.insertDebugMarker("mymarker");
    query200.destroy()
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2032 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2012,
            },
        ],
        occlusionQuerySet: query201
    });
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2030.setBindGroup(0, bind_group202);
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2011.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2030.insertDebugMarker("marker");
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.insertDebugMarker("marker");
    command_encoder600.popDebugGroup()
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    render_pass_encoder3000.pushDebugGroup("group_marker");
    render_pass_encoder2021.pushDebugGroup("group_marker");
    render_pass_encoder2021.insertDebugMarker("marker");
    render_pass_encoder2031.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2030.endOcclusionQuery()
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
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
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group300);
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    buffer300.destroy()
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    query202.destroy()
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    buffer204.destroy()
    const command_buffer302 = command_encoder302.finish();
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query203.destroy()
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
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
    render_pass_encoder2011.setPipeline(render_pipeline200);
    const command_buffer500 = command_encoder500.finish();
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    buffer207.destroy()
    
    const render_pass_encoder2022 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2022",
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
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device20.queue.writeBuffer(buffer209, 0, array4, 0, array4.length);
    
    
    device50.pushErrorScope("internal");
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2041.setStencilReference(1);
    
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

    render_pass_encoder2021.setBindGroup(0, bind_group203);
    render_pass_encoder2011.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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

    render_bundle_encoder201.setBindGroup(0, bind_group204);
    render_pass_encoder2020.popDebugGroup();
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    command_encoder202.clearBuffer(buffer207);
    render_pass_encoder2031.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer205, 0, array4, 0, array4.length);
    render_pass_encoder2041.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2041.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    texture201.destroy();
    render_pass_encoder2031.endOcclusionQuery()
    render_pass_encoder2040.setPipeline(render_pipeline200);
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    query202.destroy()
    render_pass_encoder2020.beginOcclusionQuery(3)
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    {
        await buffer205.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer205.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer205.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    render_pass_encoder6000.pushDebugGroup("group_marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer2013, 0, array1, 0, array1.length);
    render_pass_encoder6000.insertDebugMarker("marker");
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    command_encoder201.copyBufferToBuffer(
        buffer208,
        0,
        buffer2012,
        0,
        400
    );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    query202.destroy()
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const array5 = new Float32Array([-0.75, 0.5, -0.25, 0.25, -1.0, -1.0, -1.0, 1.0, -0.75, -0.5, 0.5, 0.75, -1.0, 0.5, 1.0, 0.5, -0.5, -0.25, 1.0, -1.0, 0.25, 0.25, -0.5, 0.75, -1.0, -0.75, -1.0, -1.0, -0.25, 1.0, -0.5, 0.5, 0.25, -0.25, 0.5, 0.0, -1.0, -0.25, 0.0, 0.25, 0.0, -1.0, 0.5, 0.75, 0.0, 0.5, 0.75, 1.0, -0.75, 1.0, 0.0, 0.0, 1.0, 0.0, 0.5, -0.75, -0.5, -1.0, -0.25, -0.25, 0.5, 0.25, -1.0, -0.75, -1.0, 0.75, -0.5, 0.0, 0.25, -0.75, 1.0, 0.5, 1.0, 0.75, -1.0, 1.0, -0.25, 0.75, 1.0, 0.5, -1.0, 0.0, -0.25, -1.0, 1.0, -0.75, 0.0, -1.0, 0.75, 0.5, 0.75, 1.0, 0.5, -0.25, 0.0, 0.5, -0.75, 0.0, 0.25, 1.0, ]);
    render_pass_encoder2021.setVertexBuffer(0, buffer203);
    query301.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder201.setVertexBuffer(0, buffer203);
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    render_pass_encoder2022.pushDebugGroup("group_marker");
    render_pass_encoder2030.insertDebugMarker("marker");
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    query301.destroy()
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    buffer302.destroy()
    render_pass_encoder2032.insertDebugMarker("marker");
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    render_pass_encoder2030.popDebugGroup();
    device70.destroy();
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    query204.destroy()
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    query204.destroy()
    render_pass_encoder3010.pushDebugGroup("group_marker");
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_pass_encoder2031.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    texture600.destroy();
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    buffer2013.destroy()
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout204,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    buffer206.destroy()
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    render_pass_encoder2022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder2030.pushDebugGroup("group_marker");
    device30.queue.submit([command_buffer302, ]);
    command_encoder200.popDebugGroup()
    render_pass_encoder2022.popDebugGroup();
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group205);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2031.endOcclusionQuery()
    render_pass_encoder2041.setPipeline(render_pipeline201);
    render_pass_encoder2021.drawIndirect(buffer2013, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2032.setPipeline(render_pipeline202);
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

    render_pass_encoder2031.setBindGroup(0, bind_group206);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2020.setVertexBuffer(0, buffer205);
    render_pass_encoder2031.setVertexBuffer(0, buffer2013);
    render_pass_encoder2021.end();
    render_pass_encoder2020.setIndexBuffer(buffer2015, "uint16");
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2040.setBindGroup(0, bind_group207);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    render_pass_encoder3010.setPipeline(render_pipeline300);
    render_pass_encoder2040.setVertexBuffer(0, buffer2014);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2040.drawIndirect(buffer201, 0);
    render_pass_encoder2022.setPipeline(render_pipeline201);
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2011.setBindGroup(0, bind_group208);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group301);
    render_pass_encoder2010.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder2040.end();
    render_pass_encoder2031.drawIndirect(buffer204, 0);
    render_pass_encoder2011.setVertexBuffer(0, buffer203);
    render_pass_encoder3000.setVertexBuffer(0, buffer302);
    render_pass_encoder2011.drawIndirect(buffer2019, 0);
    render_pass_encoder2030.setVertexBuffer(0, buffer2016);
    render_pass_encoder2030.setIndexBuffer(buffer201, "uint16");
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2040.end();
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2022.setBindGroup(0, bind_group209);
    render_pass_encoder2022.setVertexBuffer(0, buffer203);
    render_pass_encoder2022.draw(3);
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2032.setBindGroup(0, bind_group2010);
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2001.setBindGroup(0, bind_group2011);
    render_pass_encoder2030.end();
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2021.draw(3);
    render_pass_encoder2010.end();
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2001.setVertexBuffer(0, buffer208);
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder2022.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2001.draw(3);
    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2029,
                },
            },
        ],
    });

    render_pass_encoder2041.setBindGroup(0, bind_group2012);
    render_pass_encoder2000.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2041.setVertexBuffer(0, buffer2027);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2020.popDebugGroup();
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2022.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder3010.setVertexBuffer(0, buffer303);
    render_pass_encoder2041.drawIndirect(buffer2021, 0);
    render_pass_encoder2040.drawIndirect(buffer202, 0);
    render_pass_encoder2032.setVertexBuffer(0, buffer201);
    render_pass_encoder2032.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2022.drawIndirect(buffer2010, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2041.drawIndirect(buffer2013, 0);
    render_pass_encoder2030.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2032.drawIndirect(buffer2016, 0);
    render_pass_encoder2032.end();
    render_pass_encoder2030.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder2022.draw(3);
    render_pass_encoder2022.popDebugGroup();
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder2011.end();
    render_pass_encoder2000.end();
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder2032.drawIndexed(3);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2031.end();
    render_pass_encoder2041.drawIndirect(buffer2026, 0);
    render_pass_encoder2040.drawIndirect(buffer2023, 0);
    const command_buffer200 = command_encoder200.finish();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2000.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2030.end();
    device30.queue.submit([]);
    render_pass_encoder2001.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2032.draw(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2032.drawIndirect(buffer2025, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2041.end();
    render_pass_encoder3000.draw(3);
    render_pass_encoder2011.draw(3);
    render_pass_encoder3010.draw(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2041.setIndexBuffer(buffer200, "uint16");
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder3010.end();
    render_pass_encoder3000.end();
    render_pass_encoder2000.popDebugGroup();
    command_encoder301.popDebugGroup()
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    command_encoder300.popDebugGroup()
    render_pass_encoder2041.end();
    render_pass_encoder2030.draw(3);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder2032.drawIndirect(buffer2019, 0);
    render_pass_encoder2022.popDebugGroup();
    device30.queue.submit([]);
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2011.end();
    device20.queue.submit([command_buffer201, command_buffer202, command_buffer204, ]);
    render_pass_encoder2022.end();
    const command_buffer301 = command_encoder301.finish();
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    render_pass_encoder3010.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder2010.end();
    device00.queue.submit([]);
    render_pass_encoder2030.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder3010.draw(3);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder2032.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder3000.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2018, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2041.drawIndirect(buffer2011, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2025, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2041.drawIndexedIndirect(buffer2018, 0);
    device60.queue.submit([]);
    render_pass_encoder2011.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder3010.end();
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2020.endOcclusionQuery()
    device30.queue.submit([command_buffer300, ]);
    device70.queue.submit([]);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2030.draw(3);
    render_pass_encoder3010.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2041.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2030.drawIndirect(buffer2029, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2022.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2011, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2022.drawIndirect(buffer2016, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2019, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2032.end();
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder2010.end();
    render_pass_encoder2011.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2041.end();
    render_pass_encoder2001.drawIndexed(3);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2031.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder3000.end();
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder2011.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2022.draw(3);
    render_pass_encoder2022.draw(3);
    render_pass_encoder2022.drawIndexed(3);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2022.drawIndexed(3);
    render_pass_encoder2041.drawIndirect(buffer2027, 0);
    render_pass_encoder2021.drawIndirect(buffer2016, 0);
    render_pass_encoder2031.drawIndirect(buffer2014, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder2000.end();
    render_pass_encoder2040.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder3000.draw(3);
    render_pass_encoder2041.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2022.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2032.drawIndirect(buffer2010, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2040.end();
    render_pass_encoder2022.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2001.setIndexBuffer(buffer201, "uint16");
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2030.drawIndirect(buffer203, 0);
    render_pass_encoder2001.drawIndirect(buffer2028, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder2021.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder2011.end();
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2022.drawIndirect(buffer209, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2031.draw(3);
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2022.end();
    render_pass_encoder2020.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2011.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2022.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder2041.drawIndirect(buffer2021, 0);
    render_pass_encoder3010.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder2022.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2030.drawIndirect(buffer208, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2041.drawIndirect(buffer2022, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2017, 0);
    render_pass_encoder2031.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2040.drawIndexed(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.draw(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer2016, 0);
    device60.queue.submit([]);
    render_pass_encoder2022.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2000.drawIndirect(buffer2025, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder3000.end();
    render_pass_encoder2010.setIndexBuffer(buffer2017, "uint16");
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2001.drawIndirect(buffer206, 0);
    render_pass_encoder2040.popDebugGroup();
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2011.drawIndirect(buffer2025, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2021.drawIndirect(buffer2027, 0);
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2000.drawIndirect(buffer206, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2020, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder2041.drawIndirect(buffer200, 0);
    render_pass_encoder2020.drawIndirect(buffer206, 0);
    render_pass_encoder2001.end();
    device20.queue.submit([]);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2000.drawIndirect(buffer207, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2024, 0);
    render_pass_encoder2030.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2041.draw(3);
    render_pass_encoder2021.popDebugGroup();
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder2022.drawIndirect(buffer2025, 0);
    render_pass_encoder2011.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer2011, "uint16");
    device50.queue.submit([]);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2030.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2010.drawIndirect(buffer2020, 0);
    device50.queue.submit([]);
    render_pass_encoder2011.drawIndirect(buffer206, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2028, "uint16");
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2031.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder3010.drawIndirect(buffer302, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2021.end();
    render_pass_encoder2020.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder2022.drawIndexed(3);
    render_pass_encoder2022.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2011.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2032.drawIndirect(buffer2026, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2031.end();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2031.end();
    render_pass_encoder2001.draw(3);
    render_pass_encoder2001.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    device60.queue.submit([command_buffer600, ]);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2020.setIndexBuffer(buffer2019, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder2041.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder2032.popDebugGroup();
    device60.queue.submit([command_buffer600, ]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2040.drawIndirect(buffer2014, 0);
    render_pass_encoder2000.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2021.draw(3);
    device20.queue.submit([]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2040.drawIndexed(3);
    device50.queue.submit([]);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder3000.draw(3);
    render_pass_encoder2000.end();
    render_pass_encoder3010.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2018, 0);
    render_pass_encoder2021.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2030.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2040.draw(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2040.end();
    render_pass_encoder2030.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2032.end();
    render_pass_encoder2011.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2032.drawIndexed(3);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2011.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2021, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2022.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2040.drawIndirect(buffer2025, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder3000.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder2031.drawIndirect(buffer204, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder6000.popDebugGroup();
}