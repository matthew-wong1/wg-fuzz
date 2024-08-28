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
    const array0 = new Float32Array([0.25, -1.0, -0.5, 0.5, 0.5, 0.0, 0.75, 1.0, 0.0, -0.75, 0.5, -0.75, 0.25, 0.25, -1.0, -1.0, -0.25, -1.0, 0.0, 0.0, 0.75, -1.0, -0.5, -0.25, 1.0, 0.25, 0.75, 1.0, -1.0, -0.5, -0.25, 0.5, 0.25, -0.75, 0.5, 0.75, 0.75, 0.5, -0.5, 0.0, -0.25, -0.5, -0.25, 0.5, 1.0, 0.5, 0.25, -0.75, -1.0, 0.25, -0.25, 0.75, -0.75, -1.0, 0.0, -0.5, 0.5, -0.25, -0.75, 0.5, 0.25, 0.0, -1.0, 0.75, 0.0, 0.0, 0.5, -1.0, 1.0, 0.5, 0.5, -1.0, -0.5, 0.0, 0.75, 0.25, 0.5, 0.25, 1.0, 0.0, 0.0, -0.5, 0.75, -0.75, -1.0, 0.25, 0.0, -0.25, 0.75, -0.5, 0.0, 1.0, -1.0, -1.0, 0.0, 0.75, 0.5, 0.25, 0.75, -0.5, ]);
    
    
    const array1 = new Float32Array([0.75, 0.75, -0.25, 0.25, 0.0, -1.0, 0.0, -0.5, -0.5, -1.0, 0.0, 0.0, 0.75, 0.25, 1.0, 0.75, 0.75, -0.75, -0.75, -0.75, 0.75, 1.0, -0.5, 0.0, -0.75, 1.0, -0.25, 0.25, -0.25, -0.75, 0.0, -0.75, -0.75, -1.0, 0.75, -1.0, -1.0, -0.25, 1.0, -1.0, 0.0, -0.25, -0.25, 1.0, 0.5, 0.25, 1.0, -1.0, -0.75, -0.75, -0.5, -0.5, 0.5, 0.0, -0.5, -0.5, -0.5, -0.25, -1.0, -0.75, -0.5, 0.0, 1.0, 0.0, -1.0, -0.75, 0.75, 0.0, -1.0, -1.0, -0.5, 0.75, -0.5, 0.25, 0.5, 0.5, 1.0, 0.5, -0.75, -0.5, 0.5, -1.0, 0.5, 0.25, -0.75, -0.5, 0.0, -0.5, 0.5, 0.0, -0.75, 1.0, 0.75, -1.0, 0.75, 0.75, 0.0, 0.25, -0.5, 0.25, ]);
    const array2 = new Float32Array([1.0, -0.75, -0.5, -0.5, -0.75, 0.25, 0.5, 0.25, -0.75, -0.75, 0.25, -0.5, 0.5, -0.75, -1.0, -0.75, 0.25, -0.75, 0.5, 0.75, 0.25, -0.25, -0.25, 0.75, -0.75, 0.0, 1.0, 0.25, 1.0, -1.0, 0.75, 0.0, 0.75, 0.25, 1.0, 1.0, -0.5, -0.75, 0.5, -0.75, 0.5, -0.25, -0.25, -0.75, -0.75, -1.0, 1.0, 0.75, 0.0, -0.5, -0.25, -0.75, 0.25, -1.0, 0.75, 0.25, 0.25, -1.0, 0.5, -0.75, -0.75, 0.75, 0.0, 0.25, 0.0, 0.0, 0.0, 0.5, -0.75, -0.75, 0.5, -0.5, 0.0, 0.0, -0.5, 0.0, 1.0, 0.75, 0.5, -0.75, -0.5, 0.5, 0.0, 0.25, 0.5, 0.5, 0.0, 0.75, -0.75, 0.75, -0.25, 0.75, 0.75, 0.25, -0.5, -0.5, -0.5, -0.5, -0.75, 0.5, ]);
    
    const array3 = new Float32Array([0.0, -0.25, -1.0, 0.25, 1.0, 0.5, -0.25, -0.25, 1.0, -0.5, -0.75, 0.0, 0.75, 0.5, 0.75, -0.25, 0.5, -0.75, 0.5, -0.25, 0.0, 0.75, 0.5, -0.5, -0.5, 1.0, -0.25, -0.25, -0.75, -0.25, -1.0, -0.25, -1.0, -0.25, -0.75, 1.0, 0.5, 0.5, 0.0, 0.25, -0.25, 0.5, -0.75, -0.75, 0.25, 0.75, -0.5, 0.0, 0.75, 0.75, 0.25, 0.75, 1.0, 0.25, -1.0, -0.25, 0.5, -1.0, 0.25, 0.75, -0.75, -0.5, 0.25, 0.0, 0.25, -0.5, -0.5, 0.75, -0.25, 1.0, 0.25, 0.5, 0.5, 0.25, -1.0, 1.0, -0.25, -0.75, 0.25, 0.25, 0.25, 0.5, 0.0, -0.25, 1.0, -1.0, 0.25, 1.0, -1.0, 0.75, 0.5, -0.25, 1.0, 1.0, -1.0, 0.5, -0.75, 0.75, 0.5, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([0.0, 0.25, -0.5, 0.0, 0.25, -0.25, 0.25, 0.75, -1.0, 0.5, 0.25, -0.5, -0.25, -0.75, -0.75, 0.5, 1.0, -1.0, 0.5, 0.75, 0.0, 1.0, -1.0, -1.0, 0.0, 0.0, -1.0, 0.5, -0.75, -0.25, -0.5, 0.5, 0.0, -0.25, 0.0, 0.75, 0.75, 1.0, -0.75, 0.0, 0.0, -0.25, 0.5, 0.75, 0.25, 0.5, -0.75, 1.0, 1.0, 0.75, 1.0, 0.75, 0.0, 0.75, 0.75, 0.5, -1.0, -0.25, 0.5, -0.75, -0.75, 0.25, 0.5, 1.0, -1.0, 1.0, 1.0, 0.0, 0.0, 0.5, -0.75, -1.0, 0.0, -0.25, 0.25, 1.0, 1.0, -0.75, -0.25, 0.0, 0.0, 1.0, -0.5, 0.25, -0.75, -0.75, -0.5, 0.25, 1.0, 0.5, -0.5, -1.0, 0.75, 1.0, -1.0, -0.25, 0.75, -1.0, -1.0, -0.25, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array5 = new Float32Array([-0.5, 1.0, -1.0, -1.0, 1.0, 0.0, -1.0, 0.75, -0.75, 1.0, 0.0, 0.25, -1.0, 0.0, -0.75, -1.0, 1.0, 0.75, -0.75, -0.5, -0.25, 1.0, -0.25, -0.75, -0.75, -1.0, 1.0, 0.0, -0.75, 1.0, 1.0, 0.75, -1.0, 0.5, 1.0, -0.75, -1.0, -1.0, 0.5, -1.0, 1.0, -0.75, 0.0, -1.0, -0.5, 0.5, 0.75, 0.75, -0.25, -0.75, -1.0, 0.0, 1.0, 0.0, -0.25, -0.75, -0.75, -1.0, -0.25, -0.5, 1.0, 0.5, 0.75, 0.0, 0.75, 0.5, 1.0, -0.75, 0.75, -0.25, -0.5, 0.5, -0.75, 0.5, -0.5, 0.75, 0.75, 0.5, 1.0, 1.0, -0.5, 0.5, -0.25, -1.0, -0.5, 0.75, -0.75, 0.25, -0.75, 0.0, -0.75, 0.25, 0.0, -0.5, -0.25, 0.25, -1.0, -0.5, 0.5, -1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    device10.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.destroy();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder000.insertDebugMarker("mymarker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device30.pushErrorScope("out-of-memory");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_buffer301 = command_encoder301.finish();
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder301.pushDebugGroup("group_marker");
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
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    device30.queue.submit([command_buffer301, ]);
    command_encoder300.insertDebugMarker("mymarker");
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    device00.pushErrorScope("validation");
    command_encoder001.insertDebugMarker("mymarker");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device40.destroy();
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    query000.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_bundle_encoder000.popDebugGroup();
    query001.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query000.destroy()
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const command_buffer300 = command_encoder300.finish();
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_bundle_encoder301.setPipeline(render_pipeline301);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16uint",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder001.insertDebugMarker("mymarker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const command_buffer302 = command_encoder302.finish();
    device30.queue.submit([command_buffer302, ]);
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array6 = new Float32Array([-1.0, -0.5, 0.0, 1.0, -0.25, 0.25, 0.25, 0.0, -0.5, -0.75, -1.0, 0.75, -0.5, -0.25, 0.25, -0.75, 0.75, 0.75, -0.25, 0.0, -0.5, -1.0, 1.0, 0.25, 1.0, -1.0, 0.5, -1.0, 0.25, -1.0, -1.0, -0.75, -1.0, -0.75, -1.0, -1.0, 1.0, -0.25, 0.5, 0.0, -0.25, 0.75, -0.75, -0.25, 0.25, -0.75, -0.5, -0.5, 0.5, -0.75, 0.75, -1.0, 0.5, -0.5, 1.0, -1.0, 0.75, -0.25, 0.0, -0.5, -0.25, 1.0, 0.5, -1.0, 0.0, 0.5, -0.75, -0.25, 0.5, -1.0, -1.0, 1.0, 0.0, 0.25, 0.75, -0.5, 0.0, 0.0, -0.75, -0.25, -0.75, 0.25, 1.0, -0.25, 0.25, -0.25, -0.5, 0.75, 0.25, -1.0, -0.25, 1.0, -1.0, -0.5, 0.75, -0.25, -1.0, 0.0, -1.0, -0.25, ]);
    
    command_encoder000.insertDebugMarker("mymarker");
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

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    buffer300.destroy()
    
    render_bundle_encoder302.setPipeline(render_pipeline301);
    texture300.destroy();
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder302.popDebugGroup();
    
    buffer001.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const array7 = new Float32Array([0.5, 0.75, 1.0, 0.0, 0.5, 0.25, -1.0, -0.25, 1.0, 0.0, -0.5, 0.0, 1.0, 0.0, -0.5, 0.25, -1.0, -1.0, 0.5, 0.25, -0.75, 0.75, -1.0, 0.5, 0.0, 1.0, 0.5, -1.0, 0.75, 0.5, 0.25, 0.75, 0.5, -0.25, 0.5, 0.5, 0.0, 1.0, -1.0, -1.0, 0.75, -0.25, -1.0, 0.5, 0.5, -0.5, 0.5, 0.5, -0.75, -0.25, 0.25, 1.0, 0.75, -0.75, -1.0, 0.5, 0.5, -0.75, -0.25, 0.25, -0.5, -0.5, 0.0, 0.25, -0.5, -1.0, 0.25, -1.0, 1.0, 0.0, 0.75, 0.25, -0.75, 0.25, 0.25, 0.0, 0.0, -0.25, 0.5, -1.0, 0.0, -0.25, 0.5, -0.25, 0.5, -0.25, -0.25, 1.0, 0.0, -1.0, 0.75, 0.75, 0.25, -0.75, -0.5, -1.0, 1.0, -1.0, 0.75, 0.5, ]);
    buffer003.destroy()
    device00.pushErrorScope("validation");
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
    query301.destroy()
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_buffer303 = command_encoder303.finish();
    texture000.destroy();
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    query300.destroy()
    
    device30.queue.submit([command_buffer300, ]);
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    query300.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    query302.destroy()
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const command_buffer001 = command_encoder001.finish();
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
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
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    query003.destroy()
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    const array8 = new Float32Array([0.75, 0.0, -0.25, -0.25, 0.0, -0.5, -1.0, -1.0, -1.0, 0.0, 1.0, 0.0, -0.75, -0.25, -0.75, -0.5, 0.75, 1.0, 1.0, -0.25, -0.75, 1.0, -0.25, 0.25, -0.25, 1.0, -0.25, -0.5, -1.0, 0.75, 0.25, -0.75, 0.5, -0.25, -1.0, 0.75, -0.5, 0.75, -0.5, 0.0, 1.0, 0.25, 0.0, 1.0, -1.0, 1.0, 0.0, 0.25, 1.0, 0.25, -0.5, -0.25, 0.5, -1.0, 0.5, 0.5, 0.25, -0.25, -1.0, 0.0, -1.0, 0.0, 1.0, 0.25, -0.5, 0.75, -0.75, -0.5, -0.25, 0.25, 0.0, -0.5, 1.0, 0.0, -0.25, 0.0, 0.25, 0.25, -0.75, -1.0, -0.75, 0.5, 0.0, 0.75, -0.25, 0.75, -0.5, -1.0, 0.5, -0.25, 1.0, 0.0, 0.0, -0.25, -1.0, 1.0, -1.0, -1.0, -0.75, 0.25, ]);
    render_bundle_encoder000.setVertexBuffer(0, buffer002);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    buffer004.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_bundle_encoder302.setBindGroup(0, bind_group301);
    const command_buffer304 = command_encoder304.finish();
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    query301.destroy()
    const array9 = new Float32Array([0.75, -0.5, 0.5, 0.25, -0.25, 1.0, 0.25, 0.0, -1.0, -1.0, 1.0, 0.5, -0.5, -1.0, 0.5, 0.25, 0.75, -1.0, 0.75, -0.5, 0.0, 0.25, -0.25, -0.5, 0.0, 0.25, 0.75, 0.75, -0.5, -0.5, 0.5, 0.25, 0.0, -0.25, -1.0, 0.0, 0.25, 1.0, 0.0, -0.25, -0.75, -0.25, -0.5, 1.0, -0.75, 0.75, 0.0, 0.5, 1.0, 1.0, -0.75, 1.0, 1.0, -0.5, 0.25, 1.0, 1.0, -0.75, -1.0, -1.0, -1.0, 0.25, 0.0, -0.75, -0.5, 0.5, 0.75, 0.5, 0.25, -0.75, 0.0, 0.0, -0.25, 0.0, 1.0, 1.0, 0.5, 0.5, 1.0, 0.5, -0.5, -1.0, -0.75, 0.25, 0.5, -0.5, -0.5, -1.0, -1.0, 0.5, -0.25, -0.25, -0.25, -0.25, 0.25, 0.0, 0.5, -0.25, 0.25, -0.25, ]);
    query301.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder001.setPipeline(render_pipeline002);
    query002.destroy()
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    query000.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    buffer301.destroy()
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device80.pushErrorScope("validation");
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder002.setPipeline(render_pipeline002);
    
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder000.popDebugGroup();
    device30.pushErrorScope("validation");
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
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
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
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
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    query303.destroy()
    device60.queue.writeBuffer(buffer600, 0, array8, 0, array8.length);
    device60.queue.writeBuffer(buffer600, 0, array9, 0, array9.length);
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    query002.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const command_buffer000 = command_encoder000.finish();
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query001.destroy()
    
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    
    device80.queue.writeBuffer(buffer800, 0, array8, 0, array8.length);
    device60.queue.writeBuffer(buffer600, 0, array9, 0, array9.length);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    buffer006.destroy()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device50.pushErrorScope("internal");
    
    buffer000.destroy()
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    device00.pushErrorScope("validation");
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const command_buffer305 = command_encoder305.finish();
    command_encoder800.insertDebugMarker("mymarker");
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    
    query300.destroy()
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.popDebugGroup();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder001.setVertexBuffer(0, buffer002);
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
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.queue.submit([command_buffer303, command_buffer304, command_buffer305, ]);
    
    device80.queue.writeBuffer(buffer800, 0, array0, 0, array0.length);
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    const command_buffer002 = command_encoder002.finish();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "stencil8",
        dimension: "2d"
    });
    
    
    
    
    query800.destroy()
    
    
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout003]
    });
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device00.queue.submit([command_buffer002, ]);
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout801]
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_bundle_encoder001.insertDebugMarker("marker");
    query303.destroy()
    const sampler800 = device80.createSampler( { label: "sampler800" } );
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
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    command_encoder600.copyBufferToBuffer(
        buffer601,
        0,
        buffer600,
        0,
        400
    );
    command_encoder600.clearBuffer(buffer600);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    command_encoder600.clearBuffer(buffer600);
    
    buffer305.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout801]
    });
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    
    
    buffer005.destroy()
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.popDebugGroup();
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    
    render_bundle_encoder302.insertDebugMarker("marker");
    buffer303.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder300.popDebugGroup();
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device80.queue.writeBuffer(buffer800, 0, array3, 0, array3.length);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const command_buffer601 = command_encoder601.finish();
    texture801.destroy();
    
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query001.destroy()
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    buffer602.destroy()
    const array10 = new Float32Array([1.0, 1.0, -1.0, -0.5, -0.5, -0.25, -0.5, -1.0, -0.25, -0.25, -0.5, 0.75, 0.25, -0.5, -0.25, 0.5, -0.75, -0.5, -1.0, 1.0, 0.5, -1.0, -0.25, 0.5, -0.5, 0.0, 0.25, -0.5, -0.25, 0.0, 0.75, -0.25, -0.75, -0.5, 0.25, 0.0, 0.5, 0.5, -0.5, -0.25, 0.75, 0.5, -0.25, 0.25, -1.0, -1.0, -0.5, 0.25, 0.5, 0.5, -0.75, 0.5, -0.5, 0.0, 0.0, -0.25, 1.0, -0.5, -0.75, 0.5, -1.0, 0.25, 0.5, 0.0, -0.25, 0.5, 0.0, 0.75, 0.0, -0.25, 0.25, -0.75, -1.0, 1.0, 0.5, 0.25, -1.0, -1.0, -0.75, 0.75, 0.75, -0.75, 0.5, 0.75, -0.75, 0.0, -1.0, 0.75, 0.5, 0.75, -0.75, -1.0, 0.25, 0.5, -0.5, -1.0, -0.75, 0.25, 0.25, -0.75, ]);
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device60.pushErrorScope("validation");
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder800.clearBuffer(buffer800);
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout802]
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder000.draw(3);
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer009.destroy()
    const command_buffer801 = command_encoder801.finish();
    device80.queue.writeBuffer(buffer800, 0, array3, 0, array3.length);
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    render_bundle_encoder002.setVertexBuffer(0, buffer002);
    buffer500.destroy()
    
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    device80.queue.writeBuffer(buffer800, 0, array0, 0, array0.length);
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
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
    query004.destroy()
    device60.queue.writeBuffer(buffer600, 0, array8, 0, array8.length);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    device80.queue.writeBuffer(buffer800, 0, array5, 0, array5.length);
    command_encoder800.clearBuffer(buffer800);
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    
    device80.queue.writeBuffer(buffer800, 0, array9, 0, array9.length);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    device80.queue.writeBuffer(buffer800, 0, array10, 0, array10.length);
    texture800.destroy();
    device80.queue.submit([command_buffer801, ]);
    device00.queue.submit([command_buffer001, ]);
    const command_buffer306 = command_encoder306.finish();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer600 = command_encoder600.finish();
    device00.queue.submit([command_buffer000, ]);
    const command_buffer003 = command_encoder003.finish();
    const command_buffer800 = command_encoder800.finish();
    device00.queue.submit([command_buffer003, ]);
    device30.queue.submit([command_buffer306, ]);
    device80.queue.submit([command_buffer800, ]);
    device60.queue.submit([command_buffer601, ]);
    device60.queue.submit([command_buffer600, ]);
}