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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    device00.destroy();
    const array0 = new Float32Array([0.75, -0.75, 1.0, -1.0, 0.5, -1.0, -1.0, -1.0, 0.0, 0.0, 1.0, 0.75, -0.25, -0.75, -1.0, 0.5, -0.75, 0.75, -0.75, -0.5, 0.25, -1.0, 0.75, -0.75, -0.5, 0.25, 0.0, -0.75, -0.75, 0.75, 1.0, -0.75, -0.5, 0.5, -0.75, 0.25, -0.25, -1.0, 0.25, 0.0, -0.25, 1.0, 0.5, -0.25, 1.0, 0.75, -0.25, 1.0, -0.75, -1.0, 0.0, 0.75, 0.25, 0.75, -0.5, 0.25, 0.25, -0.5, 0.25, 0.25, 1.0, 0.75, -0.25, -0.5, 0.0, -0.75, 0.5, -0.25, 0.75, 0.0, -0.25, -0.25, 0.0, 0.25, 1.0, 0.5, -1.0, 0.75, 1.0, 0.25, 0.25, 0.5, 1.0, 1.0, -0.75, -0.5, 0.0, 1.0, -0.25, -1.0, 1.0, 0.25, 1.0, -1.0, -0.5, -0.5, -1.0, -0.75, 0.25, 0.0, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([-0.25, -0.75, 0.75, -0.5, 0.25, -1.0, -0.25, 1.0, -0.5, 1.0, 1.0, 0.5, -0.25, -0.75, 0.75, 1.0, 0.0, -0.75, -0.75, -0.25, -0.5, -0.25, 1.0, -0.75, 1.0, 0.75, 0.75, 0.5, -0.75, 0.5, -0.5, 0.25, -0.5, -0.75, 1.0, -1.0, 0.0, -0.75, 0.25, -1.0, -0.75, -1.0, -0.25, 0.75, 0.25, 0.0, 1.0, 0.75, 1.0, 0.75, -1.0, 0.25, -0.75, -0.5, 1.0, -1.0, -0.25, 0.25, 1.0, 1.0, 0.5, -0.75, -0.5, 1.0, 0.0, -0.25, -0.5, -1.0, 0.5, 0.25, 1.0, 0.25, 0.75, -0.75, -1.0, 0.75, 1.0, 0.25, 0.25, -0.75, -0.25, 0.5, 0.5, -0.5, -0.75, 0.5, -0.75, 0.75, -0.25, 1.0, 0.75, -0.75, 0.25, -0.5, 0.75, 0.5, -0.75, 1.0, -0.25, -1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const array2 = new Float32Array([-0.75, -1.0, -0.75, 1.0, 1.0, 0.5, -0.75, 0.75, 0.75, 0.75, -0.75, 0.25, 0.25, -0.75, -1.0, 1.0, 1.0, -0.5, 0.25, -0.5, 0.75, -0.5, -0.25, 1.0, 0.25, 1.0, -0.75, -0.5, -1.0, 0.5, -0.75, 0.0, 0.25, 0.25, -0.25, 0.5, -0.25, 1.0, 0.25, 1.0, 0.0, 1.0, -0.75, -1.0, 1.0, -0.25, 0.5, -0.75, 0.75, 0.75, -0.75, 0.0, -1.0, -0.5, -0.75, -1.0, 1.0, -0.25, -0.5, -0.75, -0.25, 0.0, -0.25, -0.75, 0.75, -0.75, 0.75, 0.75, -0.75, -0.75, -0.5, -0.75, 0.25, 1.0, 0.75, -0.25, 0.5, -0.75, 0.25, 0.75, -0.25, 1.0, -0.25, 0.0, 1.0, -1.0, 0.5, 0.25, 1.0, 0.25, -1.0, 0.75, 0.75, -0.75, 0.5, 1.0, -0.75, 1.0, -0.75, -0.75, ]);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    
    
    
    const array3 = new Float32Array([0.75, 0.5, -0.75, -0.25, 0.75, 1.0, -0.25, -0.25, 0.5, -1.0, -0.5, 1.0, 0.0, 0.5, 0.25, 0.25, -0.25, -0.25, -0.5, 0.0, -1.0, 0.25, -0.25, -0.25, -1.0, 0.5, -0.75, -0.5, -0.25, 0.25, -0.75, 0.5, -0.75, 1.0, -0.5, 0.25, 0.25, 0.0, 0.5, -0.5, -0.75, 0.5, -0.5, -1.0, -0.5, -1.0, -0.5, -1.0, 0.5, -0.75, 0.5, 0.0, -0.75, 0.75, -0.75, 0.5, 1.0, -0.75, -0.25, -0.75, -0.25, 0.5, 0.5, 0.75, 1.0, -0.25, 0.25, 0.5, 0.0, -0.25, 0.0, 0.25, -0.5, -0.75, -1.0, -1.0, 0.75, 0.25, 0.75, 0.25, 0.75, 0.5, -0.5, -0.5, -0.25, 0.75, 0.75, -0.5, -0.5, 0.25, -0.5, 1.0, 0.5, -1.0, -0.25, -1.0, -0.25, -0.25, 0.75, -0.5, ]);
    query200.destroy()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
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
    const command_buffer201 = command_encoder201.finish();
    
    render_pass_encoder2000.insertDebugMarker("marker");
    query201.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_pass_encoder2000.setStencilReference(1);
    device20.pushErrorScope("out-of-memory");
    
    query201.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device20.queue.submit([command_buffer201, ]);
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([1.0, -1.0, 0.75, 0.25, 1.0, -0.75, -0.25, -1.0, -0.5, 0.75, -0.25, 0.0, 0.0, -0.5, -0.5, -0.25, -0.5, -1.0, 0.5, 0.0, 0.0, 1.0, 0.25, -0.5, -0.75, -1.0, 1.0, -1.0, 0.5, 0.0, 0.25, 1.0, 1.0, 1.0, 0.0, -0.75, -0.25, -0.5, -0.5, -1.0, -0.75, 1.0, 0.5, 0.75, -0.25, -0.25, -1.0, -1.0, -1.0, -0.5, 1.0, -0.5, 0.0, 0.5, 1.0, 0.5, -0.75, -0.75, 0.0, 0.0, 0.25, 0.5, 0.0, -0.5, -0.5, 0.25, 1.0, 0.75, -0.25, -1.0, 0.0, 0.5, 1.0, -0.5, -1.0, 0.75, -0.5, -0.5, 0.75, -0.5, 0.0, 0.75, -0.25, 0.25, 1.0, 0.75, 0.5, 0.0, -0.75, 0.5, -0.5, -1.0, -1.0, 0.25, -0.75, -0.75, 1.0, 1.0, 0.25, 1.0, ]);
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    device20.pushErrorScope("internal");
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    texture201.destroy();
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    query202.destroy()
    
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
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
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    render_bundle_encoder200.setPipeline(render_pipeline203);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
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
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder202.setPipeline(render_pipeline200);
    render_bundle_encoder201.setPipeline(render_pipeline202);
    render_pass_encoder2000.setPipeline(render_pipeline200);
    query201.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.popDebugGroup();
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    buffer200.destroy()
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
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
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2020.setPipeline(render_pipeline204);
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    render_pass_encoder2020.setStencilReference(1);
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    render_bundle_encoder201.popDebugGroup();
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_pass_encoder2000.setStencilReference(1);
    
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device40.destroy();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    
    render_pass_encoder2020.insertDebugMarker("marker");
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    texture500.destroy();
    render_pass_encoder2000.insertDebugMarker("marker");
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const texture_view2032 = texture203.createView({ label: "texture_view2032" });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    texture202.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder2000.popDebugGroup();
    
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
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
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    command_encoder500.insertDebugMarker("mymarker");
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    query200.destroy()
    command_encoder500.pushDebugGroup("mygroupmarker")
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2000.insertDebugMarker("marker");
    const texture_view2033 = texture203.createView({ label: "texture_view2033" });
    
    texture205.destroy();
    
    query203.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2020.setScissorRect(0, 0, texture204.width / 2, texture204.height / 2);
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    
    render_bundle_encoder201.insertDebugMarker("marker");
    texture100.destroy();
    query203.destroy()
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    query100.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.popDebugGroup();
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder202.popDebugGroup();
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array5 = new Float32Array([-1.0, -0.5, 1.0, -0.75, 0.5, 0.5, 0.75, -0.5, -1.0, 1.0, 1.0, -0.25, 0.5, -0.25, -1.0, -0.25, -1.0, -1.0, 0.25, 0.75, 1.0, 0.5, 0.5, 0.75, 1.0, -1.0, 0.75, 0.0, 0.5, -0.25, -1.0, 0.5, -1.0, 0.0, 0.75, -0.25, 0.5, 0.0, -1.0, -0.5, -0.75, -0.75, -1.0, -0.25, 0.5, -0.25, -1.0, 0.5, -0.75, 0.5, 0.0, 0.25, 0.0, 0.0, 0.0, 0.5, 0.5, 0.0, 0.25, -1.0, 1.0, -0.5, -0.5, -1.0, 0.5, 0.0, 0.5, 0.5, 1.0, -0.75, 0.5, 1.0, -0.75, -0.5, -1.0, -0.75, -1.0, 0.0, -0.75, -0.25, -0.5, -1.0, 0.0, -0.75, -1.0, -1.0, -0.25, 0.5, -0.5, 0.0, -0.25, 0.5, 0.0, -1.0, -0.25, 0.25, 0.75, 0.5, -0.5, 0.0, ]);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    query101.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    buffer203.destroy()
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    query100.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    device20.pushErrorScope("validation");
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    buffer100.destroy()
    command_encoder100.pushDebugGroup("mygroupmarker")
    buffer204.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder2020.setViewport(0, 0, texture204.width / 2, texture204.height / 2, 0, 1);
    
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    texture203.destroy();
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

    render_pass_encoder2000.setBindGroup(0, bind_group201);
    
    query204.destroy()
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device50.pushErrorScope("out-of-memory");
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    {
        await buffer501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer501.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder2020.setStencilReference(1);
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    const array6 = new Float32Array([0.75, -0.75, 0.5, -1.0, -0.75, 0.25, 0.5, 0.75, 0.75, 0.0, 0.0, -0.5, -0.5, -0.5, 1.0, -0.5, -0.25, -0.5, -0.5, 0.0, -0.75, 0.25, 0.75, -0.75, -1.0, 0.5, 0.0, 0.25, 0.0, -0.5, 1.0, -0.75, -1.0, -0.25, 1.0, -1.0, 0.75, 0.5, 0.5, 0.75, 1.0, 0.75, 0.25, -1.0, 0.5, -0.25, -0.25, 0.5, 1.0, 0.5, 0.5, 0.5, -1.0, -1.0, 0.75, 0.75, -1.0, -0.75, 0.5, 0.0, 0.25, -0.5, 0.75, 0.25, -1.0, 0.0, -0.75, 0.75, 0.75, 0.5, 1.0, 0.5, 0.0, -0.5, 0.5, -0.5, -1.0, 1.0, -0.75, -0.5, -0.5, -0.25, 0.25, 0.25, 1.0, -0.25, 0.25, 1.0, -1.0, 0.0, -0.5, -0.5, -0.75, -1.0, -0.5, -0.75, -0.5, 0.25, 0.25, -1.0, ]);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture206 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query204.destroy()
    compute_pass_encoder5000.popDebugGroup()
    device50.pushErrorScope("internal");
    query102.destroy()
    buffer501.destroy()
    buffer502.destroy()
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    query100.destroy()
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    query100.destroy()
    buffer101.destroy()
    render_bundle_encoder201.popDebugGroup();
    query200.destroy()
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const texture_view2061 = texture206.createView({ label: "texture_view2061" });
    buffer205.destroy()
    
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    render_pass_encoder2020.setStencilReference(1);
    query204.destroy()
    query500.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2000.insertDebugMarker("marker");
    query100.destroy()
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
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
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    query204.destroy()
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    const command_buffer700 = command_encoder700.finish();
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
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
    device20.queue.writeTexture({ texture: texture206 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    device20.queue.writeTexture({ texture: texture206 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer201.destroy()
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    texture204.destroy();
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    buffer202.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    texture200.destroy();
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    device20.queue.writeTexture({ texture: texture206 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_pass_encoder2020.setStencilReference(1);
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture206 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture206 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device70.pushErrorScope("out-of-memory");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    query103.destroy()
    
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
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
    
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    device20.queue.writeTexture({ texture: texture206 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    query101.destroy()
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_pass_encoder2020.setScissorRect(0, 0, texture204.width / 2, texture204.height / 2);
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    query200.destroy()
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
        layout: render_pipeline204.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group202);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    query102.destroy()
    device20.queue.writeTexture({ texture: texture206 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture206 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder501.setPipeline(render_pipeline500);
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const command_buffer501 = command_encoder501.finish();
    device80.pushErrorScope("internal");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    query204.destroy()
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer101,
        0
    )
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_bundle_encoder202.popDebugGroup();
    render_pass_encoder2020.setViewport(0, 0, texture204.width / 2, texture204.height / 2, 0, 1);
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    compute_pass_encoder1000.insertDebugMarker("marker")
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
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
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
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    render_bundle_encoder501.setBindGroup(0, bind_group500);
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device70.queue.submit([command_buffer700, ]);
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    render_pass_encoder2000.setStencilReference(1);
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout202,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer800 = command_encoder800.finish();
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    compute_pass_encoder7010.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
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
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    const command_buffer702 = command_encoder702.finish();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer702, ]);
    compute_pass_encoder1000.end();
    device50.queue.submit([command_buffer501, ]);
    command_encoder100.popDebugGroup()
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
}