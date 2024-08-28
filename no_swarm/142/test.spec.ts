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
    const array0 = new Float32Array([-0.75, -0.75, -0.75, -0.75, 0.75, -1.0, 1.0, 0.75, 0.25, 1.0, -0.75, 0.75, -0.5, -1.0, 0.0, -0.75, -1.0, 0.5, 0.5, -0.25, 0.5, 0.25, 0.75, -1.0, -0.75, 0.25, -1.0, 0.0, -0.5, 0.5, -0.5, 0.25, 0.25, -0.5, 1.0, -0.5, -1.0, 0.25, 0.25, 1.0, 0.0, 0.25, -0.25, -0.25, -0.75, 0.25, -0.75, -0.25, 0.0, 0.25, -0.75, -1.0, 1.0, -0.25, 0.75, 1.0, 1.0, -0.75, -1.0, 1.0, -0.25, 0.75, -0.75, 0.0, 1.0, 0.0, -0.25, 0.0, -0.75, 0.5, 1.0, 0.5, 0.0, -0.5, -0.5, -1.0, 0.0, -0.75, 0.0, 0.5, 0.25, 0.0, -1.0, 0.0, -0.25, 0.0, 0.25, -0.5, -0.75, -0.5, -0.5, 0.5, -0.25, 1.0, -0.25, -0.75, 0.25, -0.25, -0.75, -0.75, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([1.0, -0.25, 0.0, 1.0, 1.0, -0.75, 1.0, -1.0, 1.0, 0.5, 0.25, 0.75, -1.0, -0.5, -0.5, 0.75, -0.25, -0.25, -1.0, 1.0, 0.0, 1.0, 0.5, -0.5, 1.0, -0.25, -0.75, 0.0, 1.0, -1.0, -1.0, -1.0, -0.25, 0.0, -1.0, 0.25, -0.25, -0.75, 0.25, 0.75, -1.0, -0.25, 0.0, 0.25, -1.0, 0.25, 0.25, 0.75, -1.0, 0.0, 1.0, 0.75, 0.25, -0.25, -0.75, 0.25, -0.5, -1.0, -0.25, 1.0, 0.0, 0.0, -0.25, -0.75, -0.75, 1.0, -0.5, -0.5, 0.5, 0.75, 0.25, -0.5, -0.75, 1.0, -0.75, -0.75, -0.25, 0.25, 0.5, 0.5, 0.75, 0.0, 1.0, 0.5, 0.75, -0.75, 0.25, 0.25, 0.0, 1.0, 0.0, -1.0, 0.75, -0.5, 1.0, -0.75, 0.0, 0.25, 1.0, 0.75, ]);
    
    const array2 = new Float32Array([-0.25, -0.5, 0.0, -0.25, -1.0, -0.25, -0.5, 0.25, 0.25, 1.0, -0.75, -1.0, -0.5, 0.5, -0.25, 0.75, 0.5, -0.75, -1.0, 0.75, -1.0, -0.5, 0.5, -0.75, 0.25, -1.0, -0.5, -0.25, -0.5, -0.75, -0.25, 0.25, 0.75, 1.0, -1.0, 1.0, 1.0, -0.25, -1.0, -0.5, 0.5, 0.5, 0.5, 0.0, 0.0, -0.25, 0.0, 0.75, 0.75, -1.0, 0.5, 0.75, 1.0, 0.5, 0.75, -1.0, 0.25, -0.25, 0.0, 0.0, -1.0, 0.0, 0.5, 0.0, 0.0, 0.25, 0.25, -0.25, -0.75, 0.5, 1.0, -1.0, -1.0, -1.0, 0.5, -1.0, 1.0, 0.5, -0.25, -0.5, -0.25, 1.0, 1.0, 1.0, 0.5, 0.75, 0.25, 0.25, -0.75, 0.5, -0.25, -0.5, 1.0, 0.75, -0.25, -0.75, -1.0, 0.25, -1.0, 0.25, ]);
    const array3 = new Float32Array([-0.5, 0.25, 0.25, -0.25, 0.5, 0.5, 0.25, -0.75, -1.0, -0.25, 0.25, 0.75, -1.0, 1.0, 0.75, 0.25, 0.0, 1.0, 0.5, 0.0, -1.0, 0.5, 0.0, 0.0, 0.25, -0.75, -0.75, -1.0, 0.75, -1.0, 0.5, -0.25, 0.5, -0.75, 0.25, 0.75, -1.0, 0.25, 0.0, -1.0, 0.25, -0.75, 0.25, -0.5, 0.5, 0.25, 0.75, 1.0, 1.0, -0.5, -0.75, -1.0, -1.0, -0.5, 0.25, 0.25, 1.0, -0.25, -1.0, -0.75, 1.0, 0.25, 0.5, 0.5, -0.5, -1.0, -0.5, -0.25, 0.25, -0.5, -0.5, -0.75, 0.25, 1.0, 0.25, -1.0, -0.75, -0.5, -1.0, 0.75, -0.25, -0.25, 0.5, -0.25, 0.75, 0.75, -0.5, -0.25, -0.5, -0.75, -0.25, 1.0, 1.0, 0.0, -1.0, -0.75, 1.0, -0.5, 0.25, -0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    
    
    
    const array4 = new Float32Array([1.0, 0.75, 0.25, -0.5, -0.75, -0.5, -0.25, 0.25, -1.0, -0.75, 0.5, -0.5, 0.25, 0.0, 1.0, 0.75, 0.25, 0.25, 0.5, 0.75, 0.75, 1.0, 0.25, -0.75, 1.0, 0.75, -0.75, 0.75, -1.0, 0.75, 0.5, -0.5, -0.25, 0.25, 0.25, -0.5, 0.5, -0.5, 1.0, 0.0, -0.5, 0.0, 0.5, 0.25, -0.75, 0.5, -0.5, -1.0, -0.25, 0.25, 0.0, 1.0, 0.5, 0.25, -0.25, -0.5, -0.25, -0.75, -0.5, -1.0, -0.5, -0.75, -1.0, 0.75, 0.25, 0.75, 1.0, -0.25, -0.5, -0.5, -0.75, 0.0, 0.0, 0.25, 1.0, 1.0, -0.75, 1.0, 0.25, -0.5, 0.5, 1.0, 0.25, 0.5, 0.75, 0.0, 0.25, 0.75, 0.0, -0.75, -0.25, -1.0, -0.75, -1.0, -1.0, -0.5, 1.0, 0.25, 0.5, -0.25, ]);
    const array5 = new Float32Array([0.5, -1.0, -0.75, 0.25, -1.0, -0.25, 0.75, 0.5, 0.5, 0.5, -0.5, 0.25, 0.25, -0.5, 0.5, -0.25, 0.75, 0.75, -0.25, 1.0, -1.0, 0.25, 1.0, 1.0, -1.0, 0.75, -0.25, 0.5, 1.0, -0.5, -0.25, 0.0, 0.25, 0.0, 1.0, 0.25, -0.25, 0.5, 0.25, 0.5, -0.75, 0.5, -0.75, -1.0, 1.0, 1.0, 1.0, 0.25, 0.25, -0.5, 1.0, 0.0, 0.25, 0.25, -0.25, -0.75, 0.25, 0.25, 0.0, -1.0, -0.25, -0.75, -1.0, 1.0, 0.25, 1.0, 0.0, 0.5, 0.25, 0.25, -0.25, 1.0, -0.75, 1.0, 0.5, -0.5, 0.0, 0.25, -1.0, -1.0, 0.75, 0.75, -1.0, 0.5, 0.25, -0.75, -1.0, 0.75, 0.75, -0.75, -0.5, 0.5, -1.0, -0.25, -0.25, 0.75, 0.75, -0.25, 0.25, -0.75, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.pushErrorScope("validation");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array6 = new Float32Array([1.0, 0.75, -0.25, 0.75, -0.75, 0.75, 0.5, -1.0, 0.5, 0.0, 1.0, -0.75, -0.5, -0.25, 0.75, -0.5, -0.75, -1.0, 0.0, 0.0, -0.5, 0.0, -0.5, -0.25, 0.75, -1.0, 0.25, -0.75, -0.5, 0.75, 0.5, -0.25, -1.0, -0.5, -0.5, -0.5, -1.0, 0.25, -0.25, 0.25, 1.0, -1.0, 0.0, -1.0, 0.25, 0.75, 0.5, 0.5, -1.0, 0.5, -1.0, -1.0, 0.0, -0.5, -0.25, 1.0, -0.75, 1.0, 0.5, 0.0, -0.75, -0.5, -1.0, -0.75, 1.0, 1.0, 0.75, -0.75, 0.25, -0.75, -0.75, 0.75, 1.0, -0.75, -1.0, -0.75, 0.0, 0.0, 0.25, -0.25, -0.5, -0.5, 0.0, 0.25, 0.0, -0.5, -0.25, -0.5, 0.5, -0.75, 0.25, 0.0, 1.0, 0.75, 1.0, 0.5, 0.0, -1.0, 0.75, -1.0, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.pushErrorScope("internal");
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
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
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder100.copyBufferToTexture(
        {
            buffer: buffer101
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    
    
    buffer100.destroy()
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
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_buffer300 = command_encoder300.finish();
    const command_buffer101 = command_encoder101.finish();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    render_pass_encoder1000.setPipeline(render_pipeline100);
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    render_bundle_encoder300.popDebugGroup();
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder1000.insertDebugMarker("marker");
    device60.destroy();
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.submit([command_buffer101, ]);
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    device40.pushErrorScope("internal");
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    buffer102.destroy()
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group100);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    texture400.destroy();
    texture100.destroy();
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        layout: render_pipeline100.getBindGroupLayout(0),
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
    
    query101.destroy()
    
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    buffer106.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    device30.pushErrorScope("out-of-memory");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder102.popDebugGroup();
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer104.destroy()
    
    const array7 = new Float32Array([0.5, -0.75, -1.0, 0.25, -0.5, 0.25, 0.0, 0.0, 0.75, 0.25, 1.0, 0.0, -0.75, -0.25, 0.25, -0.25, 0.75, 0.75, 0.25, 1.0, -0.5, 0.5, -0.25, 0.5, 0.5, -0.25, 1.0, 0.25, 0.0, 0.75, 1.0, 0.0, -0.25, 1.0, -0.5, -0.5, -0.5, 0.5, -1.0, 0.25, -1.0, -1.0, 0.75, -1.0, -0.25, 0.0, 0.0, -0.25, 0.75, -0.25, 0.75, -1.0, 1.0, 0.5, 0.0, -0.25, 0.25, 0.25, 0.75, 0.75, 0.0, -0.5, -0.5, 0.5, 1.0, -1.0, 0.25, -0.5, 0.25, 0.25, -0.5, 0.5, 0.0, -0.5, 0.5, 0.75, 1.0, 0.25, -0.75, -1.0, 0.0, 1.0, -0.5, -1.0, -0.5, -0.5, 0.5, 0.0, -0.25, -0.25, -0.25, -0.25, -0.5, -0.75, 1.0, 0.75, 1.0, 0.25, 0.25, -0.75, ]);
    
    render_bundle_encoder101.setPipeline(render_pipeline102);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query102.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder300.popDebugGroup();
    query300.destroy()
    texture301.destroy();
    buffer101.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    texture401.destroy();
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    const texture_view1014 = texture101.createView({ label: "texture_view1014" });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    compute_pass_encoder4000.popDebugGroup()
    
    
    render_pass_encoder3010.popDebugGroup();
    
    
    query103.destroy()
    const array8 = new Float32Array([-0.5, 0.0, 0.75, -1.0, 1.0, 1.0, -0.5, -0.5, 0.5, -1.0, 1.0, -0.5, -0.75, -0.5, -0.75, 0.25, 1.0, -1.0, -1.0, 0.0, -0.5, -0.5, 0.25, 0.5, -0.5, 0.0, 0.0, 0.5, 1.0, 1.0, 0.25, 0.25, -0.25, 0.5, -0.5, 0.0, 0.25, -0.75, -1.0, -0.75, -0.5, -1.0, 1.0, 0.0, 1.0, 0.0, -0.75, -0.75, -1.0, 0.25, -0.75, -0.75, -0.5, 1.0, 0.5, -0.25, -1.0, -1.0, 1.0, -0.25, 0.25, 0.5, -1.0, 0.5, 0.75, -0.5, 0.5, -1.0, 0.0, 1.0, -0.5, -1.0, -1.0, -0.75, 1.0, 0.25, -0.5, 0.5, -0.25, 0.25, -0.5, 0.5, 0.5, -1.0, 0.25, -0.5, -1.0, 0.0, 0.5, 0.75, -0.25, 0.25, -0.25, 0.75, 0.0, 0.25, -1.0, -0.5, 0.75, -0.75, ]);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const array9 = new Float32Array([-0.75, 0.0, -0.5, -0.25, -0.5, -0.5, 0.5, -0.75, 1.0, 0.25, 0.0, -0.5, 0.25, -0.25, 0.75, 1.0, 1.0, -0.75, 0.0, 1.0, -0.5, 1.0, -0.25, 1.0, -1.0, 0.75, -0.75, -1.0, 0.5, -1.0, 0.75, 0.0, -0.5, -1.0, -0.25, 0.25, -0.75, 0.25, 0.5, -1.0, -0.25, 0.0, 0.25, 0.5, -0.5, -1.0, 0.25, 0.0, 0.0, 0.25, -0.5, 0.0, 0.75, -0.75, 0.75, -0.25, 0.5, 0.0, -0.25, 0.5, -0.5, 0.5, 0.25, 1.0, -0.75, -0.5, 0.5, -0.75, 0.25, 0.75, -0.5, -0.5, 0.5, -0.25, -0.5, 0.75, -0.5, 0.5, 0.0, -0.25, 0.5, 0.75, 0.75, -0.25, 1.0, 0.5, 0.25, 0.5, -0.75, 1.0, 0.75, 0.5, -0.25, 0.75, 1.0, 0.75, -1.0, 0.0, -0.25, -0.75, ]);
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
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    device10.queue.writeTexture({ texture: texture101 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer103.destroy()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query300.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const texture_view1015 = texture101.createView({ label: "texture_view1015" });
    
    render_bundle_encoder102.setPipeline(render_pipeline103);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const array10 = new Float32Array([0.75, 0.5, 0.0, -0.5, -0.5, 0.0, -0.25, -1.0, -0.5, -0.25, 1.0, 0.75, 0.75, 0.75, 0.25, -0.5, -0.25, -0.25, -1.0, 0.25, 0.25, 0.5, 0.5, 1.0, -0.75, 1.0, -0.75, 0.75, 0.75, 0.25, 0.5, 0.0, 0.0, 1.0, -1.0, 0.25, -0.5, 0.5, -0.5, -0.75, -1.0, -0.5, -0.75, 0.25, 0.0, -0.75, 1.0, -0.5, 1.0, -0.75, 0.75, 0.75, 0.25, 0.0, 0.0, 0.0, -0.5, -0.75, 0.0, 0.25, 1.0, 0.5, -0.25, -0.5, -0.5, -1.0, 0.5, 0.5, 0.0, 1.0, -0.25, -0.75, 0.5, -0.5, -0.75, -0.25, 0.75, -1.0, 1.0, 1.0, 0.75, 0.75, 1.0, 0.75, -1.0, -0.25, -0.5, -1.0, 0.5, -1.0, 0.0, -1.0, -0.75, 0.5, 0.0, 0.5, 0.5, 0.25, -0.5, -0.5, ]);
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder3010.pushDebugGroup("group_marker");
    
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    query101.destroy()
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    device10.queue.writeTexture({ texture: texture101 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query100.destroy()
    
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
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
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query101
    });
    device30.pushErrorScope("validation");
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    
    
    command_encoder401.insertDebugMarker("mymarker");
    
    buffer108.destroy()
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder1020.executeBundles([])
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    texture300.destroy();
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
    
    
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    render_bundle_encoder500.setPipeline(render_pipeline500);
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture403 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view1016 = texture101.createView({ label: "texture_view1016" });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_pass_encoder3010.popDebugGroup();
    device40.queue.writeTexture({ texture: texture404 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    query103.destroy()
    
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
    device40.queue.writeTexture({ texture: texture404 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture404 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3010.setStencilReference(1);
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture403 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture403 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
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
    
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder300.insertDebugMarker("marker");
    query100.destroy()
    render_bundle_encoder400.popDebugGroup();
    device40.queue.writeTexture({ texture: texture403 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_pass_encoder1020.setPipeline(render_pipeline101);
    render_pass_encoder4010.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture403 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder4010.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    device40.queue.writeTexture({ texture: texture403 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device50.destroy();
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    render_bundle_encoder301.insertDebugMarker("marker");
    buffer107.destroy()
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4031 = texture403.createView({ label: "texture_view4031" });
    
    render_pass_encoder4010.setStencilReference(1);
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.setStencilReference(1);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device40.queue.writeTexture({ texture: texture403 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view4032 = texture403.createView({ label: "texture_view4032" });
    query103.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture403 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder4010.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    device40.queue.writeTexture({ texture: texture404 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    
    texture402.destroy();
    device40.queue.writeTexture({ texture: texture404 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    
    
    
    
    texture403.destroy();
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    query403.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4010.popDebugGroup();
    buffer109.destroy()
    query403.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture404 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture404 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.insertDebugMarker("marker");
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    device10.queue.writeTexture({ texture: texture101 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_bundle_encoder102.popDebugGroup();
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    texture102.destroy();
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
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
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1013,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device40.queue.writeTexture({ texture: texture404 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture404 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    buffer300.destroy()
    
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query403.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.destroy();
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder4020.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device40.queue.writeTexture({ texture: texture404 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
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

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    render_pass_encoder4010.setPipeline(render_pipeline400);
    render_pass_encoder1030.setPipeline(render_pipeline100);
    render_pass_encoder4020.setPipeline(render_pipeline400);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group104);
    render_pass_encoder3010.setPipeline(render_pipeline300);
    device30.queue.submit([command_buffer300, ]);
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

    render_pass_encoder3010.setBindGroup(0, bind_group300);
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
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
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

    render_pass_encoder4010.setBindGroup(0, bind_group400);
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
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
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group401);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}