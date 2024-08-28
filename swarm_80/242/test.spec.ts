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
    
    
    
    const array0 = new Float32Array([0.5, -0.5, 0.5, -0.25, 0.5, 0.5, -0.75, 0.5, -0.5, 0.5, 0.75, -1.0, 0.0, -1.0, -0.25, -0.5, 0.0, 0.75, 1.0, 0.75, -0.75, 0.0, 0.0, -0.25, 0.25, 0.5, -0.75, -0.5, 1.0, 0.25, 0.0, 1.0, -0.5, -0.75, 0.0, 0.0, 0.5, -0.25, 0.25, 0.5, -0.5, 0.5, -0.75, -1.0, -1.0, 1.0, 0.0, 0.5, -0.5, 0.75, -0.5, 0.75, -0.5, 0.0, 1.0, 0.5, 0.75, 0.0, -1.0, 0.0, 0.25, -0.5, 0.0, -0.5, -0.5, 0.75, 0.75, -0.5, 1.0, -0.25, -1.0, 0.25, -0.5, -0.5, -0.75, -0.75, 0.0, 0.25, 0.5, 0.25, -1.0, 0.5, -1.0, 1.0, 0.5, 0.25, 0.0, -0.75, -1.0, 0.25, 0.0, -0.5, -0.25, -0.25, 1.0, 0.75, 0.25, -0.25, -0.5, 0.0, ]);
    
    
    
    
    
    
    const array1 = new Float32Array([0.75, 0.75, -0.5, -0.25, 1.0, 0.0, 0.0, -0.5, 1.0, -0.5, 0.5, -0.5, 0.25, -1.0, 0.25, 0.5, 1.0, 0.75, -1.0, -0.25, 0.75, 1.0, 0.75, 1.0, -1.0, 0.75, 0.5, -0.5, 0.75, -1.0, -0.75, -1.0, 0.25, 0.0, -0.25, 0.25, 0.75, 0.75, 0.5, 0.75, 1.0, -0.25, 0.75, 0.75, 0.75, 0.5, 1.0, 0.25, 0.5, 0.75, 0.25, 0.25, 0.75, 0.5, -0.25, -0.5, 0.25, 0.5, 0.0, -0.75, -0.75, -0.5, 1.0, 0.0, -0.75, 1.0, 1.0, 0.75, -0.75, 1.0, -0.5, 0.0, -0.75, 0.25, 0.25, 0.0, -0.5, 1.0, -1.0, 0.5, -1.0, -0.5, 1.0, -1.0, 1.0, -0.5, 0.25, 1.0, -1.0, -0.5, 0.25, -0.75, 1.0, 0.5, -0.25, 1.0, 0.5, -0.75, 0.75, -0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
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
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    device00.destroy();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    buffer201.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.destroy();
    
    device10.destroy();
    
    
    
    
    
    const array2 = new Float32Array([0.5, 0.0, -0.75, 0.0, 0.75, -0.5, -0.75, 0.25, 0.25, -0.5, -1.0, 0.5, -0.25, 0.0, 1.0, 0.75, -0.5, -0.25, -0.75, 0.25, -0.5, -0.25, -0.5, 1.0, -0.5, 0.5, 0.25, -0.75, 1.0, 0.5, 0.75, 0.75, 0.5, -0.5, -0.25, 0.5, -0.75, -1.0, 0.25, 0.0, -1.0, -1.0, -0.25, 0.0, 0.0, 1.0, -0.75, 0.75, 0.5, 0.5, -1.0, 0.75, 0.0, 1.0, 1.0, -0.5, -1.0, 1.0, 1.0, 0.0, 0.25, 0.75, 1.0, 1.0, -0.5, -0.75, -0.25, 0.0, -1.0, -1.0, 0.75, -0.75, 0.25, 0.25, -0.75, 0.0, 1.0, -1.0, -0.25, -0.25, -1.0, -0.25, 0.75, -0.75, 0.25, 0.25, 0.75, -0.5, -0.25, 0.0, 1.0, -0.5, 0.5, 0.5, 0.0, -0.75, -1.0, -0.25, 0.75, 1.0, ]);
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
    
    
    
    const array3 = new Float32Array([0.5, 0.25, 1.0, 0.75, -0.25, -1.0, 1.0, 0.0, -1.0, 0.75, -0.5, 0.0, 0.0, 0.25, 0.25, -0.25, 0.75, 0.5, -1.0, -0.75, -0.5, 0.25, -0.25, -0.25, -1.0, 0.5, 0.5, -0.75, -0.5, 0.25, 0.75, -0.5, 0.0, -0.25, 0.5, -1.0, 0.0, -0.25, -0.5, 0.25, -1.0, 1.0, 0.25, 0.25, -0.5, 0.5, 0.25, 0.5, -0.5, 0.75, -0.25, 0.5, -0.75, -0.5, 0.0, 0.5, -0.5, 0.0, -0.75, -0.25, 0.25, 0.0, 0.0, 0.75, 0.0, -0.5, 0.75, 0.75, -0.75, -0.25, 0.25, 0.5, -0.75, 0.5, -1.0, 0.75, -0.25, -0.5, 0.0, -1.0, -0.25, -0.25, -1.0, 0.5, -0.5, 0.75, 0.5, 0.5, -0.25, 0.0, 0.0, 0.25, 0.5, 0.0, 0.5, -0.5, 0.25, 0.25, 1.0, 0.0, ]);
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const array4 = new Float32Array([0.75, -1.0, -0.25, -0.5, 0.25, 0.25, -1.0, -0.75, -0.25, 0.5, -0.25, 0.75, 0.75, -1.0, -1.0, -0.25, -0.75, 0.5, 0.75, -1.0, 0.5, 0.25, 0.0, 0.25, -0.5, -0.5, -0.75, 0.5, -0.25, -0.25, -0.25, -0.25, 0.0, -0.25, -0.75, -0.75, 0.0, -1.0, 0.5, -0.75, 0.25, 0.25, -1.0, 0.5, 0.25, -0.75, 1.0, -1.0, -0.5, 0.75, -0.5, 0.25, 0.0, 0.0, -0.25, -0.5, -0.75, 0.25, -0.25, 0.5, -0.25, -0.75, 0.25, 1.0, 1.0, 1.0, 0.25, -0.5, 0.0, -0.5, -0.25, 0.0, -1.0, 0.5, 0.25, 1.0, -0.5, -0.5, -0.25, -0.25, 0.0, -0.25, 0.25, 0.25, 0.75, -0.75, 0.5, 0.25, -0.5, -0.5, 0.75, -0.25, 0.5, 1.0, 0.5, -0.5, -1.0, -1.0, 0.25, -0.5, ]);
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device30.destroy();
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    compute_pass_encoder4010.popDebugGroup()
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
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    command_encoder600.insertDebugMarker("mymarker");
    
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
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
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    command_encoder600.insertDebugMarker("mymarker");
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
    
    const command_buffer404 = command_encoder404.finish();
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4030.insertDebugMarker("marker")
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
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
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    buffer700.destroy()
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    compute_pass_encoder4030.insertDebugMarker("marker")
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    compute_pass_encoder4010.popDebugGroup()
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const array5 = new Float32Array([0.5, 0.0, 0.25, -0.25, 0.5, -0.5, -0.5, 0.25, -1.0, 0.25, 1.0, 0.0, -0.25, 0.0, -0.75, 0.75, 1.0, -0.25, 0.0, -0.25, -0.5, 0.25, -0.5, 0.0, 0.0, -0.5, -0.5, 0.0, -0.75, 0.75, -1.0, -0.25, 0.25, -1.0, -1.0, -0.5, 0.5, 1.0, -0.75, -1.0, -0.25, -0.25, -1.0, -1.0, -0.5, -0.75, 0.25, -0.75, 0.25, 0.0, 0.5, -0.25, 0.5, -1.0, -0.5, 0.5, -1.0, -1.0, -0.75, 1.0, 0.5, -0.5, 0.5, -0.75, -0.25, -0.75, -0.25, -1.0, -1.0, -0.25, 1.0, 1.0, -1.0, -0.75, -0.75, 1.0, 0.75, 0.5, 0.0, -0.75, 1.0, 0.75, -0.75, -1.0, -0.25, -0.75, -0.25, -0.25, -0.75, -0.75, -0.25, -1.0, -1.0, -0.75, 0.5, -0.5, 0.5, 0.25, -1.0, 0.0, ]);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder600.insertDebugMarker("marker");
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
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    const array6 = new Float32Array([0.25, -0.25, 0.5, -0.75, -0.5, -0.5, 0.25, -0.25, 0.5, 0.75, 0.5, 0.5, -1.0, 1.0, 0.5, 1.0, -0.75, -1.0, -0.25, 1.0, -0.75, -0.5, -0.25, -0.25, -1.0, -1.0, 0.75, -0.75, 0.75, 0.75, 0.0, 0.0, 1.0, 0.75, -0.25, 1.0, 0.0, 0.5, -0.75, -0.5, 0.0, 0.75, 0.25, -0.75, 0.5, -0.25, -0.75, 0.25, 0.5, -0.5, -0.75, 0.25, -1.0, -0.5, -0.25, -1.0, 0.75, -0.75, 1.0, 0.25, 1.0, -0.25, -0.5, 0.25, 0.5, 0.25, 0.75, 0.0, 0.0, 0.5, -0.75, -0.5, -0.75, 1.0, 0.75, -0.5, -0.5, 0.0, 0.75, -0.5, -1.0, -0.25, -1.0, 0.5, 0.0, 1.0, -0.25, -0.25, -0.25, 1.0, 0.25, -0.75, 1.0, 0.0, 0.25, 0.5, -1.0, -1.0, -0.5, -1.0, ]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
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
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    
    
    buffer701.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_pass_encoder6010.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    compute_pass_encoder4030.popDebugGroup()
    
    device50.destroy();
    
    render_pass_encoder6010.pushDebugGroup("group_marker");
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder6000.executeBundles([])
    const render_pass_encoder4050 = command_encoder405.beginRenderPass({
        label: "render_pass_encoder4050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4050.setStencilReference(1);
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    compute_pass_encoder4020.insertDebugMarker("marker")
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
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
    render_bundle_encoder602.insertDebugMarker("marker");
    render_pass_encoder6000.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    render_pass_encoder6000.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder4050.insertDebugMarker("marker");
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
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
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6020,
            },
        ],
        occlusionQuerySet: query601
    });
    render_pass_encoder6020.setStencilReference(1);
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    render_pass_encoder6010.insertDebugMarker("marker");
    render_pass_encoder6020.insertDebugMarker("marker");
    const texture_view6021 = texture602.createView({ label: "texture_view6021" });
    
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    
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
    render_bundle_encoder601.setPipeline(render_pipeline600);
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_pass_encoder6010.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    render_pass_encoder6020.setViewport(0, 0, texture602.width / 2, texture602.height / 2, 0, 1);
    
    render_pass_encoder6000.insertDebugMarker("marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder6020.insertDebugMarker("marker");
    compute_pass_encoder4020.popDebugGroup()
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder701.insertDebugMarker("marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder602.setPipeline(render_pipeline601);
    buffer600.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    compute_pass_encoder4020.pushDebugGroup("group_marker")
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
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const texture_view6022 = texture602.createView({ label: "texture_view6022" });
    render_pass_encoder6000.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    render_pass_encoder4050.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    
    
    
    
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    render_pass_encoder6010.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    
    
    render_pass_encoder6010.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    render_bundle_encoder701.insertDebugMarker("marker");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_bundle_encoder600.setPipeline(render_pipeline601);
    
    render_pass_encoder6010.setStencilReference(1);
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    command_encoder702.insertDebugMarker("mymarker");
    
    render_bundle_encoder602.insertDebugMarker("marker");
    
    compute_pass_encoder4000.popDebugGroup()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeTexture({ texture: texture703 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6020,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder700.pushDebugGroup("mygroupmarker")
    render_pass_encoder4050.setStencilReference(1);
    
    render_bundle_encoder401.setPipeline(render_pipeline401);
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    device70.queue.writeTexture({ texture: texture703 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder701.setPipeline(render_pipeline700);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group600);
    render_pass_encoder6000.setStencilReference(1);
    render_pass_encoder4050.insertDebugMarker("marker");
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder6010.executeBundles([])
    device70.queue.writeTexture({ texture: texture703 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder701.insertDebugMarker("marker");
    
    
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

    render_bundle_encoder602.setBindGroup(0, bind_group601);
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    render_pass_encoder6000.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
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
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const command_buffer702 = command_encoder702.finish();
    
    render_bundle_encoder602.setVertexBuffer(0, buffer601);
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    render_bundle_encoder702.setPipeline(render_pipeline701);
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
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
    render_bundle_encoder600.insertDebugMarker("marker");
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    
    
    
    
    device70.queue.writeTexture({ texture: texture703 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture703 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder601.setVertexBuffer(0, buffer601);
    render_bundle_encoder402.setPipeline(render_pipeline400);
    render_bundle_encoder601.setIndexBuffer(buffer600, "uint16");
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    render_pass_encoder6020.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer400,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer401,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group400);
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    render_bundle_encoder701.insertDebugMarker("marker");
    render_bundle_encoder601.setIndexBuffer(buffer607, "uint16");
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
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
    const texture_view7021 = texture702.createView({ label: "texture_view7021" });
    render_bundle_encoder700.setPipeline(render_pipeline700);
    
    render_pass_encoder6020.setViewport(0, 0, texture602.width / 2, texture602.height / 2, 0, 1);
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder602.draw(3);
    render_pass_encoder4050.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    render_bundle_encoder601.draw(3);
    
    const render_pass_encoder4060 = command_encoder406.beginRenderPass({
        label: "render_pass_encoder4060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4011,
            },
        ],
        occlusionQuerySet: query401
    });
    render_pass_encoder6020.executeBundles([])
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    render_pass_encoder6020.insertDebugMarker("marker");
    render_pass_encoder6010.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    render_pass_encoder6020.pushDebugGroup("group_marker");
    render_pass_encoder6020.setStencilReference(1);
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    command_encoder700.insertDebugMarker("mymarker");
    render_pass_encoder4050.pushDebugGroup("group_marker");
    render_pass_encoder6030.executeBundles([])
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    device70.queue.writeTexture({ texture: texture703 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    
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
        occlusionQuerySet: query702
    });
    render_bundle_encoder400.setPipeline(render_pipeline400);
    
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    render_bundle_encoder400.insertDebugMarker("marker");
    buffer601.destroy()
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
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
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture_view4031 = texture403.createView({ label: "texture_view4031" });
    render_pass_encoder6020.setStencilReference(1);
    
    render_pass_encoder6000.insertDebugMarker("marker");
    buffer607.destroy()
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
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const texture_view6023 = texture602.createView({ label: "texture_view6023" });
    
    
    
    const texture_view7022 = texture702.createView({ label: "texture_view7022" });
    
    
    render_pass_encoder7000.insertDebugMarker("marker");
    const command_encoder407 = device40.createCommandEncoder({ label: "command_encoder407" });
    
    
    buffer603.destroy()
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    render_pass_encoder7000.insertDebugMarker("marker");
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder6030.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    render_pass_encoder6010.setStencilReference(1);
    render_pass_encoder4050.setStencilReference(1);
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    buffer402.destroy()
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    render_bundle_encoder701.insertDebugMarker("marker");
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder7000.setStencilReference(1);
    const render_pass_encoder4070 = command_encoder407.beginRenderPass({
        label: "render_pass_encoder4070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4002,
            },
        ],
        occlusionQuerySet: query400
    });
    const array7 = new Float32Array([-1.0, -1.0, -0.75, 0.75, 0.25, 0.5, -0.75, -0.75, -0.75, 0.75, 1.0, -0.5, 0.0, -0.75, 0.5, 1.0, 0.25, -0.25, 0.0, -0.5, 0.5, -1.0, -0.25, -0.25, 0.0, -0.25, -0.75, -0.5, 0.5, 1.0, 0.75, 0.5, -0.25, -0.5, 0.25, 0.5, 0.5, 0.0, 0.75, 0.25, 0.5, 0.5, -0.75, -1.0, -0.5, -1.0, 0.0, -0.75, 0.25, 0.0, -1.0, 0.0, 0.25, 0.75, -0.75, 0.5, -0.75, -0.5, -0.75, -0.75, -0.75, 0.0, -1.0, -0.25, -0.5, -1.0, 0.5, 0.75, 0.75, -0.75, 1.0, -1.0, 0.0, 1.0, -0.5, 0.5, -1.0, -0.25, 0.75, 0.75, 0.75, 0.5, 0.5, -0.75, -0.75, -0.5, 0.5, 0.25, -1.0, 0.0, -0.5, -0.75, 0.25, 0.25, 0.0, -0.75, 1.0, 0.25, 0.75, 0.0, ]);
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    render_pass_encoder6030.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    const texture_view7023 = texture702.createView({ label: "texture_view7023" });
    
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
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
                    buffer: buffer609,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6010,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group602);
    render_pass_encoder6020.setViewport(0, 0, texture602.width / 2, texture602.height / 2, 0, 1);
    
    render_bundle_encoder702.insertDebugMarker("marker");
    
    
    const array8 = new Float32Array([0.75, -0.5, -0.25, -0.25, -0.5, 0.75, -0.25, 0.5, 1.0, 1.0, 0.5, 0.5, -0.75, 0.5, -0.25, 0.0, 0.5, 0.5, 0.0, -1.0, -0.25, -1.0, 0.25, -0.75, 0.5, -0.75, 0.75, -0.25, 0.75, 0.5, -0.5, 0.0, 0.0, 0.5, -0.25, -0.5, 0.0, -1.0, 1.0, 0.0, 1.0, 0.25, 0.75, 0.0, -0.5, -0.75, 1.0, -0.5, -1.0, -1.0, -0.5, -0.5, 1.0, 0.25, 1.0, -0.25, -0.25, 0.25, 0.25, 0.0, 0.25, 1.0, 0.5, 0.5, 0.5, 0.25, 0.25, -0.75, -1.0, 0.0, 0.5, 0.75, 0.5, -0.5, 0.25, 0.25, 1.0, -0.75, 1.0, -0.25, 0.75, -0.25, 0.25, -0.5, 0.75, -0.5, 0.0, -0.25, -1.0, 1.0, 0.75, -0.5, 0.0, 1.0, 0.0, -0.25, 0.75, 0.5, 0.75, 0.5, ]);
    
    const compute_pass_encoder7030 = command_encoder703.beginComputePass({ label: "compute_pass_encoder7030" });
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile(__dirname + '/shader_module705.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    buffer605.destroy()
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
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
    device70.queue.writeTexture({ texture: texture703 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline704 = device70.createRenderPipeline({
        label: "render_pipeline704",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    
    render_pass_encoder4070.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    
    
    
    
    render_pass_encoder6010.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    
    render_pass_encoder6010.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    const render_pipeline705 = device70.createRenderPipeline({
        label: "render_pipeline705",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    
    render_bundle_encoder702.pushDebugGroup("group_marker");
    render_pass_encoder7000.setViewport(0, 0, texture700.width / 2, texture700.height / 2, 0, 1);
    device70.queue.writeTexture({ texture: texture703 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder6010.popDebugGroup();
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder6020.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    device70.queue.submit([command_buffer702, ]);
    compute_pass_encoder4000.popDebugGroup()
}