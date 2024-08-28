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
    const array0 = new Float32Array([-0.5, -0.75, -0.75, 0.25, -0.5, -0.25, 1.0, 0.75, 0.25, 0.75, -1.0, -0.25, -0.75, 0.5, 0.0, 0.0, -0.75, -0.25, 1.0, 0.5, 0.25, 0.0, 0.25, -1.0, -0.5, 0.5, -0.5, -1.0, 0.25, 0.0, -1.0, 0.5, 0.75, -0.75, -1.0, 0.0, 0.0, 0.75, -1.0, 0.0, 0.5, 1.0, -0.5, -0.25, -0.5, 0.25, 1.0, -0.75, 0.25, 0.25, -0.75, 0.25, -0.75, 0.0, 1.0, 0.75, -1.0, 0.5, 0.0, -0.5, 0.0, 0.25, -0.5, 1.0, 0.5, 0.0, 0.5, -0.75, 0.0, 0.0, 1.0, -1.0, 0.25, 0.0, -0.25, -0.75, -0.75, 0.25, 0.75, -0.75, 0.0, -0.25, 0.75, 0.5, -0.75, -0.5, 1.0, 1.0, -0.5, 0.75, 0.75, 1.0, 0.0, 1.0, 0.75, -0.5, 1.0, 0.5, -0.5, -0.75, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    device00.destroy();
    
    
    const array1 = new Float32Array([-1.0, 0.75, 0.75, -0.5, 0.75, -0.5, 0.25, -0.5, -0.5, 0.75, 1.0, -0.25, 0.25, 0.0, -0.5, 0.5, 0.25, 1.0, 0.5, -0.25, -0.75, 0.0, 0.25, -0.5, 1.0, 0.5, -0.75, -0.5, -0.75, 0.0, 0.5, -1.0, -0.25, 0.0, -0.5, 0.5, 0.0, -0.25, -0.5, 0.75, 0.5, 0.5, -0.75, -0.25, -0.25, 0.5, 1.0, 0.75, -1.0, 0.0, 0.75, 0.25, -0.5, 0.5, 0.5, -0.25, -1.0, 0.0, -1.0, 0.25, -0.25, -0.75, 0.5, -0.75, 1.0, -0.75, 1.0, 0.25, 0.75, -0.75, -1.0, -1.0, -1.0, -1.0, -1.0, 0.5, 0.25, 0.5, 0.5, 0.25, 0.75, 1.0, 0.5, -0.5, -0.25, 0.75, 0.25, 0.0, -0.75, 0.0, -1.0, -0.75, 0.5, 1.0, 0.25, 0.25, -0.75, -0.75, -0.5, 0.75, ]);
    
    const array2 = new Float32Array([-0.75, -0.75, 0.0, 0.0, 0.5, 0.25, 0.75, -1.0, -0.25, -0.5, 1.0, -0.5, -1.0, -0.75, -0.75, 0.5, -0.25, 0.25, -1.0, 0.75, 0.0, -0.75, -1.0, 0.0, -1.0, 1.0, -0.75, 1.0, 1.0, 0.5, 0.75, 0.75, 0.75, -0.5, 0.75, 0.5, -0.25, 0.75, -1.0, 1.0, -1.0, -0.25, -0.5, 0.75, 1.0, 1.0, 0.0, 1.0, -0.5, -0.25, -0.75, 0.5, -0.5, -0.75, 0.5, -0.75, -0.75, -0.5, -0.75, 0.5, -0.5, -0.75, -1.0, 0.5, -0.75, 0.5, 0.25, -0.25, -0.5, 1.0, 1.0, -1.0, 0.0, 0.0, 1.0, 0.75, 0.25, 0.0, 0.25, 0.25, 0.75, 0.75, 0.0, 1.0, 0.0, -0.25, -0.75, 0.5, 0.0, 0.25, 0.5, -0.25, -0.25, -1.0, 0.75, 0.25, -1.0, 0.0, 0.25, -1.0, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([-1.0, 0.5, -0.5, 0.25, -0.5, 0.25, 0.25, -0.5, 0.75, -1.0, -1.0, 0.25, -0.75, 0.5, 0.75, -0.25, -0.75, 0.25, 0.0, -0.25, 0.0, 0.75, -0.5, 0.0, -0.25, -1.0, -0.25, 1.0, 1.0, 0.0, 1.0, 0.5, 0.75, 0.0, -0.75, -0.75, 1.0, 0.25, 1.0, 0.0, 0.0, 0.75, -0.5, 1.0, 0.25, -1.0, -1.0, 0.0, -0.25, 0.75, -0.75, 0.75, -0.5, 0.0, -0.5, 0.75, -1.0, 0.25, -0.25, 0.75, 0.0, -0.75, -0.5, 0.25, 0.5, 0.0, -0.75, 0.5, 0.75, 0.75, -1.0, 0.75, -0.5, -0.5, -0.5, -1.0, 0.25, -1.0, 1.0, -1.0, 0.25, -0.25, 0.75, -0.5, 0.0, -0.25, 1.0, 0.75, 0.25, 0.25, 0.5, -0.5, -0.5, 0.5, 0.75, -0.5, 0.0, -0.25, 1.0, 1.0, ]);
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder200.pushDebugGroup("mygroupmarker")
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    buffer201.destroy()
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.popDebugGroup();
    
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder200.popDebugGroup()
    const array4 = new Float32Array([-0.75, 0.25, 0.25, 0.25, -0.5, 0.5, 0.5, 0.5, 0.5, 0.75, 0.5, 0.0, -0.75, 0.0, 0.0, 0.25, -0.75, 1.0, 0.75, 0.75, 0.25, 0.5, -0.75, -0.5, -0.25, 0.0, -0.25, -0.75, 0.5, 0.75, 0.5, 0.25, -0.75, 1.0, 0.75, -1.0, 0.0, -1.0, 0.25, 0.75, 1.0, 0.0, 0.25, 0.25, -0.25, 0.5, 0.25, -0.25, 0.5, 0.25, -0.75, -0.5, -0.5, 0.75, -1.0, -0.25, 0.75, -0.25, 1.0, 0.75, 0.25, -0.5, -0.5, 0.0, -1.0, 0.0, -0.5, 0.25, -0.25, -0.25, 0.0, -0.5, -0.5, -0.75, 0.5, 1.0, 0.75, -0.75, 0.25, 0.25, 1.0, -1.0, -0.25, 0.0, 0.25, 0.5, -0.75, 0.75, 0.25, 1.0, 0.25, -0.75, 0.5, 0.0, -0.25, -0.75, -0.5, -0.75, -0.25, 1.0, ]);
    const array5 = new Float32Array([-1.0, 0.25, -0.5, -0.5, 0.0, -1.0, -0.25, -0.25, -0.75, 0.75, 0.75, 0.0, 0.75, -0.25, -0.5, 0.75, 0.75, 0.0, -0.5, 0.0, 0.5, 0.0, 0.25, 1.0, 0.25, 0.75, -0.25, -0.25, -1.0, -1.0, 0.25, -0.25, 0.25, 0.75, 0.0, 0.75, -0.25, -0.75, -0.25, -0.75, 1.0, -0.5, -1.0, -1.0, 0.25, 0.5, 0.5, -0.75, -0.75, -0.25, -0.75, 0.25, -0.5, 1.0, -0.75, 0.25, 1.0, 0.5, -0.25, -0.5, -0.5, 0.75, 1.0, -0.75, 0.5, 0.5, -0.75, -0.25, 0.75, 0.0, -1.0, 1.0, -0.75, -0.5, -0.75, -0.75, 0.25, 0.25, 0.25, 0.75, -0.25, 0.5, 1.0, 0.25, 1.0, 1.0, 0.5, -0.75, 0.25, 1.0, -0.5, 0.25, -0.75, 0.75, -0.25, -0.75, 1.0, 0.0, 0.5, 0.25, ]);
    buffer202.destroy()
    const array6 = new Float32Array([-0.75, -0.75, 0.25, 1.0, -0.25, -0.75, -0.5, -1.0, 0.25, -0.75, -0.5, 1.0, 0.0, -0.75, -1.0, -1.0, -0.25, 0.5, 0.25, -1.0, 0.25, -1.0, 0.0, 0.0, 0.25, -0.25, 0.75, 1.0, 0.75, -0.5, -0.5, 1.0, 0.0, 0.25, -0.75, 0.25, -0.5, -0.25, 0.75, 0.75, -0.5, -0.75, -0.5, 1.0, 0.75, -0.25, -0.75, 0.5, -0.25, -0.25, 0.25, 0.75, 0.25, 0.0, 0.25, -0.75, -0.75, -0.25, -0.25, -1.0, -0.5, 1.0, 0.0, 1.0, -0.25, -0.25, -0.25, -0.25, 0.5, 0.75, -0.75, 0.25, 0.25, 0.75, 0.75, -1.0, 0.25, 0.0, 0.5, 0.0, -0.75, 0.5, -0.25, 1.0, -1.0, -0.25, 1.0, 0.25, -1.0, 0.75, -0.25, -0.5, -0.5, 0.5, -0.25, -0.25, -0.75, 0.5, 0.25, -1.0, ]);
    
    
    const array7 = new Float32Array([-0.75, 1.0, 0.25, -1.0, -0.25, 1.0, 0.75, 0.25, -1.0, 0.5, 0.75, 0.25, -0.25, -0.75, 0.25, 0.0, 0.5, -0.5, -0.5, 0.75, -0.75, 1.0, -0.75, 1.0, 0.5, 0.0, 0.25, 0.75, 0.75, -0.25, 0.0, 0.5, 0.75, 0.25, -1.0, -0.5, -0.5, -1.0, -0.5, -0.25, -0.75, -0.5, 1.0, -1.0, 1.0, 0.25, 0.5, -0.5, -0.75, 0.25, -0.25, 0.25, -0.5, -0.75, 0.25, -0.75, 0.0, -0.75, -0.5, 0.75, 0.5, -0.75, 1.0, 0.75, -0.25, 0.0, 1.0, 0.75, 0.5, -0.5, 0.75, -0.75, 0.5, -0.25, -0.25, -0.5, -1.0, -0.25, 0.75, 1.0, 0.75, -1.0, 0.0, 0.75, 0.25, 0.5, -1.0, 1.0, 0.0, 0.5, -0.5, -0.25, -0.5, 0.75, 1.0, 0.75, 0.75, 0.0, 0.25, 0.75, ]);
    
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_buffer201 = command_encoder201.finish();
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder200.insertDebugMarker("mymarker");
    device10.pushErrorScope("out-of-memory");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    buffer204.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer200.destroy()
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
    device20.queue.submit([command_buffer201, ]);
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    
    command_encoder203.pushDebugGroup("mygroupmarker")
    const command_buffer100 = command_encoder100.finish();
    buffer203.destroy()
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    command_encoder203.popDebugGroup()
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
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
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
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
    query200.destroy()
    device20.pushErrorScope("internal");
    render_bundle_encoder200.setPipeline(render_pipeline201);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    buffer205.destroy()
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    
    compute_pass_encoder2020.setPipeline(compute_pipeline200);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const array8 = new Float32Array([0.25, -0.5, 0.25, -0.5, 0.5, 0.25, -0.5, 1.0, 1.0, -1.0, -0.75, 0.5, -1.0, -0.75, 1.0, 0.25, -1.0, -1.0, 0.25, 0.25, 0.0, -0.25, -1.0, -0.75, 0.75, 0.25, 0.5, 0.75, 0.0, 0.25, -0.25, 0.5, 0.5, -0.5, -0.25, 0.25, -1.0, -1.0, 0.75, -0.75, -0.75, 0.0, -0.75, 0.25, -1.0, -0.25, -1.0, -0.25, 1.0, 0.5, -0.25, -1.0, -0.25, 0.0, -1.0, 0.75, 0.0, 0.0, 0.0, -0.5, -0.75, -0.75, 0.0, 0.75, 0.25, 0.0, -0.5, -0.25, -0.25, -0.5, 0.25, -0.5, -0.75, -0.75, 1.0, -0.75, 1.0, 0.75, -0.25, 1.0, -0.75, 0.5, -1.0, -0.75, -1.0, -1.0, 0.25, -1.0, 1.0, 0.25, -0.25, 0.5, 0.5, -0.75, -1.0, 1.0, 0.0, -0.25, 1.0, 0.0, ]);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture201.destroy();
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer206.destroy()
    render_bundle_encoder102.setPipeline(render_pipeline101);
    compute_pass_encoder2030.insertDebugMarker("marker")
    compute_pass_encoder2030.setPipeline(compute_pipeline200);
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
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
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    render_bundle_encoder101.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder101.popDebugGroup();
    
    
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
    render_bundle_encoder201.popDebugGroup();
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    texture200.destroy();
    compute_pass_encoder2030.insertDebugMarker("marker")
    query200.destroy()
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
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
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

    compute_pass_encoder2030.setBindGroup(0, bind_group201);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8snorm",
        dimension: "2d"
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer209.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
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
    buffer208.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    query200.destroy()
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device20.pushErrorScope("validation");
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
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
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group202);
    render_bundle_encoder101.setPipeline(render_pipeline102);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder102.insertDebugMarker("marker");
    
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_bundle_encoder202.setPipeline(render_pipeline202);
    compute_pass_encoder2020.insertDebugMarker("marker")
    
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    query200.destroy()
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
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    buffer2011.destroy()
    query100.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.submit([command_buffer100, ]);
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
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    render_pass_encoder1010.setPipeline(render_pipeline100);
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    query200.destroy()
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query201.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    texture100.destroy();
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
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device30.destroy();
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group203);
    
    const command_buffer102 = command_encoder102.finish();
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer100.destroy()
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
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query101.destroy()
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout205]
    });
    query202.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
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
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group101);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32uint",
        dimension: "2d"
    });
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    device20.pushErrorScope("validation");
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
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    render_pass_encoder1010.insertDebugMarker("marker");
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    buffer2012.destroy()
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    compute_pass_encoder1030.setPipeline(compute_pipeline100);
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
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
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group204);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    
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
        occlusionQuerySet: query103
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2030.insertDebugMarker("marker")
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer103.destroy()
    
    
    
    device10.pushErrorScope("internal");
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout202]
    });
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    render_pass_encoder1040.setPipeline(render_pipeline101);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    device10.queue.submit([command_buffer102, ]);
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.popDebugGroup()
    
    render_pass_encoder1040.beginOcclusionQuery(0)
    query201.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.endOcclusionQuery()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2017, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2017, 0);
    const array9 = new Float32Array([-1.0, 0.75, -0.5, 1.0, -1.0, 0.5, -0.25, -0.25, -0.75, -0.25, 0.25, 1.0, -0.5, -0.75, -0.25, 0.5, -0.25, 0.25, -0.75, 0.0, 0.0, 0.25, -0.5, 0.0, 0.75, -0.5, -0.5, 0.5, 0.75, 0.0, 0.25, 0.75, -0.75, 0.5, -0.25, 0.5, -0.25, -0.75, 0.0, 1.0, 1.0, 1.0, -0.75, 0.5, 0.5, 1.0, -0.25, 1.0, 0.75, 0.5, 0.0, 0.5, -1.0, 0.75, -0.75, -1.0, 0.0, -0.25, -0.75, -0.5, -1.0, -0.75, -1.0, -1.0, 0.25, -0.5, 0.0, 0.5, -1.0, 0.5, -0.5, 1.0, 0.75, 0.5, 1.0, -0.75, -0.25, -0.25, -0.5, -0.25, -1.0, 1.0, 0.5, 0.75, 0.5, -1.0, 1.0, 0.25, -0.5, 0.25, 0.5, -0.5, 1.0, -0.75, 0.75, 0.0, -0.75, 0.0, -0.5, 1.0, ]);
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer2017, 0, array6, 0, array6.length);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture203.destroy();
    buffer2016.destroy()
    render_pass_encoder1010.insertDebugMarker("marker");
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    buffer2010.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.popDebugGroup();
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture101.destroy();
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group103);
    
    device40.destroy();
    
    buffer104.destroy()
    buffer2015.destroy()
    
    render_pass_encoder1040.setStencilReference(1);
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
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
    render_bundle_encoder202.popDebugGroup();
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32uint",
        dimension: "2d"
    });
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout204]
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer2017, 0, array0, 0, array0.length);
    render_pass_encoder1040.insertDebugMarker("marker");
    buffer106.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device20.queue.writeBuffer(buffer2017, 0, array8, 0, array8.length);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device20.queue.writeBuffer(buffer2017, 0, array7, 0, array7.length);
    
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: query202
    });
    buffer101.destroy()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1040.insertDebugMarker("marker");
    render_bundle_encoder201.popDebugGroup();
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.setPipeline(render_pipeline200);
    buffer2013.destroy()
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
    render_pass_encoder2050.setPipeline(render_pipeline200);
    const array10 = new Float32Array([-0.25, 0.25, 0.5, 0.5, 0.75, 1.0, 0.5, -0.5, -0.5, -0.75, -0.75, 0.75, -1.0, -0.25, 0.75, 0.0, 1.0, -0.5, 0.5, 0.5, 0.75, 0.25, -0.5, 0.5, -0.75, -0.5, -0.5, 0.5, -0.75, 0.75, 0.25, 0.75, 0.25, 0.25, -0.5, 0.0, -0.5, 0.5, 0.0, 1.0, 1.0, -0.25, -1.0, 0.0, -0.25, 1.0, -0.5, 1.0, -0.75, 1.0, -0.25, -0.5, 1.0, -0.75, 0.75, 0.0, -0.5, -1.0, -1.0, -0.5, 0.75, -0.5, 0.0, 0.75, -0.75, -0.75, 1.0, 0.0, -0.75, 0.5, 1.0, -1.0, 0.25, -0.25, 0.25, 0.5, 1.0, 0.5, -0.75, 0.5, 0.0, -0.5, -0.5, 0.5, 0.25, 0.25, 0.0, -0.5, -0.5, -0.25, -0.25, 0.25, 0.25, 1.0, 0.75, -0.25, 0.75, 0.25, 0.5, 0.25, ]);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    buffer102.destroy()
    buffer2017.destroy()
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1050.setPipeline(render_pipeline106);
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
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
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group104);
    
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder101.insertDebugMarker("marker");
    
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
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    buffer108.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder2050.setStencilReference(1);
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder2050.pushDebugGroup("group_marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    buffer105.destroy()
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query203.destroy()
    
    
    buffer1010.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
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
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout203]
    });
    compute_pass_encoder2020.end();
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: query201
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group105);
    render_pass_encoder2020.setPipeline(render_pipeline204);
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
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group205);
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

    render_pass_encoder2020.setBindGroup(0, bind_group206);
    compute_pass_encoder2000.popDebugGroup()
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2022, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2022, 0);
    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
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
                    buffer: buffer2023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2024,
                },
            },
        ],
    });

    render_pass_encoder2050.setBindGroup(0, bind_group207);
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
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
                    buffer: buffer2025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2026,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group208);
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group106);
    compute_pass_encoder2000.end();
    command_encoder200.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2030.end();
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
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder1030.end();
    device20.queue.submit([command_buffer200, ]);
    const command_buffer103 = command_encoder103.finish();
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2050.popDebugGroup();
}