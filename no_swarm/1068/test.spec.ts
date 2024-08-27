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
    const array0 = new Float32Array([-0.25, 0.75, 1.0, 0.0, -0.25, 0.75, -0.5, 0.25, 0.0, -0.5, 1.0, -0.5, 1.0, -0.25, 0.25, 0.75, 0.5, 0.25, 0.5, 1.0, 0.25, -0.5, 1.0, -0.75, 1.0, 0.25, 0.25, -0.75, 1.0, -0.75, -0.75, -1.0, -1.0, 0.75, -0.75, 0.25, -0.75, 0.75, 0.75, -0.25, -0.25, -0.75, -1.0, 0.5, -0.75, 1.0, 0.0, -1.0, 1.0, -0.5, -0.25, 0.5, 0.75, 0.5, 0.0, -0.75, -0.25, -0.25, -1.0, -0.25, 1.0, 0.0, -1.0, 0.5, 1.0, -0.5, -0.5, 0.5, -1.0, -0.5, -0.75, -1.0, 0.25, 0.5, -0.75, -0.25, 0.25, -0.5, 0.0, -1.0, 0.25, -0.75, -0.25, 0.5, 1.0, 0.75, -0.5, -0.75, -1.0, -0.25, -0.75, -1.0, 1.0, 0.75, 0.75, -0.75, 0.75, 0.75, -0.75, -0.25, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
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
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.destroy();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const array1 = new Float32Array([0.0, 0.5, 0.25, 0.75, 1.0, 0.25, -1.0, -0.25, -1.0, -0.25, 0.75, 0.75, 0.25, -1.0, -0.5, 0.75, 0.25, -0.75, -1.0, 0.75, -0.5, 0.25, 0.5, 0.0, -1.0, 0.0, 0.25, 1.0, 0.75, 0.25, 1.0, 1.0, -0.75, -0.75, 0.0, -0.75, 0.25, -0.75, 0.25, -0.75, 0.0, -0.75, 0.75, -0.25, -0.75, 0.25, -0.5, 0.75, 0.5, 0.0, -0.25, -0.5, -0.5, 0.5, -1.0, 0.5, -0.75, 1.0, 0.5, -0.75, 0.5, 0.25, -0.75, 0.5, 0.25, 0.0, -1.0, 0.5, -0.75, 0.0, 0.5, -1.0, 0.0, -1.0, 0.0, 1.0, -0.25, 0.75, -0.25, -1.0, 0.5, -0.75, 0.5, -0.75, -0.75, -0.75, 0.75, -0.25, 0.75, -1.0, 0.25, 1.0, 0.5, 0.5, -1.0, 0.0, -1.0, -0.5, -0.5, 0.75, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    device20.pushErrorScope("validation");
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    
    
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    
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
        occlusionQuerySet: query200
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2000.executeBundles([])
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
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
    
    
    render_pass_encoder2001.setStencilReference(1);
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder2001.insertDebugMarker("marker");
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    texture201.destroy();
    
    
    render_pass_encoder2000.executeBundles([])
    query200.destroy()
    render_pass_encoder2010.insertDebugMarker("marker");
    
    device30.pushErrorScope("internal");
    render_pass_encoder2000.setStencilReference(1);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_pass_encoder2001.setStencilReference(1);
    
    
    render_pass_encoder2001.pushDebugGroup("group_marker");
    render_pass_encoder2001.executeBundles([])
    query201.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2000.setStencilReference(1);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2001.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    texture200.destroy();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    render_pass_encoder2001.popDebugGroup();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.setPipeline(render_pipeline200);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
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
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    query202.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    
    render_pass_encoder2000.popDebugGroup();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    query202.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const command_buffer200 = command_encoder200.finish();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
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
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder2010.setStencilReference(1);
    buffer101.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    texture100.destroy();
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    render_bundle_encoder000.popDebugGroup();
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    render_pass_encoder2001.setStencilReference(1);
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    buffer200.destroy()
    device50.pushErrorScope("internal");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    device30.destroy();
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
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
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group200);
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_pass_encoder2020.executeBundles([])
    render_pass_encoder2020.setStencilReference(1);
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2003,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder2021.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2011.pushDebugGroup("group_marker");
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    device10.pushErrorScope("internal");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder2011.setPipeline(render_pipeline200);
    buffer401.destroy()
    render_pass_encoder2021.beginOcclusionQuery(0)
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder2021.executeBundles([])
    device50.queue.submit([]);
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    
    query200.destroy()
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
        occlusionQuerySet: query201
    });
    render_pass_encoder2001.setPipeline(render_pipeline200);
    
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query203
    });
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
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
    device60.destroy();
    
    render_pass_encoder2020.executeBundles([])
    
    query500.destroy()
    
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder2030.setPipeline(render_pipeline201);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder2031.setStencilReference(1);
    
    device40.queue.submit([command_buffer400, ]);
    buffer201.destroy()
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    render_pass_encoder2021.insertDebugMarker("marker");
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
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

    render_pass_encoder2001.setBindGroup(0, bind_group201);
    query501.destroy()
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder2011.popDebugGroup();
    
    device20.pushErrorScope("validation");
    render_pass_encoder2020.setStencilReference(1);
    
    buffer203.destroy()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture500.destroy();
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setPipeline(render_pipeline201);
    buffer206.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder202.clearBuffer(buffer201);
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
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder400.popDebugGroup();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    render_pass_encoder2031.setPipeline(render_pipeline201);
    device10.queue.submit([]);
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer205,
        0
    )
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2021.insertDebugMarker("marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_pass_encoder2020.setPipeline(render_pipeline200);
    render_pass_encoder2011.insertDebugMarker("marker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group202);
    render_pass_encoder2031.pushDebugGroup("group_marker");
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder2031.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device20.queue.writeBuffer(buffer207, 0, array0, 0, array0.length);
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    device20.pushErrorScope("validation");
    render_pass_encoder2011.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2001.setStencilReference(1);
    texture400.destroy();
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2020.setVertexBuffer(0, buffer201);
    
    
    
    texture402.destroy();
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    buffer402.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2021.setPipeline(render_pipeline200);
    buffer400.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("validation");
    render_pass_encoder2020.setIndexBuffer(buffer203, "uint16");
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
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
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group203);
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
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    buffer207.destroy()
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout404,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    buffer202.destroy()
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout404,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder401.setPipeline(render_pipeline400);
    render_pass_encoder2001.pushDebugGroup("group_marker");
    
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder2001.insertDebugMarker("marker");
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query100.destroy()
    render_pass_encoder2030.insertDebugMarker("marker");
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    device20.queue.writeBuffer(buffer2010, 0, array1, 0, array1.length);
    render_pass_encoder2021.pushDebugGroup("group_marker");
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer205.destroy()
    
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder2021.setStencilReference(1);
    
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_pass_encoder2031.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device10.pushErrorScope("validation");
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group204);
    buffer500.destroy()
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_pass_encoder2020.insertDebugMarker("marker");
    buffer2011.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    buffer2011.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer100.destroy()
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    render_bundle_encoder201.setPipeline(render_pipeline200);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setStencilReference(1);
    render_bundle_encoder500.insertDebugMarker("marker");
    query502.destroy()
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer2010,
        0
    )
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    device20.pushErrorScope("internal");
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2021.popDebugGroup();
    render_bundle_encoder501.insertDebugMarker("marker");
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    render_pass_encoder2001.popDebugGroup();
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder2031.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const texture_view5021 = texture502.createView({ label: "texture_view5021" });
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
    command_encoder202.pushDebugGroup("mygroupmarker")
    render_pass_encoder2021.endOcclusionQuery()
    buffer209.destroy()
    render_pass_encoder2001.insertDebugMarker("marker");
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer201 = command_encoder201.finish();
    buffer204.destroy()
    render_pass_encoder2010.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder2011.setStencilReference(1);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder500.popDebugGroup();
    buffer102.destroy()
    render_pass_encoder2030.pushDebugGroup("group_marker");
    render_bundle_encoder502.insertDebugMarker("marker");
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.popDebugGroup();
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    query100.destroy()
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    const texture_view5022 = texture502.createView({ label: "texture_view5022" });
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout405,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout404,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    buffer2010.destroy()
    render_bundle_encoder501.pushDebugGroup("group_marker");
    texture403.destroy();
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2010.setPipeline(compute_pipeline202);
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout405,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    texture501.destroy();
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer203,
        0
    )
    
    
    render_pass_encoder2001.setVertexBuffer(0, buffer207);
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder2001.insertDebugMarker("marker");
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder2011.popDebugGroup();
    query200.destroy()
    render_pass_encoder2030.beginOcclusionQuery(1)
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    command_encoder203.copyBufferToTexture(
        {
            buffer: buffer2013
        },
        {
            texture: texture202
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder2031.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2000.setVertexBuffer(0, buffer201);
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

    render_pass_encoder2021.setBindGroup(0, bind_group205);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer201, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.end();
    render_pass_encoder2010.setVertexBuffer(0, buffer209);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2021.setVertexBuffer(0, buffer206);
    render_pass_encoder2021.drawIndirect(buffer206, 0);
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2030.endOcclusionQuery()
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
        layout: render_pipeline201.getBindGroupLayout(0),
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
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2011, 0);
    render_pass_encoder2030.setVertexBuffer(0, buffer2010);
    render_pass_encoder2001.draw(3);
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2031.setBindGroup(0, bind_group207);
    render_pass_encoder2010.end();
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder2030.endOcclusionQuery()
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2030.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2010.drawIndirect(buffer2017, 0);
    render_pass_encoder2031.setVertexBuffer(0, buffer209);
    render_pass_encoder2000.popDebugGroup();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder2001.draw(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2030.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2021.draw(3);
    render_pass_encoder2031.drawIndirect(buffer2014, 0);
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
    render_pass_encoder2011.setVertexBuffer(0, buffer208);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2011.end();
    render_pass_encoder2021.end();
    render_pass_encoder2001.drawIndirect(buffer208, 0);
    device50.queue.submit([]);
    render_pass_encoder2000.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2019, 0);
    command_encoder202.popDebugGroup()
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2031.end();
    render_pass_encoder2030.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2010, 0);
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
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group209);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2031.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2031.setIndexBuffer(buffer204, "uint16");
    device10.queue.submit([]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2000.setIndexBuffer(buffer2021, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2000.drawIndirect(buffer2022, 0);
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2010.end();
    device10.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2011, 0);
    render_pass_encoder2021.drawIndirect(buffer205, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2030.endOcclusionQuery()
    device20.queue.submit([command_buffer201, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2021, 0);
    render_pass_encoder2000.end();
    device10.queue.submit([]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2011.drawIndirect(buffer205, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2019, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer2021, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2020.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2030.drawIndirect(buffer206, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2031.end();
    render_pass_encoder2011.draw(3);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2031.setIndexBuffer(buffer2023, "uint16");
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2024, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2024, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2030.drawIndirect(buffer2015, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer2024, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2021, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2011.drawIndirect(buffer2019, 0);
    device10.queue.submit([]);
    render_pass_encoder2020.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2020.drawIndirect(buffer209, 0);
    compute_pass_encoder1000.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2030.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2031.draw(3);
    device20.queue.submit([command_buffer203, ]);
    device50.queue.submit([]);
    render_pass_encoder2021.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2024, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2030.end();
    render_pass_encoder2030.setIndexBuffer(buffer2010, "uint16");
    compute_pass_encoder2010.end();
    render_pass_encoder2001.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2021.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2030.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2031.drawIndirect(buffer201, 0);
    render_pass_encoder2001.drawIndirect(buffer2024, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2031.end();
    render_pass_encoder2011.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2001.end();
    render_pass_encoder2001.draw(3);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2001.setIndexBuffer(buffer2020, "uint16");
    compute_pass_encoder2010.end();
    render_pass_encoder2011.drawIndirect(buffer206, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.draw(3);
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder2021.draw(3);
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer201, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2000.drawIndexed(3);
    compute_pass_encoder2010.end();
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2030.end();
    compute_pass_encoder2010.end();
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    render_pass_encoder2010.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2024, 0);
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer209, 0);
    render_pass_encoder2010.drawIndirect(buffer2024, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2025, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2025, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2025, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2010, 0);
    device50.queue.submit([]);
}