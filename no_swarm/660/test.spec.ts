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
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const array0 = new Float32Array([0.75, 0.25, 0.0, 0.0, -0.25, 0.0, 0.25, -1.0, 0.5, -1.0, -0.25, 1.0, 0.75, -0.5, 0.0, 1.0, -0.5, -0.5, 0.25, 0.5, 0.75, 0.75, 0.5, -1.0, 0.5, -1.0, 0.25, 0.5, 0.75, -0.75, 0.25, -0.25, -0.75, -0.75, 0.0, -0.75, 1.0, 0.5, 0.25, 0.0, -0.25, 1.0, -0.25, -0.25, -1.0, -0.25, 0.25, -0.25, -0.5, 0.75, -1.0, 0.75, 1.0, 0.5, 0.0, -0.5, -1.0, -0.75, 0.0, -1.0, 0.5, 0.5, -1.0, 0.75, 0.25, -0.75, -1.0, 0.75, -1.0, 0.0, -0.25, -1.0, 0.25, -0.25, 0.25, -0.75, -0.75, 0.75, 0.0, 0.5, 0.0, -1.0, -0.5, 1.0, 0.75, -0.5, 0.0, -1.0, -0.25, 0.0, 0.0, -1.0, 1.0, -0.5, -0.75, 0.0, -0.25, -1.0, -0.25, -0.75, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
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
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
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
    buffer001.destroy()
    device00.destroy();
    const array1 = new Float32Array([-0.25, -0.5, -0.75, 0.25, 1.0, -1.0, 0.25, 0.25, -0.75, -0.75, -0.75, 0.25, 0.0, -0.5, -0.25, -1.0, 0.5, 0.0, 0.5, -0.75, -0.75, 1.0, -0.5, -0.25, -0.75, -0.75, -1.0, 0.0, 0.5, -0.25, 0.25, -0.5, 0.25, -0.75, -1.0, -0.5, -1.0, 0.75, 0.75, -0.5, -0.5, -0.75, -1.0, 1.0, 0.0, 0.0, 0.0, 0.75, 0.75, -0.5, 0.5, 0.5, 0.25, -0.5, -1.0, -0.75, -1.0, 1.0, -0.25, 1.0, -0.5, 0.5, -0.5, -1.0, -1.0, 0.0, -0.75, -1.0, -0.5, -1.0, -0.25, -0.5, -0.75, 0.5, -0.25, 0.75, 0.0, -0.5, 0.25, -0.25, 0.0, 1.0, 0.75, 0.75, -0.25, 1.0, 0.0, 0.5, 0.75, 0.25, 0.0, 0.5, -0.25, 1.0, -0.75, 0.75, 0.25, 0.25, 0.0, 0.75, ]);
    
    
    const array2 = new Float32Array([-0.75, 0.25, -1.0, 0.75, -0.25, -0.5, 0.5, 0.75, -1.0, 0.0, -0.25, 0.0, -1.0, -0.25, 0.5, 0.0, 0.0, 0.5, -0.25, 0.75, 0.25, -0.25, 1.0, -0.5, 0.75, 0.25, 1.0, -0.5, -0.5, 0.25, -0.75, -0.75, -1.0, 1.0, 0.25, -0.25, -0.5, -0.25, 0.0, 0.0, 0.25, -0.75, 1.0, -0.5, -0.5, -1.0, 0.75, 0.75, 0.5, -0.75, 1.0, 0.0, 0.5, 1.0, 0.25, 0.0, -0.5, 1.0, 0.5, -0.5, -1.0, 0.25, 1.0, -1.0, 0.25, -1.0, 1.0, 0.0, -1.0, 0.5, 0.5, 0.75, -0.75, -1.0, -0.5, 1.0, 0.75, -0.75, 0.75, 0.25, -0.25, -1.0, -0.25, -0.5, -1.0, -0.25, -0.5, -1.0, 0.5, -0.75, -1.0, -0.25, 1.0, 1.0, -0.5, -0.5, 0.0, 0.0, 1.0, -0.75, ]);
    
    const array3 = new Float32Array([0.25, -0.5, 0.25, -0.75, -1.0, -1.0, 0.25, 0.0, 0.5, -0.75, -0.75, 0.25, -0.5, 0.25, 1.0, 0.0, 1.0, 0.25, 0.75, -1.0, -0.75, 1.0, 0.25, 0.0, 1.0, -0.75, -0.25, -0.25, 0.5, 0.25, -1.0, -1.0, 1.0, 0.5, -0.5, 0.75, 0.0, -0.25, -0.5, 0.0, 0.25, -0.75, -1.0, 0.5, 1.0, -0.25, 0.75, 0.0, 0.75, -0.25, 1.0, 0.0, 0.25, 0.0, 1.0, 1.0, 0.25, 0.25, -0.25, -0.5, 0.0, 0.75, -0.75, 0.25, 1.0, -0.5, 0.5, -0.25, -1.0, -0.25, 1.0, -0.75, -0.25, -1.0, 0.0, 0.0, -0.5, -0.25, -0.75, -0.25, 0.5, 0.5, 0.0, -0.25, -1.0, 0.0, -0.5, 0.75, -0.25, -1.0, -0.25, -0.75, 0.0, 0.25, 0.75, -0.5, 0.0, 0.75, 0.0, 0.75, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.pushErrorScope("internal");
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query200.destroy()
    render_bundle_encoder200.popDebugGroup();
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    buffer201.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query200.destroy()
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    
    
    
    buffer100.destroy()
    const array4 = new Float32Array([1.0, -0.25, -0.5, 0.25, -0.25, 0.25, 0.75, 1.0, 0.75, 0.25, 1.0, -0.25, 0.5, -0.5, -0.5, 0.75, 1.0, 0.25, -0.5, 0.0, -0.75, -0.25, -0.25, 0.25, -1.0, 0.75, -0.5, 1.0, -0.75, -0.25, -1.0, 0.25, -0.75, -1.0, -0.75, -0.5, 1.0, 0.75, -0.75, 1.0, 0.25, -1.0, -1.0, 0.25, 0.75, 0.75, 0.0, 1.0, 0.25, 0.25, -0.25, -0.5, 1.0, -1.0, 0.25, -0.25, 0.25, 1.0, 0.75, 0.75, -1.0, -0.5, -0.25, 0.0, -0.5, 0.5, -0.5, 0.25, 0.25, -0.25, 0.75, 1.0, 0.25, 0.75, 0.5, 1.0, 1.0, 1.0, -0.25, -0.75, -0.5, 1.0, -0.25, 1.0, 0.25, -0.5, 0.5, 0.5, -0.5, -1.0, 0.0, 0.5, 0.0, 1.0, -0.25, -0.75, 1.0, 0.75, 0.5, -0.25, ]);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    texture201.destroy();
    buffer202.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    texture200.destroy();
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const command_buffer102 = command_encoder102.finish();
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
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
    const array5 = new Float32Array([-0.75, 0.25, 0.25, 0.5, -1.0, -0.5, -0.25, -0.5, -0.75, 0.25, 0.5, -0.25, 0.5, 0.75, -1.0, 0.5, 0.5, 1.0, 0.0, 0.25, 0.75, 0.75, -0.25, 0.25, -0.5, -1.0, 0.25, 0.75, -0.25, -0.5, 0.75, 0.75, -0.5, 0.5, -0.5, 0.25, 0.5, 0.25, -0.25, -0.25, 0.5, -0.25, -0.5, 0.25, -0.75, -1.0, 0.75, 0.0, -0.75, 0.75, -0.75, 0.0, -0.75, -0.25, 0.25, -1.0, -0.25, 1.0, 0.25, -0.75, -0.25, -0.75, -0.25, 0.75, 0.5, -1.0, -0.5, -0.25, 0.0, 0.0, 0.25, 0.75, -1.0, 0.75, 0.5, -0.25, -0.75, -0.5, -0.5, 0.5, 0.75, 0.75, -0.25, 0.25, -0.5, 0.75, -0.75, -0.5, 0.75, 0.25, 0.0, -1.0, 1.0, -1.0, 0.5, -0.75, 0.0, -0.25, 0.0, -0.75, ]);
    command_encoder101.popDebugGroup()
    
    
    device20.destroy();
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder101.insertDebugMarker("mymarker");
    const array6 = new Float32Array([0.75, 1.0, -0.5, -0.75, 1.0, 0.5, 1.0, 0.25, 1.0, -0.5, -1.0, -1.0, 1.0, 1.0, -1.0, -1.0, -1.0, 0.25, 0.75, -0.5, 0.75, -0.25, -0.25, -0.25, 1.0, -0.75, 0.25, 0.0, -0.5, 0.5, -0.5, 1.0, -0.25, -0.75, -0.75, -0.75, 0.25, -0.5, -0.25, 0.0, 0.5, 0.75, 1.0, -1.0, 0.0, 0.5, -0.75, 0.0, 0.25, -1.0, -0.75, 0.25, 0.5, -1.0, 0.25, -1.0, 1.0, -0.75, -1.0, -0.25, -0.5, 0.0, 0.75, 0.0, -0.25, 0.25, 1.0, -0.5, -0.25, 0.5, 0.0, 0.25, 1.0, 0.25, 0.75, -0.5, -0.25, -0.25, 0.75, -1.0, 1.0, -1.0, 0.75, -0.5, -0.75, 0.5, -1.0, -0.75, -0.75, 0.0, -0.75, -0.5, -1.0, 0.75, 1.0, 1.0, -1.0, 1.0, -0.5, -0.75, ]);
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_buffer101 = command_encoder101.finish();
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const command_buffer103 = command_encoder103.finish();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device40.destroy();
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32sint",
        dimension: "2d"
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    query100.destroy()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.popDebugGroup();
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    command_encoder500.insertDebugMarker("mymarker");
    
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    device50.pushErrorScope("internal");
    
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    
    render_bundle_encoder102.popDebugGroup();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    const array7 = new Float32Array([0.0, 0.5, -0.5, -1.0, -0.75, -0.75, 0.5, -0.25, 1.0, 0.5, -0.75, 0.25, -0.5, -0.5, -0.5, -0.5, 1.0, 0.25, -0.25, 1.0, 0.5, -0.5, 0.25, 0.5, -1.0, -1.0, -0.75, 0.5, -0.5, -0.75, 0.75, 0.25, 1.0, 1.0, 0.5, -0.75, -0.5, 0.0, 0.25, -1.0, 0.0, 0.25, -0.75, 0.5, 0.0, -0.25, -0.75, -0.5, 0.25, 1.0, -0.5, -0.25, 0.5, -0.75, 0.0, 0.5, 1.0, 0.25, -0.75, -0.25, 1.0, 0.0, -1.0, 1.0, -0.75, -0.25, 0.75, 0.25, -1.0, 0.0, 0.25, -0.75, -0.25, 0.5, 0.5, 0.0, -0.5, 1.0, -0.25, 0.25, 0.5, 0.25, -0.75, 0.0, 0.0, 0.25, 1.0, 0.5, 0.0, -0.75, -0.5, 0.5, 0.0, 0.75, 0.0, -0.5, 0.75, -0.75, -1.0, 0.25, ]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
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
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture302.destroy();
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture_view5021 = texture502.createView({ label: "texture_view5021" });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
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
    
    
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    texture303.destroy();
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    texture501.destroy();
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    texture100.destroy();
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query100.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer103, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer103, 0);
    buffer500.destroy()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    render_bundle_encoder102.popDebugGroup();
    compute_pass_encoder1000.end();
    
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query102.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.popDebugGroup();
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeTexture({ texture: texture504 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture504 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    query301.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3000.executeBundles([])
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const array8 = new Float32Array([0.25, -1.0, 0.0, 1.0, 0.75, 1.0, 1.0, 0.5, -0.5, 0.0, -1.0, -0.5, -0.25, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.75, 1.0, 0.25, -0.75, 1.0, 1.0, -1.0, 0.25, 0.25, -0.25, 0.5, -0.25, 0.0, 1.0, -1.0, 0.75, -0.75, 0.0, -0.5, -0.5, 0.5, 0.5, 0.75, -1.0, -1.0, 0.0, 0.75, 1.0, 1.0, 0.25, -0.75, 1.0, -1.0, -0.5, 1.0, 0.0, 0.0, 0.5, 0.75, 0.5, 1.0, -0.75, 0.25, -0.75, 1.0, 0.5, -0.25, -0.25, 1.0, -0.75, 1.0, -0.25, 1.0, -1.0, 1.0, 0.0, -0.25, 1.0, -0.5, -0.25, 1.0, 1.0, 0.0, 0.75, 0.25, 0.0, 1.0, -1.0, 0.25, 1.0, -1.0, -0.25, -0.5, -0.25, 1.0, 0.0, 0.5, 0.0, 1.0, 1.0, 0.0, ]);
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    command_encoder100.pushDebugGroup("mygroupmarker")
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    texture502.destroy();
    device50.queue.writeTexture({ texture: texture504 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture504.destroy();
    render_pass_encoder3000.executeBundles([])
    render_pass_encoder5010.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    render_bundle_encoder100.setPipeline(render_pipeline101);
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    query301.destroy()
    render_pass_encoder5010.setStencilReference(1);
    render_pass_encoder3000.pushDebugGroup("group_marker");
    render_bundle_encoder101.setPipeline(render_pipeline101);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    render_bundle_encoder501.insertDebugMarker("marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    
    device30.queue.writeTexture({ texture: texture304 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query500.destroy()
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    
    
    buffer104.destroy()
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    device30.queue.writeTexture({ texture: texture304 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("out-of-memory");
    texture503.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    device30.queue.writeTexture({ texture: texture304 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device70.pushErrorScope("out-of-memory");
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder102.setPipeline(render_pipeline101);
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    render_bundle_encoder502.insertDebugMarker("marker");
    command_encoder100.insertDebugMarker("mymarker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const texture_view3041 = texture304.createView({ label: "texture_view3041" });
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    render_pass_encoder3000.setStencilReference(1);
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder500.popDebugGroup();
    render_pass_encoder5010.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    texture304.destroy();
    render_bundle_encoder100.popDebugGroup();
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    texture102.destroy();
    
    device10.queue.submit([command_buffer102, ]);
    
    render_pass_encoder5010.setPipeline(render_pipeline501);
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder700.pushDebugGroup("mygroupmarker")
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder502.setPipeline(render_pipeline501);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    query101.destroy()
    device10.queue.submit([command_buffer101, ]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    
    
    
    
    
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    device50.queue.submit([command_buffer500, ]);
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer501,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer502,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group500);
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer107.destroy()
    
    
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
    device30.pushErrorScope("validation");
    texture300.destroy();
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    device80.destroy();
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    buffer502.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder700.insertDebugMarker("mymarker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    query301.destroy()
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1001.insertDebugMarker("marker")
    texture500.destroy();
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3041,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder1001.setPipeline(compute_pipeline109);
    
    
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_pass_encoder5010.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    query300.destroy()
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    
    command_encoder700.popDebugGroup()
    device70.queue.writeTexture({ texture: texture700 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query700.destroy()
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16float",
        dimension: "2d"
    });
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder7000 = command_encoder700.beginRenderPass({
        label: "render_pass_encoder7000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7001,
            },
        ],
        occlusionQuerySet: undefined
    });
    query301.destroy()
    
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group103);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder7000.executeBundles([])
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    buffer102.destroy()
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_pass_encoder3010.setPipeline(render_pipeline300);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3000.setPipeline(render_pipeline300);
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline109.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group104);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1012, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1012, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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

    render_pass_encoder3010.setBindGroup(0, bind_group300);
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

    render_pass_encoder3000.setBindGroup(0, bind_group301);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1001.popDebugGroup()
    compute_pass_encoder1001.end();
    command_encoder100.popDebugGroup()
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
}