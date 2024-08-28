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
    const array0 = new Float32Array([0.75, -0.75, 0.25, -0.75, -0.75, -0.75, -1.0, 0.75, 0.0, 0.5, 0.75, -1.0, -0.75, 0.75, -0.75, 0.25, 0.5, -0.75, -0.25, 0.5, -1.0, 0.75, -0.25, 0.25, -0.25, 1.0, 0.25, 0.25, 0.0, -0.75, 0.25, -0.25, 0.5, -0.75, 0.5, 0.75, -1.0, 0.25, -1.0, 1.0, 1.0, 0.75, -0.5, 1.0, 1.0, 0.25, 0.5, 0.75, 0.75, 0.5, -0.75, 1.0, -0.25, -0.25, 0.75, -1.0, 0.75, 1.0, -0.25, 0.75, 0.0, -0.5, 0.75, 0.75, 0.5, -0.5, 1.0, 0.5, 0.25, 0.75, -0.25, 0.5, -0.25, 0.25, -0.25, -1.0, -0.5, -0.25, 0.75, 0.0, -0.5, -0.75, 0.0, 0.25, 1.0, -0.5, -0.75, 0.0, 0.5, -0.75, 0.5, 0.0, -0.75, 0.75, -0.25, -1.0, -1.0, -0.25, 0.0, 0.0, ]);
    
    const array1 = new Float32Array([0.25, -0.25, 1.0, -0.75, -0.25, -0.75, 0.25, 0.75, 0.0, 0.0, 0.25, 0.5, -0.75, -0.5, 0.75, -0.75, -0.25, -0.25, -0.25, 0.0, -0.5, 0.25, -0.5, 0.5, 0.75, -0.75, 0.5, 0.0, 1.0, 0.5, 0.25, 0.5, -0.25, -0.5, 0.75, -1.0, 1.0, -0.25, -1.0, 0.25, 0.25, 0.5, -0.75, 0.75, -0.5, -0.25, -0.5, -1.0, -0.25, -0.5, 0.75, -1.0, 0.75, -0.75, 1.0, -0.25, -0.75, 0.25, 0.0, -1.0, 1.0, -0.75, 0.75, -0.25, 0.5, 0.25, 1.0, -0.75, 0.75, 0.25, -0.25, 0.0, 0.75, -0.5, -0.25, 0.0, -1.0, 0.75, 0.0, 0.25, -0.5, -0.25, -1.0, -1.0, 0.25, 1.0, -0.75, 1.0, 0.75, -0.5, -0.5, 0.25, -0.25, 0.5, 0.5, 0.5, 0.0, 0.25, -0.5, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array2 = new Float32Array([-0.75, -0.75, -0.75, 0.75, -0.25, -0.75, -0.75, -0.25, 0.5, -0.75, -0.25, 0.5, 0.25, 0.75, -0.25, 0.0, -0.25, 0.5, -1.0, -1.0, -0.5, 0.75, 0.25, -0.5, 1.0, -0.75, -1.0, -0.5, 0.5, -0.25, -1.0, -0.5, -0.75, -1.0, -0.25, -1.0, -0.25, -0.5, -0.5, -0.25, 0.75, -0.25, -0.25, 0.0, 1.0, 0.75, 0.25, -0.75, 0.75, 0.75, 0.5, -0.25, -0.75, -1.0, 0.25, -1.0, -0.25, -0.5, 0.75, -0.75, 0.75, -0.5, 0.5, 0.75, -0.5, 0.0, 0.5, -0.5, 1.0, -0.25, 1.0, 0.0, -0.25, 1.0, -0.25, -0.5, 0.5, 0.25, -0.75, -0.75, 0.5, -0.75, 0.5, 0.75, -1.0, -1.0, -1.0, 0.25, 0.5, -0.5, -0.5, -1.0, 0.5, -0.75, 0.5, 1.0, 0.75, 0.0, -1.0, -1.0, ]);
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    
    device20.pushErrorScope("internal");
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device20.pushErrorScope("internal");
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
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
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
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
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
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
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const array3 = new Float32Array([-0.75, 0.0, -0.25, -0.5, -0.75, 0.5, -1.0, -0.5, 0.75, 0.5, -1.0, -1.0, 0.75, 0.25, 0.5, -1.0, 0.75, -1.0, 0.25, -0.75, 0.0, 0.5, 0.25, 0.75, 0.75, 0.0, 0.0, 1.0, -0.5, 0.5, 0.5, -1.0, 1.0, 1.0, -0.75, 0.0, -0.75, 0.75, 0.5, 0.0, 0.25, -0.5, -1.0, 0.5, -0.75, 1.0, 0.25, -1.0, 0.0, -0.5, 0.25, 0.25, 0.25, 0.75, 0.5, -0.5, -1.0, 0.0, -1.0, -1.0, -1.0, -0.25, 1.0, -0.75, 0.75, 0.75, -0.75, 0.5, 0.5, -1.0, 0.75, 0.25, 1.0, 0.75, -0.5, -0.5, 0.5, -0.75, -0.25, 0.25, 0.0, 0.75, 0.25, 1.0, 0.25, 0.25, 1.0, 0.25, -0.5, -0.5, 0.5, 0.75, 0.25, -0.25, 0.25, 0.5, 0.0, 0.5, 1.0, -1.0, ]);
    texture200.destroy();
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const array4 = new Float32Array([-0.25, -0.25, 0.25, -0.75, -0.5, -0.5, 1.0, 0.25, -0.75, -0.5, -0.5, -0.5, -0.5, -0.75, 1.0, -0.25, 0.5, -0.25, -0.75, 0.75, -0.5, 1.0, -0.75, 0.25, -0.25, 0.75, 1.0, -0.5, 0.5, 1.0, 0.25, -0.75, -0.5, -0.75, 0.25, 0.25, 1.0, 0.5, 0.25, 0.75, 0.0, -0.25, 1.0, -0.25, -0.75, 0.0, 0.0, 1.0, -1.0, 0.75, 0.25, 0.0, 1.0, 0.75, -0.75, 0.75, 0.75, -0.5, -0.75, -0.5, -0.75, 0.25, -0.25, -0.75, 1.0, -1.0, -0.5, -1.0, 0.25, 1.0, -0.25, 0.0, 1.0, 1.0, 0.5, -0.75, -0.25, -0.75, -1.0, 0.0, -0.5, 0.5, -1.0, 0.75, 0.25, 0.0, 0.25, -0.25, 0.0, 0.0, 0.0, -0.25, -0.75, 0.75, 0.5, 1.0, 0.5, 0.25, -1.0, 0.0, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("out-of-memory");
    device40.destroy();
    
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
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    device30.destroy();
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const array5 = new Float32Array([1.0, 0.5, 0.0, 0.5, 1.0, 0.0, 0.25, -0.25, 0.5, -0.5, 0.5, 1.0, 0.0, -0.75, 0.0, 0.0, -0.25, 0.25, 1.0, -1.0, 0.25, -0.5, -0.75, -1.0, 0.0, -1.0, 0.0, -0.75, 0.75, 0.25, 0.0, 0.25, 1.0, -0.25, -0.25, -0.25, 0.75, 1.0, 0.25, 0.5, 0.5, -0.75, 0.75, 1.0, 0.0, -0.5, 0.0, 1.0, -0.5, -0.25, -0.5, -1.0, -0.25, 0.5, -0.5, -0.5, 0.0, 0.5, -1.0, 0.75, 0.0, 0.5, 0.0, 1.0, 0.0, 0.75, -0.25, 0.75, -0.5, 0.0, 0.0, 0.25, 0.0, -0.5, 0.75, 0.0, -0.75, 0.5, 0.25, -0.25, 0.25, 0.0, 0.5, 0.25, 0.25, 0.5, 0.0, 1.0, -0.75, -1.0, 0.75, 0.5, -0.75, 1.0, -1.0, -0.25, 0.5, 1.0, -0.75, -0.25, ]);
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device60.pushErrorScope("validation");
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const array6 = new Float32Array([-1.0, -0.5, 1.0, 0.5, 0.25, 0.5, 0.75, -0.25, 0.5, -0.75, -0.25, -0.25, -0.25, -0.75, -0.5, -0.25, 1.0, 0.25, 0.75, 1.0, -1.0, 1.0, -0.75, 0.5, -0.25, -0.5, -1.0, 0.25, -0.75, -0.25, 0.75, -1.0, 0.0, 1.0, 0.25, -0.75, 0.0, -0.5, 1.0, -0.75, 0.25, 0.5, -0.5, 0.0, 0.5, 0.0, 0.75, 0.5, 0.0, 0.5, -0.75, -0.5, 0.5, 0.0, -0.25, -0.5, 0.75, 0.75, -1.0, -1.0, -0.5, 0.75, 0.25, -0.5, 0.25, -0.25, 0.25, 0.75, 1.0, -1.0, -0.5, 0.75, 0.0, -0.75, -0.75, 1.0, -0.5, 0.5, 0.5, 0.5, 0.5, -0.25, -0.75, 0.25, -0.25, 0.25, 0.25, -0.75, -1.0, 0.75, 0.5, 0.75, -0.75, 0.5, 0.25, -1.0, 0.25, -0.25, -1.0, -1.0, ]);
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
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
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder600.insertDebugMarker("mymarker");
    device70.destroy();
    command_encoder600.insertDebugMarker("mymarker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    query600.destroy()
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    render_bundle_encoder600.insertDebugMarker("marker");
    device50.destroy();
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8snorm",
        dimension: "2d"
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    
    texture600.destroy();
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const texture_view6012 = texture601.createView({ label: "texture_view6012" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    texture602.destroy();
    
    
    
    
    render_bundle_encoder600.popDebugGroup();
    render_bundle_encoder601.insertDebugMarker("marker");
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    texture603.destroy();
    buffer600.destroy()
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
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
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6011,
            },
        ],
        occlusionQuerySet: query601
    });
    const texture_view6013 = texture601.createView({ label: "texture_view6013" });
    
    
    
    
    render_bundle_encoder601.setPipeline(render_pipeline601);
    
    const array7 = new Float32Array([1.0, 0.75, -1.0, -0.5, 0.5, 0.0, -0.5, -0.75, 1.0, -0.5, 0.5, 0.5, 0.0, 0.5, 0.0, 0.0, 0.75, 0.25, 0.75, -0.5, -0.75, -0.25, 0.75, 0.0, -0.75, 1.0, -0.75, 0.75, -1.0, -0.25, -0.5, 0.5, 0.5, -1.0, -1.0, -1.0, 0.0, 0.25, 0.5, -0.75, 0.75, 1.0, -0.25, 0.0, 0.25, -0.25, -1.0, 1.0, 0.75, -0.5, -0.5, -0.25, 0.25, -0.5, 0.0, 1.0, -0.25, -1.0, 0.5, -1.0, 0.75, 0.5, -1.0, 0.75, 0.25, -0.25, 1.0, -0.75, -0.25, -0.75, -0.5, 0.5, 0.0, 0.0, 0.25, -0.25, 0.75, -0.5, -0.5, -0.5, 1.0, 0.25, 0.5, 0.25, -0.75, 0.5, 0.75, 0.5, -0.5, 0.25, 1.0, 0.5, 0.0, -0.5, -0.75, 1.0, 1.0, -0.25, -1.0, 1.0, ]);
    const command_buffer602 = command_encoder602.finish();
    render_pass_encoder6010.executeBundles([])
    render_bundle_encoder600.setPipeline(render_pipeline601);
    
    query601.destroy()
    
    render_pass_encoder6010.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    render_pass_encoder6010.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder6010.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    const array8 = new Float32Array([0.0, 0.0, 0.75, 1.0, 0.0, -0.5, -0.75, -0.75, 0.5, -0.5, -0.5, 0.5, 0.5, 0.0, 1.0, -0.75, 0.25, 0.0, -0.25, 0.5, -0.75, -0.25, 1.0, -0.25, 0.25, -0.75, 0.75, 0.5, 0.5, 1.0, -0.75, -0.25, -0.75, 0.75, -0.75, -0.25, 0.0, -0.25, 0.75, 1.0, -0.5, 0.25, 0.25, -0.25, -0.5, 0.75, -0.25, -1.0, -0.5, 0.75, -1.0, -0.25, -0.5, -0.75, -1.0, 0.5, -0.75, 0.25, -1.0, -0.75, 0.75, 1.0, -1.0, -0.25, 0.25, 0.0, 0.5, -0.25, 0.75, 0.5, 0.25, -0.5, -0.75, -1.0, 1.0, 0.75, -0.5, 0.75, 0.75, -0.5, -0.5, 1.0, 1.0, -1.0, 0.75, -1.0, 0.75, -0.25, -0.25, 0.5, 0.0, 0.5, 0.5, -0.25, 0.5, 0.0, 0.0, -0.75, -1.0, 1.0, ]);
    render_bundle_encoder602.insertDebugMarker("marker");
    query601.destroy()
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
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
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
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
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const array9 = new Float32Array([0.25, -0.5, -0.75, 0.5, -0.25, -1.0, 0.0, 0.0, -0.5, -0.75, 0.5, 0.5, -1.0, 0.25, 0.75, -1.0, -0.5, 0.0, -0.75, 0.0, 0.0, -0.75, -0.25, 0.25, 1.0, 0.0, -0.75, 1.0, 0.75, 0.25, -0.25, 0.0, 0.0, 1.0, -0.75, -0.5, -0.75, 0.5, 0.5, -1.0, 0.5, 0.5, -0.25, 0.25, 0.0, 0.25, 1.0, 0.0, 0.0, -0.5, 0.5, 1.0, 0.0, -1.0, 0.5, 0.5, -0.75, 1.0, 0.25, 0.0, -1.0, -1.0, -0.5, 0.25, 0.5, 1.0, 0.5, 0.0, 0.5, 0.5, 0.0, 0.25, -0.75, 0.0, -0.75, 0.25, 0.25, -0.5, -0.75, 1.0, 0.5, 0.5, 0.0, 1.0, -0.25, 0.75, 0.5, 0.25, 0.0, 1.0, 0.0, 1.0, -0.75, 0.0, 0.5, 1.0, -0.75, 1.0, -0.25, 0.0, ]);
    render_pass_encoder6010.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder600.insertDebugMarker("marker");
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer601,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer602,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group600);
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const texture_view6014 = texture601.createView({ label: "texture_view6014" });
    render_bundle_encoder600.insertDebugMarker("marker");
    texture601.destroy();
    buffer602.destroy()
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    query600.destroy()
    render_bundle_encoder602.setPipeline(render_pipeline601);
    device60.queue.writeBuffer(buffer603, 0, array8, 0, array8.length);
    device90.destroy();
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    query601.destroy()
    device60.queue.writeBuffer(buffer603, 0, array8, 0, array8.length);
    device60.queue.writeBuffer(buffer603, 0, array8, 0, array8.length);
    device60.queue.writeBuffer(buffer603, 0, array8, 0, array8.length);
    device60.queue.writeBuffer(buffer603, 0, array9, 0, array9.length);
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
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline601.getBindGroupLayout(0),
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

    render_bundle_encoder600.setBindGroup(0, bind_group601);
    
    device60.queue.writeBuffer(buffer603, 0, array7, 0, array7.length);
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer603, 0, array0, 0, array0.length);
    
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
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
    render_pass_encoder6010.executeBundles([])
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    render_pass_encoder6010.setPipeline(render_pipeline601);
    
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
    
    
    buffer604.destroy()
    render_pass_encoder6010.pushDebugGroup("group_marker");
    device60.pushErrorScope("out-of-memory");
    
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    
    
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6012,
            },
        ],
        occlusionQuerySet: query603
    });
    render_pass_encoder6030.setPipeline(render_pipeline602);
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
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline601.getBindGroupLayout(0),
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

    render_pass_encoder6010.setBindGroup(0, bind_group602);
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    buffer606.destroy()
    
    render_pass_encoder6030.insertDebugMarker("marker");
    query600.destroy()
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
    device60.queue.writeBuffer(buffer603, 0, array1, 0, array1.length);
    
    buffer605.destroy()
    
    
    render_pass_encoder6030.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    render_pass_encoder6010.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    const array10 = new Float32Array([0.25, 0.5, 0.5, -0.25, 0.5, -0.75, -0.25, 0.25, -0.25, 0.5, -0.25, -0.5, -1.0, 0.25, 0.25, -0.5, 0.25, 0.75, -0.5, -0.5, -0.75, -1.0, -0.75, -0.75, 0.0, -0.25, -0.75, 0.25, -0.5, 1.0, 0.5, -0.75, -0.5, 0.75, 1.0, 0.0, -1.0, 0.5, -0.25, 0.0, -0.25, 0.0, 0.25, 0.25, 1.0, 0.75, -0.75, 0.25, -0.5, -1.0, 1.0, 0.25, -0.5, 1.0, -0.75, -0.5, -0.75, 0.0, 0.0, 0.25, 0.5, 0.25, 0.5, 0.5, -0.5, 0.5, 0.5, 0.75, -0.25, 0.75, -0.25, 0.5, 0.75, -0.75, -0.5, 0.75, -0.75, 0.75, 0.0, 0.25, 0.75, 0.0, 0.5, -0.75, 0.0, 0.25, 0.0, 0.0, -0.25, 1.0, -1.0, -0.25, -0.5, 0.75, 0.5, 0.5, -0.25, -0.25, -1.0, -0.75, ]);
    
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
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
    
    render_pass_encoder6030.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    buffer607.destroy()
    device60.queue.writeBuffer(buffer603, 0, array5, 0, array5.length);
    
    query602.destroy()
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    device60.queue.writeBuffer(buffer603, 0, array0, 0, array0.length);
    
    
    device60.queue.writeBuffer(buffer603, 0, array7, 0, array7.length);
    render_pass_encoder6010.insertDebugMarker("marker");
    
    
    
    
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
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
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout602]
    });
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout602]
    });
    query601.destroy()
    const texture_view6040 = texture604.createView({ label: "texture_view6040" });
    
    device60.queue.writeBuffer(buffer603, 0, array0, 0, array0.length);
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    render_pass_encoder6030.pushDebugGroup("group_marker");
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeBuffer(buffer603, 0, array9, 0, array9.length);
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const render_pipeline607 = device60.createRenderPipeline({
        label: "render_pipeline607",
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
    
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout603]
    });
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const render_pipeline609 = device60.createRenderPipeline({
        label: "render_pipeline609",
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
    
    render_bundle_encoder601.popDebugGroup();
    const render_pipeline6010 = device60.createRenderPipeline({
        label: "render_pipeline6010",
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
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline6011 = device60.createRenderPipeline({
        label: "render_pipeline6011",
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
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: render_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer608,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer609,
                },
            },
        ],
    });

    render_pass_encoder6030.setBindGroup(0, bind_group603);
    render_pass_encoder6030.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout602,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const texture605 = device60.createTexture({
        label: "texture605",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    texture605.destroy();
    device60.queue.writeBuffer(buffer603, 0, array10, 0, array10.length);
    
    const render_pipeline6012 = device60.createRenderPipeline({
        label: "render_pipeline6012",
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
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder6010.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    device60.queue.writeBuffer(buffer603, 0, array4, 0, array4.length);
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    buffer609.destroy()
    
    
    
    render_pass_encoder6030.setStencilReference(1);
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline6013 = device60.createRenderPipeline({
        label: "render_pipeline6013",
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
    
    render_pass_encoder6010.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    render_pass_encoder6030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder601.insertDebugMarker("marker");
    
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    texture800.destroy();
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout604,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder6010.setStencilReference(1);
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout603]
    });
    render_pass_encoder6030.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout606,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    query604.destroy()
    render_pass_encoder6030.setStencilReference(1);
    render_bundle_encoder601.pushDebugGroup("group_marker");
    compute_pass_encoder6000.setPipeline(compute_pipeline602);
    
    
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout604,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    
    render_pass_encoder6010.insertDebugMarker("marker");
    
    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder6010.popDebugGroup();
    buffer608.destroy()
    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6012,
                },
            },
        ],
    });

    render_bundle_encoder602.setBindGroup(0, bind_group604);
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout601,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const sampler605 = device60.createSampler( { label: "sampler605" } );
    device60.queue.writeBuffer(buffer603, 0, array9, 0, array9.length);
    device60.queue.writeBuffer(buffer6010, 0, array10, 0, array10.length);
    
    render_bundle_encoder602.insertDebugMarker("marker");
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    device60.queue.writeBuffer(buffer603, 0, array1, 0, array1.length);
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout600,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer6010, 0, array8, 0, array8.length);
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const texture_view8020 = texture802.createView({ label: "texture_view8020" });
    
    render_pass_encoder6030.beginOcclusionQuery(0)
    query600.destroy()
    render_pass_encoder6030.setStencilReference(1);
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout600,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile(__dirname + '/shader_module607.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout603,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    device60.queue.writeBuffer(buffer6010, 0, array9, 0, array9.length);
    
    const render_pipeline6014 = device60.createRenderPipeline({
        label: "render_pipeline6014",
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
    
    texture801.destroy();
    render_pass_encoder6030.insertDebugMarker("marker");
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout608,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer6010, 0, array5, 0, array5.length);
    const pipeline_layout609 = device60.createPipelineLayout({ 
        label: "pipeline_layout609",
        bindGroupLayouts: [bind_group_layout601]
    });
    query605.destroy()
    device60.queue.writeBuffer(buffer603, 0, array0, 0, array0.length);
    
    
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout607,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    buffer6010.destroy()
    render_bundle_encoder600.popDebugGroup();
    
    
    device60.queue.writeBuffer(buffer603, 0, array10, 0, array10.length);
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile(__dirname + '/shader_module608.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    query602.destroy()
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout608,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout602,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module609_code = "";
    try {
        shader_module609_code = await fs.readFile(__dirname + '/shader_module609.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module609 = await device60.createShaderModule({ label: "shader_module609", code: shader_module609_code })
    device60.queue.writeBuffer(buffer603, 0, array0, 0, array0.length);
    const render_pipeline6015 = device60.createRenderPipeline({
        label: "render_pipeline6015",
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
    const render_pipeline6016 = device60.createRenderPipeline({
        label: "render_pipeline6016",
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
    compute_pass_encoder6000.popDebugGroup()
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    
    const compute_pipeline6013 = device60.createComputePipeline({
        label: "compute_pipeline6013",
        layout: pipeline_layout609,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer603, 0, array6, 0, array6.length);
    
    device60.queue.writeBuffer(buffer603, 0, array6, 0, array6.length);
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const compute_pipeline6014 = device60.createComputePipeline({
        label: "compute_pipeline6014",
        layout: pipeline_layout603,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const texture_view6041 = texture604.createView({ label: "texture_view6041" });
    
    render_pass_encoder6030.endOcclusionQuery()
    const compute_pipeline6015 = device60.createComputePipeline({
        label: "compute_pipeline6015",
        layout: pipeline_layout608,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    const compute_pipeline6016 = device60.createComputePipeline({
        label: "compute_pipeline6016",
        layout: pipeline_layout605,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline6017 = device60.createRenderPipeline({
        label: "render_pipeline6017",
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
    var shader_module6010_code = "";
    try {
        shader_module6010_code = await fs.readFile(__dirname + '/shader_module6010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module6010 = await device60.createShaderModule({ label: "shader_module6010", code: shader_module6010_code })
    const compute_pipeline6017 = device60.createComputePipeline({
        label: "compute_pipeline6017",
        layout: pipeline_layout603,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer603, 0, array5, 0, array5.length);
    render_pass_encoder6010.setStencilReference(1);
    render_bundle_encoder602.insertDebugMarker("marker");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module6011_code = "";
    try {
        shader_module6011_code = await fs.readFile(__dirname + '/shader_module6011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module6011 = await device60.createShaderModule({ label: "shader_module6011", code: shader_module6011_code })
    const render_pass_encoder6040 = command_encoder604.beginRenderPass({
        label: "render_pass_encoder6040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6014,
            },
        ],
        occlusionQuerySet: query603
    });
    const compute_pipeline6018 = device60.createComputePipeline({
        label: "compute_pipeline6018",
        layout: pipeline_layout607,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    render_pass_encoder6010.setStencilReference(1);
    render_pass_encoder6040.setPipeline(render_pipeline6017);
    render_pass_encoder6010.setStencilReference(1);
    const query606 = device60.createQuerySet({
        label: "query606",
        type: "occlusion",
        count: 32,
    });
    const sampler606 = device60.createSampler( { label: "sampler606" } );
    
    render_bundle_encoder601.insertDebugMarker("marker");
    
    
    const render_pipeline6018 = device60.createRenderPipeline({
        label: "render_pipeline6018",
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
    render_pass_encoder6040.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    render_bundle_encoder602.insertDebugMarker("marker");
    const compute_pipeline6019 = device60.createComputePipeline({
        label: "compute_pipeline6019",
        layout: pipeline_layout608,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    const compute_pipeline6020 = device60.createComputePipeline({
        label: "compute_pipeline6020",
        layout: pipeline_layout603,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    render_pass_encoder6010.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
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
    
    const texture_view8021 = texture802.createView({ label: "texture_view8021" });
    const render_pipeline6019 = device60.createRenderPipeline({
        label: "render_pipeline6019",
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
    query801.destroy()
    render_pass_encoder6030.popDebugGroup();
    const buffer6014 = device60.createBuffer({
        label: "buffer6014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6015 = device60.createBuffer({
        label: "buffer6015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: render_pipeline6017.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6015,
                },
            },
        ],
    });

    render_pass_encoder6040.setBindGroup(0, bind_group605);
    const buffer6016 = device60.createBuffer({
        label: "buffer6016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6017 = device60.createBuffer({
        label: "buffer6017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group606 = device60.createBindGroup({
        label: "bind_group606",
        layout: compute_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6017,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group606);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6018 = device60.createBuffer({
        label: "buffer6018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6018, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6018, 0);
    device60.queue.submit([command_buffer602, ]);
    compute_pass_encoder6000.end();
    command_encoder600.popDebugGroup()
    const command_buffer600 = command_encoder600.finish();
    device60.queue.submit([command_buffer600, ]);
}