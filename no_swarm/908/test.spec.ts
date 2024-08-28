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
    const array0 = new Float32Array([-0.5, 0.25, 0.0, 0.75, 1.0, -0.25, -0.75, -1.0, 0.25, -0.75, -0.5, 0.75, 0.0, 0.25, 1.0, 0.75, 0.75, 0.5, 0.25, 0.25, -1.0, -0.25, 0.0, -0.75, 1.0, -0.25, 1.0, -1.0, 0.25, 0.5, -0.25, -1.0, -0.75, -1.0, 0.0, 0.0, -0.75, 1.0, -1.0, -0.75, -1.0, 0.5, 1.0, 0.0, 0.75, -0.25, 0.25, 0.75, 0.5, -0.25, -0.75, -0.75, 0.0, -0.5, -0.25, -0.25, 0.25, -1.0, -0.75, -1.0, 0.5, -0.25, 0.0, 0.25, 0.5, 0.5, -0.75, -1.0, 0.25, 1.0, -0.25, 0.0, -0.5, -0.25, 0.25, 0.5, 0.25, -0.75, -1.0, 0.5, -0.75, -1.0, -0.25, 1.0, 0.5, 0.0, 1.0, -0.5, -0.75, 0.25, -0.25, 0.75, 0.5, -0.75, 0.0, -0.5, 1.0, 0.25, 0.5, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const array1 = new Float32Array([-0.75, -0.75, -0.25, -0.5, -1.0, 1.0, 0.75, -1.0, 0.5, 0.75, -0.25, 0.5, 0.75, 0.25, -0.5, 0.75, 0.75, -0.25, 0.25, 0.5, 0.25, 0.25, 0.5, -0.5, -0.25, 0.0, -1.0, 0.75, 0.5, -0.5, 0.5, 0.75, 0.75, 0.75, 0.75, 0.5, -0.5, -0.75, 1.0, 1.0, 0.0, -0.5, 0.5, -0.25, 0.5, 0.0, -1.0, 1.0, 1.0, -0.25, 0.75, 1.0, -0.5, -0.25, 0.5, -1.0, 0.0, -0.75, -0.5, -0.5, 0.5, -0.75, 0.0, 0.75, -1.0, 0.5, 0.5, 0.75, 0.5, -0.5, -0.75, 0.5, 1.0, -0.75, 0.75, 0.75, -1.0, -0.25, 0.0, 0.25, 0.25, 0.0, 0.0, 1.0, 0.25, -0.25, -0.5, 0.5, 0.0, -0.25, 0.75, -0.5, -0.75, 0.5, -0.75, 0.25, 0.0, -1.0, 0.5, -0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("internal");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array2 = new Float32Array([-0.5, -0.5, 0.0, -0.75, -0.5, 1.0, -0.25, -1.0, 1.0, 0.5, 0.25, 1.0, 0.0, 0.75, 0.75, -0.75, -0.25, 0.0, -1.0, 0.0, 0.5, -1.0, -0.5, 0.0, 1.0, 0.25, 1.0, 0.75, -0.5, 0.25, -0.75, 0.75, 0.25, 1.0, -1.0, 0.0, -0.75, 0.75, -0.5, -1.0, -1.0, 0.75, -0.5, 1.0, 0.0, 0.5, 1.0, 1.0, -0.75, 0.0, -1.0, 0.0, -0.5, -0.5, 1.0, -0.25, 1.0, -0.25, -0.5, 0.25, -0.25, 0.5, 1.0, -0.25, -1.0, -1.0, 0.75, -0.25, -0.25, 0.75, 0.25, -0.5, 1.0, -0.25, -0.5, -0.75, 1.0, -0.25, 0.5, -1.0, 0.5, 0.75, -0.5, -1.0, 1.0, -1.0, 0.5, 0.5, -1.0, -0.75, -0.75, -0.75, -1.0, -0.5, 1.0, -0.75, 0.25, 0.0, 0.75, -0.75, ]);
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    buffer100.destroy()
    device30.destroy();
    buffer101.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_buffer200 = command_encoder200.finish();
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
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    device20.queue.submit([command_buffer200, ]);
    
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
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const command_buffer202 = command_encoder202.finish();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query101.destroy()
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    query000.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    texture101.destroy();
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    texture200.destroy();
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    query000.destroy()
    device00.destroy();
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    render_bundle_encoder200.popDebugGroup();
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    device20.pushErrorScope("out-of-memory");
    const array3 = new Float32Array([-0.5, -0.25, 1.0, 0.25, -0.75, 1.0, -0.5, -0.5, -1.0, -0.25, 0.25, 0.0, 0.5, 0.0, 1.0, 1.0, -0.5, 0.5, -0.75, -0.25, 0.75, 1.0, -0.25, 0.5, -1.0, -1.0, 1.0, -0.75, 0.0, -0.75, -0.25, 0.0, 1.0, -1.0, -0.5, -0.75, 0.25, 0.0, 0.5, -0.5, 0.25, 0.25, -0.75, 0.0, 0.0, 1.0, 0.0, -0.25, 1.0, -1.0, -0.25, -0.5, 0.5, 0.25, -0.5, 1.0, 0.5, -0.5, 0.25, -0.75, -0.5, 0.5, 0.75, 0.5, -0.5, -0.5, -0.75, 1.0, -0.25, -0.25, -0.75, -1.0, -1.0, -0.5, 0.5, 0.25, 1.0, 0.0, -0.75, 0.25, -0.25, -0.25, 0.0, -1.0, -0.75, 0.25, 1.0, 0.0, 1.0, 0.0, -0.25, 0.5, 0.75, -0.5, -0.5, 1.0, 0.25, 0.75, 0.25, -0.5, ]);
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    query100.destroy()
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
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
        occlusionQuerySet: query200
    });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder1000.popDebugGroup()
    
    
    const array4 = new Float32Array([0.75, 0.0, 0.75, -0.5, -0.75, 0.25, -0.25, 0.5, -0.75, -0.25, 0.25, 1.0, 1.0, 0.0, 0.5, 1.0, 0.25, 0.75, -0.25, -0.5, 0.75, 0.0, 1.0, 0.25, 0.75, -0.75, -1.0, -1.0, 0.5, 1.0, -0.25, 0.75, 0.75, -1.0, 0.0, -0.25, 0.25, 0.75, 0.25, -0.25, 0.0, 0.0, -1.0, 0.25, -0.5, 0.75, 0.5, 0.75, -0.25, -0.5, -0.25, -0.75, -1.0, 0.25, -0.75, -0.5, 1.0, -0.75, 1.0, 0.5, -0.5, 0.25, -1.0, 0.25, -0.5, 0.5, -0.75, 0.75, 1.0, -1.0, -1.0, -0.25, 1.0, 0.25, 1.0, -1.0, 0.25, -0.25, -0.25, -1.0, 0.25, 1.0, 0.25, -0.75, 1.0, -0.25, -0.75, 0.0, -0.75, -0.25, 0.75, -0.75, 0.5, 0.75, 1.0, -1.0, 0.75, 0.25, 0.25, 0.75, ]);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    texture201.destroy();
    render_pass_encoder2030.pushDebugGroup("group_marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    buffer102.destroy()
    
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1010.setPipeline(render_pipeline100);
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
    buffer103.destroy()
    const array5 = new Float32Array([0.25, 0.75, 0.75, 0.5, 0.25, -0.5, 0.25, -0.75, -0.75, -1.0, -1.0, -0.5, 1.0, -1.0, 0.0, 0.25, -0.25, 0.75, 1.0, 0.75, 1.0, -0.5, 0.75, 1.0, -1.0, -0.5, -1.0, 0.5, 0.75, -0.25, -1.0, -1.0, -0.25, -0.75, -0.5, -0.25, 0.5, 1.0, -0.5, -0.5, 1.0, 0.5, -0.5, -1.0, 0.25, 0.5, 0.5, 0.0, 0.25, 1.0, 0.25, -0.25, 0.0, 0.0, 1.0, 0.5, 0.5, 0.5, 0.5, 1.0, -0.25, 1.0, 0.0, 0.0, -0.75, -1.0, 0.25, 0.75, -0.75, 0.0, 0.5, -0.25, -0.75, 0.25, 0.75, -0.75, -0.5, 1.0, 0.75, -0.25, -0.5, 1.0, -0.5, -0.5, 0.5, -1.0, 0.25, -1.0, 0.5, 0.5, -1.0, 0.25, 0.25, 0.0, 0.25, 1.0, -0.75, -1.0, 0.25, -0.5, ]);
    compute_pass_encoder2010.insertDebugMarker("marker")
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    query100.destroy()
    
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
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
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.executeBundles([])
    buffer104.destroy()
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query100.destroy()
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder1020.setPipeline(render_pipeline100);
    query103.destroy()
    
    
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2030.executeBundles([])
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16float",
        dimension: "2d"
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    texture102.destroy();
    
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

    render_pass_encoder1020.setBindGroup(0, bind_group100);
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
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
    command_encoder204.clearBuffer(buffer200);
    query103.destroy()
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    render_pass_encoder2030.insertDebugMarker("marker");
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture202.destroy();
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const array6 = new Float32Array([-0.75, 0.25, -0.75, 0.25, 0.75, 0.0, -0.75, 0.75, -0.25, 0.0, 0.0, -1.0, 0.25, 0.5, 1.0, -0.75, -0.75, 0.0, 0.5, -1.0, 0.0, 0.75, 0.75, -0.5, -0.75, -0.75, -0.5, 0.5, 1.0, 1.0, -0.75, -0.75, -0.75, 1.0, -0.75, -0.75, 0.0, -0.25, 1.0, -0.75, -1.0, -0.75, 0.5, 1.0, -0.75, 1.0, -1.0, 1.0, -1.0, -0.25, -0.75, 0.75, -0.75, 1.0, 0.25, -0.5, 0.5, 0.0, -1.0, 0.5, 0.0, 0.75, 1.0, -0.5, 0.5, 0.25, -0.5, 0.25, 0.0, 1.0, -0.75, 0.75, -0.5, -0.5, -1.0, 0.75, -0.5, -0.75, 0.0, -1.0, -0.25, 0.5, 0.75, 0.5, 0.5, -1.0, -0.75, 0.75, 0.5, -0.25, -1.0, 0.25, -0.25, 0.25, 0.5, -0.5, 0.0, -0.25, 0.75, -1.0, ]);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    buffer200.destroy()
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const array7 = new Float32Array([-0.5, 1.0, 0.0, -0.75, -0.25, 0.25, 0.75, 0.5, 1.0, 0.0, 1.0, -0.5, 0.75, 0.25, -1.0, 0.25, -0.75, -0.5, -0.5, 1.0, 1.0, 0.25, 0.5, 0.75, 1.0, 0.5, -0.25, 1.0, -0.5, 0.25, 1.0, 0.25, -1.0, -0.75, -0.5, 0.75, -0.5, 0.5, 0.25, 0.0, 0.25, 0.25, 0.25, 0.0, -0.75, 0.75, -0.5, 1.0, -0.25, 0.25, -0.5, -0.75, -1.0, -1.0, 0.75, 0.5, 0.25, 0.75, 0.25, 0.0, -0.75, 0.5, -0.25, 1.0, -0.75, -0.75, -0.75, 0.75, 1.0, -0.5, -1.0, 0.75, -0.25, 1.0, 0.25, -0.75, 1.0, -0.5, -0.25, 1.0, -0.5, 1.0, -0.25, -0.25, -0.25, -0.25, 0.5, 0.75, -0.75, 0.25, -0.5, 0.0, 1.0, -0.25, 0.75, -0.75, 0.25, -1.0, -0.5, -0.75, ]);
    const texture_view1005 = texture100.createView({ label: "texture_view1005" });
    render_bundle_encoder200.popDebugGroup();
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    texture203.destroy();
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setStencilReference(1);
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2050.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.beginOcclusionQuery(0)
    render_pass_encoder2050.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setStencilReference(1);
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder2030.setStencilReference(1);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2030.executeBundles([])
    render_pass_encoder2030.endOcclusionQuery()
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    command_encoder204.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout206,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
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
    const array8 = new Float32Array([-0.25, 0.25, 1.0, 0.0, 0.25, -1.0, 0.25, 0.5, -1.0, -0.25, 1.0, 0.5, 0.25, 0.5, 0.5, -0.25, -0.25, -1.0, 0.5, -0.5, -1.0, -1.0, 0.75, 0.0, 0.75, -0.75, -0.5, 0.0, 0.5, -1.0, 0.25, -0.25, 1.0, 0.0, -0.5, -1.0, 0.5, 0.0, -0.25, -1.0, 0.5, -0.25, -1.0, 0.75, 0.5, 1.0, -0.75, -0.75, 0.75, -1.0, 1.0, 0.75, 0.75, 0.0, 0.0, -0.25, 0.5, -1.0, -0.25, 0.0, -1.0, 1.0, 0.25, 1.0, -0.75, -0.75, -0.25, -0.5, 1.0, 0.75, -0.75, 0.75, -1.0, 0.25, 0.0, 0.0, 0.5, -1.0, 0.0, -1.0, 0.5, 0.75, -0.25, 0.0, 1.0, -0.75, -1.0, 0.5, 0.0, -0.25, 0.5, -0.75, -0.75, 1.0, 0.25, -1.0, -0.5, 1.0, -0.25, 0.25, ]);
    compute_pass_encoder2010.setPipeline(compute_pipeline206);
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder1020.setVertexBuffer(0, buffer103);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
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
        layout: render_pipeline100.getBindGroupLayout(0),
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
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.executeBundles([])
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_pass_encoder2040.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder2040.setPipeline(render_pipeline200);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    query101.destroy()
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout206,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group102);
    query200.destroy()
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder2040.pushDebugGroup("group_marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    render_pass_encoder2050.insertDebugMarker("marker");
    render_pass_encoder2030.executeBundles([])
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    render_bundle_encoder201.popDebugGroup();
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer201.destroy()
    device40.destroy();
    render_pass_encoder2040.popDebugGroup();
    
    query103.destroy()
    compute_pass_encoder1030.setPipeline(compute_pipeline100);
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2050.pushDebugGroup("group_marker");
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_bundle_encoder100.setVertexBuffer(0, buffer104);
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer108.destroy()
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.setVertexBuffer(0, buffer103);
    
    render_bundle_encoder100.draw(3);
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer105.destroy()
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        layout: compute_pipeline206.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group200);
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    buffer107.destroy()
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    render_bundle_encoder101.setPipeline(render_pipeline102);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder202.setPipeline(render_pipeline200);
    
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout208,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group103);
    buffer109.destroy()
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer204, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer204, 0);
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout207,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    texture103.destroy();
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout206,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer204, 0, array3, 0, array3.length);
    buffer203.destroy()
    render_bundle_encoder101.popDebugGroup();
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder2050.executeBundles([])
    
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    render_bundle_encoder202.popDebugGroup();
    render_pass_encoder2050.setStencilReference(1);
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2040.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    texture105.destroy();
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder2050.insertDebugMarker("marker");
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer204.destroy()
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout207,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setPipeline(render_pipeline200);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2040.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    device20.pushErrorScope("out-of-memory");
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout208,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    buffer1011.destroy()
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1040.setPipeline(render_pipeline103);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout203,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2044 = device20.createComputePipeline({
        label: "compute_pipeline2044",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    buffer1012.destroy()
    
    
    render_pass_encoder2050.setPipeline(render_pipeline200);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group104);
    render_pass_encoder1040.setStencilReference(1);
    
    
    const compute_pipeline2045 = device20.createComputePipeline({
        label: "compute_pipeline2045",
        layout: pipeline_layout205,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1016, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1016, 0);
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const compute_pipeline2046 = device20.createComputePipeline({
        label: "compute_pipeline2046",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2047 = device20.createComputePipeline({
        label: "compute_pipeline2047",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.draw(3);
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout205]
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module208,
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
            module: shader_module208,
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
    device10.queue.writeBuffer(buffer1015, 0, array5, 0, array5.length);
    const compute_pipeline2048 = device20.createComputePipeline({
        label: "compute_pipeline2048",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query103.destroy()
    
    
    render_bundle_encoder101.setVertexBuffer(0, buffer103);
    
    device20.queue.submit([command_buffer202, ]);
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    device10.queue.writeBuffer(buffer1016, 0, array2, 0, array2.length);
    const compute_pipeline2049 = device20.createComputePipeline({
        label: "compute_pipeline2049",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
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
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    const compute_pipeline2050 = device20.createComputePipeline({
        label: "compute_pipeline2050",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group105);
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    buffer1010.destroy()
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group106);
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

    render_pass_encoder2030.setBindGroup(0, bind_group202);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1021, 0);
    render_pass_encoder1040.setVertexBuffer(0, buffer103);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1010.end();
    compute_pass_encoder1030.end();
    render_pass_encoder1040.draw(3);
    const command_buffer103 = command_encoder103.finish();
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1000.end();
    const command_buffer100 = command_encoder100.finish();
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder2050.popDebugGroup();
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

    render_pass_encoder2040.setBindGroup(0, bind_group203);
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2050.setBindGroup(0, bind_group204);
    render_pass_encoder1020.end();
    const command_buffer104 = command_encoder104.finish();
    const command_buffer102 = command_encoder102.finish();
    compute_pass_encoder2010.popDebugGroup()
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    compute_pass_encoder2010.end();
    device10.queue.submit([command_buffer100, ]);
    const command_buffer201 = command_encoder201.finish();
    device10.queue.submit([command_buffer104, ]);
    device20.queue.submit([command_buffer201, ]);
}