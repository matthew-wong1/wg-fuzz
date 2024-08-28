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
    
    
    const array0 = new Float32Array([-1.0, -0.75, -1.0, -0.25, 1.0, 0.0, 0.75, 0.75, -1.0, -1.0, -1.0, -0.75, -0.75, -1.0, 0.25, 1.0, -0.25, 0.5, 1.0, -1.0, 0.75, 0.75, -0.5, 0.0, -0.75, -0.5, -0.5, 0.5, 0.0, 1.0, 0.5, 0.25, -0.5, 0.75, 0.0, -0.5, -0.75, -0.75, 0.5, 1.0, 0.5, 0.25, -0.75, 1.0, 0.25, 0.0, 0.75, -0.25, 1.0, -0.75, 1.0, -0.25, 0.5, -0.5, 0.75, 0.5, 0.25, 0.5, -0.5, 0.75, 0.25, -1.0, 0.75, -0.5, -0.25, -1.0, 0.75, 1.0, 0.25, 0.0, 0.0, -0.25, -0.25, -0.25, 0.25, -0.25, -0.75, -0.25, 0.25, -1.0, 0.75, -0.75, -0.25, -1.0, 1.0, -0.5, 0.5, 0.25, -0.25, 0.75, 1.0, 0.75, -0.25, 0.5, 1.0, -1.0, 0.0, 1.0, 0.5, -0.25, ]);
    
    const array1 = new Float32Array([-0.75, 0.5, 0.25, -1.0, 0.25, -1.0, -1.0, -0.75, -1.0, 0.5, 0.25, -0.5, -0.5, 0.75, -0.75, -1.0, 0.0, 0.75, -0.75, -0.75, -0.25, -0.5, 0.75, 0.25, 0.75, 1.0, 0.0, 0.25, -0.75, -1.0, 0.5, -1.0, 0.0, 0.5, -0.25, 0.5, -0.25, 1.0, 0.5, 0.25, 1.0, 0.25, 0.25, 0.75, -0.75, -0.25, 1.0, 1.0, 0.75, 0.0, -0.75, 1.0, 0.5, -1.0, 0.25, -0.5, -0.75, 0.25, -1.0, 0.0, -1.0, 1.0, 1.0, 0.25, 0.5, 0.25, 0.25, 0.75, 1.0, 0.0, -0.5, 1.0, 0.25, 0.75, 1.0, 0.25, -0.5, -1.0, 1.0, -0.75, 0.0, -1.0, -0.25, 0.25, -1.0, 0.75, 0.75, -1.0, 1.0, -0.5, 1.0, 1.0, 0.75, 0.25, -0.75, 0.5, 0.75, 0.0, -0.25, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([0.25, 1.0, -0.75, -1.0, 0.5, 0.75, -0.5, 0.25, -0.5, 0.75, 0.0, 0.25, -0.25, -0.75, -1.0, 0.75, -0.75, -0.75, -0.5, 1.0, 0.25, -1.0, -0.5, -0.25, 0.75, 0.25, -1.0, 1.0, 0.5, -1.0, 0.75, -1.0, 1.0, -0.25, -0.75, 0.0, 1.0, 0.0, 0.5, -0.75, 1.0, -0.75, -0.5, -0.75, -0.75, 0.75, -0.25, -0.75, -0.25, -0.25, 0.0, -0.25, 0.5, -0.75, 1.0, 0.5, 1.0, -0.5, 0.75, 0.5, -1.0, -0.5, -0.25, 1.0, 1.0, 0.5, -0.25, 1.0, 1.0, 1.0, 0.25, 0.25, -0.25, -1.0, -0.5, 0.5, -1.0, -0.25, -1.0, 1.0, -1.0, 0.5, -1.0, -0.75, -0.25, 0.0, 1.0, 0.5, 0.5, -0.75, 0.25, 0.75, -0.75, 1.0, 0.5, -0.25, 1.0, -0.25, -0.5, 0.5, ]);
    const array3 = new Float32Array([-0.5, -0.75, 0.25, 1.0, -1.0, 1.0, 0.0, -1.0, 0.25, -0.75, -0.5, -0.5, 0.25, 0.75, 0.75, -0.5, 1.0, 0.5, 0.25, 0.75, -1.0, 0.25, 0.0, 0.0, 0.75, 0.25, 0.25, -0.75, -0.5, 0.25, 0.75, 0.75, 1.0, -0.5, -0.75, -1.0, 1.0, 0.75, -1.0, -0.75, 0.25, -0.5, 0.5, 0.0, -1.0, -0.75, -0.25, 0.0, -0.25, 1.0, -0.75, 0.75, -0.5, -1.0, 0.0, 1.0, 0.0, -1.0, -0.75, 0.25, 0.0, 0.25, 0.75, 0.25, -0.5, -0.5, -0.75, -1.0, 0.5, 0.5, 1.0, -0.25, -1.0, 0.75, 0.25, -0.75, 0.25, -0.25, 0.75, 0.5, 0.25, -0.25, 0.5, -0.75, 0.75, -0.25, 0.5, 1.0, 0.75, 1.0, 0.25, 1.0, 0.75, 0.5, 1.0, -1.0, -1.0, 1.0, -0.5, 0.75, ]);
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    device00.destroy();
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array4 = new Float32Array([-0.25, 0.5, 0.0, 0.25, -0.25, -0.75, 0.25, 0.75, 1.0, -0.75, 0.5, -0.5, 0.25, -0.5, 1.0, -0.75, 0.75, 0.0, 0.75, -0.5, 0.0, 1.0, -0.25, 0.75, -0.5, -0.75, 0.75, -1.0, -0.5, 0.25, 0.75, -1.0, -0.25, 0.75, -0.5, -1.0, 0.5, -0.5, -0.75, -1.0, -0.5, 0.25, 0.5, 0.5, -0.5, 1.0, 0.25, 0.75, -0.75, 1.0, 0.25, 0.5, -0.25, -0.5, 0.75, -0.5, -1.0, -0.25, 1.0, 1.0, 0.5, 0.5, -0.25, 0.25, -1.0, 0.5, 0.75, 1.0, -1.0, 0.0, -0.5, -0.25, 0.25, -0.25, -0.75, -0.75, 0.25, 1.0, 0.25, 0.0, -0.25, -0.25, 1.0, 0.0, 0.0, 0.75, -1.0, 0.5, -1.0, -0.5, 0.25, -0.25, -1.0, -0.75, 0.75, 0.25, -0.25, 0.25, -0.5, 0.0, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer100.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    device30.destroy();
    
    
    
    const array5 = new Float32Array([0.0, -0.25, -0.25, 0.75, 1.0, 0.75, 0.75, -1.0, -0.5, 0.5, 1.0, 1.0, 0.75, 0.25, 1.0, 0.25, 0.0, -1.0, 0.0, 0.25, 0.25, 0.75, 0.5, 0.0, -0.75, 0.75, 0.0, 0.75, 1.0, -0.5, -1.0, -0.75, -0.25, 0.5, -0.75, -1.0, 0.25, -1.0, 0.0, 1.0, -0.75, 0.5, -1.0, 0.5, 1.0, 1.0, 0.25, 0.0, -0.75, 0.0, 0.25, -0.75, -1.0, 0.25, 0.5, 0.0, 1.0, -0.75, -0.75, 1.0, -0.75, 0.0, 1.0, 1.0, -1.0, -0.75, 0.75, -0.5, 0.5, 0.5, 0.25, 0.75, -1.0, -1.0, 0.5, -0.5, -0.75, 1.0, -1.0, 0.25, 0.75, 0.0, 0.25, 0.0, 0.5, -0.5, 1.0, 0.5, 1.0, 1.0, -0.75, -0.25, -0.75, 1.0, -0.25, 0.75, 0.25, -0.75, -0.5, 0.0, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array6 = new Float32Array([0.5, 0.5, -1.0, 0.0, -1.0, 1.0, -0.75, 0.5, -0.5, 1.0, 1.0, 0.5, 0.0, 1.0, 0.25, 0.25, -1.0, 0.25, 1.0, 1.0, -0.25, 0.5, -1.0, 0.0, 1.0, -0.25, 0.0, 0.0, 0.25, 1.0, -0.25, 0.0, 0.5, 0.25, -0.25, 1.0, -0.25, 0.75, 0.5, 0.75, 1.0, -0.5, -0.5, 0.0, -0.5, -0.75, 1.0, 1.0, 0.0, 0.5, -0.5, -1.0, 0.25, 0.5, -0.5, -1.0, 0.0, -1.0, -0.75, -0.75, -1.0, -0.75, 0.0, -0.5, 0.5, -0.5, -0.5, 0.25, -0.5, 1.0, -0.5, 0.25, 0.25, 0.5, 1.0, 0.25, 0.5, -1.0, 1.0, -1.0, 0.25, 0.75, -0.5, 0.25, -0.5, 1.0, 0.5, 0.0, 0.5, 0.25, -0.5, 1.0, -0.5, 0.25, -0.5, -0.25, 0.75, 0.0, -1.0, 0.0, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer400 = command_encoder400.finish();
    device40.queue.submit([command_buffer400, ]);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device40.pushErrorScope("internal");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    query400.destroy()
    
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.destroy();
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder401.setPipeline(render_pipeline400);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer500.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    buffer400.destroy()
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    device50.pushErrorScope("out-of-memory");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device40.destroy();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array7 = new Float32Array([0.5, 0.0, 0.25, -0.5, 0.0, -0.25, 0.25, -1.0, 0.5, 0.25, -0.5, -0.75, 0.5, 0.75, 0.0, 0.0, -1.0, -1.0, -0.5, 0.5, 1.0, -1.0, 0.75, 0.25, 0.75, -1.0, -0.75, 0.25, -0.5, 0.25, 0.5, 0.5, 0.25, -0.25, 1.0, 1.0, 1.0, -0.5, 0.0, 0.75, -0.5, 0.5, -0.75, -1.0, -0.75, 0.5, 0.25, 0.25, 1.0, -0.75, 0.25, -0.75, 0.75, 1.0, 0.75, -1.0, -0.5, 0.75, -1.0, 0.0, 1.0, -0.75, -0.25, 1.0, 0.5, 1.0, -1.0, 0.75, 0.75, -1.0, 1.0, -0.75, 0.75, 0.0, -1.0, 0.75, 0.75, 0.25, 0.5, -1.0, 0.5, -0.75, 0.5, 1.0, -0.5, 0.5, 0.5, -0.5, -0.5, -1.0, 0.5, -0.75, 1.0, -0.75, 0.5, 0.0, -1.0, 0.5, -0.25, -1.0, ]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
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
    const array8 = new Float32Array([1.0, -0.5, 0.5, -0.25, 1.0, 1.0, 0.5, 0.0, -0.75, 0.75, 0.75, -0.5, -0.5, 0.0, -0.75, -0.5, 0.75, -0.5, -1.0, 0.0, -0.5, 0.75, 0.0, 0.25, -1.0, 0.75, 0.75, 0.75, 0.5, 0.75, 0.0, -1.0, -0.5, 0.5, 0.75, 1.0, -0.25, -0.75, -0.5, 0.25, 0.5, -0.75, -1.0, 1.0, 0.0, -0.25, 1.0, -1.0, 0.75, 1.0, 0.0, 0.75, -0.5, 1.0, -0.5, -0.75, -0.75, 1.0, 0.0, -0.75, 0.5, -0.25, -0.25, -0.75, -0.75, 0.5, -0.5, -0.5, -0.25, -1.0, -0.75, 1.0, 0.75, -0.25, -0.75, 0.5, 0.75, 0.5, 0.75, 0.0, -0.25, -1.0, 0.0, -0.25, 0.25, -0.5, 0.5, 0.5, -0.25, -0.75, 0.5, 0.5, 0.0, 0.75, -0.5, -0.25, -0.25, -0.25, 0.25, -1.0, ]);
    device20.destroy();
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device70.pushErrorScope("validation");
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    query500.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    query500.destroy()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture502.destroy();
    device50.queue.writeBuffer(buffer503, 0, array0, 0, array0.length);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    
    
    device50.queue.writeBuffer(buffer503, 0, array4, 0, array4.length);
    buffer501.destroy()
    
    
    
    
    const array9 = new Float32Array([-1.0, 0.25, -0.75, 0.5, 0.25, -0.25, 0.0, -0.25, 0.0, 0.5, -0.5, 0.5, 0.75, 1.0, 1.0, -1.0, -0.5, 0.0, -0.75, 0.25, 0.75, -0.5, 0.75, 1.0, 0.75, 0.25, 0.5, 0.0, -0.25, -0.75, 1.0, -0.75, 1.0, 0.75, 0.0, -0.75, 0.25, 1.0, -0.25, 1.0, 0.5, 0.25, 0.25, 0.75, 0.5, 0.0, 0.5, 0.25, -0.25, 0.5, -0.5, -0.25, 0.75, 1.0, 1.0, 0.25, 0.0, -0.75, -0.5, 0.25, 0.5, 1.0, 0.75, -0.5, 0.0, -1.0, -0.75, 0.5, -0.75, 0.75, -0.75, -1.0, 1.0, -0.25, 0.5, -0.25, 0.0, -0.75, 0.25, 1.0, -0.5, 1.0, 0.75, 0.0, 0.25, -0.75, 0.25, 0.0, -0.75, 1.0, -0.75, 1.0, 0.0, 0.5, -0.75, 1.0, 0.5, -0.5, 1.0, 0.75, ]);
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    texture500.destroy();
    
    const array10 = new Float32Array([0.5, -0.25, 0.0, -1.0, -1.0, -0.5, 0.5, -0.5, -0.5, 1.0, 0.25, -0.25, -0.25, -0.75, -0.5, 0.5, 1.0, -1.0, 0.5, 1.0, -0.5, -0.25, -0.75, -0.75, -0.5, -1.0, -0.5, -0.5, 0.75, 1.0, 0.75, 0.25, 1.0, 0.0, 0.25, -0.5, 0.25, 0.25, -1.0, 0.25, 1.0, -0.75, -0.75, 0.75, 0.0, 0.5, 0.0, 0.25, -0.5, 0.25, 0.5, -0.25, -0.5, -1.0, -0.25, 1.0, -1.0, 0.0, 0.0, -0.25, 0.5, 0.5, 0.75, -1.0, -1.0, 0.0, -0.25, 0.75, 0.25, -1.0, 0.75, 0.0, -0.25, 0.75, -0.5, -0.5, 0.75, -0.5, 0.0, 0.75, 0.5, 0.0, -0.5, -1.0, 0.75, -0.25, -0.75, 0.25, -0.75, -0.25, 0.25, 1.0, -1.0, 0.75, -0.75, -1.0, 0.75, -0.25, -0.5, -0.25, ]);
    buffer503.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    device80.destroy();
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    query500.destroy()
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    
    buffer502.destroy()
    
    
    query500.destroy()
    
    
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
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
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    texture501.destroy();
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    
    command_encoder700.insertDebugMarker("mymarker");
    device50.destroy();
    buffer700.destroy()
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    render_bundle_encoder700.popDebugGroup();
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder700.insertDebugMarker("marker");
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    
    
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
    
    compute_pass_encoder7010.pushDebugGroup("group_marker")
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
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout703]
    });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout702]
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout704 = device70.createBindGroupLayout({ 
        label: "bind_group_layout704",
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
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    texture700.destroy();
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder7010.popDebugGroup()
    
    render_bundle_encoder701.pushDebugGroup("group_marker");
    compute_pass_encoder7000.setPipeline(compute_pipeline700);
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
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
    
    
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout703]
    });
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout700]
    });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout703,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    
    const bind_group_layout705 = device70.createBindGroupLayout({ 
        label: "bind_group_layout705",
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
    compute_pass_encoder7010.setPipeline(compute_pipeline700);
    render_bundle_encoder701.setPipeline(render_pipeline701);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder700.setPipeline(render_pipeline700);
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8unorm",
        dimension: "2d"
    });
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout703]
    });
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout705,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout706 = device70.createPipelineLayout({ 
        label: "pipeline_layout706",
        bindGroupLayouts: [bind_group_layout704]
    });
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout703,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    render_bundle_encoder702.pushDebugGroup("group_marker");
    
    
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout705,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const array11 = new Float32Array([-1.0, 0.25, -0.25, 0.25, 1.0, 0.0, -1.0, 0.25, -0.5, 0.0, -0.25, -0.25, -0.25, 1.0, -0.75, 1.0, 0.0, -0.5, 0.5, -0.25, 0.5, 0.5, 0.25, 0.75, 1.0, 0.0, 1.0, 1.0, 0.25, -0.25, 0.0, 0.75, 0.75, -0.75, -1.0, -0.5, 0.0, -0.5, 0.75, 0.5, -0.25, -0.25, 0.5, 0.25, 0.25, 1.0, 0.0, -0.75, 1.0, 0.25, -0.5, -0.5, 0.5, 0.75, 0.5, 1.0, -0.25, 0.25, 0.5, -0.25, 0.75, -0.25, 0.5, 0.0, -0.5, 0.0, -0.5, 0.0, 0.25, 0.75, 0.0, -0.75, 0.0, 0.5, -1.0, 0.75, 1.0, -0.25, 0.5, 0.75, 0.75, -0.25, -0.5, -0.5, 0.75, 0.75, -0.5, 0.0, -0.5, 0.25, -1.0, 0.25, 1.0, -0.25, 0.5, 0.5, 0.5, 0.0, -1.0, 1.0, ]);
    texture701.destroy();
    const compute_pipeline705 = device70.createComputePipeline({
        label: "compute_pipeline705",
        layout: pipeline_layout704,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline706 = device70.createComputePipeline({
        label: "compute_pipeline706",
        layout: pipeline_layout705,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline707 = device70.createComputePipeline({
        label: "compute_pipeline707",
        layout: pipeline_layout703,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline708 = device70.createComputePipeline({
        label: "compute_pipeline708",
        layout: pipeline_layout703,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline709 = device70.createComputePipeline({
        label: "compute_pipeline709",
        layout: pipeline_layout706,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7000.insertDebugMarker("marker")
    
    render_bundle_encoder702.setPipeline(render_pipeline700);
    const array12 = new Float32Array([-0.25, -0.25, 0.0, 0.75, 0.25, 0.25, 0.75, -0.25, 0.25, 0.0, 1.0, -1.0, 0.0, 1.0, -1.0, -1.0, 0.0, 0.25, 0.25, -0.5, -0.25, -0.25, 0.75, 0.5, -0.25, 1.0, 1.0, 0.5, 1.0, 1.0, 0.75, -0.25, 0.0, 0.25, -0.25, -0.5, -0.5, 0.25, -0.5, -0.25, 1.0, 1.0, -0.75, -0.25, 0.75, -1.0, -0.5, 0.75, 0.75, 0.75, -1.0, 0.0, -0.75, 1.0, 1.0, -0.25, 0.0, -0.75, -0.75, -0.25, 0.75, -0.25, 0.0, 1.0, -1.0, 0.25, -1.0, -1.0, -1.0, -1.0, -1.0, 0.0, -0.5, 0.5, -0.5, 0.25, -0.5, 0.25, -0.5, 0.5, 1.0, 0.5, 1.0, -0.5, 1.0, -1.0, -0.75, -0.5, 0.0, -0.5, 0.0, -1.0, -0.5, 0.25, 0.75, 1.0, -0.75, 0.0, -0.75, -1.0, ]);
    const pipeline_layout707 = device70.createPipelineLayout({ 
        label: "pipeline_layout707",
        bindGroupLayouts: [bind_group_layout705]
    });
    const compute_pipeline7010 = device70.createComputePipeline({
        label: "compute_pipeline7010",
        layout: pipeline_layout705,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder7000.insertDebugMarker("marker")
    
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
        layout: render_pipeline700.getBindGroupLayout(0),
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
    const pipeline_layout708 = device70.createPipelineLayout({ 
        label: "pipeline_layout708",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    
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

    compute_pass_encoder7000.setBindGroup(0, bind_group701);
    const compute_pipeline7011 = device70.createComputePipeline({
        label: "compute_pipeline7011",
        layout: pipeline_layout706,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7012 = device70.createComputePipeline({
        label: "compute_pipeline7012",
        layout: pipeline_layout706,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7013 = device70.createComputePipeline({
        label: "compute_pipeline7013",
        layout: pipeline_layout704,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer705, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer705, 0);
    render_bundle_encoder702.insertDebugMarker("marker");
    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer707 = device70.createBuffer({
        label: "buffer707",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group702 = device70.createBindGroup({
        label: "bind_group702",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer706,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer707,
                },
            },
        ],
    });

    render_bundle_encoder700.setBindGroup(0, bind_group702);
    compute_pass_encoder7010.insertDebugMarker("marker")
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
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
    render_bundle_encoder701.popDebugGroup();
    
    
    const compute_pipeline7014 = device70.createComputePipeline({
        label: "compute_pipeline7014",
        layout: pipeline_layout705,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const pipeline_layout709 = device70.createPipelineLayout({ 
        label: "pipeline_layout709",
        bindGroupLayouts: [bind_group_layout705]
    });
    query701.destroy()
    
    
    const compute_pipeline7015 = device70.createComputePipeline({
        label: "compute_pipeline7015",
        layout: pipeline_layout706,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    
    
    device70.queue.writeBuffer(buffer705, 0, array3, 0, array3.length);
    
    const compute_pipeline7016 = device70.createComputePipeline({
        label: "compute_pipeline7016",
        layout: pipeline_layout706,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const buffer708 = device70.createBuffer({
        label: "buffer708",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer709 = device70.createBuffer({
        label: "buffer709",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group703 = device70.createBindGroup({
        label: "bind_group703",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer708,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer709,
                },
            },
        ],
    });

    compute_pass_encoder7010.setBindGroup(0, bind_group703);
    const pipeline_layout7010 = device70.createPipelineLayout({ 
        label: "pipeline_layout7010",
        bindGroupLayouts: [bind_group_layout704]
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    render_bundle_encoder700.popDebugGroup();
    const compute_pipeline7017 = device70.createComputePipeline({
        label: "compute_pipeline7017",
        layout: pipeline_layout702,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7018 = device70.createComputePipeline({
        label: "compute_pipeline7018",
        layout: pipeline_layout707,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    compute_pass_encoder7010.insertDebugMarker("marker")
    
    buffer702.destroy()
    compute_pass_encoder7010.dispatchWorkgroups(100);
    
    texture703.destroy();
    
    const compute_pipeline7019 = device70.createComputePipeline({
        label: "compute_pipeline7019",
        layout: pipeline_layout704,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const array13 = new Float32Array([-0.5, -0.25, 0.25, 0.5, -0.75, 1.0, 1.0, -0.25, -1.0, 0.25, -0.5, 1.0, -1.0, 1.0, -0.75, 1.0, 0.25, 0.5, 0.5, 0.0, -1.0, 1.0, 0.25, 0.75, -0.75, 1.0, 0.5, -1.0, 0.75, 1.0, -0.75, 1.0, -0.5, 0.75, 0.75, -1.0, 0.0, 0.25, 0.0, -0.75, -1.0, 0.75, 0.75, 0.0, 0.25, 0.75, -0.25, 0.0, 0.5, 0.25, -0.5, -0.5, 0.0, -0.5, 0.0, -0.25, 1.0, -0.75, 0.25, 0.0, 0.75, -0.5, 1.0, 0.25, 1.0, -0.75, 0.75, 1.0, 0.75, 1.0, -0.25, -1.0, -0.75, 0.0, -0.5, 0.75, -0.5, 0.0, -1.0, 0.0, 0.0, 0.75, -0.5, -1.0, -0.5, 1.0, -0.75, 1.0, 0.25, -0.25, -1.0, 0.5, -0.75, -0.75, -0.25, -0.25, -0.75, 0.75, -0.5, -0.5, ]);
    const pipeline_layout7011 = device70.createPipelineLayout({ 
        label: "pipeline_layout7011",
        bindGroupLayouts: [bind_group_layout701]
    });
    const compute_pipeline7020 = device70.createComputePipeline({
        label: "compute_pipeline7020",
        layout: pipeline_layout705,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7021 = device70.createComputePipeline({
        label: "compute_pipeline7021",
        layout: pipeline_layout708,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
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
    device70.queue.writeBuffer(buffer705, 0, array11, 0, array11.length);
    const buffer7010 = device70.createBuffer({
        label: "buffer7010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7011 = device70.createBuffer({
        label: "buffer7011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group704 = device70.createBindGroup({
        label: "bind_group704",
        layout: render_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7011,
                },
            },
        ],
    });

    render_bundle_encoder701.setBindGroup(0, bind_group704);
    const compute_pipeline7022 = device70.createComputePipeline({
        label: "compute_pipeline7022",
        layout: pipeline_layout7011,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    buffer703.destroy()
    device70.queue.writeBuffer(buffer705, 0, array12, 0, array12.length);
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    
    
    device70.queue.writeBuffer(buffer705, 0, array6, 0, array6.length);
    const compute_pipeline7023 = device70.createComputePipeline({
        label: "compute_pipeline7023",
        layout: pipeline_layout708,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    
    const compute_pipeline7024 = device70.createComputePipeline({
        label: "compute_pipeline7024",
        layout: pipeline_layout709,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    buffer708.destroy()
    compute_pass_encoder7000.insertDebugMarker("marker")
    
    const compute_pipeline7025 = device70.createComputePipeline({
        label: "compute_pipeline7025",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7000.insertDebugMarker("marker")
    device70.queue.writeBuffer(buffer705, 0, array4, 0, array4.length);
    
    query700.destroy()
    render_bundle_encoder702.popDebugGroup();
    
    compute_pass_encoder7010.insertDebugMarker("marker")
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    buffer704.destroy()
    compute_pass_encoder7000.popDebugGroup()
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile(__dirname + '/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    device70.queue.writeBuffer(buffer705, 0, array12, 0, array12.length);
    const compute_pipeline7026 = device70.createComputePipeline({
        label: "compute_pipeline7026",
        layout: pipeline_layout704,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    query702.destroy()
    device70.queue.writeBuffer(buffer705, 0, array3, 0, array3.length);
    device70.queue.writeBuffer(buffer705, 0, array3, 0, array3.length);
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile(__dirname + '/shader_module705.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    device70.queue.writeBuffer(buffer705, 0, array11, 0, array11.length);
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
    const pipeline_layout7012 = device70.createPipelineLayout({ 
        label: "pipeline_layout7012",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    
    
    
    const pipeline_layout7013 = device70.createPipelineLayout({ 
        label: "pipeline_layout7013",
        bindGroupLayouts: [bind_group_layout705]
    });
    
    
    query700.destroy()
    const pipeline_layout7014 = device70.createPipelineLayout({ 
        label: "pipeline_layout7014",
        bindGroupLayouts: [bind_group_layout705]
    });
    
    
    const compute_pipeline7027 = device70.createComputePipeline({
        label: "compute_pipeline7027",
        layout: pipeline_layout707,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer705, 0, array12, 0, array12.length);
    const compute_pipeline7028 = device70.createComputePipeline({
        label: "compute_pipeline7028",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7029 = device70.createComputePipeline({
        label: "compute_pipeline7029",
        layout: pipeline_layout7010,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const pipeline_layout7015 = device70.createPipelineLayout({ 
        label: "pipeline_layout7015",
        bindGroupLayouts: [bind_group_layout703]
    });
    const compute_pipeline7030 = device70.createComputePipeline({
        label: "compute_pipeline7030",
        layout: pipeline_layout705,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7031 = device70.createComputePipeline({
        label: "compute_pipeline7031",
        layout: pipeline_layout7013,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    compute_pass_encoder7000.end();
    device70.queue.writeBuffer(buffer705, 0, array2, 0, array2.length);
    device70.queue.writeBuffer(buffer705, 0, array0, 0, array0.length);
    
    
    device90.destroy();
    const texture704 = device70.createTexture({
        label: "texture704",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeBuffer(buffer705, 0, array10, 0, array10.length);
    const compute_pipeline7032 = device70.createComputePipeline({
        label: "compute_pipeline7032",
        layout: pipeline_layout700,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    buffer707.destroy()
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
    const compute_pipeline7033 = device70.createComputePipeline({
        label: "compute_pipeline7033",
        layout: pipeline_layout708,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7034 = device70.createComputePipeline({
        label: "compute_pipeline7034",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    const compute_pipeline7035 = device70.createComputePipeline({
        label: "compute_pipeline7035",
        layout: pipeline_layout706,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    command_encoder700.copyTextureToBuffer(
        {
            texture: texture704
        },
        {
            buffer: buffer705
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline7036 = device70.createComputePipeline({
        label: "compute_pipeline7036",
        layout: pipeline_layout706,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7037 = device70.createComputePipeline({
        label: "compute_pipeline7037",
        layout: pipeline_layout7015,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer705, 0, array10, 0, array10.length);
    device70.queue.writeBuffer(buffer705, 0, array13, 0, array13.length);
    const compute_pipeline7038 = device70.createComputePipeline({
        label: "compute_pipeline7038",
        layout: pipeline_layout702,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7039 = device70.createComputePipeline({
        label: "compute_pipeline7039",
        layout: pipeline_layout7010,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7040 = device70.createComputePipeline({
        label: "compute_pipeline7040",
        layout: pipeline_layout7010,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline7041 = device70.createComputePipeline({
        label: "compute_pipeline7041",
        layout: pipeline_layout704,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder702.insertDebugMarker("marker");
    texture704.destroy();
    render_bundle_encoder701.popDebugGroup();
    const compute_pipeline7042 = device70.createComputePipeline({
        label: "compute_pipeline7042",
        layout: pipeline_layout700,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer705, 0, array0, 0, array0.length);
    const compute_pipeline7043 = device70.createComputePipeline({
        label: "compute_pipeline7043",
        layout: pipeline_layout709,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    buffer705.destroy()
    const render_pass_encoder7000 = command_encoder700.beginRenderPass({
        label: "render_pass_encoder7000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7020,
            },
        ],
        occlusionQuerySet: query700
    });
    
    const compute_pipeline7044 = device70.createComputePipeline({
        label: "compute_pipeline7044",
        layout: pipeline_layout7010,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const pipeline_layout7016 = device70.createPipelineLayout({ 
        label: "pipeline_layout7016",
        bindGroupLayouts: [bind_group_layout702]
    });
    var shader_module706_code = "";
    try {
        shader_module706_code = await fs.readFile(__dirname + '/shader_module706.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module706 = await device70.createShaderModule({ label: "shader_module706", code: shader_module706_code })
    const compute_pipeline7045 = device70.createComputePipeline({
        label: "compute_pipeline7045",
        layout: pipeline_layout7010,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const compute_pipeline7046 = device70.createComputePipeline({
        label: "compute_pipeline7046",
        layout: pipeline_layout7010,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7047 = device70.createComputePipeline({
        label: "compute_pipeline7047",
        layout: pipeline_layout7012,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7048 = device70.createComputePipeline({
        label: "compute_pipeline7048",
        layout: pipeline_layout7011,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7049 = device70.createComputePipeline({
        label: "compute_pipeline7049",
        layout: pipeline_layout702,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7050 = device70.createComputePipeline({
        label: "compute_pipeline7050",
        layout: pipeline_layout702,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7051 = device70.createComputePipeline({
        label: "compute_pipeline7051",
        layout: pipeline_layout702,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7052 = device70.createComputePipeline({
        label: "compute_pipeline7052",
        layout: pipeline_layout701,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const compute_pipeline7053 = device70.createComputePipeline({
        label: "compute_pipeline7053",
        layout: pipeline_layout7016,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const compute_pipeline7054 = device70.createComputePipeline({
        label: "compute_pipeline7054",
        layout: pipeline_layout7015,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const compute_pipeline7055 = device70.createComputePipeline({
        label: "compute_pipeline7055",
        layout: pipeline_layout704,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline7056 = device70.createComputePipeline({
        label: "compute_pipeline7056",
        layout: pipeline_layout702,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    texture702.destroy();
    
    
    const bind_group_layout706 = device70.createBindGroupLayout({ 
        label: "bind_group_layout706",
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
    render_pass_encoder7000.setPipeline(render_pipeline701);
    const array14 = new Float32Array([0.75, 0.25, -0.75, 0.5, 0.0, 0.25, -0.75, 0.25, 1.0, -1.0, 0.0, -0.5, 0.75, -0.25, -0.25, 0.25, 0.0, -1.0, 0.5, 0.5, -0.75, 0.5, -0.25, 0.5, 0.5, 0.75, 0.75, 1.0, 0.25, -0.25, -1.0, 0.5, 0.0, -0.25, -0.75, 0.25, -0.5, -0.75, 0.0, -1.0, 0.25, 0.0, 0.75, -0.25, 0.5, 0.5, -0.75, 0.75, 1.0, -0.25, -0.5, 1.0, -0.75, 0.0, -1.0, -0.25, -0.25, -0.25, -0.75, 1.0, 0.5, 0.25, 0.5, -0.5, 0.5, 0.5, 1.0, 0.75, -0.25, -0.25, -0.5, 0.25, -1.0, -0.5, 0.0, 0.0, 0.25, 0.25, -0.25, -0.75, -0.25, -0.25, -0.5, 0.5, -0.5, 0.25, -1.0, -0.75, 0.25, 0.25, -0.75, 0.0, 1.0, 0.25, -0.75, -0.25, 0.0, 1.0, 0.25, -0.5, ]);
    const compute_pipeline7057 = device70.createComputePipeline({
        label: "compute_pipeline7057",
        layout: pipeline_layout7011,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7058 = device70.createComputePipeline({
        label: "compute_pipeline7058",
        layout: pipeline_layout707,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7059 = device70.createComputePipeline({
        label: "compute_pipeline7059",
        layout: pipeline_layout7010,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7060 = device70.createComputePipeline({
        label: "compute_pipeline7060",
        layout: pipeline_layout706,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7061 = device70.createComputePipeline({
        label: "compute_pipeline7061",
        layout: pipeline_layout704,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7062 = device70.createComputePipeline({
        label: "compute_pipeline7062",
        layout: pipeline_layout707,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7063 = device70.createComputePipeline({
        label: "compute_pipeline7063",
        layout: pipeline_layout704,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7064 = device70.createComputePipeline({
        label: "compute_pipeline7064",
        layout: pipeline_layout705,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder701.insertDebugMarker("marker");
    
    const compute_pipeline7065 = device70.createComputePipeline({
        label: "compute_pipeline7065",
        layout: pipeline_layout7013,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    render_pass_encoder7000.setStencilReference(1);
    buffer706.destroy()
    var shader_module707_code = "";
    try {
        shader_module707_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module707 = await device70.createShaderModule({ label: "shader_module707", code: shader_module707_code })
    const compute_pipeline7066 = device70.createComputePipeline({
        label: "compute_pipeline7066",
        layout: pipeline_layout7010,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    
    const array15 = new Float32Array([0.75, 0.0, -0.25, 0.5, -0.5, -0.25, 0.5, 0.75, -0.5, -0.5, -0.75, -0.5, 0.25, 0.0, 0.75, 0.75, 0.5, 0.5, 0.0, 0.5, 1.0, -0.25, 0.25, 0.75, -0.75, 0.25, -1.0, 0.5, 0.25, -1.0, 0.0, 0.75, 1.0, -0.25, -0.75, 0.75, 0.0, 0.25, -1.0, 0.25, 1.0, 0.0, 0.0, -0.5, -0.75, -1.0, 0.25, -1.0, 0.25, 0.0, -1.0, -1.0, -1.0, -0.25, -0.25, -0.25, 0.75, 0.0, -0.25, 1.0, -0.25, -1.0, -1.0, -1.0, -0.25, -0.5, -0.25, 0.5, 0.75, 0.5, 0.75, -0.5, -1.0, -0.75, 0.5, 0.25, -0.25, -0.5, 0.5, 0.0, -1.0, 0.25, -0.25, 1.0, 0.25, 0.25, 0.75, 0.25, -0.25, 0.25, -0.25, 0.0, -0.25, -1.0, -0.25, 0.25, 0.5, -1.0, -1.0, -0.25, ]);
    const compute_pipeline7067 = device70.createComputePipeline({
        label: "compute_pipeline7067",
        layout: pipeline_layout702,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7068 = device70.createComputePipeline({
        label: "compute_pipeline7068",
        layout: pipeline_layout702,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    render_pass_encoder7000.insertDebugMarker("marker");
    
    const compute_pipeline7069 = device70.createComputePipeline({
        label: "compute_pipeline7069",
        layout: pipeline_layout7015,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7070 = device70.createComputePipeline({
        label: "compute_pipeline7070",
        layout: pipeline_layout7014,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const pipeline_layout7017 = device70.createPipelineLayout({ 
        label: "pipeline_layout7017",
        bindGroupLayouts: [bind_group_layout703]
    });
    const compute_pipeline7071 = device70.createComputePipeline({
        label: "compute_pipeline7071",
        layout: pipeline_layout7014,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7072 = device70.createComputePipeline({
        label: "compute_pipeline7072",
        layout: pipeline_layout701,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    
    const array16 = new Float32Array([0.75, 0.25, 0.75, -0.5, -1.0, -0.25, -0.5, 0.5, -0.75, 0.0, 0.75, -0.5, -0.5, 1.0, -0.5, 0.75, -1.0, -0.25, 0.5, 0.0, 0.0, 0.75, -0.75, 0.5, -0.25, -0.75, 0.5, 1.0, -0.25, -0.75, 0.0, 0.75, -1.0, 0.25, -0.25, -0.75, 1.0, 0.75, 0.25, -0.75, 0.75, 0.0, 0.5, 0.75, 0.75, -0.25, 0.25, 0.75, 1.0, 0.25, -0.5, 0.5, 0.75, 1.0, -0.25, 0.75, 1.0, -0.25, 0.0, -0.25, -1.0, -0.5, -1.0, -1.0, -0.5, 1.0, -0.25, 0.5, 0.5, -0.75, 0.5, 1.0, 0.0, 0.5, -0.25, 0.0, 0.5, 1.0, 0.25, 0.25, 0.75, 0.5, 0.25, 0.5, 0.0, 0.25, 0.25, 0.5, -1.0, 0.0, -0.25, 0.75, 0.25, -0.5, 0.5, -1.0, 0.25, -0.25, -0.75, 0.0, ]);
    query702.destroy()
    const array17 = new Float32Array([0.75, -1.0, -1.0, -1.0, -0.25, 0.75, 0.0, -0.5, 0.5, 0.25, 0.75, 0.25, -0.5, -0.5, -0.25, 0.25, -0.5, 1.0, -0.25, 0.5, -0.25, 0.0, 0.0, 0.5, 0.75, -0.5, 0.5, 0.75, 1.0, 0.5, -0.25, -0.25, 0.5, 0.25, 0.25, -1.0, -0.5, -0.25, -1.0, -0.5, -1.0, 0.75, 0.0, -1.0, -1.0, 0.25, 0.25, 0.25, 1.0, 0.5, -1.0, 0.25, 0.25, -1.0, -1.0, -1.0, -0.5, -0.25, 0.0, 0.75, -0.25, 0.0, -0.75, 1.0, -1.0, 0.25, 0.5, 1.0, 0.25, -0.5, 0.5, 0.25, 1.0, 0.75, 0.75, -0.25, 0.5, -1.0, 0.75, -0.75, 0.5, 1.0, -0.5, -0.75, -0.25, 1.0, 0.25, 1.0, 0.75, 1.0, 0.0, -0.75, -1.0, -0.25, 1.0, -1.0, -0.5, 0.5, -0.75, 1.0, ]);
    const compute_pipeline7073 = device70.createComputePipeline({
        label: "compute_pipeline7073",
        layout: pipeline_layout7012,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    render_pass_encoder7000.setStencilReference(1);
    const compute_pipeline7074 = device70.createComputePipeline({
        label: "compute_pipeline7074",
        layout: pipeline_layout7016,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7010.popDebugGroup()
    const compute_pipeline7075 = device70.createComputePipeline({
        label: "compute_pipeline7075",
        layout: pipeline_layout708,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7076 = device70.createComputePipeline({
        label: "compute_pipeline7076",
        layout: pipeline_layout707,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7010.end();
    const buffer7012 = device70.createBuffer({
        label: "buffer7012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7013 = device70.createBuffer({
        label: "buffer7013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group705 = device70.createBindGroup({
        label: "bind_group705",
        layout: render_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7013,
                },
            },
        ],
    });

    render_pass_encoder7000.setBindGroup(0, bind_group705);
    const command_buffer701 = command_encoder701.finish();
}