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
    
    
    
    const array0 = new Float32Array([-1.0, -0.75, -0.75, 0.5, -1.0, -1.0, -0.5, 0.0, 0.5, 0.25, -0.75, -0.25, 0.75, 1.0, -0.75, 0.75, -0.5, -0.75, -0.25, 1.0, 0.25, 1.0, -1.0, -0.25, 1.0, 0.25, -0.75, 0.0, -0.75, 0.75, 0.0, -0.5, 0.0, 0.5, -0.25, 0.5, 0.75, -1.0, -0.25, 0.25, 0.0, -0.5, -0.5, -0.75, 0.75, 1.0, 0.0, -0.25, 0.25, 0.5, 0.5, 0.25, -1.0, 0.0, 0.25, 1.0, 1.0, 1.0, -0.25, 0.0, 0.5, 0.75, 0.0, 0.25, 0.75, 0.75, 0.0, -0.75, -0.25, -1.0, -0.75, 0.0, 0.0, 0.25, 1.0, -1.0, 0.75, 0.75, 0.75, 0.5, -0.5, -0.25, -1.0, -0.5, -1.0, 0.25, 0.0, -0.5, -0.5, -0.5, 0.25, -1.0, 0.75, 0.5, 0.25, 1.0, 0.0, 0.75, 0.75, 0.5, ]);
    const array1 = new Float32Array([0.0, 0.25, 1.0, -0.25, 0.25, 0.0, 0.25, -0.75, 0.0, -1.0, -0.5, 0.5, 0.75, 1.0, 0.25, -1.0, -1.0, 0.0, -0.25, 0.75, -1.0, -0.5, 1.0, 0.25, -1.0, 1.0, 0.0, 1.0, -0.25, 0.75, 0.75, -0.75, -0.5, 0.0, 0.75, -0.25, 0.5, -1.0, -0.75, -1.0, -1.0, 0.5, -0.5, -1.0, -0.5, 1.0, -1.0, 1.0, -0.75, -0.25, 1.0, 0.75, 0.25, 1.0, -0.5, -0.75, -1.0, 0.5, -0.25, -0.25, 0.75, 0.5, -0.25, 0.75, -1.0, 0.5, 1.0, 0.25, 0.5, 0.25, 0.25, -0.25, 0.5, -0.75, -0.5, 0.75, -0.5, -0.5, 0.75, 0.25, -0.5, -1.0, -0.75, 0.25, 1.0, -0.75, 0.75, -0.5, 0.75, 0.25, 0.5, 0.5, 0.5, -1.0, 0.5, -1.0, 0.75, -0.75, 0.75, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    device10.destroy();
    
    
    
    const array2 = new Float32Array([-0.75, 0.75, -1.0, 1.0, 1.0, -0.25, 0.0, -0.75, 0.5, 1.0, 1.0, 0.0, 0.25, 0.0, -0.75, -0.5, -0.5, 0.0, 1.0, 0.5, -0.25, -0.75, 0.0, -0.5, 0.5, 0.5, 0.25, -0.25, 0.0, 0.5, 0.75, 0.0, 1.0, 0.25, -0.25, 0.0, 0.25, -1.0, -1.0, -1.0, -0.25, 1.0, -0.5, -1.0, -0.75, 0.0, -0.5, 0.0, -0.75, 0.0, 0.0, -0.5, 0.5, 0.5, 0.5, -1.0, -0.25, 0.5, 0.5, -0.25, -0.25, 1.0, 0.25, 0.25, 0.5, 0.5, -0.25, 1.0, 0.25, -0.5, 0.75, -0.25, -0.5, -0.75, 1.0, -0.5, -1.0, -0.5, -1.0, 0.5, 1.0, 0.0, 1.0, 1.0, 0.75, -0.25, -0.5, 0.0, -0.75, 0.25, -0.75, 0.5, 0.75, 0.0, -0.5, 1.0, 1.0, -0.5, -0.75, 0.75, ]);
    const array3 = new Float32Array([-0.25, 0.75, -0.5, -1.0, 0.25, 0.75, -0.75, 0.0, -0.75, 1.0, 1.0, 0.75, 0.0, 1.0, 0.25, 1.0, 0.25, 0.5, -0.25, -0.25, -0.75, 0.5, -0.75, 0.25, -0.5, 0.0, 0.0, 0.75, -0.5, 0.0, -0.25, -0.5, -1.0, 0.0, 0.0, -0.25, 0.75, -0.5, 1.0, 1.0, -0.25, 0.5, 0.0, 0.5, 0.75, -0.25, 1.0, 0.75, 0.0, 0.0, 0.5, 0.0, -0.75, 0.25, 0.5, 0.25, -0.75, -0.75, 0.75, -0.25, 1.0, -0.5, -0.5, 0.75, 0.0, -0.75, 0.0, -0.75, -1.0, -0.25, 0.5, -1.0, 0.0, -1.0, 0.5, 0.0, 0.25, 0.5, -0.5, 0.5, -0.5, -0.75, 0.25, 0.0, -0.75, -0.25, 0.75, -0.75, 0.75, 0.0, 0.5, 0.0, -1.0, -0.5, 1.0, 1.0, -0.75, 1.0, -1.0, 0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const array4 = new Float32Array([0.75, 0.5, 0.0, -1.0, -1.0, 1.0, 0.5, 0.75, 0.5, -1.0, -0.75, -0.25, 0.0, -0.75, -0.75, 0.25, -1.0, -0.75, 0.0, -0.75, -1.0, 1.0, -0.25, 1.0, -0.75, -1.0, 1.0, -1.0, 0.75, 0.25, -0.25, -0.25, 0.25, -0.75, 0.5, 0.0, 0.0, 0.75, -1.0, 0.25, -1.0, -1.0, -0.25, 0.75, 0.75, -0.25, 0.25, -0.75, -1.0, -1.0, 1.0, -0.75, 0.5, -0.75, -0.5, 1.0, 0.0, -0.25, -0.5, 0.25, 0.25, -0.5, -0.5, -0.75, 0.5, -0.75, 0.0, -1.0, 0.25, 0.0, 1.0, -0.5, -0.25, 1.0, 0.75, 0.75, -0.25, 0.25, -0.5, 0.25, -0.25, -0.25, 0.5, -0.25, 0.75, -0.5, -0.5, -0.75, 0.5, 0.0, -0.75, 0.5, 0.5, 0.75, 0.0, 0.5, -1.0, 0.5, -0.25, 0.5, ]);
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const array5 = new Float32Array([-1.0, -0.75, 0.0, -0.25, -1.0, 0.75, -1.0, -0.5, 1.0, -1.0, 1.0, -0.75, 0.5, -1.0, 0.25, 0.5, 1.0, 0.25, -0.75, -0.5, 0.75, 0.25, 0.75, 0.25, -0.75, 0.0, 0.75, 0.0, 1.0, 0.5, -0.25, 1.0, -0.75, 0.25, 1.0, 0.75, -0.25, 0.0, -0.5, 1.0, 0.0, 0.0, -0.25, 0.0, -1.0, 0.0, -0.5, -0.25, -0.75, -0.75, 0.0, 1.0, 0.0, 0.25, -0.5, -0.75, 0.75, 0.5, -0.75, 0.0, -1.0, -0.75, 0.25, -0.5, 0.75, 0.0, -0.75, -0.75, 0.75, 0.75, 0.25, -0.5, 0.25, 0.75, -0.5, -0.25, -0.5, 0.75, 0.5, 0.0, 0.5, -0.5, -1.0, 0.75, 1.0, 0.75, 0.25, -1.0, -0.25, 0.5, 0.0, -0.25, -0.5, -1.0, -0.25, 1.0, -0.75, 0.5, 0.25, 0.75, ]);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    device30.pushErrorScope("internal");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    buffer300.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    buffer301.destroy()
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
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
    const array6 = new Float32Array([0.75, -0.25, -1.0, -0.75, -0.5, -0.75, 1.0, 0.25, 1.0, 0.25, 0.0, 0.75, -1.0, -0.75, 0.5, -0.5, -0.5, -1.0, 0.5, 0.25, -0.5, -0.5, -0.25, 0.25, 0.25, -0.5, 0.25, 0.75, -1.0, 0.5, -0.75, -0.75, -0.75, 0.25, -0.25, -0.5, 0.0, -0.75, 0.25, 1.0, 0.5, 0.75, -0.75, 0.25, 0.75, -0.5, 0.0, 0.75, 0.25, 0.75, 0.5, 1.0, -0.75, 1.0, -0.75, 0.75, 0.5, -0.5, 1.0, 0.75, -1.0, 1.0, -0.5, 1.0, -1.0, -0.5, 0.25, -0.5, -1.0, -0.5, -1.0, -0.5, -0.5, -0.5, 0.75, -0.25, 0.75, 0.25, 0.75, -0.25, -1.0, -1.0, -0.25, -0.25, -0.5, -0.75, 0.5, 0.25, 0.5, -0.75, 0.25, 0.5, 0.0, 0.75, 0.75, -0.5, -1.0, 1.0, 0.25, 0.75, ]);
    query300.destroy()
    command_encoder301.pushDebugGroup("mygroupmarker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.pushErrorScope("out-of-memory");
    
    
    command_encoder301.insertDebugMarker("mymarker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    texture302.destroy();
    texture301.destroy();
    device50.destroy();
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const array7 = new Float32Array([0.0, 0.75, -0.75, -0.75, -0.25, -0.25, 0.75, -0.75, -0.5, -0.25, -0.25, -1.0, 0.5, 1.0, 0.25, -0.75, -0.5, 0.75, -1.0, 1.0, 0.5, 0.0, 0.5, -0.25, -1.0, -0.75, 0.75, -0.5, -1.0, 0.75, 0.25, 0.0, -0.25, 0.5, 1.0, -0.5, 0.25, -0.5, 0.5, 0.5, 0.5, -0.75, -0.5, 0.0, -0.5, 0.25, 0.5, -0.5, 1.0, 1.0, -0.5, -0.25, -0.25, 0.5, 1.0, 0.75, -0.25, -1.0, 0.0, 0.25, 1.0, -0.25, -0.25, 1.0, 0.75, 0.75, -0.5, -0.25, 0.0, 0.25, 0.75, 0.0, 0.75, 0.25, -0.25, 0.75, 0.75, 0.5, 1.0, 0.75, -0.25, 0.0, -0.5, 1.0, 0.75, -0.25, -1.0, 0.25, -0.5, 0.5, -0.25, -0.5, -0.25, -1.0, -0.25, -0.25, -0.75, 0.0, 0.25, 0.75, ]);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
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
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture303.destroy();
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    command_encoder301.insertDebugMarker("mymarker");
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    compute_pass_encoder3000.popDebugGroup()
    
    render_bundle_encoder300.insertDebugMarker("marker");
    query302.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    texture300.destroy();
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder3000.popDebugGroup()
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
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder301.popDebugGroup();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
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
    device40.destroy();
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer303.destroy()
    
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const command_buffer302 = command_encoder302.finish();
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
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
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    buffer302.destroy()
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
    texture304.destroy();
    const array8 = new Float32Array([-0.25, 1.0, 0.25, 0.25, 1.0, 0.0, -0.25, 0.25, 0.0, 0.75, 0.75, 0.5, 0.75, -1.0, 0.25, -0.75, 0.0, 0.0, 0.0, 1.0, 0.0, -0.5, -0.25, -0.75, 0.0, 0.25, 0.25, -1.0, -0.25, 0.75, -0.5, -1.0, 1.0, 1.0, 0.75, 1.0, -0.5, -0.25, -0.25, 0.0, 0.75, -0.5, 0.25, -0.75, -1.0, -0.75, 0.0, 1.0, 1.0, -1.0, 0.75, 1.0, -1.0, -1.0, -0.5, 1.0, 0.75, 0.25, -0.5, -0.75, 0.25, 1.0, -0.75, 0.25, 0.75, 1.0, -0.25, 0.5, -0.25, -0.25, 0.0, 0.25, 0.25, -0.5, -0.75, -1.0, -1.0, -0.75, 1.0, -0.5, 1.0, 0.75, -0.5, 0.5, -1.0, 0.0, -0.25, 0.5, -1.0, 0.75, -0.25, -0.25, 0.25, 0.5, 0.75, -0.25, -1.0, 1.0, 0.75, 0.5, ]);
    query302.destroy()
    render_bundle_encoder300.popDebugGroup();
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer303 = command_encoder303.finish();
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
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
    
    render_bundle_encoder301.setPipeline(render_pipeline301);
    device30.pushErrorScope("out-of-memory");
    buffer305.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
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
    
    
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const command_buffer700 = command_encoder700.finish();
    render_bundle_encoder302.setPipeline(render_pipeline303);
    query700.destroy()
    
    
    device70.pushErrorScope("out-of-memory");
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    command_encoder701.pushDebugGroup("mygroupmarker")
    
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    
    texture305.destroy();
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    const array9 = new Float32Array([0.0, 0.75, 0.25, 0.5, -0.75, 1.0, -0.75, 1.0, 0.25, 0.75, 0.0, -0.5, -0.25, 1.0, 0.0, 0.25, -0.75, -0.25, -0.25, 0.5, 0.25, 0.75, -0.25, 0.25, 0.5, -0.5, -0.25, -0.75, -1.0, -0.75, 0.0, -1.0, 0.25, 0.75, -0.25, 0.5, -1.0, 0.75, 0.25, 0.25, 0.75, 0.0, 0.0, 0.0, -0.5, -0.25, 0.0, -1.0, -0.75, 1.0, -1.0, 0.75, 0.75, -0.25, -1.0, -1.0, 0.0, -0.75, 0.5, -1.0, -0.25, -0.75, -0.75, 0.75, -0.5, -1.0, -1.0, 0.5, -1.0, 0.75, -0.75, -0.5, -0.25, 0.5, -0.5, 0.75, 0.75, 0.75, -0.5, 0.75, -1.0, -0.75, 0.5, -0.75, -1.0, 0.25, 0.25, 1.0, -0.5, 0.0, -0.5, -0.5, 0.5, -0.5, 1.0, 0.75, 1.0, 0.25, 0.5, 1.0, ]);
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    query701.destroy()
    
    
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
        layout: render_pipeline303.getBindGroupLayout(0),
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

    render_bundle_encoder302.setBindGroup(0, bind_group301);
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const array10 = new Float32Array([-0.75, 0.25, 0.0, 0.75, -0.75, -1.0, 0.75, 0.5, 0.75, -0.75, 0.75, 0.0, -0.25, -0.25, 0.25, 0.0, 0.5, -0.75, -1.0, -0.75, 0.5, 1.0, -0.25, 0.25, 0.25, 1.0, -0.75, 0.0, -1.0, 0.5, 0.5, 0.75, 1.0, 0.0, 1.0, 0.0, -0.75, 0.75, -1.0, 0.0, 0.0, 0.75, -0.25, -0.25, -0.25, -1.0, 1.0, 0.0, -0.25, -0.5, 1.0, 1.0, -1.0, 0.25, 0.75, -0.5, -1.0, 0.5, 1.0, -1.0, -0.5, -0.5, -0.75, -0.75, -0.5, -1.0, 1.0, 0.5, 0.25, 0.75, 0.5, 1.0, 1.0, -0.25, 0.25, -0.5, 1.0, -0.5, 0.25, -1.0, 0.5, 0.75, -0.5, -0.75, -0.5, -0.5, -0.25, 0.0, 1.0, 0.5, 0.25, 0.75, 0.25, 0.25, 0.75, -0.75, -0.5, 0.5, 0.5, 0.0, ]);
    
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout300]
    });
    query700.destroy()
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    compute_pass_encoder3000.popDebugGroup()
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
    
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
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
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
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
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    
    buffer306.destroy()
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
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
    
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout302]
    });
    compute_pass_encoder3000.popDebugGroup()
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    query701.destroy()
    
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
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
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    command_encoder701.insertDebugMarker("mymarker");
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
    
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    buffer308.destroy()
    render_bundle_encoder600.popDebugGroup();
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const render_pipeline3013 = device30.createRenderPipeline({
        label: "render_pipeline3013",
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
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    render_bundle_encoder300.popDebugGroup();
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    device70.queue.submit([command_buffer700, ]);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout702,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_bundle_encoder600.popDebugGroup();
    
    const array11 = new Float32Array([-0.25, -0.75, 0.75, 0.5, -0.75, 0.5, 0.75, 1.0, 0.75, 0.0, 0.0, 0.5, 0.75, 0.75, 0.0, 0.25, -0.25, -0.25, -0.25, -0.5, 0.5, -0.25, 1.0, -0.5, 0.25, -0.75, 0.25, -1.0, 0.25, -0.5, 1.0, -0.75, 0.0, 0.5, -0.25, -0.25, -0.5, -0.75, 0.5, -1.0, -0.5, -0.25, -0.5, 0.75, 0.25, -1.0, -0.25, 1.0, -0.75, 0.0, -0.5, 1.0, 0.5, 0.25, 0.0, -0.25, 0.0, -0.25, 0.25, -0.25, -0.5, 0.0, 0.0, 0.5, 0.5, 0.75, 0.25, -0.25, -0.75, -0.5, 0.5, 0.25, 0.0, -0.25, -0.25, -1.0, -1.0, 0.0, 0.0, -0.5, 0.5, 0.5, -0.25, -0.25, -0.75, -0.75, 1.0, 0.75, -1.0, 1.0, 0.5, 0.5, 0.0, -0.5, -1.0, -0.5, 0.25, 0.25, -1.0, -0.25, ]);
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile(__dirname + '/shader_module705.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    command_encoder701.popDebugGroup()
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder3010.popDebugGroup()
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
    command_encoder701.insertDebugMarker("mymarker");
    query301.destroy()
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout701,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout308,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout305,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout306,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
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
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    
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
    
    
    command_encoder701.pushDebugGroup("mygroupmarker")
    
    
    
    render_bundle_encoder301.popDebugGroup();
    query305.destroy()
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout701,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder700.popDebugGroup();
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout301]
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
    
    command_encoder701.insertDebugMarker("mymarker");
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout701]
    });
    query302.destroy()
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout703,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout702,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout3012,
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
    
    command_encoder701.popDebugGroup()
    
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
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
    
    const render_pipeline3014 = device30.createRenderPipeline({
        label: "render_pipeline3014",
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
    command_encoder701.pushDebugGroup("mygroupmarker")
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_pipeline3015 = device30.createRenderPipeline({
        label: "render_pipeline3015",
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
    const render_pipeline3016 = device30.createRenderPipeline({
        label: "render_pipeline3016",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query300.destroy()
    device30.queue.writeTexture({ texture: texture307 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    const array12 = new Float32Array([-0.75, 0.5, 0.75, 0.0, 0.25, -1.0, -1.0, 1.0, -0.75, 1.0, -0.25, -0.25, 1.0, 0.75, -1.0, 0.25, 0.5, -1.0, 0.5, -1.0, 1.0, 0.25, -0.5, 0.75, 0.25, -0.5, -0.5, 0.75, -1.0, -0.75, -0.75, 0.75, -0.25, 1.0, 0.25, -0.75, -0.75, 0.25, -1.0, 0.25, 0.25, -0.25, 0.25, 0.0, 0.5, 0.25, 0.25, -0.75, 0.0, 0.0, 1.0, 0.75, 1.0, 0.5, 0.0, -0.5, -0.25, -0.25, 0.75, 0.25, -0.25, 1.0, -0.25, -0.5, 0.25, 0.0, 0.25, 0.0, -0.5, 0.5, 0.0, 0.0, -0.5, 1.0, 0.75, -0.75, 1.0, 0.25, 0.25, -1.0, -0.75, 0.25, -0.5, 0.25, -0.75, 0.75, 0.5, 0.5, 0.0, -0.5, 0.25, 0.0, 0.75, 0.0, 0.5, 0.0, 0.0, -0.75, -0.75, 0.25, ]);
    compute_pass_encoder3000.insertDebugMarker("marker")
    query300.destroy()
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture307 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pipeline3017 = device30.createRenderPipeline({
        label: "render_pipeline3017",
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
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    texture700.destroy();
    
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout305,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout301]
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline705 = device70.createComputePipeline({
        label: "compute_pipeline705",
        layout: pipeline_layout701,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    command_encoder600.insertDebugMarker("mymarker");
    query301.destroy()
    device30.queue.writeTexture({ texture: texture307 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline706 = device70.createComputePipeline({
        label: "compute_pipeline706",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    render_bundle_encoder702.setPipeline(render_pipeline702);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device30.queue.writeTexture({ texture: texture307 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer307.destroy()
    const compute_pipeline707 = device70.createComputePipeline({
        label: "compute_pipeline707",
        layout: pipeline_layout702,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    render_bundle_encoder702.pushDebugGroup("group_marker");
    
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
    
    
    command_encoder601.pushDebugGroup("mygroupmarker")
    const render_pipeline3018 = device30.createRenderPipeline({
        label: "render_pipeline3018",
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
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const compute_pipeline708 = device70.createComputePipeline({
        label: "compute_pipeline708",
        layout: pipeline_layout702,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline709 = device70.createComputePipeline({
        label: "compute_pipeline709",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    const compute_pipeline7010 = device70.createComputePipeline({
        label: "compute_pipeline7010",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline702.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer701,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer702,
                },
            },
        ],
    });

    render_bundle_encoder702.setBindGroup(0, bind_group700);
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout305,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout305,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout303]
    });
    const texture_view3060 = texture306.createView({ label: "texture_view3060" });
    
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    
    render_bundle_encoder700.setPipeline(render_pipeline700);
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout305,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline7011 = device70.createComputePipeline({
        label: "compute_pipeline7011",
        layout: pipeline_layout701,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture307 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder3040.setPipeline(compute_pipeline3012);
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
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7012 = device70.createComputePipeline({
        label: "compute_pipeline7012",
        layout: pipeline_layout703,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout604 = device60.createBindGroupLayout({ 
        label: "bind_group_layout604",
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
    device30.queue.writeTexture({ texture: texture307 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline7013 = device70.createComputePipeline({
        label: "compute_pipeline7013",
        layout: pipeline_layout701,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    command_encoder701.popDebugGroup()
    buffer600.destroy()
    compute_pass_encoder6000.setPipeline(compute_pipeline602);
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
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline3012.getBindGroupLayout(0),
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

    compute_pass_encoder3040.setBindGroup(0, bind_group302);
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
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
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group303);
    const command_buffer701 = command_encoder701.finish();
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3015, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3015, 0);
    compute_pass_encoder3040.dispatchWorkgroups(100);
    compute_pass_encoder3040.end();
    const command_buffer304 = command_encoder304.finish();
    command_encoder601.popDebugGroup()
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder3010.end();
    command_encoder301.popDebugGroup()
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group304);
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
        layout: compute_pipeline602.getBindGroupLayout(0),
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

    compute_pass_encoder6000.setBindGroup(0, bind_group600);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer603, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer603, 0);
    const command_buffer601 = command_encoder601.finish();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder6000.end();
    command_encoder600.popDebugGroup()
    compute_pass_encoder3000.end();
    const command_buffer301 = command_encoder301.finish();
    device30.queue.submit([command_buffer301, command_buffer304, ]);
    const command_buffer600 = command_encoder600.finish();
    const command_buffer300 = command_encoder300.finish();
    device60.queue.submit([command_buffer600, ]);
    device30.queue.submit([command_buffer300, ]);
}