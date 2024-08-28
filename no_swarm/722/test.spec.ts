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
        powerPreference: undefined
    });
    
    
    const array0 = new Float32Array([0.0, 1.0, -0.5, 1.0, 1.0, -0.5, 0.0, -0.75, -1.0, 0.25, -1.0, 0.75, -0.5, -0.75, -0.5, -0.75, -0.5, -0.75, 0.5, -0.25, -0.25, -0.5, 0.25, 1.0, 0.0, -0.75, 0.25, 0.75, 0.75, -0.75, 0.25, -0.75, -0.25, 0.0, 0.0, -0.25, -0.25, -0.25, 0.75, 0.25, 0.0, -1.0, -0.5, 0.75, -0.75, 1.0, -0.5, -1.0, -1.0, -1.0, -1.0, 1.0, 0.0, 0.0, -0.25, -1.0, -0.75, -1.0, 0.0, -0.5, -0.25, -0.75, 0.25, 0.0, -0.75, 0.5, -0.25, 0.5, -0.25, 0.0, -1.0, -1.0, 0.0, 0.5, -0.5, 1.0, -1.0, 1.0, -0.75, 0.25, -0.75, 0.0, -1.0, 0.0, 0.0, -0.25, 0.0, 0.25, 0.0, -0.75, -0.5, -0.25, 0.0, 0.75, 0.25, 0.0, 0.75, 0.75, -0.25, -0.25, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array1 = new Float32Array([-0.75, 0.25, 0.75, 0.5, 0.5, -0.25, 0.5, -0.5, 0.25, -0.5, 0.0, 0.0, -0.5, -0.5, -0.5, 1.0, 0.5, -1.0, -1.0, -1.0, 0.5, 0.5, 1.0, 0.25, 0.75, 0.75, -0.75, -0.25, -0.5, -0.75, 0.5, -0.75, -0.5, 0.25, -1.0, -0.25, -0.5, -1.0, -1.0, -0.75, -0.5, -0.75, -0.25, 0.5, 1.0, -0.25, -1.0, -0.75, 0.0, -1.0, 0.25, -1.0, 0.5, -0.5, 0.5, 0.75, -0.5, 1.0, -0.75, -1.0, -0.25, -0.75, 1.0, 0.0, -0.75, -0.25, -0.25, 0.0, -0.25, -0.75, -0.25, -1.0, 1.0, 1.0, 1.0, 0.75, 0.75, 0.75, 0.75, 0.0, 0.75, -0.5, 0.5, 1.0, -1.0, -0.5, 0.75, 0.0, -1.0, -0.25, 0.25, -0.75, 0.0, -0.25, 0.75, 1.0, 0.25, 0.25, -0.75, -0.5, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    const array2 = new Float32Array([-1.0, 0.75, -0.25, 0.75, 0.25, -0.75, -0.5, -0.5, -0.5, -0.25, 0.5, 0.75, 0.75, -1.0, -1.0, 0.0, 0.5, 0.75, -0.25, 0.25, 0.0, -1.0, -1.0, 0.75, 0.5, 0.25, -0.75, -0.5, 0.0, -0.5, 0.25, -0.75, -0.25, 0.25, 1.0, 0.5, 0.5, 0.75, 0.75, 0.75, 0.75, 0.5, 1.0, 0.0, 0.5, 0.5, 0.25, 1.0, -0.25, 0.0, 0.0, -0.5, 0.5, 0.25, -0.5, -0.75, 0.75, 0.0, 0.25, -0.75, -1.0, 1.0, 0.25, 1.0, 0.75, -0.25, 0.25, 0.75, -0.75, -0.75, -1.0, 0.5, -0.25, -0.75, -0.5, -0.25, 0.75, 0.0, 1.0, 0.25, 0.5, -0.75, 0.75, -0.25, 0.25, 1.0, 0.5, 1.0, 1.0, -0.5, 0.5, 1.0, -0.75, 0.0, -0.5, 0.0, -0.25, 0.0, -1.0, -1.0, ]);
    texture000.destroy();
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
    const array3 = new Float32Array([-0.75, -0.5, 0.75, 0.75, 0.75, 0.75, -0.5, -0.5, 0.0, 0.5, -0.5, -1.0, 0.75, -1.0, 0.25, 1.0, -1.0, 0.25, 0.75, -0.75, -0.75, 0.75, 0.0, 0.0, -1.0, -0.75, 0.25, 1.0, 0.0, 0.25, 0.5, 0.0, -0.5, -0.25, 1.0, -0.75, 1.0, -0.25, -0.25, -0.25, -0.25, -1.0, -1.0, 0.75, -0.5, 0.75, 0.75, 0.5, -0.75, 1.0, 0.25, 0.0, -1.0, -1.0, 0.5, 0.5, 1.0, -0.25, 1.0, 0.25, 1.0, -0.75, 0.5, 0.0, 0.75, -1.0, 0.25, 0.5, -0.75, 0.5, 0.75, -0.5, 0.75, 1.0, 0.75, 0.0, 0.0, -1.0, -1.0, 0.25, 0.5, -0.25, 0.25, 0.5, -0.5, 0.5, -0.75, -0.75, -0.25, 1.0, 0.75, -0.5, -1.0, -1.0, -0.5, -0.75, -1.0, -0.5, 0.0, 0.25, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device00.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    device20.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const array4 = new Float32Array([1.0, -0.75, 0.25, -0.25, -1.0, 0.75, 0.25, -0.75, -0.5, 0.0, 1.0, 0.0, -1.0, -1.0, -0.5, 0.75, 0.5, -1.0, -0.5, 0.0, 0.75, 0.25, -0.75, 0.0, -0.75, -0.75, -0.75, 0.75, 0.25, -0.5, -0.5, -0.25, -0.75, -0.5, -0.25, -0.25, 0.0, -0.75, -0.25, 0.75, -0.5, 0.0, 0.0, 0.25, 0.75, 1.0, -0.5, -0.25, 0.75, 0.75, 0.25, -0.25, -0.25, -0.25, -0.75, 0.25, -0.5, -0.75, 0.5, -0.25, -0.75, -1.0, 0.5, -0.25, 0.25, 1.0, 1.0, 1.0, -0.5, -0.25, -0.75, 1.0, 0.25, 0.0, 0.0, -1.0, -0.5, 0.25, 0.25, -0.5, 0.5, 1.0, -1.0, 0.25, 0.25, -0.5, 0.5, 0.0, 0.0, 0.25, 0.25, -0.25, -0.25, -0.5, 1.0, 0.25, -0.75, -0.5, -0.5, -1.0, ]);
    query300.destroy()
    const command_buffer400 = command_encoder400.finish();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    buffer400.destroy()
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array5 = new Float32Array([-0.75, -1.0, 0.5, -1.0, 0.25, -0.5, -0.5, -1.0, 0.75, -0.75, -1.0, 0.75, -0.25, -0.25, -0.75, -0.5, -1.0, -0.75, -0.75, 0.0, -1.0, 0.25, -0.25, -1.0, 0.5, 0.25, -0.5, 0.75, 0.75, 0.25, -0.5, 0.75, 0.25, -0.25, 0.5, 0.75, -0.5, -0.75, 0.75, 0.25, -0.75, 1.0, 1.0, -1.0, -0.5, 0.25, 0.0, 0.75, -0.5, -1.0, 0.75, -0.5, 1.0, 0.0, 1.0, 0.0, -0.25, -0.25, -0.5, 0.25, -0.25, -0.5, -0.5, 0.5, 0.5, -0.25, -0.75, -0.75, 0.75, 0.75, -0.25, 0.75, -0.75, 1.0, 0.75, -1.0, -0.75, 0.5, 1.0, -0.5, -0.5, 0.25, -0.25, -0.25, 0.5, 0.25, -1.0, 0.0, 1.0, 0.5, 1.0, -0.5, 1.0, -1.0, 0.5, 0.75, 0.5, -0.25, -0.25, -1.0, ]);
    const query301 = device30.createQuerySet({
        label: "query301",
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
    
    const array6 = new Float32Array([1.0, -0.75, 0.0, -0.25, 0.0, -0.75, 0.0, 0.5, -0.5, 0.5, -0.5, 0.75, -1.0, 0.0, 0.0, 0.75, -0.25, 0.5, 0.75, 0.25, 0.0, -1.0, -0.25, -0.5, -1.0, 0.25, -0.75, -1.0, -1.0, 1.0, -1.0, -0.75, 0.25, -0.25, 0.5, -0.25, -0.25, -0.75, 0.0, 0.75, -0.5, 0.0, 1.0, -1.0, -0.25, -1.0, -0.5, 0.25, 0.0, 0.25, 1.0, 0.75, 0.0, 0.25, -0.75, -0.25, -0.25, 0.5, 0.5, -0.5, 0.5, 1.0, -0.25, 0.5, -0.25, -1.0, -0.75, 0.25, -0.75, 1.0, -0.75, -1.0, -0.5, -0.75, -0.25, 1.0, -0.25, -0.5, 0.0, 0.25, 0.25, 0.75, -0.25, 0.75, -0.5, 0.25, -0.25, 0.25, -0.25, 0.5, 0.0, 0.5, 0.5, 0.0, -0.5, 0.25, 0.5, -0.5, 0.5, -0.5, ]);
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    texture301.destroy();
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
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder302.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    const command_buffer100 = command_encoder100.finish();
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16sint",
        dimension: "2d"
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
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
    buffer401.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    command_encoder101.insertDebugMarker("mymarker");
    
    
    
    
    const array7 = new Float32Array([0.5, 0.5, 0.0, 0.75, -0.75, -0.5, 0.25, -0.5, -1.0, -0.25, -0.5, -0.5, -0.5, 0.5, 0.5, 0.5, -0.25, -1.0, 0.75, -0.25, 0.5, -1.0, -0.5, -0.5, -1.0, -0.25, -0.75, 0.5, -1.0, 0.0, 1.0, 0.75, 0.5, 1.0, -0.75, -0.5, -0.25, -0.5, 0.0, 0.0, -0.5, 0.0, -0.25, -1.0, -0.5, -0.25, -0.75, -0.5, 0.0, -0.5, -1.0, 1.0, -0.75, 0.75, -0.25, 0.0, -0.25, 1.0, 0.25, -0.25, 1.0, 0.25, 0.0, -0.5, 0.25, 1.0, -0.75, 0.5, 0.0, -0.5, 1.0, 0.75, -0.5, 0.75, -0.75, -0.5, -1.0, -1.0, -0.75, -0.75, 0.5, -1.0, -0.75, -0.75, -1.0, 0.75, 0.75, -1.0, -0.75, 1.0, 0.0, 0.75, -0.5, 0.25, -0.5, -0.25, -0.5, 0.0, -0.5, 0.25, ]);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    texture302.destroy();
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder302.setPipeline(render_pipeline300);
    device50.pushErrorScope("validation");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
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

    render_bundle_encoder302.setBindGroup(0, bind_group300);
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
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
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
    buffer301.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.destroy();
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    const array8 = new Float32Array([1.0, -1.0, 0.25, 1.0, 0.75, 1.0, -0.5, -1.0, -0.5, 0.75, -1.0, 0.75, 0.0, -0.75, -0.5, 0.25, -1.0, 1.0, 0.0, 0.5, 0.5, 0.25, 0.75, -0.75, 0.25, 1.0, 0.75, 0.25, 1.0, 0.75, -0.5, -0.5, -0.75, 0.25, 0.0, -0.5, -0.25, -0.25, 0.25, -0.5, -0.5, 1.0, 0.0, -0.5, 0.5, 0.25, 0.5, 0.25, 0.75, 0.0, -0.25, -0.5, 0.25, -0.25, 1.0, -1.0, 0.0, -0.5, 0.75, 0.25, 0.0, 0.0, 0.0, -1.0, -0.25, -0.25, 0.25, -1.0, 0.75, -0.5, -0.5, 1.0, 0.25, 0.5, 0.25, 0.75, 0.25, 0.0, 0.75, 0.5, -0.5, -0.75, -0.5, -0.25, 0.25, 0.75, 1.0, 0.75, 0.75, -1.0, -0.25, 0.25, -0.75, 0.0, 0.5, 0.5, 0.0, 1.0, 0.5, 1.0, ]);
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    texture100.destroy();
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
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
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("internal");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture400.destroy();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.submit([command_buffer400, ]);
    const command_buffer104 = command_encoder104.finish();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_buffer105 = command_encoder105.finish();
    command_encoder103.insertDebugMarker("mymarker");
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    command_encoder103.pushDebugGroup("mygroupmarker")
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.popDebugGroup();
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.insertDebugMarker("marker");
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
    render_pass_encoder1030.beginOcclusionQuery(0)
    
    render_pass_encoder1060.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    
    
    
    device50.destroy();
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    device10.queue.submit([command_buffer100, ]);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    render_pass_encoder1030.setStencilReference(1);
    
    
    render_pass_encoder1030.executeBundles([])
    
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1060.setPipeline(render_pipeline100);
    render_pass_encoder1060.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    render_pass_encoder1060.insertDebugMarker("marker");
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
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
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_pass_encoder1060.setBindGroup(0, bind_group101);
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
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
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const command_buffer401 = command_encoder401.finish();
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    render_pass_encoder1060.insertDebugMarker("marker");
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
    
    render_pass_encoder1060.setStencilReference(1);
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder1030.popDebugGroup();
    
    render_pass_encoder1060.beginOcclusionQuery(1)
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    texture101.destroy();
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder102.setPipeline(render_pipeline101);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const command_buffer700 = command_encoder700.finish();
    render_bundle_encoder100.popDebugGroup();
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
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
    
    const array9 = new Float32Array([0.0, 1.0, 0.25, 0.0, 0.75, 1.0, -1.0, 1.0, 0.5, -1.0, 0.25, 0.0, 0.5, -1.0, -0.25, -0.75, -0.5, 0.0, 1.0, 0.0, 0.75, 1.0, -1.0, 0.0, 0.25, 0.25, -0.75, 1.0, -0.25, 1.0, 0.75, -0.5, -0.25, -1.0, 1.0, -1.0, -0.25, 1.0, -1.0, -0.5, -0.25, -0.5, -1.0, 0.25, 0.0, 0.75, -1.0, 0.0, 1.0, -0.5, 0.5, 1.0, 0.75, 1.0, 0.5, -0.25, -0.5, -0.5, 0.5, -1.0, 0.25, 1.0, -0.75, -0.25, 0.25, 0.25, 0.75, 0.5, 0.75, -0.25, 0.0, -0.75, -1.0, -0.25, 0.5, 0.25, 0.25, -0.25, -1.0, -0.25, -0.75, 0.25, -0.5, 0.0, -0.25, 0.25, -0.25, -1.0, -1.0, -0.5, 0.0, 0.75, 0.25, 0.75, -1.0, -0.75, 0.25, 0.25, 0.25, 0.5, ]);
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    command_encoder701.insertDebugMarker("mymarker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer103.destroy()
    render_pass_encoder1060.insertDebugMarker("marker");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    texture103.destroy();
    texture102.destroy();
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    compute_pass_encoder1010.popDebugGroup()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout403]
    });
    
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    buffer403.destroy()
    command_encoder701.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1060.pushDebugGroup("group_marker");
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1060.setStencilReference(1);
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    render_pass_encoder1030.popDebugGroup();
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device40.queue.submit([command_buffer401, ]);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    buffer100.destroy()
    
    render_bundle_encoder401.setPipeline(render_pipeline404);
    
    
    
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1060.setStencilReference(1);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    buffer102.destroy()
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group102);
    texture401.destroy();
    render_pass_encoder1030.endOcclusionQuery()
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    compute_pass_encoder1020.insertDebugMarker("marker")
    command_encoder107.pushDebugGroup("mygroupmarker")
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    device40.pushErrorScope("out-of-memory");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
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
    render_pass_encoder1060.setStencilReference(1);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device70.queue.submit([command_buffer700, ]);
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
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
    texture700.destroy();
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
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
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    
    device70.pushErrorScope("out-of-memory");
    
    
    
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout404]
    });
    render_pass_encoder1030.setPipeline(render_pipeline102);
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder1060.insertDebugMarker("marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    render_bundle_encoder400.setPipeline(render_pipeline407);
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer106, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer106, 0);
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1070.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
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
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer101.destroy()
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    buffer105.destroy()
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    render_pass_encoder1070.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    device40.queue.writeBuffer(buffer405, 0, array7, 0, array7.length);
    render_pass_encoder1070.beginOcclusionQuery(2)
    
    const render_pipeline4010 = device40.createRenderPipeline({
        label: "render_pipeline4010",
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
    device40.pushErrorScope("validation");
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
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
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline407.getBindGroupLayout(0),
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

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    device40.queue.writeBuffer(buffer405, 0, array7, 0, array7.length);
    compute_pass_encoder7020.setPipeline(compute_pipeline700);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder1030.beginOcclusionQuery(3)
    buffer405.destroy()
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    render_pass_encoder1030.popDebugGroup();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    buffer402.destroy()
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
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
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.popDebugGroup();
    device10.pushErrorScope("validation");
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module703,
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
            module: shader_module703,
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
    
    render_pass_encoder1060.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1020.popDebugGroup()
    texture402.destroy();
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer106, 0, array1, 0, array1.length);
    render_bundle_encoder102.popDebugGroup();
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder7020.insertDebugMarker("marker")
    render_pass_encoder1060.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
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
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    texture800.destroy();
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder7010.setPipeline(compute_pipeline700);
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.popDebugGroup();
    
    render_pass_encoder1070.setPipeline(render_pipeline102);
    device60.queue.submit([command_buffer601, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1060.endOcclusionQuery()
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    render_pass_encoder1070.setBindGroup(0, bind_group103);
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group104);
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    render_pass_encoder1070.endOcclusionQuery()
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder7010.popDebugGroup()
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group105);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder1010.end();
    const command_buffer101 = command_encoder101.finish();
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
        layout: compute_pipeline700.getBindGroupLayout(0),
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

    compute_pass_encoder7020.setBindGroup(0, bind_group700);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1030.endOcclusionQuery()
    compute_pass_encoder1020.end();
    compute_pass_encoder7020.dispatchWorkgroups(100);
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer703,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer704,
                },
            },
        ],
    });

    compute_pass_encoder7010.setBindGroup(0, bind_group701);
    compute_pass_encoder7010.dispatchWorkgroups(100);
    const command_buffer102 = command_encoder102.finish();
    compute_pass_encoder7010.end();
    compute_pass_encoder7020.end();
    const command_buffer702 = command_encoder702.finish();
    device10.queue.submit([command_buffer102, ]);
    command_encoder701.popDebugGroup()
    const command_buffer701 = command_encoder701.finish();
}