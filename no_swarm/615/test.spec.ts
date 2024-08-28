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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    const array0 = new Float32Array([-0.75, 0.25, 0.0, 0.25, -0.5, -1.0, -0.5, -0.75, -0.25, -0.25, -0.5, -0.75, -0.25, 0.0, 1.0, 0.25, 0.0, 0.0, -1.0, 1.0, 0.5, -0.25, 0.75, 0.5, 0.75, -1.0, 0.0, 0.75, 1.0, -0.25, 0.0, 0.25, -1.0, 0.5, -0.5, 0.75, -0.75, 0.0, 0.5, 0.75, 0.25, -1.0, -0.75, -0.75, 1.0, -0.5, 0.25, -0.75, -0.5, 0.5, 0.75, -0.5, -0.25, 1.0, 0.25, 0.75, -0.25, -0.25, -0.25, -1.0, -0.5, 0.75, -0.5, 0.25, 1.0, 1.0, -0.75, -0.75, -1.0, 0.75, -0.25, 0.25, 0.75, 0.75, 0.0, -0.5, 0.25, 0.0, 0.25, 0.5, -0.5, -0.25, -0.5, 0.75, -0.25, 0.25, -1.0, -0.25, -0.25, -1.0, 0.0, 0.75, 0.25, 0.25, -0.75, -0.75, -0.5, 0.0, -0.25, 0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const array1 = new Float32Array([1.0, -0.5, 0.5, -0.25, 0.5, 0.75, 0.25, 0.0, 0.25, 0.25, 0.5, 0.0, -1.0, -0.5, -0.75, -0.75, 0.5, 0.0, -0.5, 1.0, 0.75, 0.5, -1.0, 0.75, -0.5, 0.25, -0.25, -0.5, 1.0, 0.5, 1.0, -1.0, 1.0, 0.75, 0.5, 1.0, 0.5, -0.75, 0.0, 1.0, -0.5, 1.0, 0.25, 0.5, -0.75, -0.25, 0.0, -0.5, -0.5, -0.75, 0.75, -1.0, 0.5, 1.0, 0.25, 0.0, 0.25, 0.0, 0.25, -1.0, -1.0, 0.25, -1.0, 0.5, 0.75, 0.0, -0.5, 1.0, -0.5, -1.0, -1.0, 0.25, 0.5, 1.0, 0.0, -1.0, -0.25, -1.0, -1.0, 0.25, 0.0, -0.75, -1.0, -0.25, 0.5, 0.5, 0.25, 0.5, -0.75, -0.25, 0.5, -0.75, -0.5, 0.0, -0.25, -0.5, -0.75, -0.25, 0.75, 0.75, ]);
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
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
    query300.destroy()
    device30.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const array2 = new Float32Array([0.25, -0.75, 1.0, 0.5, 1.0, 0.5, 0.25, 0.75, -0.75, 0.5, -1.0, -1.0, 0.5, -1.0, 1.0, 1.0, -0.5, -0.5, -0.5, -0.5, 0.25, 0.25, 0.75, 0.0, -1.0, -0.5, 1.0, -1.0, -0.5, -0.75, 0.25, -0.5, -0.25, -0.5, 0.75, 0.25, 0.5, 0.5, -0.25, 0.75, -0.75, -1.0, -0.5, 0.25, 1.0, -0.5, 0.75, 0.0, 0.5, -0.5, -0.5, -0.25, 0.25, 0.5, 0.0, 0.25, 0.75, 0.0, 0.5, -0.25, -1.0, -1.0, -1.0, -0.75, 0.75, -0.75, -0.75, -1.0, 0.25, 0.75, -0.25, -1.0, 0.75, 0.5, 0.75, 0.5, -0.75, -1.0, 0.0, 0.5, -0.5, 1.0, 0.5, -0.75, 0.25, 0.25, 0.0, 0.75, -0.25, 0.5, 1.0, -0.5, -1.0, 0.0, -0.25, 0.25, -0.5, -0.25, 1.0, -0.75, ]);
    
    
    
    buffer200.destroy()
    
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
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    
    command_encoder200.pushDebugGroup("mygroupmarker")
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    const array3 = new Float32Array([-1.0, -0.75, 0.5, -1.0, 0.5, 0.0, -0.5, -1.0, -1.0, -0.5, -0.5, 0.25, -1.0, -0.25, 0.0, 0.0, -0.25, -0.5, 0.5, -0.25, -0.75, 1.0, 0.0, 0.0, 0.25, 0.5, -0.25, 1.0, 1.0, -0.5, -0.5, 0.5, 0.0, 0.75, -0.25, 1.0, 0.75, 0.5, -0.5, 0.0, 1.0, -0.5, -0.25, 1.0, 0.5, 0.75, -0.5, 1.0, -1.0, 0.0, -0.5, 0.5, 0.5, 0.75, 0.25, -0.5, -1.0, 0.0, 0.25, -1.0, -0.75, -0.25, -0.5, -0.5, -0.5, -1.0, -0.5, 0.25, 0.25, 1.0, 0.5, -0.75, 0.75, 0.25, 0.75, 0.5, -0.75, -1.0, -1.0, -1.0, 0.5, -0.5, 0.0, -0.75, 0.5, 1.0, 0.25, 0.75, 0.0, -1.0, 0.25, -1.0, -1.0, -1.0, -0.75, 0.5, 0.25, 0.25, 0.25, 0.0, ]);
    const array4 = new Float32Array([-0.75, 1.0, -0.5, 0.75, 0.25, 1.0, 0.25, -1.0, 1.0, 0.5, -1.0, 0.5, 0.0, 0.25, -0.75, -0.75, 0.5, 0.75, 0.5, 0.25, 1.0, 0.25, -1.0, 0.5, 0.25, 1.0, 0.75, 0.75, 0.75, 1.0, 0.75, 0.5, -0.75, 0.0, 0.5, -0.75, 0.25, 0.75, -0.25, -0.5, 0.5, 0.25, -0.25, -0.5, 1.0, 1.0, 0.25, 0.0, 0.0, 0.0, 0.5, -0.5, 1.0, 0.25, -0.5, -1.0, -0.5, 0.5, 0.5, -0.75, -0.5, 0.0, 0.0, -0.5, -0.25, -0.75, -0.75, 1.0, 0.25, -0.5, -0.5, -0.5, -0.25, -0.75, 0.0, -0.25, -0.25, 0.0, 0.25, -0.25, -0.25, 0.75, 0.75, 0.75, 0.75, 0.5, -1.0, 0.5, -0.5, 0.75, 1.0, 0.75, 1.0, 1.0, 0.5, 0.5, -0.25, 0.75, -1.0, 0.5, ]);
    device20.pushErrorScope("validation");
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer201.destroy()
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const array5 = new Float32Array([1.0, 0.5, 1.0, 0.5, -1.0, -0.75, 0.75, 0.5, -1.0, 0.5, -1.0, -0.5, -0.5, -0.25, -0.25, 1.0, 0.25, -0.75, 0.25, 0.0, -0.75, 1.0, -0.5, 0.5, -0.25, -0.5, 0.75, 1.0, 0.0, -0.75, -0.75, 0.0, -1.0, -0.25, -0.75, -0.25, 0.75, 0.25, -0.75, 0.25, 1.0, 0.0, -0.75, 1.0, 0.75, -0.75, 0.75, -0.25, -0.25, -1.0, -0.75, -0.25, -0.5, -0.5, 0.25, -0.5, 0.5, 0.0, -0.75, 0.25, 0.5, 1.0, 0.0, 1.0, -0.75, -0.75, -1.0, 1.0, 0.25, 0.5, 0.25, 0.0, -1.0, 1.0, -1.0, -0.5, -0.25, 1.0, 0.0, -0.75, 0.0, -0.5, 0.25, 0.0, 1.0, 1.0, 0.25, 0.75, 0.25, 0.0, 0.5, -0.75, 0.25, 1.0, 1.0, 0.5, 0.0, 0.0, 1.0, -0.25, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    texture201.destroy();
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder201.insertDebugMarker("mymarker");
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
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
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder2010.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.popDebugGroup()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2010.executeBundles([])
    
    
    
    
    texture401.destroy();
    texture200.destroy();
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    texture202.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_bundle_encoder400.insertDebugMarker("marker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.popDebugGroup();
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
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
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32sint",
        dimension: "2d"
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
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    
    compute_pass_encoder2000.popDebugGroup()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    query402.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    command_encoder204.insertDebugMarker("mymarker");
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
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
    
    device20.pushErrorScope("out-of-memory");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    const command_buffer204 = command_encoder204.finish();
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
        occlusionQuerySet: query200
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    render_pass_encoder2010.setStencilReference(1);
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture400.destroy();
    render_pass_encoder2030.insertDebugMarker("marker");
    query401.destroy()
    
    
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
    render_pass_encoder2030.insertDebugMarker("marker");
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    texture203.destroy();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2010.setStencilReference(1);
    query402.destroy()
    
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
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
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.insertDebugMarker("marker");
    
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2030.setPipeline(render_pipeline201);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2030.beginOcclusionQuery(0)
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder402.popDebugGroup();
    render_bundle_encoder402.pushDebugGroup("group_marker");
    device20.pushErrorScope("out-of-memory");
    
    query403.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query404
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4000.executeBundles([])
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    device50.destroy();
    render_bundle_encoder201.setPipeline(render_pipeline200);
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device40.pushErrorScope("out-of-memory");
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    render_bundle_encoder200.setPipeline(render_pipeline201);
    
    query401.destroy()
    render_pass_encoder2020.setPipeline(render_pipeline202);
    render_pass_encoder2020.insertDebugMarker("marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    render_bundle_encoder402.insertDebugMarker("marker");
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder4000.beginOcclusionQuery(0)
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const array6 = new Float32Array([1.0, -0.5, 1.0, -0.5, 0.5, 0.5, 1.0, 1.0, -0.75, -1.0, 0.25, -0.75, 0.5, 0.0, 0.5, 0.5, 0.25, 0.75, 0.25, 1.0, 0.25, -0.25, 1.0, 0.0, -1.0, -0.75, -0.25, -0.75, -1.0, -0.75, -0.25, 0.5, 0.5, 1.0, -0.5, 0.25, 0.75, -0.75, 0.5, -0.25, -0.5, -0.25, -0.5, 0.25, 0.75, 0.5, 1.0, -1.0, -0.5, 0.5, 0.75, 1.0, 0.75, 0.75, 0.75, -0.75, 0.0, 0.0, -0.75, -1.0, -1.0, -0.5, 0.0, -0.25, 0.75, 0.0, -1.0, 0.25, -0.75, 0.0, -1.0, 0.0, -1.0, -0.5, -1.0, 0.5, 0.5, -0.25, -0.5, 0.5, 1.0, 0.25, -0.75, -1.0, -1.0, 0.25, 0.25, 0.25, 0.0, -0.25, -0.75, 0.0, -1.0, 1.0, 0.25, -0.5, -0.25, -1.0, 0.0, 0.75, ]);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query403
    });
    const array7 = new Float32Array([-0.75, 0.5, 0.5, 0.75, -0.25, 1.0, -0.5, 0.25, 0.5, -0.5, 0.0, 0.75, -1.0, 1.0, -0.25, 0.0, 0.5, 1.0, -0.25, -0.5, 0.5, -0.75, -1.0, 0.0, -0.25, 0.5, -0.25, -1.0, -0.25, 1.0, -0.5, 0.75, 0.75, -1.0, 1.0, 0.25, 1.0, -0.75, 0.75, 0.0, 0.5, 1.0, 0.5, 1.0, -0.5, 1.0, -0.25, 1.0, 0.25, -0.75, -0.75, -0.75, -0.25, 0.0, -1.0, -0.25, -0.25, 0.75, -1.0, -0.25, 0.0, 0.25, -0.25, -0.25, 0.5, 0.5, -1.0, -0.25, 0.5, 0.25, 1.0, -1.0, 0.25, -0.25, 0.25, -0.5, -0.5, 1.0, 0.5, 0.75, 1.0, 0.75, 0.75, -0.75, 0.5, -1.0, -0.25, -0.5, 1.0, 0.75, 0.5, -0.25, -0.75, 0.25, -0.75, -0.75, 0.5, -0.75, 0.5, 0.25, ]);
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder2010.setPipeline(render_pipeline202);
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder4010.setPipeline(render_pipeline400);
    render_bundle_encoder402.setPipeline(render_pipeline400);
    
    
    render_pass_encoder4020.setPipeline(render_pipeline401);
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
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
        layout: render_pipeline202.getBindGroupLayout(0),
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
    render_pass_encoder4010.insertDebugMarker("marker");
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4010.pushDebugGroup("group_marker");
    
    
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder2030.pushDebugGroup("group_marker");
    query405.destroy()
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder2030.popDebugGroup();
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder402.insertDebugMarker("marker");
    render_pass_encoder4000.setPipeline(render_pipeline402);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    query400.destroy()
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    render_pass_encoder2030.pushDebugGroup("group_marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder403.insertDebugMarker("mymarker");
    
    buffer203.destroy()
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
    });
    
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2030.setBindGroup(0, bind_group201);
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer206.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder400.setPipeline(render_pipeline402);
    render_pass_encoder2030.setStencilReference(1);
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder402.popDebugGroup();
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

    render_pass_encoder2020.setBindGroup(0, bind_group202);
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group203);
    render_pass_encoder2010.insertDebugMarker("marker");
    
    
    
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    query405.destroy()
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    buffer207.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    buffer202.destroy()
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
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
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

    render_pass_encoder4010.setBindGroup(0, bind_group400);
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder200.setVertexBuffer(0, buffer202);
    compute_pass_encoder2000.insertDebugMarker("marker")
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
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
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
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

    render_bundle_encoder402.setBindGroup(0, bind_group401);
    
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group402);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    buffer402.destroy()
    buffer406.destroy()
    render_pass_encoder2010.insertDebugMarker("marker");
    buffer400.destroy()
    
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    
    buffer407.destroy()
    render_pass_encoder4000.setStencilReference(1);
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    buffer408.destroy()
    query202.destroy()
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
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

    render_bundle_encoder401.setBindGroup(0, bind_group403);
    
    render_pass_encoder4010.insertDebugMarker("marker");
    buffer205.destroy()
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    device40.pushErrorScope("out-of-memory");
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    texture205.destroy();
    render_pass_encoder2030.setStencilReference(1);
    render_pass_encoder4030.setPipeline(render_pipeline403);
    const command_buffer600 = command_encoder600.finish();
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_bundle_encoder400.popDebugGroup();
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "stencil8",
        dimension: "2d"
    });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    
    compute_pass_encoder2000.popDebugGroup()
    
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    render_pass_encoder2020.setVertexBuffer(0, buffer202);
    
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    query201.destroy()
    
    render_pass_encoder4020.setStencilReference(1);
    query403.destroy()
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder4010.popDebugGroup();
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query400.destroy()
    
    
    render_pass_encoder2030.setVertexBuffer(0, buffer202);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
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
    
    buffer2011.destroy()
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
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
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
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

    render_bundle_encoder201.setBindGroup(0, bind_group204);
    device40.pushErrorScope("out-of-memory");
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    buffer2014.destroy()
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.popDebugGroup();
    
    
    
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    device60.pushErrorScope("internal");
    buffer2013.destroy()
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    
    render_pass_encoder4010.pushDebugGroup("group_marker");
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    render_bundle_encoder401.popDebugGroup();
    buffer2010.destroy()
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture403.destroy();
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    query403.destroy()
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: query200
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    texture206.destroy();
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    buffer4010.destroy()
    
    texture600.destroy();
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder200.draw(3);
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder2050.setPipeline(render_pipeline204);
    
    render_bundle_encoder402.insertDebugMarker("marker");
    render_pass_encoder4030.insertDebugMarker("marker");
    render_pass_encoder2010.insertDebugMarker("marker");
    
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
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
    render_pass_encoder2030.setIndexBuffer(buffer2016, "uint16");
    buffer2012.destroy()
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: render_pipeline403.getBindGroupLayout(0),
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
    render_pass_encoder4000.endOcclusionQuery()
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group205);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2019, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2019, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2030.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2030.drawIndexed(3);
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
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline204.getBindGroupLayout(0),
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

    render_pass_encoder2050.setBindGroup(0, bind_group206);
    render_pass_encoder2030.endOcclusionQuery()
    render_pass_encoder2020.end();
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
        layout: render_pipeline402.getBindGroupLayout(0),
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

    render_pass_encoder4000.setBindGroup(0, bind_group405);
    device20.queue.submit([command_buffer204, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2030.end();
    render_pass_encoder2050.setVertexBuffer(0, buffer202);
    render_pass_encoder2050.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2010.setVertexBuffer(0, buffer202);
    render_pass_encoder2010.drawIndirect(buffer2019, 0);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2010.end();
    const command_buffer201 = command_encoder201.finish();
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder2050.end();
    compute_pass_encoder2000.end();
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    const command_buffer205 = command_encoder205.finish();
    device20.queue.submit([command_buffer201, ]);
    command_encoder200.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    device20.queue.submit([command_buffer200, ]);
}