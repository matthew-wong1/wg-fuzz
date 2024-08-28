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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array0 = new Float32Array([-0.5, 1.0, -0.75, -1.0, 0.5, -1.0, 0.0, 0.25, 0.75, 1.0, 0.0, -0.25, -1.0, -0.75, 0.5, 0.25, 0.75, 0.75, -0.75, 0.5, 0.0, 0.25, -0.5, -0.5, 1.0, 0.5, 0.0, -0.75, 0.75, 0.25, 0.0, 1.0, -1.0, 0.5, 0.5, 0.5, 0.0, 0.25, -0.75, 0.0, 0.0, -0.75, 0.25, 0.0, -0.25, -0.25, 1.0, 0.5, -0.25, -0.75, 0.0, -0.75, -0.5, 0.5, 0.5, 0.25, 0.75, -0.5, 1.0, 0.5, -0.25, -0.25, -0.75, 1.0, 0.75, 0.25, -0.75, -0.5, -0.25, -0.75, -1.0, 0.0, -0.5, 0.25, -0.5, 0.75, -0.5, 0.5, 0.25, 0.5, -0.5, 0.75, -0.5, 0.25, -0.5, 0.75, -0.5, 0.75, -0.25, 0.0, 0.0, 1.0, 0.25, -0.75, 0.25, 0.5, 0.75, 0.5, 0.0, 0.5, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const array1 = new Float32Array([0.75, -0.25, -0.5, -0.75, -0.75, 0.75, 0.5, 0.0, 0.75, -0.75, 0.5, 0.5, 0.25, 0.5, 0.75, 0.75, -1.0, 1.0, 0.75, 0.25, -0.25, -0.75, 0.75, -0.75, -0.5, 1.0, -0.75, 0.0, -1.0, 0.75, 0.5, -1.0, 1.0, -1.0, 0.25, -0.25, 0.5, 0.75, -0.25, 0.5, 0.75, 0.75, 0.0, 1.0, 0.75, -0.75, -0.75, -1.0, 1.0, 0.25, -0.25, 0.75, -0.25, 0.75, -0.5, 0.25, -1.0, -0.5, -1.0, -0.25, -0.25, 0.75, 1.0, -0.75, 1.0, -0.5, -0.25, -0.5, 0.0, 0.5, -0.5, -0.5, -0.25, -0.5, -0.25, 0.75, -0.75, -0.5, 0.75, 1.0, 0.25, 1.0, 0.5, 0.5, -0.25, 1.0, 0.75, 0.5, 0.75, -0.75, -0.75, -1.0, 0.25, 1.0, -0.25, 0.75, 0.25, 0.5, -1.0, -0.75, ]);
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
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
    device10.destroy();
    
    
    const array2 = new Float32Array([0.25, 0.5, 0.75, -0.75, 0.0, 0.25, 0.5, 0.75, 0.0, 0.5, 0.0, 0.5, -0.5, -1.0, -0.75, 0.25, 0.0, -0.25, -0.5, 0.0, 0.0, 0.5, -0.5, -0.25, -0.5, 0.25, -0.75, 0.0, 0.25, 1.0, 1.0, -1.0, 0.25, 0.75, -0.75, -0.75, 0.25, -0.75, 0.0, -0.25, -0.25, 0.75, -0.25, 0.25, -0.5, 0.5, 0.5, -1.0, 0.75, -0.5, -1.0, 0.75, 0.25, 0.75, 1.0, -0.25, -1.0, -0.5, -1.0, 1.0, 0.0, 0.0, -1.0, -1.0, -1.0, 0.5, 0.5, -1.0, -0.25, -0.5, 0.25, 0.0, -0.25, -0.25, 0.25, -1.0, -0.75, 0.5, -0.75, -1.0, -0.5, -0.5, -0.75, 1.0, -0.75, -0.75, -0.25, 0.0, 1.0, 0.75, -0.5, -0.25, -1.0, 1.0, 0.25, -0.5, 0.25, -0.25, -0.5, -1.0, ]);
    
    
    
    
    
    const array3 = new Float32Array([-0.25, -0.5, 0.0, -0.5, 0.75, 0.0, -0.25, 0.5, 0.75, -0.5, 0.5, -0.75, -0.5, -0.75, 0.25, -0.25, 0.5, 0.0, -0.25, 1.0, -0.75, 0.75, -0.25, -0.25, 0.25, 0.5, 0.5, -1.0, -0.25, -0.5, 0.25, -0.5, 1.0, 0.75, 1.0, 0.5, 0.0, 0.0, 0.5, 0.5, 1.0, 0.5, 0.0, -0.5, 0.0, 0.75, -0.5, 0.75, -0.5, -0.25, 1.0, -0.25, 0.5, 0.75, 0.25, -0.25, 0.5, 0.0, -1.0, -0.75, -1.0, -1.0, 0.75, -0.5, -0.75, 0.5, 0.25, 0.5, 1.0, -1.0, 0.0, 1.0, 1.0, 1.0, 0.0, -0.5, 0.0, -0.5, -0.75, 1.0, -0.5, 1.0, 0.25, 0.0, -0.25, 0.0, -0.5, 0.5, -0.5, 1.0, -1.0, -0.25, -0.25, -0.75, 1.0, -0.75, 0.5, -0.5, -0.75, -0.25, ]);
    
    const array4 = new Float32Array([-1.0, 0.0, -1.0, -0.75, -1.0, 0.25, 0.5, 0.25, 0.25, 0.0, -1.0, -1.0, 0.5, 1.0, 0.75, -1.0, 0.75, -0.5, 0.75, -0.25, -0.75, 0.5, -0.25, 0.5, 1.0, 1.0, 0.25, 0.75, 0.0, 1.0, -0.75, 0.0, 1.0, 0.25, 1.0, 0.0, 1.0, 0.75, -0.5, 0.0, -0.75, 0.25, -0.75, -0.75, -0.25, 0.0, 0.75, 1.0, -0.25, -0.25, -0.25, 1.0, -1.0, 0.75, 0.75, 0.25, -0.5, -0.75, 0.75, 0.5, -0.75, -0.75, -0.5, 0.5, -0.75, 0.5, 0.75, 0.5, 0.0, 0.75, -0.5, 0.5, -0.75, 0.0, -0.5, 1.0, -0.5, 0.0, -0.5, -0.25, 0.0, -0.5, 0.5, 0.25, 0.5, 1.0, 0.25, 0.5, -0.25, 0.5, 0.75, -1.0, 0.0, 0.75, 0.75, -0.25, -0.5, 0.25, -0.75, 0.25, ]);
    
    
    
    const array5 = new Float32Array([-0.25, 0.25, -0.75, 0.25, 1.0, 0.25, 0.5, -0.25, -0.5, 0.75, -1.0, -1.0, -0.5, -0.5, 0.25, 0.75, 0.0, 0.5, -0.75, -0.25, -1.0, -0.75, 0.25, 0.0, -0.5, -0.5, -0.25, 0.75, 0.25, -0.5, -0.5, 0.25, 1.0, 0.0, 0.75, -0.25, 0.0, -1.0, -0.5, 0.75, -0.75, -0.25, -1.0, -0.5, 1.0, -0.75, 0.0, 0.25, 0.75, -1.0, -0.25, -0.75, -0.25, -0.25, 0.0, -1.0, 0.0, 1.0, 0.25, 0.0, -0.75, 0.75, 0.0, 0.5, 0.0, 0.0, 0.0, -0.25, 1.0, -0.75, -0.25, -0.5, -1.0, 1.0, -0.75, -0.5, -0.5, 0.5, 1.0, -0.75, -1.0, -1.0, 0.75, 0.0, -0.5, -0.25, 0.75, 0.75, -0.5, 0.75, 0.25, -0.25, 0.5, 1.0, 0.5, -1.0, 0.25, 0.5, -0.75, 0.0, ]);
    
    const array6 = new Float32Array([1.0, 0.0, 0.75, 0.5, -0.5, 1.0, 0.5, -0.75, 1.0, 0.25, -1.0, 0.5, -0.5, 1.0, -0.25, -0.25, 0.75, -0.75, -0.75, 0.0, 0.0, -0.75, 0.5, 1.0, -0.25, 0.75, 0.0, 0.0, -1.0, -0.75, 0.0, -1.0, -0.75, -0.75, 0.75, 0.5, 0.5, -1.0, -0.5, 1.0, 0.25, -0.5, -0.75, -0.25, 0.5, -0.25, 0.75, 0.75, -0.25, -1.0, -0.75, -0.75, -0.25, -1.0, -1.0, -1.0, -0.75, 0.25, 0.0, 0.75, 1.0, -1.0, 0.25, 0.0, 0.0, -0.25, -1.0, 1.0, -0.75, 0.5, 0.0, 0.25, -0.25, -0.25, -0.5, -0.5, -0.5, -0.25, -0.75, -0.5, -0.75, 0.75, -0.5, 1.0, -0.75, 1.0, -1.0, -0.25, -0.75, 0.25, 0.5, 0.25, 0.0, 0.0, 0.0, 0.75, -0.75, 0.5, -0.5, -0.75, ]);
    const array7 = new Float32Array([0.75, -0.75, -0.75, 0.75, -0.5, -0.75, 0.75, -0.5, 0.0, 0.0, -0.5, -1.0, -1.0, 1.0, 0.75, -1.0, 0.75, -0.25, -0.25, -1.0, 0.75, 0.5, -1.0, -0.75, 0.75, 0.75, 0.75, 0.5, 0.75, 1.0, -1.0, 0.25, 0.25, 0.25, 0.25, -0.25, 0.75, -0.5, 1.0, 1.0, 0.75, 0.5, 0.5, -0.5, 1.0, 0.0, 0.0, 1.0, 0.5, -1.0, 1.0, 0.25, 0.75, 0.5, 0.5, -1.0, -0.5, 0.75, 0.75, 0.5, 0.75, 0.75, -0.75, 0.25, -1.0, -0.5, 0.75, 1.0, -0.75, 1.0, 0.5, -0.75, 0.25, 1.0, 0.0, -0.75, -0.75, 0.0, 0.25, 0.75, 0.0, 1.0, 0.0, 0.75, 0.5, 1.0, -0.25, 0.25, 0.0, 0.0, -0.75, 0.75, 0.5, 0.75, 0.25, -1.0, 0.5, -0.25, -1.0, 0.25, ]);
    
    const array8 = new Float32Array([0.0, 0.25, 0.5, 0.25, 0.0, -0.75, -1.0, -0.25, -0.5, 0.75, 0.0, -0.25, -0.75, 1.0, 0.25, -0.5, -0.75, 1.0, 0.5, 0.0, 1.0, -0.25, -1.0, -0.5, -0.75, 0.5, -0.75, -0.75, -1.0, 0.0, 0.5, -0.5, -1.0, -1.0, -0.5, 1.0, -1.0, -0.5, 1.0, 1.0, 0.5, 0.5, -0.5, 1.0, -1.0, 1.0, -0.5, -0.5, 1.0, 0.25, -0.75, 0.25, -1.0, -0.5, -0.75, 0.25, 0.5, -0.75, -0.5, 0.25, -1.0, -1.0, 0.25, 0.25, 1.0, 1.0, -0.5, -0.5, -0.25, 0.5, -0.75, -0.5, -0.5, 0.25, -0.5, -0.5, 1.0, 1.0, -0.25, 1.0, 0.75, 0.5, -1.0, 0.25, -0.25, 0.0, -0.75, 0.75, 0.0, 0.25, -0.75, 0.0, 0.0, 0.0, 0.5, 0.75, -1.0, -0.25, 0.0, -0.5, ]);
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    texture200.destroy();
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    device20.destroy();
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_buffer300 = command_encoder300.finish();
    const array9 = new Float32Array([-1.0, -0.75, 1.0, -0.5, -0.5, -0.5, -1.0, 0.75, -0.5, 0.25, -0.25, -1.0, -0.5, 0.5, 1.0, -0.25, -1.0, -1.0, 0.25, 0.25, 0.0, 0.75, -0.5, -0.25, 0.0, 0.0, 0.5, 0.0, 0.0, 0.5, 1.0, 1.0, 0.75, -0.75, 0.0, 0.5, 1.0, 0.5, -0.75, -1.0, -0.75, 0.5, 0.5, -0.25, 0.0, 1.0, -0.5, 0.5, 0.75, -1.0, 1.0, 0.0, 0.5, 1.0, -0.5, -0.5, 0.5, 0.0, 0.75, -0.5, 1.0, -0.75, -0.5, 0.25, -0.75, -1.0, 0.5, -0.25, 0.5, -0.25, 1.0, -0.25, -1.0, -0.75, 0.25, 0.75, 0.5, 0.75, -1.0, -1.0, 1.0, 0.5, 0.0, 0.0, 0.25, 0.0, -0.5, -0.5, -1.0, -0.25, 0.0, -0.75, 1.0, -0.25, 0.0, -0.5, 1.0, -1.0, -1.0, -0.5, ]);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    render_bundle_encoder300.popDebugGroup();
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    buffer301.destroy()
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    query300.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder302.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query301.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const array10 = new Float32Array([1.0, -1.0, -1.0, -0.25, 0.0, -0.5, -0.25, -1.0, -0.75, 0.5, -1.0, 0.0, 1.0, -0.25, -1.0, -1.0, -0.75, 0.5, -0.25, 0.0, 0.0, -0.25, -1.0, 0.0, -0.25, -0.5, 0.75, 0.0, 0.25, 0.75, 1.0, 1.0, -1.0, 0.75, 0.75, 0.5, 0.5, 0.0, -0.25, -0.25, -1.0, 0.5, 1.0, 0.0, 1.0, 0.5, -1.0, 0.0, 0.5, 0.25, 0.5, -0.5, 0.0, 0.0, 1.0, 0.5, -0.75, 0.5, -0.75, 0.25, 1.0, -0.25, 0.5, 0.75, -0.25, -1.0, -1.0, -0.25, 0.75, -0.75, 0.0, 0.0, 1.0, -0.75, -0.5, -0.75, 1.0, -0.75, 0.25, -0.75, -1.0, 0.0, 0.5, -1.0, 1.0, 0.5, -1.0, -0.5, 0.0, 0.25, 1.0, 0.75, -1.0, 0.5, -0.75, -0.5, -0.5, -0.25, -0.75, 0.0, ]);
    
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture300.destroy();
    buffer302.destroy()
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer303, 0, array6, 0, array6.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer303, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
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
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer303, 0, array10, 0, array10.length);
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer303, 0, array5, 0, array5.length);
    render_bundle_encoder302.popDebugGroup();
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer303, 0, array9, 0, array9.length);
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device30.queue.writeBuffer(buffer303, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    buffer303.destroy()
    
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.destroy();
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture302.destroy();
    
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query300
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("out-of-memory");
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    render_bundle_encoder302.popDebugGroup();
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    render_bundle_encoder302.insertDebugMarker("marker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_bundle_encoder401.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const array11 = new Float32Array([-0.5, 1.0, 1.0, 0.25, -0.5, -0.25, 0.75, 0.0, 0.0, 0.25, 0.75, -0.25, 0.25, 0.5, 0.5, -1.0, 0.75, -0.25, -0.25, 0.0, 0.5, -0.75, -0.5, -1.0, 1.0, 0.75, 0.75, 0.25, 0.0, 0.75, 0.25, -1.0, 1.0, -0.5, 0.25, -0.75, -0.75, 0.75, 0.25, 0.5, -1.0, 0.5, 1.0, -0.75, -0.75, -0.5, 1.0, -0.5, -1.0, 0.25, -1.0, 0.0, 0.5, -1.0, -0.25, 0.5, -0.5, -0.75, 0.0, 0.25, 0.75, -0.75, -0.25, 0.0, 0.5, 1.0, 0.0, 0.75, -1.0, 1.0, 0.75, 0.25, -1.0, 0.75, 0.5, -1.0, 0.25, 1.0, 0.75, -0.75, -0.5, -0.25, 0.0, 0.25, -0.25, -1.0, 0.75, 0.5, -1.0, -0.25, 0.25, 0.5, -0.25, -0.75, -0.25, -0.25, -0.75, 0.25, 1.0, 0.5, ]);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device30.queue.writeTexture({ texture: texture301 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    render_pass_encoder3020.executeBundles([])
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer300, 0, array11, 0, array11.length);
    
    buffer300.destroy()
    device30.queue.writeTexture({ texture: texture303 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture303 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture303 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture303 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query301.destroy()
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture400.destroy();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_pass_encoder3010.insertDebugMarker("marker");
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const command_buffer600 = command_encoder600.finish();
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device70.pushErrorScope("internal");
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query400.destroy()
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
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
    device30.queue.writeTexture({ texture: texture303 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    buffer700.destroy()
    device40.pushErrorScope("validation");
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
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    command_encoder303.pushDebugGroup("mygroupmarker")
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeTexture({ texture: texture303 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device40.destroy();
    render_bundle_encoder300.popDebugGroup();
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    render_bundle_encoder302.setPipeline(render_pipeline300);
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device30.queue.writeTexture({ texture: texture303 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer700 = command_encoder700.finish();
    device30.queue.writeTexture({ texture: texture301 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    texture303.destroy();
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array12 = new Float32Array([1.0, -1.0, 1.0, 0.75, 0.75, -0.25, -0.25, 1.0, 0.5, 0.0, 0.75, -0.25, 0.0, -0.5, 0.0, -0.25, -0.5, -0.5, -0.75, -1.0, 0.5, 0.75, 0.0, 0.0, 0.5, 0.5, -0.25, -0.5, 0.25, 0.25, 0.0, 0.75, -1.0, -1.0, -0.5, 0.0, 0.0, -0.75, 0.75, -1.0, -0.25, -1.0, 1.0, -0.5, 0.0, -0.5, -0.75, 1.0, -0.75, 0.5, -0.75, -0.5, -0.25, -0.25, -0.25, 0.5, -0.25, -0.75, 0.25, -1.0, 0.25, -0.25, 0.0, -0.5, -0.25, 0.0, -0.5, 0.5, -1.0, 0.0, -0.25, 0.0, 0.5, 0.25, 0.75, 0.0, -0.75, -0.25, -0.75, -0.5, 0.0, 0.25, -0.75, -0.5, 0.5, 0.75, -0.5, 1.0, -0.75, 0.75, 0.0, -1.0, -1.0, 0.5, -0.25, 0.25, -0.75, 0.75, -0.25, -0.25, ]);
    render_bundle_encoder302.popDebugGroup();
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

    render_bundle_encoder302.setBindGroup(0, bind_group300);
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    render_pass_encoder3010.setPipeline(render_pipeline300);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.setStencilReference(1);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    query302.destroy()
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    buffer306.destroy()
    render_pass_encoder3010.insertDebugMarker("marker");
    query302.destroy()
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
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder3010.insertDebugMarker("marker");
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
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder701.insertDebugMarker("mymarker");
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.popDebugGroup();
    
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3013,
            },
        ],
        occlusionQuerySet: query300
    });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3040.setPipeline(render_pipeline301);
    render_pass_encoder3010.popDebugGroup();
    
    
    query600.destroy()
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture301 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
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
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group301);
    
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder3040.insertDebugMarker("marker");
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture301.destroy();
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    query301.destroy()
    query302.destroy()
    command_encoder701.pushDebugGroup("mygroupmarker")
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
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    
    
    
    
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_pass_encoder3010.popDebugGroup();
    command_encoder701.popDebugGroup()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder3020.setStencilReference(1);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    query600.destroy()
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder3020.setPipeline(render_pipeline301);
    
    
    render_pass_encoder3050.pushDebugGroup("group_marker");
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3040.setBindGroup(0, bind_group302);
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    device30.queue.submit([command_buffer300, ]);
    render_bundle_encoder600.insertDebugMarker("marker");
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group303);
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
    buffer3010.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    buffer307.destroy()
    render_pass_encoder3050.setPipeline(render_pipeline300);
    device60.pushErrorScope("internal");
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("validation");
    render_pass_encoder3020.setStencilReference(1);
    render_bundle_encoder302.insertDebugMarker("marker");
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
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
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder3020.insertDebugMarker("marker");
    
    render_pass_encoder3040.insertDebugMarker("marker");
    render_pass_encoder3040.pushDebugGroup("group_marker");
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    device60.queue.submit([command_buffer600, ]);
    
    buffer305.destroy()
    render_bundle_encoder600.setPipeline(render_pipeline601);
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    command_encoder702.resolveQuerySet(
        query700,
        0,
        32,
        buffer700,
        0
    )
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    
    const sampler308 = device30.createSampler( { label: "sampler308" } );
    render_bundle_encoder601.insertDebugMarker("marker");
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    command_encoder306.pushDebugGroup("mygroupmarker")
    
    const render_pass_encoder3060 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query303
    });
    buffer3012.destroy()
    buffer701.destroy()
    
    render_bundle_encoder601.setPipeline(render_pipeline600);
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder300.popDebugGroup();
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3050.insertDebugMarker("marker");
    
    command_encoder702.resolveQuerySet(
        query701,
        0,
        32,
        buffer701,
        0
    )
    compute_pass_encoder3030.insertDebugMarker("marker")
    compute_pass_encoder7010.setPipeline(compute_pipeline704);
    render_pass_encoder3060.setPipeline(render_pipeline300);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
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
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3060.setBindGroup(0, bind_group304);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3010.popDebugGroup();
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3016,
                },
            },
        ],
    });

    render_pass_encoder3050.setBindGroup(0, bind_group305);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer702 = command_encoder702.finish();
    compute_pass_encoder3030.setPipeline(compute_pipeline300);
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3018,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group306);
    device70.queue.submit([command_buffer700, ]);
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group307);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: compute_pipeline704.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer702,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer703,
                },
            },
        ],
    });

    compute_pass_encoder7010.setBindGroup(0, bind_group700);
    compute_pass_encoder7010.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer702, ]);
    compute_pass_encoder3030.end();
    compute_pass_encoder7010.end();
    const command_buffer701 = command_encoder701.finish();
    device70.queue.submit([command_buffer701, ]);
    command_encoder303.popDebugGroup()
    const command_buffer303 = command_encoder303.finish();
}