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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array0 = new Float32Array([1.0, 0.0, -0.5, 0.75, -0.75, -1.0, 0.25, -1.0, -0.75, -1.0, -0.25, 1.0, -0.75, -0.25, -0.75, 0.0, 1.0, 0.25, -0.5, -1.0, 0.75, -1.0, -0.5, -1.0, 0.75, -0.25, -0.75, -0.75, 1.0, 0.5, -0.25, -0.75, 0.0, -1.0, 0.5, -0.5, -1.0, -0.25, 0.25, 0.0, -0.5, 0.75, 0.75, -0.25, 0.75, -0.5, -0.5, 0.25, 0.0, 0.75, 0.75, -0.5, -0.5, -0.25, -0.5, 0.25, -0.25, 0.5, 0.25, -1.0, 0.0, 0.0, -1.0, -0.25, 1.0, -0.5, 0.5, 0.75, 0.25, 0.5, 0.5, 0.0, 1.0, 0.25, -0.25, 0.5, -0.5, -0.25, -0.75, -1.0, -0.25, 0.5, 0.5, -0.5, 0.5, -0.5, -1.0, 1.0, -0.25, 0.25, 1.0, -1.0, 0.25, 0.75, -0.25, 0.75, 1.0, -1.0, -1.0, 0.5, ]);
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    query100.destroy()
    device00.pushErrorScope("validation");
    
    query100.destroy()
    device10.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array1 = new Float32Array([0.75, -0.75, -0.5, -0.75, 0.0, -0.25, -1.0, -0.25, -0.75, 0.75, -0.5, 0.0, 0.5, -1.0, 0.0, 0.0, 0.0, 0.75, -0.75, 0.25, 0.75, 0.25, 1.0, -0.75, 0.75, 1.0, 0.5, 0.0, -0.75, -0.5, 0.25, -0.5, -0.75, 0.5, 0.25, 0.75, -0.75, 0.25, -0.5, -0.75, 0.75, -0.75, -0.5, -0.75, -1.0, 0.0, 0.75, 0.25, 0.5, -0.75, 0.75, -1.0, 0.5, -0.5, 1.0, 0.0, 0.25, 0.75, -0.25, -0.75, 0.75, 1.0, 0.0, 0.75, 0.75, -0.75, -0.25, 0.75, 0.75, -1.0, -1.0, 0.25, -0.25, -0.75, 0.75, -0.5, 1.0, 0.25, 1.0, 0.75, 1.0, 0.0, -0.75, 0.75, -1.0, -0.25, 0.0, 0.5, 0.25, -0.25, -1.0, 1.0, -0.25, 0.0, 0.25, 1.0, -0.25, -0.5, -0.25, -0.25, ]);
    const array2 = new Float32Array([-1.0, 0.0, -1.0, -0.25, -0.5, 0.5, -0.75, 0.25, 1.0, 1.0, 0.75, 0.75, -1.0, -0.75, 0.75, -0.5, 0.0, 1.0, -0.75, -0.5, -0.25, 0.5, -0.25, -0.25, 0.5, -1.0, -1.0, 0.25, 0.5, -0.25, 0.25, -1.0, 0.25, 0.75, 0.25, 0.25, 1.0, -0.5, 0.5, -0.5, 1.0, -0.25, 1.0, 1.0, -0.5, -0.5, 0.25, 0.75, 1.0, -1.0, 0.75, 0.0, 0.25, -0.5, -0.5, -0.75, 1.0, 0.0, 0.25, 0.0, 0.5, 1.0, 0.0, -0.25, -0.25, 0.5, 0.25, 0.5, -1.0, 0.25, 1.0, -0.5, -0.25, -0.25, 0.5, -0.5, -1.0, 0.75, -0.5, -0.25, -0.75, -0.75, -1.0, 0.25, 0.75, -0.25, -0.25, -0.75, 0.0, 1.0, 0.25, 1.0, 0.25, 0.25, -0.5, 0.75, 1.0, -1.0, 0.0, -0.75, ]);
    
    const array3 = new Float32Array([0.25, 0.75, 0.75, -0.75, 0.75, 0.0, -0.5, -0.5, 0.0, 0.0, 0.25, -0.25, -0.75, -0.75, -0.5, 0.0, -1.0, 0.5, -0.25, 0.5, 0.75, -0.25, 0.0, -0.25, 0.0, 1.0, -1.0, -0.5, -1.0, 0.0, 0.5, 1.0, -0.75, 0.75, 0.75, -1.0, 0.5, 0.0, -0.25, -0.5, -0.25, -1.0, 1.0, -0.5, -1.0, -0.25, -0.25, -0.75, -0.25, 0.5, 0.5, 1.0, 0.75, -0.5, 0.25, 0.0, 0.75, 0.25, 0.75, 0.75, 0.5, -0.75, -0.5, 1.0, -0.5, 0.5, 0.25, -0.25, -0.75, 1.0, 1.0, 1.0, -0.5, 0.75, -0.5, -1.0, 0.75, -0.25, 0.25, -0.5, 1.0, -1.0, -1.0, -0.75, -0.75, 0.5, -1.0, -0.5, -0.25, -0.75, -0.25, -1.0, -0.75, 1.0, 0.25, 0.5, -0.25, -1.0, 0.75, 1.0, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder400.clearBuffer(buffer401);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const array4 = new Float32Array([-0.75, -0.75, 1.0, -0.5, 1.0, 0.25, 1.0, 0.0, -0.75, -0.25, -0.5, -0.75, -0.5, 1.0, -0.75, -0.25, 0.5, -0.5, -0.25, 0.0, -0.5, -0.75, -1.0, -1.0, -1.0, 0.0, -1.0, 0.5, 0.75, -0.25, 0.0, -0.25, 0.0, -0.25, -0.25, 0.0, 1.0, 0.5, -1.0, -0.75, 0.5, -1.0, 0.5, 1.0, 0.25, -0.5, 0.0, -1.0, 0.0, -0.25, -0.75, -0.5, 0.75, -1.0, 0.25, 0.75, -1.0, 0.25, 1.0, -0.25, 0.5, -0.75, 0.25, -0.5, 0.25, -1.0, -1.0, 0.5, -1.0, -1.0, 1.0, -1.0, -1.0, 1.0, 1.0, -0.25, 0.5, 0.25, 0.25, 0.25, -0.75, 1.0, 0.25, 1.0, 0.75, -0.5, -0.75, -0.75, -1.0, -0.75, -0.75, 0.75, -0.25, 0.25, 0.5, -1.0, 0.75, 0.25, -0.5, 0.5, ]);
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    query400.destroy()
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.destroy();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    
    buffer400.destroy()
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder401.insertDebugMarker("mymarker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    const command_buffer401 = command_encoder401.finish();
    
    buffer500.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    command_encoder400.clearBuffer(buffer401);
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    command_encoder400.insertDebugMarker("mymarker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.destroy();
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query400.destroy()
    buffer401.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    query300.destroy()
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    texture400.destroy();
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    compute_pass_encoder6000.insertDebugMarker("marker")
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
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
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
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    command_encoder400.insertDebugMarker("mymarker");
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query401.destroy()
    
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    command_encoder400.popDebugGroup()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    render_bundle_encoder700.pushDebugGroup("group_marker");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    render_bundle_encoder400.popDebugGroup();
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    device30.pushErrorScope("internal");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.submit([command_buffer401, ]);
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    device60.pushErrorScope("validation");
    compute_pass_encoder4000.insertDebugMarker("marker")
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    query400.destroy()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.setPipeline(render_pipeline400);
    
    const array5 = new Float32Array([-0.25, 0.75, 0.25, 0.75, 0.0, -0.25, -1.0, 0.25, -0.25, -0.75, 0.25, -0.5, 0.75, 0.5, -0.75, 0.25, -1.0, 0.5, -1.0, 1.0, -0.25, -1.0, 0.75, -0.5, -0.75, 0.0, -0.75, -0.5, 0.25, 0.5, -0.25, -0.5, 0.0, 0.0, -0.5, -0.25, -0.5, 0.5, -0.75, -0.25, 0.0, 0.5, 0.25, 1.0, 1.0, 0.25, 0.5, 0.5, 0.75, 0.5, 0.75, 0.75, 0.5, -1.0, -0.5, 0.0, -0.25, -1.0, 0.5, -1.0, -1.0, -0.5, 0.0, 0.75, -0.25, 1.0, -0.75, 1.0, -1.0, -0.5, -0.75, 0.25, 1.0, 0.0, -0.25, -0.75, -1.0, 1.0, 0.25, -0.75, -0.75, -0.75, -0.75, -0.25, 1.0, -0.75, -1.0, 0.75, -1.0, -0.25, 0.0, 0.25, 0.25, 0.5, 0.5, 0.25, -0.25, -0.5, -0.25, 0.0, ]);
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
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const array6 = new Float32Array([0.0, -0.75, 0.5, 0.25, -0.5, -0.5, -0.5, 0.0, -0.75, 0.25, 0.5, -0.25, 0.5, -0.75, 1.0, -0.25, -0.75, -0.25, -0.75, 0.75, -1.0, -0.5, 0.75, -0.25, -0.75, 1.0, -0.75, 1.0, 0.0, 0.75, 0.5, 0.5, -0.75, -0.25, 0.25, 0.5, -0.75, 0.5, -1.0, 0.5, -0.25, 0.5, -0.25, -0.5, 1.0, 1.0, -0.75, -0.5, 0.25, 1.0, 0.75, -0.25, 0.0, 0.0, 0.75, 0.5, 0.75, -1.0, -0.5, 0.75, 1.0, -0.75, -1.0, 0.75, 1.0, 0.5, 0.75, 0.75, 0.0, 1.0, -0.25, 1.0, 1.0, -0.5, -0.5, -1.0, 0.25, 0.25, 0.75, 1.0, -1.0, 0.5, 0.0, 0.75, 0.5, -0.25, 0.25, 0.0, -0.25, -1.0, -0.25, -1.0, 0.25, -1.0, 1.0, 0.25, -1.0, -0.75, 1.0, 0.5, ]);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    command_encoder402.pushDebugGroup("mygroupmarker")
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    command_encoder301.insertDebugMarker("mymarker");
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    query401.destroy()
    
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    const command_buffer301 = command_encoder301.finish();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
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
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    buffer403.destroy()
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    texture301.destroy();
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    device90.pushErrorScope("out-of-memory");
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_bundle_encoder701.pushDebugGroup("group_marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    
    device40.pushErrorScope("internal");
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    
    query303.destroy()
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    query401.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32sint",
        dimension: "2d"
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
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
    render_bundle_encoder402.setPipeline(render_pipeline402);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder601.insertDebugMarker("marker");
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const array7 = new Float32Array([0.5, -0.25, 0.5, 0.0, -0.75, -0.5, 1.0, 0.0, 0.25, -0.5, 0.0, -0.5, -0.5, 0.5, 1.0, -0.75, 0.75, -1.0, 0.5, -1.0, 0.5, 0.25, -1.0, 0.75, 1.0, 0.25, -0.75, -0.75, 0.25, -1.0, 0.0, -0.25, 0.5, 0.75, -0.75, -1.0, 0.0, 0.5, -0.25, 1.0, 0.75, 1.0, 0.5, 0.5, -1.0, 0.5, -0.75, 1.0, -0.25, 0.5, -0.25, -1.0, -0.25, 1.0, 0.75, 0.0, 1.0, 0.25, 0.75, 1.0, 0.0, -0.75, 0.5, 1.0, 0.0, 1.0, -1.0, 0.5, -0.5, 0.75, -1.0, -0.75, 0.5, 0.25, 0.75, -0.75, -0.5, 0.25, -0.25, 0.0, 0.5, -0.5, 0.0, -1.0, -0.25, 0.25, -0.25, 0.75, -0.25, -1.0, -0.5, -0.25, -0.75, -1.0, 0.5, -1.0, 0.0, -0.25, -0.75, 0.75, ]);
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    query400.destroy()
    
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
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
    render_bundle_encoder600.insertDebugMarker("marker");
    compute_pass_encoder6000.insertDebugMarker("marker")
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder702.insertDebugMarker("marker");
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device80.pushErrorScope("validation");
    
    
    render_bundle_encoder401.setPipeline(render_pipeline405);
    
    buffer300.destroy()
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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

    compute_pass_encoder4000.setBindGroup(0, bind_group401);
    device60.pushErrorScope("internal");
    
    command_encoder402.popDebugGroup()
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    render_bundle_encoder702.insertDebugMarker("marker");
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    buffer301.destroy()
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const command_buffer700 = command_encoder700.finish();
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query401.destroy()
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer407, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer407, 0);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const texture602 = device60.createTexture({
        label: "texture602",
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
    
    buffer406.destroy()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query400.destroy()
    device60.queue.writeTexture({ texture: texture600 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
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
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder700.popDebugGroup();
    query602.destroy()
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder402.clearBuffer(buffer407);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
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
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    render_bundle_encoder702.pushDebugGroup("group_marker");
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    query303.destroy()
    compute_pass_encoder6000.popDebugGroup()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    query702.destroy()
    render_bundle_encoder701.insertDebugMarker("marker");
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    
    
    
    
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    query300.destroy()
    const compute_pass_encoder9010 = command_encoder901.beginComputePass({ label: "compute_pass_encoder9010" });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device60.queue.writeTexture({ texture: texture600 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4020.setPipeline(compute_pipeline403);
    
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
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.pushErrorScope("validation");
    query303.destroy()
    
    device40.queue.writeBuffer(buffer407, 0, array1, 0, array1.length);
    texture602.destroy();
    buffer408.destroy()
    query600.destroy()
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    
    query401.destroy()
    
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    
    buffer407.destroy()
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
    
    texture401.destroy();
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder402.insertDebugMarker("marker");
    compute_pass_encoder9000.insertDebugMarker("marker")
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
    query600.destroy()
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
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
    device60.queue.writeTexture({ texture: texture600 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4000.end();
    
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder701.insertDebugMarker("marker");
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group402);
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query303
    });
    
    
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile(__dirname + '/shader_module409.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline4010 = device40.createRenderPipeline({
        label: "render_pipeline4010",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder800.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
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
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture600.destroy();
    
    
    buffer700.destroy()
    command_encoder1000.insertDebugMarker("mymarker");
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer409.destroy()
    device90.pushErrorScope("out-of-memory");
    const render_pipeline4011 = device40.createRenderPipeline({
        label: "render_pipeline4011",
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
    
    command_encoder1000.pushDebugGroup("mygroupmarker")
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
    render_pass_encoder6010.insertDebugMarker("marker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_pipeline4012 = device40.createRenderPipeline({
        label: "render_pipeline4012",
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
    
    render_pass_encoder6010.setPipeline(render_pipeline601);
    compute_pass_encoder3000.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group403);
    command_encoder800.popDebugGroup()
    render_pass_encoder3020.setPipeline(render_pipeline301);
    compute_pass_encoder4020.popDebugGroup()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
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
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group301);
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer800 = command_encoder800.finish();
    command_encoder1000.popDebugGroup()
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
        layout: render_pipeline601.getBindGroupLayout(0),
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

    render_pass_encoder6010.setBindGroup(0, bind_group600);
    compute_pass_encoder4020.end();
    const command_buffer1000 = command_encoder1000.finish();
    device100.queue.submit([command_buffer1000, ]);
    const command_buffer402 = command_encoder402.finish();
    device80.queue.submit([command_buffer800, ]);
    device40.queue.submit([command_buffer402, ]);
    device30.queue.submit([command_buffer301, ]);
    command_encoder400.popDebugGroup()
    const command_buffer400 = command_encoder400.finish();
    device40.queue.submit([command_buffer400, ]);
}