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
    
    
    
    
    const array0 = new Float32Array([-0.75, -0.75, 0.25, 1.0, 0.75, -0.5, 0.75, -0.75, 0.25, -0.75, -1.0, 0.75, -0.75, -0.75, -0.5, 0.75, -0.75, -0.25, -0.75, 0.25, 0.0, -0.5, -0.25, 0.25, 1.0, -0.25, 0.75, 0.75, -0.25, 0.25, 0.5, 0.75, -0.25, -0.75, -0.25, -0.25, 0.25, -0.5, 1.0, 0.5, -1.0, 0.0, 1.0, 0.25, 0.5, -0.5, -0.75, 1.0, -0.75, 0.25, -0.75, -0.25, 0.25, 0.5, 0.75, -0.5, 0.25, -0.75, 0.25, 1.0, -1.0, 0.25, -0.5, 1.0, -1.0, 0.75, -1.0, -0.5, 1.0, -1.0, 0.75, 0.75, 0.75, -0.25, -1.0, 0.25, -0.75, 0.5, 0.75, -0.5, -1.0, 0.5, 0.5, 0.5, -1.0, -0.5, -0.25, 0.5, -0.5, -0.75, -0.75, 0.75, -0.5, -0.25, -0.5, 0.25, 0.25, -0.75, 1.0, 0.0, ]);
    const array1 = new Float32Array([0.75, 0.0, 0.0, 0.75, -0.5, 0.75, 1.0, -0.25, 1.0, 0.25, -0.75, 0.25, 0.0, 1.0, 0.5, -1.0, -0.5, 0.0, 1.0, -0.5, 1.0, -1.0, -0.25, 0.75, 0.0, 0.0, -1.0, 0.5, 0.0, 0.5, 1.0, 0.75, 1.0, -0.25, 0.75, 0.25, 0.0, -0.25, 1.0, 0.0, 0.75, -0.75, 0.5, -0.75, 0.0, 0.75, 0.25, 1.0, -0.25, 1.0, -1.0, 0.5, -0.75, 0.75, -0.75, -0.25, 0.25, 0.25, 0.0, 0.5, -1.0, 0.0, 0.25, -0.5, 0.25, 0.25, 0.75, 0.0, 1.0, -1.0, -0.5, -0.25, 0.0, 0.5, 0.25, -0.75, -0.5, 1.0, 0.5, 0.5, -0.75, 0.0, 0.0, -0.25, -0.5, -0.75, 1.0, 0.75, -1.0, 0.5, -0.75, -0.5, -0.25, 0.0, -0.5, 0.25, -0.5, -0.75, 1.0, 1.0, ]);
    
    const array2 = new Float32Array([0.5, 0.25, 0.75, 0.75, 0.5, 0.5, 0.5, -1.0, 0.5, -0.75, -0.25, 0.5, -0.75, 0.25, 0.0, 0.5, 1.0, -0.5, 0.5, 0.75, -0.75, -0.75, -0.5, -1.0, 0.5, 1.0, -0.25, 0.0, 0.75, 0.0, 1.0, 1.0, -0.5, 0.25, 1.0, -1.0, -0.25, -0.75, -0.75, -0.25, 1.0, -0.5, 0.5, -0.75, 1.0, 0.75, 0.75, 0.0, 0.25, 0.5, 0.75, 0.5, -0.75, 0.25, -0.5, 0.5, 0.0, 0.5, -1.0, -0.75, 0.25, -0.5, 1.0, 1.0, -0.75, 0.25, 0.75, 1.0, 0.0, 0.0, 0.75, -0.5, 1.0, -0.75, -1.0, -0.75, -1.0, -0.25, 1.0, 1.0, -1.0, 1.0, 0.0, -1.0, 1.0, -0.25, 0.5, 0.25, -1.0, 1.0, 0.5, 0.25, -0.25, -1.0, -0.25, 0.5, -0.25, 0.5, -0.25, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([-0.25, -0.5, 1.0, 0.0, -1.0, -1.0, 1.0, -1.0, -0.5, 0.25, -1.0, 0.5, 1.0, -0.75, 1.0, 0.0, -0.75, 0.5, -1.0, -1.0, 0.5, -0.5, -0.5, -0.5, 1.0, -0.25, -1.0, -1.0, 0.75, 0.75, 0.5, -0.75, -0.25, 0.0, 0.0, -0.25, 0.75, 0.25, -0.25, 0.25, 0.75, -0.75, 0.5, 0.5, 0.5, 0.75, 0.0, 0.5, 0.5, 0.5, -0.75, 0.5, 0.25, 0.75, -0.25, -0.75, -0.75, -1.0, 1.0, -0.5, -1.0, 0.0, 0.0, 0.0, -1.0, 0.25, 1.0, -0.25, 1.0, -0.5, 0.0, 0.75, 1.0, 0.75, 0.5, 0.5, 0.25, 0.25, 0.25, -0.25, 0.25, -0.75, 0.0, 0.75, -0.75, -0.75, -0.75, -0.5, -1.0, 0.5, 0.0, -0.5, 0.5, -0.25, -0.5, 0.0, 0.5, 0.25, -0.25, -1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    const array4 = new Float32Array([-0.25, 0.0, -0.75, -1.0, 1.0, 0.5, 0.5, 0.0, 0.25, 0.0, -0.5, -0.75, 0.25, 0.25, 0.75, -0.75, -0.25, 0.25, -1.0, 0.75, 0.25, 0.25, 0.5, 0.25, -0.75, -0.75, 1.0, 0.75, -0.75, -0.25, 1.0, -0.5, 0.25, 1.0, -0.25, -0.25, 0.25, -0.5, 0.0, 0.75, -0.75, -0.75, 0.75, 0.0, -0.75, -0.75, -1.0, 0.5, 0.5, -0.25, 0.25, 0.0, 0.75, 0.25, 0.5, -0.25, -0.25, -0.5, -0.75, -1.0, 0.0, 0.5, 1.0, 0.25, 1.0, -0.25, 0.0, -0.25, -0.75, 0.5, -1.0, 0.0, 0.0, -0.75, -0.75, -1.0, 1.0, -0.25, -0.5, 0.75, -0.75, 0.0, 0.25, -0.75, 0.75, -0.25, 0.25, 0.5, -0.25, 0.5, 0.75, 0.75, 0.75, -0.75, 0.5, -1.0, 0.5, 0.5, 0.25, -0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device10.pushErrorScope("validation");
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array5 = new Float32Array([0.5, -0.25, -0.5, 0.5, -1.0, 0.5, -0.5, 1.0, 0.0, -0.75, -0.5, -0.25, -0.25, -1.0, 0.0, 0.0, 0.75, 0.5, -1.0, 0.25, 0.0, -0.25, 0.25, 0.25, 0.25, 0.0, -1.0, -0.5, 0.75, 0.25, -0.5, -1.0, 0.25, -0.5, 0.0, 0.0, 0.5, -0.75, 0.5, -0.25, 0.0, -1.0, 0.75, 1.0, -0.25, -0.5, 0.5, 0.5, -1.0, 0.75, 1.0, -1.0, 0.5, -0.25, 0.25, -1.0, -0.25, 0.25, 0.25, 0.75, 0.25, -1.0, -0.25, 0.5, 0.25, -0.25, 1.0, -0.5, 0.75, -1.0, 0.75, 1.0, 1.0, 1.0, -0.5, 0.25, -0.5, 0.75, -0.75, -0.5, -1.0, 0.25, -1.0, 0.25, 1.0, -0.5, -1.0, -0.25, 0.5, 0.25, -0.75, 0.5, -0.75, -0.75, 0.0, -0.5, 1.0, -1.0, -0.75, 0.0, ]);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    buffer100.destroy()
    
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
    command_encoder101.insertDebugMarker("mymarker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer101.destroy()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    command_encoder100.insertDebugMarker("mymarker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    device10.pushErrorScope("validation");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.pushErrorScope("internal");
    command_encoder100.pushDebugGroup("mygroupmarker")
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const command_buffer101 = command_encoder101.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("internal");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth16unorm",
        dimension: "2d"
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
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
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder100.popDebugGroup();
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    device10.pushErrorScope("validation");
    
    
    buffer102.destroy()
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.submit([command_buffer101, ]);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder200.insertDebugMarker("mymarker");
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
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
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture200.destroy();
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture101.destroy();
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    texture202.destroy();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    render_bundle_encoder200.setPipeline(render_pipeline201);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    texture001.destroy();
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    query200.destroy()
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder2000.popDebugGroup()
    query200.destroy()
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder1000.insertDebugMarker("marker");
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    query001.destroy()
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
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1000.executeBundles([])
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device30.pushErrorScope("internal");
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    texture000.destroy();
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder201.setPipeline(render_pipeline201);
    query000.destroy()
    
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout206]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder1000.executeBundles([])
    render_bundle_encoder000.pushDebugGroup("group_marker");
    texture201.destroy();
    render_pass_encoder1000.insertDebugMarker("marker");
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout206,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const array6 = new Float32Array([0.25, -0.25, 0.75, -0.5, -0.25, -0.25, -1.0, -0.5, -0.75, 0.75, -0.75, -0.25, -0.25, 1.0, -0.5, 0.5, 0.0, 0.0, 0.0, 1.0, -0.75, -0.75, 1.0, -0.75, 0.25, 0.25, 0.75, 0.25, 1.0, -1.0, 0.0, -0.75, 1.0, 0.25, 0.75, 0.75, 0.75, 0.0, -0.75, 0.25, 0.0, 0.75, -0.25, 0.75, 0.75, -0.5, -0.5, -0.25, 0.25, -0.75, 1.0, -0.75, 0.5, 0.5, -0.25, -1.0, -0.5, -1.0, -1.0, -1.0, -0.25, 0.75, -0.5, -0.75, -0.75, -1.0, -0.75, -0.25, -0.25, 0.25, -0.75, 0.0, 1.0, 0.25, -0.25, -0.75, -0.5, -0.75, -0.5, -1.0, 0.0, -1.0, 0.0, 0.75, -0.25, -0.75, 0.25, 0.0, 0.25, 0.0, 0.5, 0.0, 1.0, 1.0, 0.5, 0.75, -0.5, 0.5, 0.5, 0.0, ]);
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    compute_pass_encoder2010.setPipeline(compute_pipeline205);
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture203.destroy();
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group200);
    
    render_pass_encoder1000.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
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
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    
    render_pass_encoder2020.executeBundles([])
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_pass_encoder2020.setPipeline(render_pipeline200);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    texture205.destroy();
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout203]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    buffer103.destroy()
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
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

    render_pass_encoder2020.setBindGroup(0, bind_group202);
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
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group203);
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_pass_encoder1030.setStencilReference(1);
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
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
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder2030.setPipeline(render_pipeline203);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query000.destroy()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    render_pass_encoder1030.beginOcclusionQuery(0)
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout204]
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    buffer205.destroy()
    compute_pass_encoder2010.popDebugGroup()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    texture103.destroy();
    compute_pass_encoder3000.insertDebugMarker("marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder002.setPipeline(render_pipeline000);
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout200]
    });
    buffer201.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    
    
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
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
    render_bundle_encoder202.setPipeline(render_pipeline203);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder2000.popDebugGroup()
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout204,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1030.setStencilReference(1);
    render_bundle_encoder201.insertDebugMarker("marker");
    
    buffer204.destroy()
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    buffer208.destroy()
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    buffer104.destroy()
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.executeBundles([])
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    compute_pass_encoder2010.insertDebugMarker("marker")
    device40.destroy();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer209, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer209, 0);
    query300.destroy()
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout208,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    render_pass_encoder2040.setPipeline(render_pipeline201);
    device20.queue.writeBuffer(buffer209, 0, array2, 0, array2.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query102.destroy()
    device20.queue.writeBuffer(buffer209, 0, array3, 0, array3.length);
    query001.destroy()
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout207,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout205,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer209, 0, array1, 0, array1.length);
    
    query200.destroy()
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder200.popDebugGroup();
    
    const texture_view2061 = texture206.createView({ label: "texture_view2061" });
    device00.destroy();
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    buffer209.destroy()
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder1030.setStencilReference(1);
    
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout206,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2030.pushDebugGroup("group_marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const texture_view2042 = texture204.createView({ label: "texture_view2042" });
    const compute_pipeline2044 = device20.createComputePipeline({
        label: "compute_pipeline2044",
        layout: pipeline_layout209,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2045 = device20.createComputePipeline({
        label: "compute_pipeline2045",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const texture_view2062 = texture206.createView({ label: "texture_view2062" });
    buffer200.destroy()
    const compute_pipeline2046 = device20.createComputePipeline({
        label: "compute_pipeline2046",
        layout: pipeline_layout205,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2047 = device20.createComputePipeline({
        label: "compute_pipeline2047",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    texture104.destroy();
    render_pass_encoder1030.setStencilReference(1);
    const compute_pipeline2048 = device20.createComputePipeline({
        label: "compute_pipeline2048",
        layout: pipeline_layout209,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2049 = device20.createComputePipeline({
        label: "compute_pipeline2049",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
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
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline2050 = device20.createComputePipeline({
        label: "compute_pipeline2050",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    texture102.destroy();
    const compute_pipeline2051 = device20.createComputePipeline({
        label: "compute_pipeline2051",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2052 = device20.createComputePipeline({
        label: "compute_pipeline2052",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.executeBundles([])
    const compute_pipeline2053 = device20.createComputePipeline({
        label: "compute_pipeline2053",
        layout: pipeline_layout202,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2054 = device20.createComputePipeline({
        label: "compute_pipeline2054",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const compute_pipeline2055 = device20.createComputePipeline({
        label: "compute_pipeline2055",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2056 = device20.createComputePipeline({
        label: "compute_pipeline2056",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2057 = device20.createComputePipeline({
        label: "compute_pipeline2057",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    buffer105.destroy()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder2030.popDebugGroup();
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
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
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

    render_pass_encoder2040.setBindGroup(0, bind_group204);
    compute_pass_encoder1020.popDebugGroup()
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2012, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2012, 0);
    compute_pass_encoder2010.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2000.end();
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group205);
    const command_buffer200 = command_encoder200.finish();
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer200, ]);
}