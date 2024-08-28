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
    
    const array0 = new Float32Array([0.0, 0.25, 0.0, 0.25, -1.0, 0.5, -0.75, -0.75, -1.0, -0.75, -0.5, 1.0, 0.0, 0.25, -0.25, -0.75, -0.25, -0.25, 0.0, 0.75, 0.0, 0.75, 0.0, 0.0, 0.0, 1.0, 0.5, 0.5, 0.0, -0.25, 0.25, -1.0, 0.5, 1.0, 1.0, 0.0, 0.0, 0.25, 0.25, -0.25, 0.25, 0.5, 0.75, 0.25, 0.5, -0.5, -0.5, 0.75, 0.25, -0.5, 0.75, -1.0, 0.25, -0.75, 0.25, -0.5, -0.5, -0.75, 0.25, 1.0, 1.0, 0.5, 0.0, 0.25, 1.0, 0.75, 1.0, -0.5, 0.25, 0.25, 0.75, 0.0, 0.0, 0.25, -0.75, 0.25, -0.75, 0.0, 0.75, 1.0, -0.5, 0.75, 0.5, 1.0, -0.5, 0.0, 0.25, 0.25, 0.75, 0.75, -0.25, -0.75, -1.0, 0.5, -0.75, -0.25, 0.5, -1.0, -0.75, 0.25, ]);
    const array1 = new Float32Array([0.25, -0.5, 0.25, 1.0, -0.75, 1.0, 0.75, 0.0, 0.75, 1.0, -1.0, -0.5, -0.5, 0.75, -0.25, 0.0, 0.5, 0.75, -0.75, 0.5, 0.5, 0.5, 0.25, 0.5, 0.5, -0.25, 0.25, 0.0, -1.0, -0.5, 0.5, -0.5, 0.5, 1.0, 0.25, 0.0, -0.25, -0.75, 0.5, 0.0, -1.0, 0.25, -0.5, 0.0, -0.5, 1.0, -1.0, -0.5, -1.0, -0.75, -0.25, 0.0, -1.0, 0.0, 0.5, -0.25, 0.5, -1.0, 1.0, 1.0, 0.0, -0.75, 1.0, -0.5, -0.25, -0.25, 0.25, 0.25, 0.5, 0.5, -1.0, 0.25, -0.75, 0.75, 0.25, 0.75, 0.0, -0.5, -0.75, -0.25, 0.5, -1.0, 1.0, 0.75, -0.75, 0.25, -1.0, 1.0, -1.0, 1.0, -0.75, 0.75, 0.5, 0.25, 1.0, -1.0, 0.75, -0.75, 0.25, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    
    
    
    
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array2 = new Float32Array([0.5, -0.5, 1.0, 1.0, -1.0, -0.75, 0.0, 0.0, -0.5, 0.75, -0.25, 0.0, -0.25, -0.5, -0.5, -1.0, -0.5, -1.0, -0.5, 1.0, -0.75, 0.25, 0.0, 0.0, 0.25, 0.0, 0.25, -0.75, -0.5, -1.0, -0.5, 0.25, -0.5, -0.75, 0.0, -1.0, -0.25, 0.25, 0.0, 0.75, -0.75, -1.0, 0.75, 0.25, 0.0, -0.75, 0.5, 0.25, 1.0, -0.5, -0.75, -1.0, 0.75, 0.5, 1.0, -0.75, -0.5, -0.5, 1.0, 0.75, 0.25, -0.25, -0.25, 0.75, -0.25, -0.5, -0.25, -0.5, -0.5, -0.5, 0.5, 0.5, 0.0, -0.75, 0.75, 0.5, -0.25, -0.25, -0.25, 0.75, 0.25, 0.5, 0.0, -0.5, -0.5, -1.0, 1.0, 0.0, 1.0, -0.25, 0.25, 0.0, 0.25, -1.0, 0.5, -0.25, 0.5, -0.25, 0.5, 0.75, ]);
    
    
    
    const array3 = new Float32Array([0.5, -0.75, -0.75, 0.25, 0.5, 0.0, -0.75, -1.0, 0.5, -1.0, -1.0, 0.75, 1.0, -0.75, 1.0, -0.75, -0.75, 0.75, -1.0, 0.0, -0.75, -0.75, -0.25, -0.25, 0.25, 0.5, -0.25, 0.75, -0.25, -0.5, 0.75, 0.5, 0.25, 0.5, -1.0, 0.0, 1.0, -0.75, -0.75, -0.5, -0.5, -0.75, -0.25, 0.5, -1.0, 0.25, 0.0, 0.75, 0.5, -1.0, 1.0, -0.25, -0.5, 0.25, -0.5, 0.25, -0.75, 0.5, -0.5, 0.25, -0.75, 0.75, 0.25, -0.75, -0.5, 0.25, -1.0, -1.0, -1.0, -0.75, -0.5, -0.25, 0.5, 0.75, 0.5, 1.0, -0.5, -1.0, 0.25, -1.0, 0.25, -0.75, 0.0, 0.25, 0.25, 0.75, 0.5, 1.0, -0.5, -0.25, 0.0, -0.25, 0.0, 0.75, 0.25, 0.5, 0.25, -0.5, -0.75, 0.5, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const array4 = new Float32Array([0.0, -1.0, 0.75, 1.0, -0.5, -0.5, -1.0, 1.0, -0.25, -0.75, -0.25, -1.0, -0.5, -0.75, -1.0, -0.25, 0.75, 0.75, 0.0, -0.75, -0.25, -1.0, 1.0, 0.0, 0.0, 1.0, 0.5, 1.0, 0.25, -0.25, -0.5, 0.25, 0.0, -1.0, -0.25, 0.5, -1.0, 0.25, -0.25, -0.5, 1.0, 1.0, 0.5, -0.5, -0.5, 0.25, 0.0, -0.5, -0.5, -0.75, 1.0, -0.75, 0.75, 0.25, -1.0, 0.25, -0.25, -1.0, 0.75, 0.75, 0.75, -0.25, -0.75, -0.75, -0.5, 0.5, -0.25, 0.0, -0.25, 0.25, 0.5, -0.5, -0.5, -1.0, 0.5, -0.25, -0.75, -0.25, 0.75, 0.5, 0.5, 0.5, -1.0, -0.5, 0.25, 0.25, 1.0, -1.0, -0.5, 0.5, -0.5, 0.5, 0.0, -0.25, -0.5, -0.75, -0.25, 0.5, -0.25, 0.0, ]);
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    texture200.destroy();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_buffer100 = command_encoder100.finish();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    query200.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder200.popDebugGroup()
    device10.pushErrorScope("validation");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder201.insertDebugMarker("mymarker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const array5 = new Float32Array([1.0, -0.25, 1.0, -0.25, 0.75, -0.5, -0.5, 0.5, 0.25, 1.0, -1.0, -0.5, -0.5, 0.75, -0.5, 0.75, 0.25, 0.25, 0.75, -0.25, -0.25, -1.0, -0.25, 0.5, 0.25, -0.5, -0.75, 0.75, -1.0, 0.0, -1.0, 0.25, 0.5, 0.5, 0.75, -0.25, 1.0, -0.25, 1.0, -0.25, -0.25, 0.0, -0.75, -0.75, 0.5, 0.75, -0.25, -0.25, -1.0, 0.5, 1.0, 0.25, 0.0, -0.25, 0.5, 0.0, 0.25, 0.25, 0.5, -0.5, -0.5, -1.0, 1.0, 0.75, 0.25, 0.25, -0.5, 0.25, -0.75, 0.5, -0.75, -0.25, 0.75, 0.5, 0.25, 0.5, 0.5, 0.25, -1.0, 0.5, 0.5, 0.5, -0.5, 0.0, 0.25, -1.0, 0.0, 0.5, 0.0, -0.75, -0.25, -0.75, 0.5, -0.25, -1.0, 0.0, 0.5, -1.0, -1.0, 0.75, ]);
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
    const command_buffer201 = command_encoder201.finish();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    
    
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const array6 = new Float32Array([-0.25, -0.5, 0.0, -0.25, 0.75, 1.0, -0.25, 1.0, 0.5, 0.0, -0.5, -0.25, -1.0, 1.0, 0.5, -0.5, -1.0, 0.5, -0.75, -1.0, 0.25, -0.5, -0.75, 0.75, -0.5, 0.25, -1.0, -0.5, -0.75, 0.5, -0.75, 0.75, 1.0, 0.75, -0.75, 1.0, 0.0, -0.75, 0.75, 0.25, 0.0, 0.5, -1.0, -1.0, 0.25, 0.0, -0.75, -1.0, 0.5, 0.25, 0.0, -0.5, -0.5, -0.5, 0.5, 0.0, 0.5, -0.5, 0.0, -0.5, -1.0, 0.75, -0.25, -1.0, 0.25, -0.25, 1.0, -0.5, -0.5, -0.75, 1.0, -0.75, 1.0, 0.0, 0.0, -0.75, 1.0, 0.5, 0.0, 0.5, -0.5, -0.25, -0.5, 0.0, 1.0, -0.75, -0.75, -0.75, 0.75, 1.0, -0.5, 0.5, -0.25, 0.0, -0.5, 0.5, 0.5, -0.5, 0.5, 0.25, ]);
    buffer200.destroy()
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
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_buffer101 = command_encoder101.finish();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const command_buffer202 = command_encoder202.finish();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    query101.destroy()
    render_bundle_encoder202.popDebugGroup();
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device10.pushErrorScope("out-of-memory");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    
    
    const array7 = new Float32Array([-0.75, 0.0, -0.75, 1.0, 0.25, -1.0, -1.0, 0.5, -0.75, -0.75, 0.25, -0.75, -0.25, 0.5, 0.25, -1.0, 0.25, 0.5, 1.0, -1.0, 0.25, 0.5, -0.75, -0.5, -0.25, 0.25, 1.0, 1.0, 0.25, 0.0, -0.5, 0.0, -0.25, -1.0, 0.0, -0.5, 1.0, -0.75, -0.75, 1.0, -1.0, 0.25, 0.75, 0.5, -1.0, 0.75, 0.25, 0.0, 1.0, -1.0, -0.25, 0.25, 0.25, -1.0, -0.75, 0.0, -0.5, 0.0, 0.5, 0.0, 0.25, 1.0, -1.0, -0.5, 0.75, -1.0, 0.75, 0.25, 0.25, 0.0, 0.0, 0.0, 0.0, -0.5, 1.0, -0.25, -0.25, -0.5, 0.5, 1.0, -0.25, -0.5, 1.0, -1.0, 0.0, 0.75, 0.25, 0.0, 0.5, -0.5, 1.0, -0.25, 0.75, 0.25, 0.5, 0.25, 0.5, 0.0, -0.75, 0.0, ]);
    
    render_bundle_encoder201.insertDebugMarker("marker");
    query102.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    query102.destroy()
    buffer500.destroy()
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_bundle_encoder202.popDebugGroup();
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    texture201.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    device50.pushErrorScope("internal");
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    texture100.destroy();
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
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
    
    texture203.destroy();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const command_buffer102 = command_encoder102.finish();
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder500.setPipeline(render_pipeline500);
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    device20.pushErrorScope("internal");
    query201.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
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
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    buffer501.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture102.destroy();
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    compute_pass_encoder2000.pushDebugGroup("group_marker")
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
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    render_bundle_encoder501.insertDebugMarker("marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder200.setPipeline(render_pipeline200);
    compute_pass_encoder5000.popDebugGroup()
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
    query100.destroy()
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
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
    buffer400.destroy()
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    query103.destroy()
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
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder100.popDebugGroup();
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder501.setPipeline(render_pipeline500);
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device70.queue.writeTexture({ texture: texture700 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture101.destroy();
    device70.queue.writeTexture({ texture: texture700 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query104
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    buffer202.destroy()
    
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_bundle_encoder200.popDebugGroup();
    buffer201.destroy()
    device70.pushErrorScope("out-of-memory");
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    query102.destroy()
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout702]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
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
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
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
    query102.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    query105.destroy()
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    device40.pushErrorScope("validation");
    render_pass_encoder1030.insertDebugMarker("marker");
    render_bundle_encoder501.popDebugGroup();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    compute_pass_encoder1040.setPipeline(compute_pipeline101);
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    device70.queue.writeTexture({ texture: texture700 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group100);
    
    render_bundle_encoder200.popDebugGroup();
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture500.destroy();
    render_bundle_encoder201.popDebugGroup();
    const array8 = new Float32Array([1.0, -0.75, 0.5, -0.75, -0.75, 0.5, -0.75, 0.25, -1.0, 0.0, -0.75, -0.75, -0.25, 0.5, 0.75, -1.0, 1.0, 0.5, -0.75, -0.25, -1.0, -0.5, 0.0, -1.0, -1.0, -0.5, 0.0, 0.75, 0.75, -0.75, -0.75, -0.75, 0.5, -0.5, 0.0, 0.0, 0.25, -0.5, 0.0, -1.0, -1.0, 0.5, 0.25, 0.5, 0.75, 0.75, 0.25, 0.75, 1.0, -0.75, 0.75, -0.5, -1.0, 0.75, 0.25, -0.75, 0.75, -0.75, -0.5, -0.75, -0.75, 1.0, 0.25, -1.0, 1.0, 0.25, 0.25, -0.75, 0.75, -0.25, 0.5, 0.25, 1.0, 0.5, -0.75, 0.5, -1.0, 1.0, 0.5, 0.25, -0.5, 0.75, 0.5, -0.25, 0.5, 0.5, 0.25, -1.0, -0.25, 0.25, -0.25, 0.75, -0.25, 0.0, 0.25, 0.5, -0.5, -0.75, 0.0, -0.75, ]);
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device70.queue.writeTexture({ texture: texture700 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    
    buffer101.destroy()
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    query103.destroy()
    
    query102.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
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
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const render_pass_encoder7000 = command_encoder700.beginRenderPass({
        label: "render_pass_encoder7000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout703]
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    texture701.destroy();
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    query500.destroy()
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    
    command_encoder503.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    
    
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    texture204.destroy();
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.popDebugGroup();
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2000.setPipeline(compute_pipeline202);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
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
    render_pass_encoder7000.executeBundles([])
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
    
    buffer103.destroy()
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder7000.pushDebugGroup("group_marker");
    command_encoder503.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_pass_encoder1030.insertDebugMarker("marker");
    
    buffer105.destroy()
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    device70.queue.writeTexture({ texture: texture700 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder600.insertDebugMarker("mymarker");
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.setPipeline(render_pipeline101);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    device70.queue.writeTexture({ texture: texture700 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture700 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1050.setPipeline(compute_pipeline100);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout703]
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    render_bundle_encoder700.insertDebugMarker("marker");
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder7000.executeBundles([])
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    render_pass_encoder7000.executeBundles([])
    device70.queue.writeTexture({ texture: texture700 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    device70.queue.writeTexture({ texture: texture700 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.submit([command_buffer102, ]);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.beginOcclusionQuery(0)
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    device10.queue.writeBuffer(buffer108, 0, array3, 0, array3.length);
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query201.destroy()
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    device70.queue.writeTexture({ texture: texture700 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer108, 0, array3, 0, array3.length);
    query702.destroy()
    
    query700.destroy()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32sint",
        dimension: "2d"
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

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    
    compute_pass_encoder1040.dispatchWorkgroups(100);
    device10.queue.writeBuffer(buffer108, 0, array5, 0, array5.length);
    texture400.destroy();
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    device10.queue.writeBuffer(buffer108, 0, array0, 0, array0.length);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5010.insertDebugMarker("marker")
    buffer204.destroy()
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
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
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder2000.popDebugGroup()
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    compute_pass_encoder1040.popDebugGroup()
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1050.insertDebugMarker("marker")
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    render_pass_encoder7000.setViewport(0, 0, texture700.width / 2, texture700.height / 2, 0, 1);
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer700.destroy()
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    {
        await buffer108.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer108.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer108.unmap();
        console.log(new Float32Array(data));
    }
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    render_pass_encoder1030.setStencilReference(1);
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    
    render_pass_encoder1030.endOcclusionQuery()
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
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder7000.popDebugGroup();
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group103);
    const command_buffer502 = command_encoder502.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer208, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer208, 0);
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder2000.end();
    render_pass_encoder1030.setVertexBuffer(0, buffer104);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    compute_pass_encoder1040.end();
    const command_buffer200 = command_encoder200.finish();
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer104, ]);
    command_encoder400.popDebugGroup()
    const command_buffer400 = command_encoder400.finish();
    device20.queue.submit([command_buffer200, ]);
    device50.queue.submit([command_buffer502, ]);
    const command_buffer103 = command_encoder103.finish();
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

    compute_pass_encoder1050.setBindGroup(0, bind_group104);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1050.end();
    const command_buffer105 = command_encoder105.finish();
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([command_buffer105, ]);
}