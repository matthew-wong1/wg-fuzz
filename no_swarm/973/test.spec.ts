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
    const array0 = new Float32Array([-0.5, -0.75, -1.0, -1.0, -0.5, -0.25, 1.0, 0.75, -0.75, 1.0, -0.25, 0.0, 1.0, 0.75, -1.0, -0.25, 1.0, 0.5, 0.0, -0.75, -0.25, 0.5, 0.5, 0.0, -1.0, 0.0, -0.25, 0.75, 0.0, 0.0, 1.0, 0.75, 1.0, -1.0, 0.75, 0.75, -1.0, -0.25, 0.25, -0.75, 1.0, 0.25, 0.75, 0.0, 0.75, -0.25, -0.25, -0.75, -1.0, -0.75, -0.25, -0.75, -0.25, 1.0, -0.75, 0.75, 0.0, -0.25, -1.0, 0.5, 0.75, 0.75, -0.75, -1.0, 1.0, -0.75, 1.0, 0.75, -0.5, 0.0, 1.0, -0.25, 0.0, 0.0, 0.0, 0.25, 0.75, 0.25, -1.0, -0.75, 0.5, -1.0, 0.75, 0.5, -0.25, 0.25, 1.0, -0.5, 0.25, 0.75, 1.0, -1.0, -0.75, 1.0, 0.25, 0.75, 0.5, 0.5, 0.25, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array1 = new Float32Array([1.0, -0.75, -0.5, 0.25, -0.5, -0.5, 0.5, 0.0, 0.25, 1.0, -0.5, 0.25, -0.5, 0.75, -0.25, -1.0, -0.5, -0.5, -1.0, 1.0, 0.0, 1.0, -0.75, 0.5, -0.75, -0.75, -0.5, 0.75, 0.0, -0.25, -0.25, 0.0, -0.5, -0.75, 0.0, 0.75, 0.75, 0.0, -0.5, -0.75, -0.25, 0.75, -0.75, 1.0, 0.25, 0.75, -0.75, -0.75, -1.0, 1.0, 0.75, 0.75, 0.0, 0.5, 0.75, 0.5, -1.0, 0.5, 0.25, 1.0, -0.25, -0.5, -0.75, -0.75, 0.25, -1.0, 0.5, -0.25, 1.0, 0.0, -0.5, -1.0, -0.25, -0.5, 0.25, 0.25, -0.5, 0.75, 0.25, 0.25, 1.0, 0.5, -0.5, 0.5, 0.25, -0.5, -0.5, -1.0, -0.75, 1.0, 0.0, -0.5, -0.5, 0.75, 0.0, 0.25, 0.25, 1.0, -0.75, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("internal");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const array2 = new Float32Array([-0.25, 0.25, -0.25, 0.25, 1.0, 0.0, 0.5, -0.5, 0.5, -0.5, 0.25, 0.25, -0.25, -0.25, 0.75, 0.0, -1.0, 0.5, 0.5, -0.5, 0.75, 1.0, 0.0, 0.0, -1.0, -0.75, -0.75, 0.75, -0.75, -1.0, 0.5, -0.25, -1.0, -0.5, 0.5, -0.75, 0.0, 0.0, 0.25, -0.5, 0.75, 0.75, 0.25, -0.5, 0.25, -0.75, 0.75, -0.5, 0.25, -0.25, -0.25, 0.5, -0.75, 1.0, -0.25, 0.75, -1.0, -1.0, 0.0, 0.5, 0.5, -1.0, -0.5, 0.0, -0.5, -0.75, -0.25, 0.0, 0.0, -1.0, -0.75, -1.0, 0.5, -1.0, -0.75, -1.0, -0.75, -0.75, 0.5, -0.5, 0.5, 1.0, 1.0, -0.5, 0.25, -1.0, -0.5, -0.75, 0.75, 1.0, -1.0, -0.5, -0.75, -0.5, -0.5, 1.0, -0.75, 1.0, -0.25, 0.75, ]);
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query200.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device20.destroy();
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array3 = new Float32Array([-0.5, 0.5, -0.5, 0.0, -1.0, 0.25, -0.25, 0.75, -0.5, 0.75, 0.0, -0.75, 0.0, 0.5, -0.5, -0.25, 1.0, -0.75, 0.0, 1.0, 0.5, 0.5, 0.5, 0.5, -0.75, 0.25, 0.25, -0.75, 0.75, -1.0, -1.0, 0.25, 0.5, -0.5, 0.0, 0.0, -1.0, 0.25, 0.0, -0.25, 0.25, 0.25, -0.75, -0.75, -0.5, 0.25, 0.5, -0.25, -0.75, -0.75, 0.25, 0.25, -1.0, -0.75, 0.0, 0.0, 0.0, -0.75, -0.25, 0.5, 0.0, 0.0, 0.5, 0.5, -1.0, 1.0, -1.0, 0.75, -1.0, -1.0, 0.5, -0.25, 0.25, -0.75, 0.75, 0.75, 1.0, 0.0, -0.75, 0.5, 0.25, 0.75, -1.0, 1.0, -0.25, 0.25, 0.25, 0.75, 0.5, -0.75, -0.25, -0.5, 1.0, 0.0, 0.25, -0.5, 1.0, 0.75, -1.0, 0.75, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array4 = new Float32Array([-0.5, 0.0, 0.25, -0.25, -0.25, -0.25, 0.75, 0.75, 1.0, -0.75, -0.5, 1.0, 0.0, -0.5, -0.25, 0.0, 0.5, -0.5, -0.25, 0.5, 0.75, -0.75, 1.0, 0.0, -1.0, 0.5, -0.25, 0.5, 0.75, -0.25, -0.5, -1.0, 1.0, 0.0, 0.0, -0.5, -0.5, 0.75, -0.25, 0.5, 0.75, -0.75, -1.0, -1.0, 1.0, 0.75, 0.0, 0.75, -0.75, 0.75, -0.25, -1.0, 0.0, -1.0, -0.75, -0.25, 0.0, -0.5, -0.75, 0.0, -1.0, -0.75, 0.5, 0.25, 1.0, -1.0, -1.0, -0.75, -0.75, 0.25, 0.0, -0.25, -0.25, -0.75, 1.0, 0.5, -0.75, -0.75, -0.75, -1.0, -1.0, 0.0, 0.0, 1.0, 1.0, -0.75, 0.25, 0.75, -0.5, 0.5, 0.75, 0.25, -0.25, -1.0, 0.0, 0.0, -0.75, -0.75, 1.0, 0.75, ]);
    
    device10.pushErrorScope("validation");
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
    const array5 = new Float32Array([-1.0, -1.0, -0.75, 1.0, -0.5, -0.75, 0.0, 1.0, 1.0, -0.25, 1.0, 1.0, -0.25, 0.5, 0.75, -0.25, -0.75, -0.25, -0.5, 0.0, -0.5, 0.75, -0.5, -0.75, 0.75, 0.25, -1.0, -0.75, -1.0, 0.5, 0.0, -0.5, -1.0, 0.75, -1.0, 1.0, -0.75, 0.75, -0.25, 0.25, 0.25, 0.0, 0.25, -0.5, 1.0, 0.25, -0.75, 0.75, 0.75, 0.0, 0.25, 1.0, -0.5, -1.0, 0.0, 1.0, -1.0, 0.0, -0.5, 0.5, -0.25, 1.0, 0.25, -1.0, 0.75, 0.5, -0.75, 1.0, 0.25, -1.0, 1.0, 0.5, 0.0, 0.75, 0.75, -0.75, 0.0, -0.5, -0.25, 1.0, 0.25, 0.5, -0.75, 0.0, -1.0, 1.0, 0.0, -0.75, 0.0, -0.75, 0.5, 0.0, 0.5, 1.0, 0.25, 0.75, -0.75, 0.25, -0.5, 1.0, ]);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    
    buffer100.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query100.destroy()
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.destroy();
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32uint",
        dimension: "2d"
    });
    device30.pushErrorScope("validation");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    query300.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
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
    
    texture300.destroy();
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    
    query400.destroy()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
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
    
    
    query300.destroy()
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    query401.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
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
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    
    query400.destroy()
    
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder301.clearBuffer(buffer300);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    
    render_bundle_encoder401.popDebugGroup();
    query401.destroy()
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout303]
    });
    device30.pushErrorScope("out-of-memory");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder300.popDebugGroup()
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.setPipeline(render_pipeline401);
    render_bundle_encoder400.pushDebugGroup("group_marker");
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
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("validation");
    
    
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
    command_encoder302.insertDebugMarker("mymarker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    render_bundle_encoder401.setPipeline(render_pipeline400);
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const command_buffer300 = command_encoder300.finish();
    query300.destroy()
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
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
    query301.destroy()
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    compute_pass_encoder4000.insertDebugMarker("marker")
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_bundle_encoder401.insertDebugMarker("marker");
    const array6 = new Float32Array([1.0, 0.5, 0.25, -0.5, -1.0, -0.5, 1.0, -0.75, 0.0, 0.25, -0.5, 0.75, 0.5, 1.0, -0.5, -0.75, -1.0, 0.25, -1.0, 0.75, -1.0, -1.0, -0.75, -1.0, -0.5, 1.0, -0.75, -0.5, 0.25, 0.0, 1.0, 0.0, 0.5, 0.25, 0.75, 0.0, -0.5, 0.25, -0.75, 0.75, -0.75, 0.5, -1.0, 0.5, 1.0, 0.75, -0.75, 0.0, -0.75, 0.75, 0.0, 0.5, -0.75, -0.75, 0.75, -0.75, 1.0, 0.0, -1.0, 0.0, 0.0, 1.0, 1.0, 0.5, 1.0, 0.0, -1.0, 0.0, 0.25, -0.25, -1.0, -0.25, 0.0, 0.5, 0.5, 0.75, -0.5, -0.25, 0.5, 0.75, 0.25, 1.0, 0.75, 1.0, -0.5, -0.5, 0.5, 0.75, -0.75, 0.75, 0.75, -0.5, 0.25, 0.75, 1.0, -0.25, -0.25, -0.75, 0.75, 0.25, ]);
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
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
    query402.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer303, 0, array5, 0, array5.length);
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    query300.destroy()
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    compute_pass_encoder3020.setPipeline(compute_pipeline305);
    texture400.destroy();
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout305,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout306,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer300.destroy()
    
    
    render_bundle_encoder402.setPipeline(render_pipeline400);
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer303.destroy()
    device30.queue.writeBuffer(buffer304, 0, array2, 0, array2.length);
    device30.queue.submit([command_buffer300, ]);
    render_bundle_encoder301.popDebugGroup();
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    query401.destroy()
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    const array7 = new Float32Array([1.0, 0.0, 0.5, 0.75, 0.75, -0.5, 1.0, -1.0, 0.0, 0.75, 1.0, 0.75, 0.0, 1.0, 0.0, 1.0, -1.0, 0.5, 1.0, -1.0, 0.5, -0.25, -0.75, -0.5, -1.0, 0.25, 0.75, -0.75, 0.5, 1.0, 0.0, -1.0, 0.0, 0.25, -0.75, -1.0, 0.0, -0.25, -0.75, -1.0, -1.0, -0.25, -0.25, 0.5, 0.0, 0.75, 0.75, 0.25, 0.75, 1.0, -0.25, -0.25, -1.0, -1.0, 0.75, 0.25, -0.5, -0.25, -0.75, 0.5, -0.25, 0.25, -0.75, -1.0, 0.75, -0.5, 0.75, -0.75, 0.0, 0.0, 1.0, 0.0, 0.75, 0.25, 1.0, 0.25, 0.5, -0.25, 0.5, 0.25, -0.25, 0.25, 0.25, 0.25, -1.0, -0.75, -0.25, 0.5, 0.5, -1.0, 0.0, -0.75, -0.75, 0.75, -1.0, 0.5, 1.0, -0.75, -1.0, -1.0, ]);
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer304, 0, array0, 0, array0.length);
    compute_pass_encoder3010.insertDebugMarker("marker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    buffer400.destroy()
    
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout306,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    
    
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.setPipeline(render_pipeline302);
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    buffer304.destroy()
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    render_bundle_encoder300.popDebugGroup();
    const array8 = new Float32Array([1.0, -0.5, 0.0, 0.0, -0.5, 0.75, -0.5, -0.5, 0.0, -0.25, 0.25, -0.25, -0.5, 0.75, 0.75, 0.25, -0.5, 0.75, -0.5, 0.5, 0.25, 1.0, 1.0, 0.5, 0.75, 0.5, 1.0, 0.25, 0.5, 1.0, 0.25, 0.0, 0.0, 1.0, 1.0, 0.5, 0.75, 0.5, 1.0, -0.25, 0.25, -0.25, 0.5, 0.25, 0.75, 0.75, -0.5, 0.5, -0.5, 0.25, 0.5, -0.75, -0.5, -0.25, 0.75, 0.0, 0.0, 0.25, 0.25, -1.0, 0.25, 1.0, 0.75, -0.25, 0.75, 0.75, -0.25, 0.0, -1.0, 1.0, -0.25, 0.0, 0.25, 0.25, 0.0, 1.0, 1.0, -0.25, 0.5, 0.75, 0.75, -0.75, 0.75, -0.5, -0.5, -1.0, 0.25, -1.0, 0.0, 0.75, -0.25, 1.0, 0.0, -1.0, 0.25, -0.5, -1.0, -0.25, 0.25, 1.0, ]);
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group301);
    
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout302]
    });
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout307,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    device50.destroy();
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout304]
    });
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout308,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module307,
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
            module: shader_module307,
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
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout309,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout309,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("validation");
    
    const bind_group_layout306 = device30.createBindGroupLayout({ 
        label: "bind_group_layout306",
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
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout305,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    buffer401.destroy()
    texture301.destroy();
    const bind_group_layout307 = device30.createBindGroupLayout({ 
        label: "bind_group_layout307",
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
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout306,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout307,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    buffer308.destroy()
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout306,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    query400.destroy()
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout309,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout307]
    });
    compute_pass_encoder3030.setPipeline(compute_pipeline3013);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
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
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group401);
    device70.destroy();
    render_bundle_encoder401.popDebugGroup();
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout308,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const compute_pipeline3045 = device30.createComputePipeline({
        label: "compute_pipeline3045",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3046 = device30.createComputePipeline({
        label: "compute_pipeline3046",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    const compute_pipeline3047 = device30.createComputePipeline({
        label: "compute_pipeline3047",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3048 = device30.createComputePipeline({
        label: "compute_pipeline3048",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline3013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group302);
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline3049 = device30.createComputePipeline({
        label: "compute_pipeline3049",
        layout: pipeline_layout309,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer402.destroy()
    const compute_pipeline3050 = device30.createComputePipeline({
        label: "compute_pipeline3050",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    const compute_pipeline3051 = device30.createComputePipeline({
        label: "compute_pipeline3051",
        layout: pipeline_layout309,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module308,
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
            module: shader_module308,
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
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
        vertex: {
            module: shader_module308,
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
            module: shader_module308,
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
    buffer305.destroy()
    compute_pass_encoder4000.dispatchWorkgroups(100);
    buffer306.destroy()
    const compute_pipeline3052 = device30.createComputePipeline({
        label: "compute_pipeline3052",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const compute_pipeline3053 = device30.createComputePipeline({
        label: "compute_pipeline3053",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
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
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder301.popDebugGroup();
    query401.destroy()
    
    const compute_pipeline3054 = device30.createComputePipeline({
        label: "compute_pipeline3054",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3030.popDebugGroup()
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const compute_pipeline3055 = device30.createComputePipeline({
        label: "compute_pipeline3055",
        layout: pipeline_layout308,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline3056 = device30.createComputePipeline({
        label: "compute_pipeline3056",
        layout: pipeline_layout308,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3057 = device30.createComputePipeline({
        label: "compute_pipeline3057",
        layout: pipeline_layout307,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline3058 = device30.createComputePipeline({
        label: "compute_pipeline3058",
        layout: pipeline_layout304,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    texture401.destroy();
    buffer405.destroy()
    buffer301.destroy()
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_bundle_encoder302.setPipeline(render_pipeline301);
    const compute_pipeline3059 = device30.createComputePipeline({
        label: "compute_pipeline3059",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3060 = device30.createComputePipeline({
        label: "compute_pipeline3060",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    buffer307.destroy()
    buffer404.destroy()
    
    const compute_pipeline3061 = device30.createComputePipeline({
        label: "compute_pipeline3061",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3062 = device30.createComputePipeline({
        label: "compute_pipeline3062",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
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
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3063 = device30.createComputePipeline({
        label: "compute_pipeline3063",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3064 = device30.createComputePipeline({
        label: "compute_pipeline3064",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout404,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline3065 = device30.createComputePipeline({
        label: "compute_pipeline3065",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3066 = device30.createComputePipeline({
        label: "compute_pipeline3066",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    
    
    
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder401.popDebugGroup();
    const compute_pipeline3067 = device30.createComputePipeline({
        label: "compute_pipeline3067",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline3068 = device30.createComputePipeline({
        label: "compute_pipeline3068",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3069 = device30.createComputePipeline({
        label: "compute_pipeline3069",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline3070 = device30.createComputePipeline({
        label: "compute_pipeline3070",
        layout: pipeline_layout306,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
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
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    const compute_pipeline3071 = device30.createComputePipeline({
        label: "compute_pipeline3071",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3072 = device30.createComputePipeline({
        label: "compute_pipeline3072",
        layout: pipeline_layout309,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3073 = device30.createComputePipeline({
        label: "compute_pipeline3073",
        layout: pipeline_layout308,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const compute_pipeline3074 = device30.createComputePipeline({
        label: "compute_pipeline3074",
        layout: pipeline_layout303,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3075 = device30.createComputePipeline({
        label: "compute_pipeline3075",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline3076 = device30.createComputePipeline({
        label: "compute_pipeline3076",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3077 = device30.createComputePipeline({
        label: "compute_pipeline3077",
        layout: pipeline_layout306,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const render_pipeline4010 = device40.createRenderPipeline({
        label: "render_pipeline4010",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const compute_pipeline3078 = device30.createComputePipeline({
        label: "compute_pipeline3078",
        layout: pipeline_layout304,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group303);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder3020.dispatchWorkgroups(100);
    compute_pass_encoder4000.end();
    compute_pass_encoder3010.dispatchWorkgroups(100);
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder3020.end();
    compute_pass_encoder3030.dispatchWorkgroups(100);
    const command_buffer302 = command_encoder302.finish();
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder3010.end();
    command_encoder301.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3030.end();
    const command_buffer303 = command_encoder303.finish();
    const command_buffer301 = command_encoder301.finish();
    device30.queue.submit([command_buffer301, ]);
}