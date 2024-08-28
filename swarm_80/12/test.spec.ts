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
    
    
    const array0 = new Float32Array([-0.25, -0.25, -0.5, 1.0, -0.75, -1.0, -1.0, 1.0, 0.5, 0.25, -0.75, 0.5, 0.75, -1.0, 0.5, -0.5, -0.5, 0.25, 0.25, -0.75, -0.5, -1.0, 0.5, 0.25, 0.5, 0.75, 0.75, 0.5, 0.75, 0.25, 0.0, -0.25, 1.0, -0.25, -0.25, 0.0, 0.5, 1.0, 0.5, 0.25, 0.25, -1.0, -0.5, -0.5, -1.0, -0.75, 0.75, -0.75, -1.0, -0.75, 0.5, -0.5, -0.75, -0.25, 0.75, 0.75, 0.25, 0.75, -1.0, -0.25, -0.75, -0.75, 0.75, -1.0, 0.5, 0.5, 0.75, -1.0, 0.0, -0.75, 0.5, -0.75, 0.0, 0.25, -1.0, -0.5, 0.25, 0.5, 0.25, 0.75, -1.0, -1.0, -0.25, -1.0, -1.0, -0.75, -1.0, 0.75, -0.5, -0.5, 0.0, 0.75, -0.5, 0.75, 0.5, 0.25, -0.5, -0.25, 0.5, 0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32uint",
        dimension: "2d"
    });
    texture100.destroy();
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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const array1 = new Float32Array([1.0, -1.0, -1.0, 0.25, 0.25, 1.0, -0.5, 0.5, -0.25, -0.5, 0.25, -0.75, -0.75, 0.0, -0.75, 0.0, -1.0, -0.5, 0.0, 1.0, 0.0, -1.0, -1.0, -1.0, 0.75, -1.0, 0.25, 1.0, 0.25, 0.75, -0.75, 0.0, 0.0, 0.75, -0.5, -0.5, 0.5, 0.25, -0.25, -0.5, -1.0, 0.0, -1.0, 0.75, -1.0, 0.25, 0.5, -0.5, 0.5, -0.25, -1.0, 0.0, -0.25, -1.0, 1.0, -0.75, 0.25, 1.0, 1.0, 0.25, -0.75, -0.75, -0.25, 0.25, -0.5, -0.5, 1.0, -0.5, 1.0, 0.5, 0.0, -0.25, 0.25, -0.25, -0.75, -0.75, -0.5, -0.75, 0.75, 0.0, 0.5, -0.25, 0.5, 0.25, -0.25, -0.75, 0.25, 0.5, -0.75, 1.0, 1.0, 1.0, 0.25, -0.25, -0.25, -0.5, 0.25, -0.75, 0.0, -0.5, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2unorm",
        dimension: "2d"
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.destroy();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    query200.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device10.destroy();
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
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
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder301.insertDebugMarker("marker");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const array2 = new Float32Array([1.0, 0.25, 0.0, 1.0, -0.5, -0.25, 0.25, -0.75, -0.5, 0.25, -0.25, 0.25, -1.0, 0.75, -0.75, 0.5, -1.0, -0.5, 0.5, 0.25, 0.75, 0.5, 0.25, 0.25, 0.75, 0.75, 0.25, -0.75, 0.75, -0.75, 0.5, 0.5, -0.25, 0.5, -1.0, 0.0, 0.5, -0.5, 0.0, -0.5, -0.75, -1.0, -0.5, 0.0, -1.0, 0.0, -0.5, -0.25, 0.75, -0.5, 0.0, -1.0, -0.25, -1.0, -1.0, -0.25, 0.0, 0.0, 0.75, 0.5, -0.25, 0.5, 0.75, -0.5, 0.0, 0.75, -0.75, -0.5, -0.75, 0.25, 1.0, -0.5, -0.5, -0.75, 1.0, -0.5, -0.25, 0.75, 0.25, -1.0, -1.0, -1.0, -0.5, 0.25, 0.5, 0.25, 0.0, -1.0, 0.25, 0.75, 0.75, -0.25, 1.0, 0.5, -0.25, -0.5, -1.0, 0.75, 0.0, -1.0, ]);
    
    
    
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.insertDebugMarker("marker");
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
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    query302.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query301.destroy()
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    query301.destroy()
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
    query302.destroy()
    query302.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
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
    
    render_bundle_encoder301.insertDebugMarker("marker");
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
    
    
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.destroy();
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    const array3 = new Float32Array([0.5, 0.75, 0.25, -1.0, -1.0, 1.0, -0.25, -1.0, 0.0, 1.0, 0.5, 0.5, 0.0, -0.25, 1.0, 0.0, 0.5, -0.5, 0.25, 0.75, 1.0, -0.75, 1.0, 0.75, -0.25, 0.0, 0.75, 1.0, 0.25, -0.75, -0.5, -1.0, 0.75, -0.5, 0.25, 0.75, -1.0, 1.0, 0.25, 0.5, -1.0, 0.25, 1.0, 0.5, -0.75, -0.75, -0.5, 0.75, 0.0, 0.75, 1.0, -1.0, 0.75, 0.75, 0.0, -1.0, -0.25, 0.25, 0.25, 0.75, 1.0, -0.5, 0.0, -0.5, 0.75, 0.5, 0.5, 0.75, -0.5, 0.75, 0.25, -0.75, 0.0, 1.0, -0.5, -0.5, -0.75, -0.75, 0.25, -0.75, 1.0, 0.75, 0.0, -0.5, 1.0, -0.75, -0.5, 0.25, 0.0, -0.25, 0.0, 0.5, -1.0, -1.0, 0.0, -0.25, 0.25, 0.25, -0.25, 0.5, ]);
    
    device40.destroy();
    
    
    const array4 = new Float32Array([-1.0, -1.0, 0.25, -0.75, -0.25, 1.0, 1.0, 0.5, -0.25, 0.5, 0.0, -0.25, 0.0, -0.25, 0.5, 0.25, -0.75, -0.25, 0.75, 0.25, 0.75, 0.25, 0.0, 1.0, 1.0, 0.75, 0.75, 1.0, -0.75, -0.25, 0.75, 1.0, -1.0, 1.0, -0.5, 0.25, -0.5, 0.25, 0.75, -0.75, 1.0, 0.25, 0.75, -1.0, 1.0, -0.25, -0.75, 0.0, 0.0, -1.0, 0.75, -1.0, 0.25, -1.0, -0.5, 0.5, -0.25, -0.75, 0.5, 0.75, -1.0, -0.5, 0.0, -0.25, 0.0, -1.0, 0.0, -0.25, -0.5, 0.25, 1.0, -0.75, -0.5, -0.75, -0.5, -0.5, 0.75, -0.25, 1.0, 0.75, -0.25, 0.0, 0.0, 0.0, 0.75, -1.0, 0.75, 1.0, -0.25, 1.0, -0.25, 0.75, -0.75, -0.5, -0.75, 0.5, -0.75, -0.75, 0.0, -0.25, ]);
    const array5 = new Float32Array([0.0, 0.5, 0.75, 1.0, 0.5, 1.0, -0.5, -0.75, 0.75, 0.0, 1.0, 1.0, 0.75, 0.75, 0.5, 1.0, 0.5, 0.75, -0.75, -0.5, 1.0, 1.0, -1.0, -0.5, -0.5, 0.25, 0.5, -0.5, -0.5, 0.25, 0.75, 0.25, 0.5, 1.0, 1.0, 0.5, -0.75, 0.25, -0.75, 0.75, -0.25, -0.5, 0.75, 1.0, -1.0, -1.0, 0.75, 0.75, 0.25, 0.25, 1.0, 0.5, -0.5, -1.0, 1.0, -1.0, 0.0, 0.5, -0.5, 0.75, 0.5, -0.5, -0.75, -0.25, -0.5, 0.25, 1.0, 0.0, -0.5, 0.0, 0.0, 0.5, -0.25, -0.75, -0.75, -0.5, 1.0, 1.0, 0.5, -0.25, 0.25, -0.25, 0.75, 0.5, -0.5, 1.0, -0.75, 0.5, -0.5, 0.75, 0.75, 1.0, 0.75, 1.0, 0.25, 0.5, 0.25, 0.5, 0.75, -0.75, ]);
    
    const array6 = new Float32Array([-0.5, 0.0, 0.25, -0.75, -0.5, -0.25, 0.5, -0.5, -0.5, -0.25, -0.75, -0.75, 0.75, 0.0, 0.5, -0.75, 0.0, 0.25, 1.0, 0.5, 0.75, -0.75, -1.0, 0.25, 0.5, 0.0, -0.5, 0.0, 0.5, -0.25, -1.0, 0.5, -0.5, -1.0, 1.0, 0.0, -0.5, 0.25, -1.0, -0.75, -0.75, -0.25, 0.0, -0.25, 0.0, -0.25, -1.0, -1.0, 0.5, 0.0, -0.25, 0.0, 0.5, -0.5, 1.0, 0.0, 0.5, -0.25, 1.0, 0.5, -0.5, -1.0, 0.25, -0.75, 0.0, 0.5, 0.25, 0.5, 0.25, 1.0, 1.0, 0.25, 0.5, 0.25, 0.0, -0.75, -0.25, -1.0, -0.75, 0.5, 0.0, 0.25, 0.0, 0.25, -0.75, -0.75, -0.25, 0.25, -1.0, 0.25, 0.5, -0.5, 0.75, -1.0, 0.75, 0.75, 1.0, 0.0, -0.5, -1.0, ]);
    
    const array7 = new Float32Array([-0.5, -1.0, 0.5, 0.0, 1.0, 0.75, -0.75, -0.75, -0.25, 0.0, 0.0, 1.0, -0.75, -0.25, 1.0, -0.75, 0.25, -0.25, 0.75, 0.25, -0.25, 0.75, -1.0, 1.0, -0.75, 0.5, 1.0, -1.0, 0.25, 1.0, 1.0, -0.25, -0.75, -0.75, 0.5, 0.75, 0.5, 0.25, -0.25, -0.25, 1.0, 0.75, -0.25, 0.25, -0.5, 0.75, 0.5, 0.0, 0.0, -1.0, -0.25, -0.5, -0.25, 1.0, -0.25, -1.0, 0.5, -1.0, 0.5, -0.75, 0.5, -0.5, 0.0, -1.0, 1.0, -0.25, 1.0, 0.75, -0.5, -0.5, -0.75, 0.5, -0.75, -1.0, -0.5, 1.0, 0.0, -0.5, 0.5, 0.5, -0.5, 1.0, 0.5, -0.75, 0.0, 0.75, -0.25, -0.75, 0.75, -0.5, -0.25, 0.25, 1.0, 0.25, 0.75, -0.5, -0.25, -0.75, 0.0, 0.25, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array8 = new Float32Array([0.75, 0.75, 0.0, 0.5, -1.0, -0.25, 0.5, -1.0, 0.0, -0.5, 0.75, -1.0, -1.0, 0.5, 1.0, -0.5, 0.25, 0.75, 0.5, 1.0, -1.0, 0.5, -0.25, 0.5, -1.0, -0.75, -0.25, -0.5, 0.0, 0.75, -0.25, -0.75, -0.25, 0.0, 1.0, -1.0, -1.0, 0.5, 1.0, 1.0, -0.75, 0.5, 0.75, -0.5, -0.5, 0.25, -0.5, 1.0, -0.5, 1.0, 0.0, 0.75, 0.75, 0.5, 0.0, 0.5, 0.75, -0.5, 1.0, 0.25, 0.25, -0.75, -0.25, -0.25, 0.75, -0.5, -0.5, 1.0, -0.5, -0.25, 0.75, 0.0, 0.25, -0.25, -1.0, 0.25, 0.5, 0.5, -1.0, 1.0, -0.25, 0.25, -0.75, 0.75, 0.75, -1.0, 0.25, 0.0, -1.0, -0.25, 0.75, -1.0, -0.25, 1.0, 0.0, -0.5, -0.5, -0.5, 0.0, 0.75, ]);
    const array9 = new Float32Array([-0.5, -0.75, 0.5, 0.75, 0.0, -0.75, 0.5, 0.5, -0.5, -1.0, 1.0, 0.0, 0.25, 0.5, -1.0, 0.5, 0.75, -1.0, 0.0, 1.0, -0.25, 0.5, -1.0, -0.75, 1.0, 0.0, 0.5, 0.5, 0.25, 0.5, 1.0, -1.0, 0.25, 0.75, -0.75, 0.0, 0.0, 0.25, -0.5, -0.25, -1.0, 0.0, -1.0, -0.25, -1.0, 0.0, -1.0, 0.25, -1.0, -0.25, 0.75, -0.5, 0.75, 0.0, 0.75, -0.75, -1.0, -0.5, 0.75, 0.0, -0.25, -1.0, -0.5, 0.25, -0.25, -1.0, -0.5, -0.25, -0.25, 1.0, -1.0, 0.5, -0.75, 0.0, -0.75, -0.75, 0.25, -1.0, -0.25, 0.5, 0.75, -0.5, -0.75, 0.0, -0.75, 0.75, -0.25, -0.5, 0.0, -0.75, 0.5, 1.0, -1.0, 0.5, 1.0, -1.0, -1.0, -0.25, 0.25, 0.5, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    query500.destroy()
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query500.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device50.destroy();
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    device70.destroy();
    const array10 = new Float32Array([0.0, 0.75, -1.0, 1.0, -1.0, 0.0, 0.5, 0.0, -1.0, -1.0, -0.25, 0.75, 1.0, -1.0, -0.5, 0.25, -0.75, 0.25, -0.25, 0.0, 1.0, 1.0, 1.0, 0.75, -0.75, -0.5, 0.5, 0.75, 1.0, -0.75, -1.0, -0.75, 0.0, -0.5, -0.25, 0.25, 1.0, 0.5, -0.25, -1.0, -0.25, -0.5, 0.5, 0.25, 0.75, 0.5, 0.0, 0.25, 0.0, -0.75, 0.75, 0.75, 0.5, -1.0, 1.0, -0.75, -0.5, 0.5, -0.75, 0.0, -0.5, -1.0, 0.5, -0.5, 0.0, 0.0, -0.5, 0.75, -1.0, -0.75, 0.5, 1.0, -0.25, -0.5, -1.0, 0.25, 0.0, -0.5, -1.0, 1.0, -0.25, -0.25, -0.25, -0.75, 0.75, -0.25, 1.0, 0.0, 0.5, -1.0, -1.0, -1.0, -0.25, -0.5, -0.25, -1.0, 0.5, 0.75, -1.0, 0.75, ]);
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    query602.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
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
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    query600.destroy()
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    texture600.destroy();
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    device90.destroy();
    
    const pipeline_layout1001 = device100.createPipelineLayout({ 
        label: "pipeline_layout1001",
        bindGroupLayouts: [bind_group_layout1001]
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const pipeline_layout1002 = device100.createPipelineLayout({ 
        label: "pipeline_layout1002",
        bindGroupLayouts: [bind_group_layout1000]
    });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    texture1000.destroy();
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1003 = device100.createPipelineLayout({ 
        label: "pipeline_layout1003",
        bindGroupLayouts: [bind_group_layout1001]
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout1004 = device100.createPipelineLayout({ 
        label: "pipeline_layout1004",
        bindGroupLayouts: [bind_group_layout1001]
    });
    query600.destroy()
    
    const array11 = new Float32Array([-0.75, 0.25, 0.5, -1.0, 0.0, 0.5, -1.0, -0.25, 1.0, -0.25, 0.0, 1.0, 0.5, 0.25, 1.0, 0.75, 0.75, -0.25, -1.0, -0.75, -0.25, -1.0, -0.5, 0.75, -1.0, 0.75, -0.25, -1.0, -0.5, 0.0, -0.75, 0.25, 0.25, 0.0, 0.0, -0.25, 0.5, -0.75, -0.5, -0.75, 1.0, -0.75, -1.0, 0.25, 1.0, -0.75, 0.25, -0.25, 0.0, 0.5, 0.25, -0.25, 0.25, -0.25, -0.25, 0.75, -0.75, 0.0, -0.5, -1.0, -0.5, -0.75, -0.75, -0.75, 0.0, -1.0, 0.0, -0.25, 1.0, -1.0, 0.0, -1.0, -1.0, 0.0, -1.0, -0.75, 0.0, -0.25, 0.5, 0.75, -0.5, 0.25, 1.0, 0.25, 1.0, 0.75, 1.0, 0.0, -0.5, -0.75, 0.0, 0.25, -0.5, -0.25, 1.0, -0.5, -0.25, 0.0, 0.25, -0.5, ]);
    query600.destroy()
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
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device100.destroy();
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
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
    device80.destroy();
    
    
    
    
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const array12 = new Float32Array([-0.75, 0.25, -0.5, 0.5, -0.25, -0.75, 0.5, 0.5, 1.0, -1.0, -1.0, 0.75, -0.75, 0.75, -0.25, 0.25, 1.0, -0.5, -0.25, 0.0, 0.5, 0.5, -0.5, 0.0, 1.0, -0.25, -1.0, -0.25, -0.5, -0.25, -1.0, -0.75, -0.25, 0.5, -0.5, 1.0, -0.5, -0.75, 0.25, -1.0, -0.5, 0.75, -0.75, -0.25, -0.5, 1.0, 1.0, 0.25, 0.25, -1.0, 0.75, -1.0, -0.25, -0.75, 0.25, 0.5, 0.5, 0.75, -0.75, 0.5, 0.5, -1.0, -1.0, -0.5, -0.75, 0.0, 1.0, 0.5, 0.5, -0.5, 0.5, 0.0, 0.0, -1.0, 1.0, 0.5, -0.75, 0.5, 0.0, 0.0, 0.5, 1.0, -0.5, -0.5, 0.5, 0.5, -0.25, 0.0, 0.75, 0.0, 0.5, 0.75, 1.0, 0.0, 0.5, 1.0, 1.0, -1.0, -1.0, -1.0, ]);
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const array13 = new Float32Array([1.0, -0.25, 0.75, 0.0, -0.5, -0.5, 0.75, -0.25, 1.0, 0.0, 0.75, 0.0, 0.75, 0.5, 0.75, -0.75, -0.5, 1.0, 0.75, -0.75, 0.25, 0.75, 0.5, -1.0, 0.25, 0.25, -1.0, 0.5, -0.75, -0.75, -0.5, 0.5, 0.5, 0.75, -1.0, 0.25, 1.0, -0.25, -0.5, -0.75, -0.25, 0.5, 0.0, 0.75, -1.0, -1.0, 0.0, 1.0, 0.0, -0.5, 0.5, 0.25, -0.25, 0.0, -0.75, -0.75, -0.5, 0.5, 1.0, -0.75, -0.75, -0.5, -0.75, 0.0, 0.5, -0.5, 1.0, 0.5, 0.0, -0.5, 0.5, -1.0, 0.25, 0.75, -0.25, -0.5, 0.25, -0.5, 0.5, 0.75, -0.25, -0.25, -0.25, 0.0, 1.0, 0.25, -1.0, 0.75, -0.25, -1.0, -1.0, -1.0, 0.0, -0.75, -0.75, 0.25, 0.75, 0.25, -0.25, 0.25, ]);
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture602.destroy();
    render_bundle_encoder600.insertDebugMarker("marker");
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    texture601.destroy();
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
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
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
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
    query600.destroy()
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
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
    texture1201.destroy();
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
    
    device120.destroy();
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
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
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    query600.destroy()
    query603.destroy()
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    
    
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    
    
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
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
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    texture603.destroy();
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    query603.destroy()
    
    
    const sampler605 = device60.createSampler( { label: "sampler605" } );
    
    const render_pipeline607 = device60.createRenderPipeline({
        label: "render_pipeline607",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    
    render_bundle_encoder600.insertDebugMarker("marker");
    query600.destroy()
    query603.destroy()
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout602]
    });
    const render_pipeline608 = device60.createRenderPipeline({
        label: "render_pipeline608",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const render_pipeline609 = device60.createRenderPipeline({
        label: "render_pipeline609",
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
    query603.destroy()
    const render_pipeline6010 = device60.createRenderPipeline({
        label: "render_pipeline6010",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    device60.destroy();
    const array14 = new Float32Array([-0.5, 0.5, 0.75, 1.0, -1.0, -1.0, 0.75, 0.0, 0.25, 0.25, 0.0, -0.75, 0.25, 0.75, -0.5, -0.75, -0.75, -1.0, 0.0, 0.75, -0.25, -1.0, -0.5, 1.0, 0.75, -0.5, 0.5, -0.25, 0.25, 0.75, 0.75, -1.0, -0.75, 0.25, 1.0, 0.5, -0.5, -0.5, -0.25, 0.5, 0.75, 0.75, 0.5, -0.5, -1.0, 1.0, 1.0, -0.25, 0.0, 1.0, -0.75, 0.25, 0.25, 0.5, -0.5, -1.0, 1.0, -0.5, 0.0, 1.0, -0.25, -0.75, 0.75, -1.0, 1.0, -1.0, -0.25, 0.5, 0.0, 0.0, -0.25, -0.5, 0.75, 0.0, 0.0, -0.75, 0.75, -0.5, 0.75, -0.75, 0.75, -0.75, 0.75, -0.75, -0.75, -0.25, -1.0, -1.0, -0.75, -0.5, -1.0, 0.0, -1.0, -0.75, 0.0, 0.5, -0.75, -0.25, -0.5, 0.75, ]);
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    device130.destroy();
    const array15 = new Float32Array([0.5, 0.5, -1.0, 1.0, -1.0, -0.75, 1.0, -0.25, 1.0, 0.75, -0.25, 0.75, 1.0, 0.75, 0.5, -0.75, 0.5, -1.0, 0.5, -0.75, 1.0, -1.0, -0.5, -0.75, 0.75, 0.5, 0.75, 0.25, 1.0, 0.5, 0.75, 1.0, 0.0, -0.5, -0.25, 0.75, 0.25, 0.5, -0.5, 0.5, -0.25, -0.5, -1.0, 0.5, 1.0, 0.5, -0.75, 0.75, 0.75, -0.75, -0.75, -0.75, 0.5, -0.5, 0.0, 0.5, 0.0, 1.0, -1.0, 0.75, -0.25, -0.5, -0.25, 0.25, -0.5, -0.25, 1.0, 0.75, -0.5, 0.75, -0.75, -1.0, -1.0, 0.0, 0.0, -0.25, 0.75, -0.75, -1.0, 0.5, -0.25, -0.5, -0.75, -0.5, 1.0, 0.5, -0.25, 0.25, 1.0, 0.25, 1.0, 0.0, 0.75, -0.25, 0.5, 0.25, 0.0, -0.75, -0.25, -1.0, ]);
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array16 = new Float32Array([1.0, -0.5, -0.75, 0.75, -1.0, 0.5, -1.0, 0.0, 0.75, 0.5, -0.5, -1.0, 0.0, 0.25, -0.5, 1.0, 0.0, -0.75, 0.75, -1.0, 0.5, 1.0, -1.0, 0.5, -0.75, -1.0, 0.0, 1.0, -0.5, -0.5, -1.0, -1.0, 0.75, 1.0, -1.0, -0.75, -0.75, 0.75, -0.25, -0.5, 0.5, 0.75, 0.75, -0.25, -0.5, 0.25, 1.0, 0.25, -0.5, -0.5, -1.0, 0.0, -0.25, 0.25, -0.75, 0.0, -1.0, -0.5, -0.75, -1.0, -0.25, -1.0, -0.25, -0.5, -0.75, 0.75, -1.0, -0.75, 0.75, 1.0, 0.75, 0.0, -0.25, 0.75, -0.25, 0.5, 0.5, -1.0, 0.0, -0.75, 0.75, 0.0, -0.25, 0.5, -0.5, -0.25, -0.25, -0.75, 0.25, -1.0, -1.0, 0.75, -0.75, 0.75, 0.75, 0.75, -1.0, 0.25, -1.0, -0.75, ]);
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    const array17 = new Float32Array([1.0, -0.75, 0.0, 1.0, -0.5, 1.0, 0.5, 0.75, -1.0, -0.75, 0.25, 1.0, 0.25, -0.25, 0.0, -0.5, -0.5, 0.5, 1.0, 0.75, 0.75, 0.25, 0.75, -0.5, -0.5, -0.25, 1.0, 0.5, -0.25, 0.5, -0.25, -1.0, -0.5, -1.0, 0.5, -0.25, -1.0, 0.75, 1.0, -0.25, 1.0, -0.5, -0.5, -0.75, 0.5, -0.75, 0.25, -0.5, -0.75, -0.75, 0.5, 0.25, 1.0, 1.0, 0.25, 0.25, 1.0, -0.25, 1.0, -1.0, -1.0, 0.5, -0.5, 0.5, 1.0, 0.5, -0.25, 0.5, -1.0, -0.25, -0.25, 0.0, -1.0, 0.5, 0.5, -0.25, -0.75, -0.75, 0.75, 1.0, -1.0, 1.0, -0.75, -1.0, 1.0, -0.5, -0.5, 1.0, -0.75, 0.75, -0.75, 0.75, -0.25, -0.5, 0.5, -1.0, 0.25, 0.5, -0.25, 0.5, ]);
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const bind_group_layout1600 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1600",
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
    const sampler1600 = device160.createSampler( { label: "sampler1600" } );
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    const query1600 = device160.createQuerySet({
        label: "query1600",
        type: "occlusion",
        count: 32,
    });
    query1600.destroy()
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler1601 = device160.createSampler( { label: "sampler1601" } );
    const sampler1700 = device170.createSampler( { label: "sampler1700" } );
    render_bundle_encoder1101.insertDebugMarker("marker");
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    render_bundle_encoder1100.insertDebugMarker("marker");
    
    const bind_group_layout1800 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1800",
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
    query1600.destroy()
    query1600.destroy()
    const query1800 = device180.createQuerySet({
        label: "query1800",
        type: "occlusion",
        count: 32,
    });
    device140.destroy();
    const render_bundle_encoder1102 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1102",
        colorFormats: ["bgra8unorm"]
    });
    query1800.destroy()
    const sampler1701 = device170.createSampler( { label: "sampler1701" } );
    
    render_bundle_encoder1100.insertDebugMarker("marker");
    const render_bundle_encoder1600 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1100.insertDebugMarker("marker");
    const render_bundle_encoder1601 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1601",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1601.insertDebugMarker("marker");
    const pipeline_layout1800 = device180.createPipelineLayout({ 
        label: "pipeline_layout1800",
        bindGroupLayouts: [bind_group_layout1800]
    });
    const bind_group_layout1500 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1500",
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
    const pipeline_layout1801 = device180.createPipelineLayout({ 
        label: "pipeline_layout1801",
        bindGroupLayouts: [bind_group_layout1800]
    });
    render_bundle_encoder1100.insertDebugMarker("marker");
    render_bundle_encoder1101.insertDebugMarker("marker");
    query1600.destroy()
    var shader_module1700_code = "";
    try {
        shader_module1700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1700 = await device170.createShaderModule({ label: "shader_module1700", code: shader_module1700_code })
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    const query1601 = device160.createQuerySet({
        label: "query1601",
        type: "occlusion",
        count: 32,
    });
    
    const sampler1800 = device180.createSampler( { label: "sampler1800" } );
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout1801 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1801",
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
    render_bundle_encoder1600.insertDebugMarker("marker");
    device150.destroy();
    render_bundle_encoder1100.insertDebugMarker("marker");
    var shader_module1701_code = "";
    try {
        shader_module1701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1701 = await device170.createShaderModule({ label: "shader_module1701", code: shader_module1701_code })
    render_bundle_encoder1102.insertDebugMarker("marker");
    var shader_module1702_code = "";
    try {
        shader_module1702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1702 = await device170.createShaderModule({ label: "shader_module1702", code: shader_module1702_code })
    const sampler1702 = device170.createSampler( { label: "sampler1702" } );
    
    const query1801 = device180.createQuerySet({
        label: "query1801",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder1601.insertDebugMarker("marker");
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device110.destroy();
    const render_bundle_encoder1700 = device170.createRenderBundleEncoder({
        label: "render_bundle_encoder1700",
        colorFormats: ["bgra8unorm"]
    });
    const array18 = new Float32Array([1.0, 0.25, -1.0, 0.0, 0.5, 1.0, -0.75, -0.5, 0.0, -0.25, 1.0, 0.5, 0.25, 0.25, 0.5, 1.0, 0.5, -1.0, 0.25, -0.75, -1.0, -0.75, 0.25, -0.5, 1.0, -0.25, -0.25, 0.25, -0.5, 1.0, -0.25, 0.0, 0.25, 0.5, -0.25, 1.0, -0.25, 0.25, 0.0, 0.75, 0.25, 0.75, 0.25, -0.5, 0.5, 0.25, 0.0, -1.0, 0.75, 0.0, -0.5, -0.75, 0.0, 0.0, 0.5, 0.75, 1.0, 0.5, -1.0, 1.0, 0.0, -0.75, 0.0, 0.75, -0.5, 0.5, 0.5, 1.0, 1.0, 0.0, 0.0, 0.5, 1.0, -1.0, 1.0, -0.75, 1.0, 1.0, 0.75, 0.75, -0.5, 0.5, -0.25, 0.5, 0.5, 0.25, -0.25, 1.0, -0.5, 1.0, -0.75, -0.5, -0.25, -0.5, 0.75, 0.75, -1.0, 1.0, -0.5, -1.0, ]);
    
    const render_bundle_encoder1602 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1602",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1700.insertDebugMarker("marker");
    const pipeline_layout1802 = device180.createPipelineLayout({ 
        label: "pipeline_layout1802",
        bindGroupLayouts: [bind_group_layout1801]
    });
    query1600.destroy()
    const array19 = new Float32Array([0.25, -0.25, -1.0, 0.25, -0.5, 0.25, 1.0, 0.5, -0.5, 0.5, -0.5, 0.75, 0.5, -0.75, 0.0, 0.0, 0.0, -0.5, -0.25, 0.0, -0.75, -0.25, -1.0, 0.5, 0.0, 0.25, 0.0, 0.5, 0.25, -0.25, -0.5, -0.5, 0.25, -0.25, -0.25, -0.75, -0.25, 1.0, -0.25, -1.0, 1.0, -0.5, 0.0, 1.0, 0.0, 0.25, -0.25, 0.25, -0.25, -0.5, 0.5, -0.75, -0.25, -0.75, 0.75, 0.75, 1.0, -0.5, 0.0, -0.75, -1.0, 0.25, 1.0, -0.25, -0.25, 0.75, 0.0, 0.75, 1.0, 1.0, -1.0, 0.0, -0.25, -0.5, -0.25, 0.5, -0.25, 0.75, 0.75, -1.0, -1.0, -1.0, -1.0, -0.75, -1.0, -0.75, 0.5, 0.5, 0.25, -0.5, -0.25, 0.25, 1.0, 0.5, -0.5, -0.5, -0.25, -0.25, -0.25, 0.0, ]);
    const bind_group_layout1601 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1601",
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
    var shader_module1800_code = "";
    try {
        shader_module1800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1800 = await device180.createShaderModule({ label: "shader_module1800", code: shader_module1800_code })
    
    const bind_group_layout1602 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1602",
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
    render_bundle_encoder1602.insertDebugMarker("marker");
    const query1802 = device180.createQuerySet({
        label: "query1802",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder1601.insertDebugMarker("marker");
    const texture1800 = device180.createTexture({
        label: "texture1800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline1700 = device170.createRenderPipeline({
        label: "render_pipeline1700",
        vertex: {
            module: shader_module1702,
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
            module: shader_module1702,
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
    const texture1801 = device180.createTexture({
        label: "texture1801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout1600 = device160.createPipelineLayout({ 
        label: "pipeline_layout1600",
        bindGroupLayouts: [bind_group_layout1602]
    });
    query1601.destroy()
    render_bundle_encoder1700.insertDebugMarker("marker");
    
    const sampler1801 = device180.createSampler( { label: "sampler1801" } );
    device170.destroy();
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    
    const render_pipeline1600 = device160.createRenderPipeline({
        label: "render_pipeline1600",
        vertex: {
            module: shader_module1600,
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
            module: shader_module1600,
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
    
    device180.destroy();
    render_bundle_encoder1602.insertDebugMarker("marker");
    query1600.destroy()
    render_bundle_encoder1601.insertDebugMarker("marker");
    render_bundle_encoder1602.insertDebugMarker("marker");
    const bind_group_layout1603 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1603",
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
    render_bundle_encoder1601.insertDebugMarker("marker");
    render_bundle_encoder1601.insertDebugMarker("marker");
    const sampler1602 = device160.createSampler( { label: "sampler1602" } );
    render_bundle_encoder1601.insertDebugMarker("marker");
    const array20 = new Float32Array([-0.75, 0.75, 0.75, 0.25, 0.5, -0.75, 0.5, -0.25, -1.0, -0.5, 0.5, -0.25, 0.25, 0.0, -0.25, -1.0, -0.75, 1.0, 0.0, 0.0, 0.5, -1.0, 0.0, 0.5, -1.0, 0.5, 0.25, 1.0, 0.75, -0.75, -0.25, -0.75, 0.75, 1.0, 0.0, 0.25, 1.0, -1.0, 0.0, -0.75, 0.5, -0.5, 0.5, -0.25, 0.0, -1.0, 1.0, 0.5, 0.5, 1.0, 0.5, 0.25, 0.75, -1.0, 0.25, -0.75, 0.25, 0.5, 0.25, 0.0, 0.25, -0.25, -1.0, -0.25, 0.25, 0.75, -0.25, -0.5, -0.25, 0.25, -1.0, 1.0, -1.0, 0.25, 0.25, -0.25, 1.0, 0.75, -0.25, 1.0, 0.0, -0.25, -0.25, 0.5, -0.5, -0.75, 0.75, -1.0, -0.25, 0.75, 0.25, -0.5, 0.25, 1.0, 0.75, 1.0, -1.0, 0.5, 1.0, 0.0, ]);
    const pipeline_layout1601 = device160.createPipelineLayout({ 
        label: "pipeline_layout1601",
        bindGroupLayouts: [bind_group_layout1602]
    });
    
    const pipeline_layout1602 = device160.createPipelineLayout({ 
        label: "pipeline_layout1602",
        bindGroupLayouts: [bind_group_layout1602]
    });
    const adapter19 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout1603 = device160.createPipelineLayout({ 
        label: "pipeline_layout1603",
        bindGroupLayouts: [bind_group_layout1602]
    });
    render_bundle_encoder1602.insertDebugMarker("marker");
    
    
    const pipeline_layout1604 = device160.createPipelineLayout({ 
        label: "pipeline_layout1604",
        bindGroupLayouts: [bind_group_layout1601]
    });
    const sampler1603 = device160.createSampler( { label: "sampler1603" } );
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query1601.destroy()
    const adapter21 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query1601.destroy()
    const pipeline_layout1605 = device160.createPipelineLayout({ 
        label: "pipeline_layout1605",
        bindGroupLayouts: [bind_group_layout1603]
    });
    const pipeline_layout1606 = device160.createPipelineLayout({ 
        label: "pipeline_layout1606",
        bindGroupLayouts: [bind_group_layout1603]
    });
    const pipeline_layout1607 = device160.createPipelineLayout({ 
        label: "pipeline_layout1607",
        bindGroupLayouts: [bind_group_layout1600]
    });
    
    
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    query1601.destroy()
    const adapter22 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query1900 = device190.createQuerySet({
        label: "query1900",
        type: "occlusion",
        count: 32,
    });
    const texture1900 = device190.createTexture({
        label: "texture1900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline1601 = device160.createRenderPipeline({
        label: "render_pipeline1601",
        vertex: {
            module: shader_module1600,
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
            module: shader_module1600,
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
    const query1602 = device160.createQuerySet({
        label: "query1602",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1608 = device160.createPipelineLayout({ 
        label: "pipeline_layout1608",
        bindGroupLayouts: [bind_group_layout1601]
    });
    
    device160.destroy();
    
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    
    
    query1900.destroy()
    const texture1901 = device190.createTexture({
        label: "texture1901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture2000 = device200.createTexture({
        label: "texture2000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module2000_code = "";
    try {
        shader_module2000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2000 = await device200.createShaderModule({ label: "shader_module2000", code: shader_module2000_code })
    const query2000 = device200.createQuerySet({
        label: "query2000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder2000 = device200.createRenderBundleEncoder({
        label: "render_bundle_encoder2000",
        colorFormats: ["bgra8unorm"]
    });
    device190.destroy();
    query2000.destroy()
    
    query2000.destroy()
    const render_bundle_encoder2001 = device200.createRenderBundleEncoder({
        label: "render_bundle_encoder2001",
        colorFormats: ["bgra8unorm"]
    });
    
    const array21 = new Float32Array([0.75, 0.0, -1.0, -0.25, -0.25, 0.75, -0.75, 0.0, 0.5, -0.25, -0.75, 0.0, 0.5, 0.25, 1.0, 0.0, -0.5, -1.0, 0.75, 0.5, -0.5, -0.75, 0.75, 0.0, 1.0, 0.25, -0.75, 0.75, -0.25, 0.5, 0.75, -0.5, -1.0, -0.5, -0.75, 1.0, -0.25, 0.0, 1.0, -0.25, -0.25, 0.25, -0.75, 0.0, -0.75, 0.0, -0.25, -0.5, -1.0, -1.0, 0.5, 0.5, 1.0, 1.0, -0.75, 1.0, -1.0, -0.25, 0.5, 0.75, 0.5, -0.25, 0.75, -1.0, 0.75, 0.0, -0.75, -0.25, -0.25, 0.25, -1.0, -1.0, 0.5, 0.75, -0.75, 0.0, 0.5, 1.0, -1.0, -0.75, -0.75, 0.5, -0.5, -1.0, -1.0, -0.5, 0.25, -0.5, 0.0, -1.0, -0.75, -0.75, 1.0, -0.75, 1.0, 0.5, -0.5, -1.0, 0.0, 0.5, ]);
    
    var shader_module2001_code = "";
    try {
        shader_module2001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2001 = await device200.createShaderModule({ label: "shader_module2001", code: shader_module2001_code })
    const texture2001 = device200.createTexture({
        label: "texture2001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    render_bundle_encoder2001.insertDebugMarker("marker");
    const adapter23 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler2000 = device200.createSampler( { label: "sampler2000" } );
    query2000.destroy()
    const adapter24 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder2002 = device200.createRenderBundleEncoder({
        label: "render_bundle_encoder2002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder2001.insertDebugMarker("marker");
    
    
    texture2000.destroy();
    const texture2002 = device200.createTexture({
        label: "texture2002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    var shader_module2002_code = "";
    try {
        shader_module2002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2002 = await device200.createShaderModule({ label: "shader_module2002", code: shader_module2002_code })
    var shader_module2003_code = "";
    try {
        shader_module2003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2003 = await device200.createShaderModule({ label: "shader_module2003", code: shader_module2003_code })
    const render_bundle_encoder2100 = device210.createRenderBundleEncoder({
        label: "render_bundle_encoder2100",
        colorFormats: ["bgra8unorm"]
    });
    const device220 = await adapter22!.requestDevice({ label: "device220" });
    
    const render_pipeline2000 = device200.createRenderPipeline({
        label: "render_pipeline2000",
        vertex: {
            module: shader_module2002,
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
            module: shader_module2002,
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
    const texture2200 = device220.createTexture({
        label: "texture2200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline2001 = device200.createRenderPipeline({
        label: "render_pipeline2001",
        vertex: {
            module: shader_module2001,
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
            module: shader_module2001,
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
    render_bundle_encoder2001.insertDebugMarker("marker");
    const sampler2001 = device200.createSampler( { label: "sampler2001" } );
    const query2100 = device210.createQuerySet({
        label: "query2100",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout2200 = device220.createBindGroupLayout({ 
        label: "bind_group_layout2200",
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
    texture2002.destroy();
    device220.destroy();
    texture2001.destroy();
}