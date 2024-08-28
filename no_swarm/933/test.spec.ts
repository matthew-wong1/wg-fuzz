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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    device10.destroy();
    const array0 = new Float32Array([0.5, -0.5, -0.75, -0.25, -0.5, 0.25, 0.25, 0.25, -1.0, -0.75, -1.0, -0.25, -0.25, 1.0, -0.25, -0.25, 0.0, 1.0, 0.5, 1.0, 0.0, -0.75, 0.5, 0.5, 0.25, 1.0, 0.5, -0.5, 0.0, -0.5, -0.5, -0.75, 0.25, 1.0, 0.0, -0.75, -0.25, 0.0, 1.0, 0.25, 0.75, -0.5, -0.75, -0.25, -1.0, 1.0, 1.0, 1.0, 0.5, -0.5, 1.0, 0.0, -1.0, 0.75, -1.0, 0.25, -0.25, -1.0, 0.5, 0.25, -0.5, 0.75, -0.75, 0.0, 0.25, -0.5, -1.0, -0.5, 0.5, 0.0, -0.25, -0.25, -0.5, 0.75, -0.25, 0.5, -0.5, -0.5, 0.5, -1.0, -1.0, -0.5, 0.25, 0.25, 0.0, 0.75, -0.25, 0.25, 1.0, -0.5, -0.5, -1.0, -0.25, -0.5, 0.0, 0.75, 0.25, -0.75, 1.0, 1.0, ]);
    
    
    
    const array1 = new Float32Array([1.0, -0.5, 0.75, 0.75, 0.75, -0.25, -0.75, -0.75, 0.25, 1.0, -0.75, 0.5, -0.5, -0.75, -0.5, 0.5, -0.5, 1.0, -0.75, -1.0, -1.0, -1.0, 1.0, -1.0, -0.25, -0.25, -1.0, 1.0, -0.25, -1.0, 0.75, 0.25, -0.25, -0.5, -0.25, 0.75, 0.75, 0.25, -0.5, -0.25, 0.0, -1.0, -1.0, -0.75, -0.25, 0.25, -0.5, 0.5, -0.75, -0.75, 0.0, 1.0, -0.5, -0.75, -0.5, -0.25, -0.5, 0.5, 0.5, 0.0, -0.5, -0.75, -0.25, 1.0, 0.75, -1.0, 1.0, -0.5, -0.5, -0.75, 0.0, -0.75, 0.25, 0.0, -0.5, 0.75, 0.5, 1.0, 0.25, -1.0, 1.0, -0.75, -0.75, -0.5, 0.0, 0.75, 0.75, 0.25, -0.75, -0.75, 0.25, -0.5, 0.0, 0.5, 1.0, -0.25, 1.0, 0.0, 0.75, -1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array2 = new Float32Array([0.5, -0.5, -0.75, -0.25, 0.75, 0.5, 0.25, -0.75, -1.0, 0.5, 1.0, 0.25, 0.75, 0.75, 0.75, 0.75, 1.0, 0.25, -0.25, 1.0, -0.75, 0.25, 1.0, 0.25, -1.0, -1.0, 0.5, -0.75, 0.5, -0.25, -0.5, 0.25, -0.5, 0.5, 0.25, 0.75, 0.25, 0.0, 0.25, 1.0, 0.0, -1.0, 0.75, -0.75, 0.0, 0.5, 0.5, 1.0, -0.25, -1.0, 1.0, 1.0, -0.5, 0.25, 0.25, -0.75, 0.75, -0.5, -0.5, -0.75, -0.25, 0.25, -0.75, 0.0, 0.0, 0.25, 0.75, -0.75, -0.5, 0.5, -0.5, 0.0, 0.0, 0.75, -0.5, 1.0, -1.0, 0.5, -0.75, -1.0, -0.75, -0.75, 0.5, -0.75, 1.0, -0.25, -0.75, -0.75, 0.75, -0.75, 0.75, 0.5, -1.0, 0.25, 0.5, 0.25, 0.75, 0.0, 0.25, -0.5, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([0.0, -1.0, 0.75, 1.0, 0.25, 0.0, -0.5, 0.5, 1.0, -1.0, 0.0, -0.75, -0.5, -0.75, 0.5, 0.0, -1.0, 0.75, -0.5, 0.5, 0.25, -0.5, -0.5, -0.25, 0.25, 0.0, 0.0, -0.25, -0.5, 0.0, 0.0, 0.25, 0.0, -0.75, -0.25, -0.75, 0.75, -0.5, -0.75, 1.0, 0.5, -0.25, 0.0, 0.75, 1.0, 0.75, 0.75, 0.5, 0.0, 1.0, -0.25, -0.5, -0.75, 1.0, -0.75, 0.0, 0.0, -1.0, 0.75, -0.75, -1.0, 1.0, -0.75, 0.75, 1.0, 0.25, -0.75, 0.25, 0.25, -0.5, -0.25, -1.0, -0.5, 0.25, -0.5, 0.5, -0.25, 0.0, -0.25, -0.5, -0.75, 0.0, -0.25, 0.25, 0.5, 0.0, -1.0, 0.75, 0.5, -0.25, 0.25, 0.5, -0.25, 0.5, 0.5, -0.25, -0.5, -0.25, -0.5, 1.0, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device30.destroy();
    
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device40.pushErrorScope("out-of-memory");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    device20.destroy();
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
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device50.pushErrorScope("internal");
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    
    render_pass_encoder4000.beginOcclusionQuery(0)
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder4000.setStencilReference(1);
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder4000.executeBundles([])
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    query500.destroy()
    
    
    
    
    render_pass_encoder4000.setPipeline(render_pipeline400);
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder401.popDebugGroup();
    
    buffer400.destroy()
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4000.insertDebugMarker("marker");
    const array4 = new Float32Array([1.0, 0.5, 0.5, -0.25, 1.0, -0.25, -0.5, 0.0, 0.25, 1.0, 0.75, 1.0, -0.75, 1.0, -1.0, 0.75, 0.25, 0.5, -0.75, 0.25, -0.5, 0.0, -0.25, 0.0, 1.0, -0.75, -0.5, -1.0, -0.5, 0.25, -0.25, -1.0, -0.5, -0.5, -0.5, -1.0, -0.5, -0.5, -1.0, 0.75, -0.75, -0.75, -0.25, -0.25, -1.0, 0.5, -1.0, -0.5, 0.0, -0.5, 0.75, 0.75, 0.25, -0.25, 1.0, 0.5, 0.75, 0.5, -0.75, 0.0, -1.0, -0.75, -0.75, 0.75, -0.5, -1.0, -0.5, 1.0, 0.25, -0.25, 0.25, 0.25, -0.75, -0.75, -0.75, -1.0, 0.0, -0.75, 0.5, 1.0, 0.5, 0.25, 0.5, -0.5, 1.0, 0.25, -0.25, 0.25, 0.25, -1.0, 0.0, -0.25, 0.0, -1.0, -0.25, -0.75, 0.0, -1.0, 0.0, -0.25, ]);
    render_pass_encoder4000.endOcclusionQuery()
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
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    
    render_pass_encoder4000.beginOcclusionQuery(1)
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_pass_encoder4000.endOcclusionQuery()
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder4000.setStencilReference(1);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder4000.pushDebugGroup("group_marker");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_pass_encoder4000.popDebugGroup();
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    texture500.destroy();
    
    
    
    
    render_pass_encoder4000.setStencilReference(1);
    query500.destroy()
    
    query502.destroy()
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
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
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    texture400.destroy();
    render_pass_encoder4000.setStencilReference(1);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    texture401.destroy();
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_pass_encoder4000.pushDebugGroup("group_marker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    query500.destroy()
    device60.pushErrorScope("internal");
    
    query500.destroy()
    
    device50.pushErrorScope("validation");
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query402
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
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
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    
    render_pass_encoder4010.setStencilReference(1);
    const array5 = new Float32Array([0.5, -0.5, -0.25, -0.25, -0.25, -0.25, -0.75, 1.0, 0.0, -0.5, -0.25, -0.75, 0.75, 1.0, 1.0, 0.5, -0.25, -0.25, -0.5, -0.75, 0.75, 0.0, 0.5, -0.75, 0.25, 0.25, -0.5, 1.0, 0.25, -0.5, 0.0, -1.0, -0.25, -0.25, -0.25, -1.0, 0.0, -1.0, -0.25, 0.25, 0.75, -0.75, -0.25, -0.5, -1.0, 0.25, 0.5, 0.75, -0.25, 0.0, -0.25, 1.0, 0.0, 0.25, -1.0, -0.25, -0.5, 0.5, -0.75, 0.75, -1.0, -0.75, -0.75, 0.75, -0.25, -0.25, 0.25, 0.25, 1.0, 0.5, 0.5, -0.25, 1.0, 0.0, -0.25, 1.0, 1.0, 0.75, 0.5, 0.0, 0.0, -0.75, -0.5, 0.0, -1.0, 0.75, 0.25, -0.75, -0.75, -1.0, -0.5, 1.0, 0.75, 0.0, 0.0, -0.5, -0.75, 0.25, 0.25, -0.25, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    query500.destroy()
    buffer405.destroy()
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    command_encoder600.popDebugGroup()
    
    compute_pass_encoder5010.pushDebugGroup("group_marker")
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
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    render_bundle_encoder400.setVertexBuffer(0, buffer405);
    render_bundle_encoder402.insertDebugMarker("marker");
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    buffer601.destroy()
    
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
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_pass_encoder4000.setBindGroup(0, bind_group402);
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer600.destroy()
    
    buffer404.destroy()
    
    
    buffer402.destroy()
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    command_encoder601.pushDebugGroup("mygroupmarker")
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    buffer403.destroy()
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    query401.destroy()
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    
    render_pass_encoder4020.executeBundles([])
    render_pass_encoder4010.beginOcclusionQuery(0)
    const command_buffer502 = command_encoder502.finish();
    compute_pass_encoder5000.setPipeline(compute_pipeline501);
    query500.destroy()
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.setPipeline(render_pipeline400);
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
    device50.pushErrorScope("validation");
    
    query503.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    compute_pass_encoder5010.insertDebugMarker("marker")
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    render_pass_encoder4020.executeBundles([])
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder401.setVertexBuffer(0, buffer405);
    render_pass_encoder4020.executeBundles([])
    compute_pass_encoder5010.popDebugGroup()
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4010.setPipeline(render_pipeline400);
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32uint",
        dimension: "2d"
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    render_pass_encoder4010.setStencilReference(1);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder4000.setStencilReference(1);
    texture600.destroy();
    
    buffer401.destroy()
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    render_bundle_encoder500.popDebugGroup();
    
    render_bundle_encoder400.popDebugGroup();
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query403.destroy()
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16uint",
        dimension: "2d"
    });
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4000.beginOcclusionQuery(3)
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    
    device50.queue.submit([command_buffer502, ]);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder601.insertDebugMarker("marker");
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device40.queue.writeBuffer(buffer408, 0, array4, 0, array4.length);
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder4010.insertDebugMarker("marker");
    const command_buffer602 = command_encoder602.finish();
    
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    const array6 = new Float32Array([1.0, 0.5, 0.25, 0.25, 1.0, 0.0, -0.5, -1.0, -0.25, 0.5, 1.0, -0.5, 0.75, 1.0, -0.75, -0.25, 0.5, 0.0, -1.0, 0.25, 0.5, -0.25, 1.0, -1.0, -0.25, 0.75, -1.0, -0.25, 0.5, -0.25, 0.5, 0.25, 1.0, 0.5, 1.0, -0.25, -0.5, 1.0, -0.25, 0.0, 0.0, 0.25, -0.25, 1.0, -0.25, 0.25, -0.75, 0.25, -0.25, -1.0, 0.0, -0.5, 1.0, -0.75, 0.25, -1.0, 0.75, 1.0, -1.0, 0.0, -0.5, 0.75, 0.0, -0.5, -0.5, -1.0, 0.75, -1.0, -1.0, -1.0, -1.0, -1.0, -0.25, 0.0, 1.0, -0.25, -1.0, 0.75, 0.25, 0.25, 0.0, 0.25, -0.75, 0.0, 1.0, 0.25, -1.0, 0.5, -0.5, 1.0, -0.5, 1.0, 1.0, -0.75, -0.25, -1.0, 0.75, 1.0, -0.5, 1.0, ]);
    
    device40.queue.writeBuffer(buffer408, 0, array4, 0, array4.length);
    render_bundle_encoder600.setPipeline(render_pipeline600);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    device40.queue.writeBuffer(buffer408, 0, array2, 0, array2.length);
    render_pass_encoder4010.insertDebugMarker("marker");
    render_bundle_encoder601.setPipeline(render_pipeline601);
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    
    render_pass_encoder4010.insertDebugMarker("marker");
    
    
    
    render_pass_encoder4000.setStencilReference(1);
    render_pass_encoder4010.setStencilReference(1);
    
    texture403.destroy();
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout504]
    });
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    command_encoder600.pushDebugGroup("mygroupmarker")
    texture503.destroy();
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    compute_pass_encoder5010.insertDebugMarker("marker")
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4020.beginOcclusionQuery(4)
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    render_pass_encoder4010.endOcclusionQuery()
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group403);
    command_encoder503.insertDebugMarker("mymarker");
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.popDebugGroup();
    command_encoder503.insertDebugMarker("mymarker");
    compute_pass_encoder6010.setPipeline(compute_pipeline600);
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([-0.25, -0.5, 0.0, 0.25, -0.75, 0.75, -0.25, 0.0, -0.75, -0.75, 0.25, 0.25, 0.5, 1.0, -0.25, -0.75, -0.25, -0.75, -1.0, 1.0, 0.5, 0.0, 0.75, 1.0, -0.25, -0.75, -0.5, -1.0, 0.25, -0.75, -0.5, -0.25, -1.0, 0.75, 0.25, -0.5, 0.5, 0.5, 0.5, -1.0, -0.5, 0.5, -0.25, -1.0, -0.25, -1.0, -1.0, 0.0, 0.25, 0.0, -1.0, -0.25, 0.75, -0.75, 0.5, 0.0, 0.25, -0.5, -1.0, 1.0, 0.75, -0.5, -1.0, 1.0, -0.5, 0.75, 0.0, 0.5, 0.75, 0.75, 0.25, 0.75, -0.75, -0.75, -0.25, -0.75, -0.75, 0.75, -1.0, -0.5, -0.75, 0.5, 0.5, -0.75, -0.25, 0.5, -1.0, -1.0, -0.75, 0.0, 1.0, 0.75, -0.5, 1.0, -0.75, 0.5, 0.5, -0.25, -0.75, 1.0, ]);
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    command_encoder504.pushDebugGroup("mygroupmarker")
    compute_pass_encoder5010.setPipeline(compute_pipeline502);
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    render_pass_encoder4010.insertDebugMarker("marker");
    buffer4010.destroy()
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_bundle_encoder602.insertDebugMarker("marker");
    
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout406,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout400,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    buffer408.destroy()
    query504.destroy()
    render_pass_encoder4020.setPipeline(render_pipeline400);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    render_pass_encoder4000.insertDebugMarker("marker");
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    
    const texture_view5021 = texture502.createView({ label: "texture_view5021" });
    render_pass_encoder4010.pushDebugGroup("group_marker");
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const command_buffer503 = command_encoder503.finish();
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const query407 = device40.createQuerySet({
        label: "query407",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query402
    });
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    
    
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer605,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder600.setVertexBuffer(0, buffer600);
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: query501
    });
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout401,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder5040.executeBundles([])
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    render_pass_encoder4030.setPipeline(render_pipeline400);
    render_pass_encoder4000.endOcclusionQuery()
    const render_pass_encoder5050 = command_encoder505.beginRenderPass({
        label: "render_pass_encoder5050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5021,
            },
        ],
        occlusionQuerySet: query500
    });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    const texture_view5022 = texture502.createView({ label: "texture_view5022" });
    
    render_pass_encoder5050.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout505]
    });
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer500,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer501,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    
    render_bundle_encoder401.popDebugGroup();
    
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    command_encoder600.popDebugGroup()
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module605,
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
            module: shader_module605,
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
    
    render_pass_encoder5050.setPipeline(render_pipeline500);
    render_pass_encoder4000.setVertexBuffer(0, buffer405);
    render_pass_encoder4010.popDebugGroup();
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer502, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer502, 0);
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    render_pass_encoder5050.setBindGroup(0, bind_group501);
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group502);
    render_pass_encoder4000.draw(3);
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer507, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer507, 0);
    compute_pass_encoder5010.popDebugGroup()
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
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_pass_encoder4030.setBindGroup(0, bind_group404);
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer606,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer607,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group601);
    compute_pass_encoder6010.dispatchWorkgroups(100);
    compute_pass_encoder5000.popDebugGroup()
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
    
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_pass_encoder4020.setBindGroup(0, bind_group405);
    device50.queue.submit([command_buffer503, ]);
    compute_pass_encoder5010.end();
    render_pass_encoder4000.end();
    render_pass_encoder4020.endOcclusionQuery()
    compute_pass_encoder5000.end();
    render_pass_encoder4020.setVertexBuffer(0, buffer405);
    const command_buffer500 = command_encoder500.finish();
    device60.queue.submit([command_buffer602, ]);
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder4020.draw(3);
    render_pass_encoder4030.setVertexBuffer(0, buffer405);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder4020.end();
    render_pass_encoder4030.draw(3);
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder5040.setPipeline(render_pipeline500);
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
    
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_pass_encoder4010.setBindGroup(0, bind_group406);
    const command_buffer501 = command_encoder501.finish();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder4030.end();
    device50.queue.submit([command_buffer501, ]);
    device50.queue.submit([command_buffer500, ]);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder6010.end();
    const command_buffer403 = command_encoder403.finish();
    device40.queue.submit([command_buffer402, command_buffer403, ]);
    render_pass_encoder4010.setVertexBuffer(0, buffer405);
    command_encoder601.popDebugGroup()
    render_pass_encoder4010.draw(3);
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    render_pass_encoder5040.setBindGroup(0, bind_group503);
    render_pass_encoder4010.end();
    const command_buffer601 = command_encoder601.finish();
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer401, ]);
    device60.queue.submit([command_buffer601, ]);
}