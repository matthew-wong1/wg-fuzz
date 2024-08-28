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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    buffer000.destroy()
    query000.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    query000.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.destroy();
    
    
    
    
    
    
    
    const array0 = new Float32Array([-1.0, -1.0, -0.5, -0.5, 0.5, 0.0, 0.25, 0.25, 0.25, 0.25, 0.75, 0.0, 0.75, 0.5, -0.5, 0.5, 0.5, 0.0, -0.75, -0.5, 0.0, 1.0, 1.0, 1.0, 0.25, 0.5, -1.0, -1.0, -0.5, 0.0, -0.5, -0.75, -0.5, -1.0, -0.75, -0.25, 0.75, -0.25, 0.0, 0.5, -0.5, 0.0, 1.0, 1.0, 0.25, 0.75, 0.75, -1.0, -0.25, 0.5, 0.0, 0.75, 0.5, 0.0, -0.25, 0.0, 0.75, -0.5, 0.25, 0.75, 0.75, -0.75, 0.25, -0.25, -0.5, 0.5, -0.25, 0.5, 0.75, 0.25, -0.25, 0.75, 1.0, 0.0, -0.25, 0.5, -1.0, 0.75, 0.0, 0.25, -0.5, 0.75, 1.0, 0.25, -1.0, 0.0, 0.25, 1.0, 0.25, -1.0, -0.5, 0.5, 0.75, -1.0, -0.5, 1.0, 1.0, 1.0, 0.5, -1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([-0.25, 0.75, 0.75, -0.5, -0.5, -1.0, -1.0, -0.25, 0.75, 0.75, -0.25, -0.75, -0.5, 0.25, 0.75, 0.0, -1.0, -0.75, -0.5, 0.75, 0.75, 0.25, -0.5, -0.25, 0.0, -0.75, -0.75, 1.0, 0.5, 1.0, 0.75, 1.0, -1.0, -0.75, 0.25, 0.75, 0.5, -0.25, 0.75, -1.0, 1.0, 0.25, -0.25, 1.0, 0.5, -0.75, -1.0, 0.0, -0.25, -0.75, 0.0, 0.75, -1.0, -0.25, -0.5, -1.0, 0.0, 0.5, -0.75, 0.0, 0.0, 1.0, -0.75, -0.5, -0.5, 1.0, 0.75, -0.25, 0.5, 0.5, 1.0, 0.25, 0.5, -0.25, -0.75, 0.75, 0.0, 0.5, -0.5, -1.0, 0.25, 0.75, 1.0, -0.5, -0.5, -0.75, 0.25, 0.25, 0.5, 1.0, -1.0, -0.5, 0.75, 0.25, 0.75, 0.75, 1.0, 0.75, -0.5, -1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    texture101.destroy();
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array2 = new Float32Array([-0.75, -0.75, 0.25, 0.5, -1.0, -0.75, -1.0, -0.75, 0.0, 0.25, 0.25, 0.0, 0.75, -0.25, -0.75, 0.5, 0.5, 0.75, -1.0, 1.0, 0.0, 0.25, 1.0, 0.25, 0.0, 0.0, -0.75, -0.25, 0.5, -1.0, -1.0, 0.25, -0.75, 0.5, -0.25, -0.75, -0.5, 0.75, -0.5, -0.25, -0.25, 0.25, 0.25, 1.0, -0.75, 0.0, 0.0, 1.0, -0.25, -1.0, -0.75, 0.25, -1.0, 1.0, 0.75, -0.5, 0.0, -0.25, 0.25, -0.75, -0.75, -0.5, 1.0, -0.5, -1.0, 0.25, 1.0, 0.25, 0.75, -0.75, -0.25, 0.25, 1.0, 0.5, 0.0, 0.25, 0.75, 0.5, 1.0, 0.0, 1.0, -0.5, 1.0, 0.0, 0.75, -0.5, -0.5, -0.25, -0.25, 0.25, -0.5, -0.75, -0.75, -1.0, -0.75, 0.0, 0.75, -1.0, -1.0, -0.75, ]);
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.destroy();
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("out-of-memory");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const array3 = new Float32Array([0.5, 0.25, -0.5, 0.25, -0.25, 0.75, -0.5, 1.0, 0.25, 1.0, -0.75, 1.0, -0.25, 0.25, -0.75, 0.75, 0.75, -0.75, 0.25, -1.0, 1.0, 0.5, 0.0, 0.0, -1.0, -0.75, -0.25, 0.0, 0.5, 0.75, -1.0, 0.5, 0.0, -0.75, -1.0, 1.0, -0.5, 0.5, 0.5, -0.75, 0.25, 0.5, -0.25, -0.75, -1.0, 1.0, -0.75, -1.0, -1.0, -0.25, -1.0, 0.25, -1.0, -0.75, -0.5, -0.5, 0.5, 0.75, -0.25, -1.0, 0.5, -0.25, 0.5, 0.0, 0.75, -0.5, -0.5, -0.25, -0.75, 0.0, 0.0, -0.75, 0.5, 0.25, 0.5, 0.75, 1.0, 0.25, -0.5, -0.25, 0.25, 0.25, 0.25, 0.25, -0.25, -0.25, 0.5, 0.25, -0.25, 0.0, 0.75, 1.0, -0.75, -0.75, 0.25, 0.5, -0.75, -0.5, 1.0, 0.25, ]);
    device60.pushErrorScope("internal");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder202.insertDebugMarker("mymarker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder202.insertDebugMarker("mymarker");
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.destroy();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer400 = command_encoder400.finish();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    buffer201.destroy()
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture600.destroy();
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    texture200.destroy();
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
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
    
    
    buffer200.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    texture401.destroy();
    compute_pass_encoder2000.popDebugGroup()
    
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
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
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device20.pushErrorScope("internal");
    
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder203.insertDebugMarker("mymarker");
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
    render_bundle_encoder402.insertDebugMarker("marker");
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    query201.destroy()
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
    
    render_bundle_encoder602.setPipeline(render_pipeline601);
    buffer400.destroy()
    
    query600.destroy()
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
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
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder2020.insertDebugMarker("marker")
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    texture402.destroy();
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
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
    render_bundle_encoder601.insertDebugMarker("marker");
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    
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
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
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

    render_bundle_encoder602.setBindGroup(0, bind_group600);
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_bundle_encoder601.setPipeline(render_pipeline602);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    query202.destroy()
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder600.popDebugGroup();
    render_bundle_encoder402.pushDebugGroup("group_marker");
    texture400.destroy();
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
    render_bundle_encoder200.setPipeline(render_pipeline202);
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query600
    });
    buffer600.destroy()
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_bundle_encoder600.setPipeline(render_pipeline602);
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    query200.destroy()
    
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
        layout: render_pipeline202.getBindGroupLayout(0),
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
    
    query202.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    
    render_pass_encoder6000.setPipeline(render_pipeline600);
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    query201.destroy()
    buffer203.destroy()
    command_encoder402.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    query601.destroy()
    
    query201.destroy()
    
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
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
    query602.destroy()
    render_bundle_encoder402.popDebugGroup();
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
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
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    
    buffer202.destroy()
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder6000.setStencilReference(1);
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6001,
            },
        ],
        occlusionQuerySet: query602
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder4010.insertDebugMarker("marker")
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query200
    });
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    render_pass_encoder6010.setPipeline(render_pipeline605);
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    render_bundle_encoder601.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_pass_encoder6010.setStencilReference(1);
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer603,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer604,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group601);
    buffer604.destroy()
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
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
    
    render_pass_encoder2040.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
        vertex: {
            module: shader_module606,
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
            module: shader_module606,
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
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder6010.insertDebugMarker("marker");
    render_pass_encoder2040.setPipeline(render_pipeline208);
    
    const render_pipeline607 = device60.createRenderPipeline({
        label: "render_pipeline607",
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
    
    buffer602.destroy()
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query602.destroy()
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    
    buffer601.destroy()
    
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    render_pass_encoder2040.setStencilReference(1);
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    render_pass_encoder6010.insertDebugMarker("marker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    query200.destroy()
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    query202.destroy()
    compute_pass_encoder4020.insertDebugMarker("marker")
    command_encoder602.pushDebugGroup("mygroupmarker")
    query203.destroy()
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pipeline609 = device60.createRenderPipeline({
        label: "render_pipeline609",
        vertex: {
            module: shader_module606,
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
            module: shader_module606,
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
    render_bundle_encoder200.setVertexBuffer(0, buffer205);
    render_pass_encoder6020.setPipeline(render_pipeline605);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    buffer205.destroy()
    render_pass_encoder2040.setStencilReference(1);
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder6020.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    const query606 = device60.createQuerySet({
        label: "query606",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline6010 = device60.createRenderPipeline({
        label: "render_pipeline6010",
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    texture202.destroy();
    render_bundle_encoder201.setPipeline(render_pipeline204);
    query606.destroy()
    
    render_bundle_encoder602.popDebugGroup();
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder2040.insertDebugMarker("marker");
    
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
        layout: render_pipeline605.getBindGroupLayout(0),
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline208.getBindGroupLayout(0),
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

    render_pass_encoder2040.setBindGroup(0, bind_group201);
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6010.setStencilReference(1);
    
    
    
    render_pass_encoder2040.setStencilReference(1);
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer401.destroy()
    
    render_pass_encoder6020.setStencilReference(1);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32sint",
        dimension: "2d"
    });
    
    buffer607.destroy()
    render_pass_encoder6000.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    buffer204.destroy()
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
        layout: render_pipeline600.getBindGroupLayout(0),
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

    render_pass_encoder6000.setBindGroup(0, bind_group603);
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    const render_pipeline6011 = device60.createRenderPipeline({
        label: "render_pipeline6011",
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder6020.pushDebugGroup("group_marker");
    
    query203.destroy()
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    device60.queue.writeTexture({ texture: texture603 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array4 = new Float32Array([-0.25, 0.75, 0.0, -0.5, 0.75, -0.5, -1.0, 0.0, 0.0, 0.5, -1.0, 0.75, -0.75, -1.0, 0.0, 0.0, -1.0, 0.75, 0.5, 0.0, -0.5, -0.5, 0.75, 1.0, 0.5, -1.0, 0.25, -0.5, 1.0, -0.75, 1.0, 0.0, -1.0, -1.0, -0.75, -1.0, 0.25, -0.25, -0.5, 0.5, -0.25, -0.25, -0.5, 1.0, 0.5, 1.0, -0.25, -0.25, -1.0, -1.0, 0.75, 0.5, 0.0, -1.0, 0.0, 0.0, -0.5, 0.75, 0.75, 1.0, -0.25, 0.25, 0.5, -1.0, -0.75, -0.75, 1.0, 0.5, 0.25, 0.75, 0.5, 0.75, -0.5, -0.25, -0.25, -0.75, 0.5, 0.5, -1.0, 0.0, 0.25, 0.5, -0.5, 0.75, 0.5, 0.5, 0.75, 0.25, -0.25, 0.5, 0.75, 0.25, 0.25, -0.5, -0.75, 0.0, -0.5, -0.5, -1.0, 0.75, ]);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("validation");
    compute_pass_encoder2030.setPipeline(compute_pipeline200);
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    render_pass_encoder6020.setStencilReference(1);
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    texture403.destroy();
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device20.queue.writeTexture({ texture: texture204 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4020.insertDebugMarker("marker")
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: render_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6011,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group604);
    
    const query607 = device60.createQuerySet({
        label: "query607",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2040.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    query601.destroy()
    
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout601,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture603 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder202.setPipeline(render_pipeline206);
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
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2030.setBindGroup(0, bind_group202);
    
    render_pass_encoder2040.setVertexBuffer(0, buffer205);
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    buffer2010.destroy()
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture204 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder6020.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    device20.pushErrorScope("validation");
    device20.queue.writeTexture({ texture: texture204 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const array5 = new Float32Array([0.25, -0.5, 0.5, 0.75, 1.0, -1.0, 0.0, 0.0, -0.5, -1.0, -1.0, -1.0, 0.5, 0.0, 0.0, -1.0, 1.0, -1.0, 0.5, 0.25, 0.25, 0.0, 0.5, 0.25, 0.5, -0.75, -0.5, 0.5, -1.0, -0.5, -0.5, 0.25, -0.5, 0.25, -0.25, -0.5, -0.25, 1.0, 0.25, -0.25, -0.25, -0.75, -0.75, 0.0, 1.0, 1.0, 0.25, 1.0, 1.0, -1.0, -0.75, -1.0, -0.75, -0.25, -0.75, -0.25, -1.0, 0.25, 1.0, -0.75, -0.5, -0.75, 1.0, 0.75, -1.0, 0.5, -1.0, 0.0, 0.75, -1.0, -1.0, -0.25, -0.75, 0.25, -0.5, -0.75, -0.5, -0.75, -1.0, -0.5, 0.0, 0.5, 0.5, 0.75, 0.75, 0.25, -1.0, -0.5, 0.0, -0.75, 1.0, -1.0, 1.0, 1.0, 1.0, -0.25, 0.25, 0.25, 1.0, 0.0, ]);
    
    
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    query200.destroy()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
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
    
    
    query200.destroy()
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query202.destroy()
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    render_pass_encoder6000.setStencilReference(1);
    texture404.destroy();
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder2020.setPipeline(compute_pipeline200);
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group203);
    compute_pass_encoder2000.setPipeline(compute_pipeline202);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4020.setPipeline(compute_pipeline401);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group204);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2018, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2018, 0);
    render_pass_encoder6020.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder2030.end();
    compute_pass_encoder4010.popDebugGroup()
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group205);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2020.popDebugGroup()
    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: render_pipeline605.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6013,
                },
            },
        ],
    });

    render_pass_encoder6020.setBindGroup(0, bind_group605);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group400);
    compute_pass_encoder2000.popDebugGroup()
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2040.drawIndirect(buffer2018, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder4020.end();
    compute_pass_encoder2020.end();
    compute_pass_encoder2010.popDebugGroup()
    command_encoder402.popDebugGroup()
    const command_buffer202 = command_encoder202.finish();
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group401);
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder2040.end();
    const command_buffer204 = command_encoder204.finish();
    compute_pass_encoder2000.end();
    compute_pass_encoder2010.end();
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer201, command_buffer203, command_buffer204, ]);
    device20.queue.submit([command_buffer202, ]);
    device40.queue.submit([command_buffer402, ]);
    command_encoder200.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4010.end();
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer401, ]);
}