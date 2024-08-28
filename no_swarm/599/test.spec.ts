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
    const array0 = new Float32Array([-0.75, 0.5, -1.0, 0.0, -0.5, 0.25, -0.75, -0.25, 1.0, 0.25, 0.75, -0.5, 0.75, -0.5, 1.0, -1.0, 0.75, 0.25, 0.0, 0.5, 0.75, -0.25, 0.75, -1.0, 0.75, -1.0, 0.75, 0.5, 0.75, 1.0, 0.25, -0.5, -0.5, -1.0, -0.75, -0.5, 0.5, 1.0, -0.75, -0.25, 0.5, 0.25, 0.0, 1.0, -0.25, 0.75, 0.5, -0.25, 0.0, 0.5, -1.0, -1.0, -1.0, -1.0, 0.5, 0.75, -0.25, 0.5, 0.75, 1.0, 0.75, -0.5, -1.0, -0.25, -0.75, -0.25, 1.0, 0.25, 0.5, 0.75, -0.75, 0.0, -0.75, -0.25, 0.0, -0.25, -0.25, 0.75, -0.5, 0.0, 1.0, 0.75, 0.5, 0.0, 0.5, -0.5, 1.0, -0.5, 0.0, 0.25, 0.75, -0.5, 0.5, 0.0, 1.0, 0.25, 0.75, -0.5, 0.75, 0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array1 = new Float32Array([-1.0, -0.25, -0.75, -0.25, 0.75, -0.25, 1.0, -0.25, -1.0, 0.25, 0.75, 0.5, -0.5, 0.75, 0.5, 0.25, -1.0, -0.5, -0.5, 0.75, -0.75, 0.0, -0.5, 0.75, 0.25, -1.0, 0.25, 0.25, -0.5, -1.0, 0.0, 1.0, -1.0, -0.75, 0.25, 0.5, -0.5, -0.25, 0.25, 1.0, 0.5, -0.5, 0.0, -0.5, 0.75, 0.25, -0.5, 1.0, -1.0, 0.75, -0.75, 1.0, 0.5, 0.75, -0.25, 0.25, -0.75, 0.0, -1.0, -0.25, 0.5, 0.25, 0.75, -0.75, 0.75, 0.0, 0.0, 0.0, 0.25, 0.0, 1.0, 1.0, -1.0, -0.75, -0.25, -0.25, -0.75, 0.25, 0.75, -0.75, 0.0, -0.75, -0.5, 0.75, 0.75, 0.5, 0.5, 0.75, 0.5, -0.75, 0.0, -0.25, 0.75, 0.0, -0.25, -0.75, 0.75, 1.0, -0.75, 1.0, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    device00.destroy();
    const array2 = new Float32Array([-0.75, 0.25, -0.5, 0.25, 0.0, 1.0, 0.0, 0.0, 0.75, 1.0, -0.25, 0.0, 0.5, 0.0, -1.0, 0.0, -0.5, 0.5, -0.25, -0.5, 1.0, 0.75, -1.0, 0.75, 0.5, -0.25, -1.0, -0.75, 1.0, 0.75, 1.0, 1.0, -1.0, 0.0, -0.25, 0.75, 0.5, 1.0, 0.75, 0.75, -1.0, -0.5, 1.0, 0.0, 0.0, -0.25, 0.75, 0.25, -0.5, -0.75, -1.0, 1.0, 1.0, -0.5, 1.0, -1.0, 0.0, 0.5, 1.0, 0.25, -0.25, -0.25, -0.5, 0.5, 1.0, 1.0, 0.5, -0.5, 0.75, 0.25, -0.75, 0.75, 0.75, -1.0, 0.5, 1.0, 0.25, -1.0, 1.0, 1.0, 0.25, 0.5, -0.5, 0.0, -0.75, 1.0, -1.0, 1.0, 0.75, 0.75, 0.75, 0.75, 0.5, 0.75, 0.25, 0.75, -0.25, -0.5, 0.0, -0.5, ]);
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const array3 = new Float32Array([0.5, 0.5, 0.75, 1.0, -0.25, 0.25, -0.25, 1.0, 0.75, -0.75, -1.0, 0.25, 0.0, -0.25, 1.0, -0.75, 0.5, -0.75, 0.75, -0.25, -0.75, 0.0, 0.0, -0.5, -1.0, -0.5, -0.75, 0.0, 0.25, 0.5, 0.25, 0.5, 0.75, -1.0, -0.25, 1.0, 0.5, -0.75, 0.75, 0.0, 0.25, -0.75, -1.0, -0.75, 1.0, -1.0, -0.25, -1.0, -0.75, -0.5, -1.0, -0.25, -0.5, -0.5, 0.5, -0.5, -0.5, 1.0, 1.0, 0.0, 0.75, 0.5, -0.25, 0.5, 0.75, 0.5, -0.5, 0.0, 0.5, -0.5, 0.75, 1.0, -1.0, -0.75, 0.75, -0.75, 0.0, -0.5, 0.5, 0.25, 0.0, 0.0, -1.0, -0.25, 0.0, 0.0, 0.75, -0.75, 0.0, 0.5, 0.25, 0.5, -0.75, 0.75, -1.0, -0.75, -0.25, -0.25, 0.0, -0.5, ]);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    query300.destroy()
    const array4 = new Float32Array([0.75, 0.75, -0.75, 0.25, -0.75, -0.5, 0.5, 0.25, 0.5, 0.75, 0.0, -0.75, 0.5, -1.0, -0.75, -0.75, -0.5, -0.75, 0.75, 0.75, -0.5, 0.0, -0.5, -0.5, 0.25, -0.25, -0.75, -0.75, 0.0, -0.5, -0.25, -0.5, 1.0, -0.75, 0.75, 0.5, 1.0, 0.75, 0.75, -0.75, -0.25, 1.0, -1.0, -0.75, 0.5, -0.25, -0.5, 0.5, 1.0, 0.0, -0.25, 1.0, 0.25, 1.0, -1.0, -1.0, -1.0, 1.0, 0.25, 0.5, -0.25, -0.25, -1.0, 0.75, -1.0, -1.0, 1.0, 0.75, 1.0, 0.5, 0.75, -1.0, -0.5, -0.5, 0.5, -0.25, 0.5, 0.0, -0.75, -1.0, 1.0, 0.5, -0.5, -0.5, 0.5, -0.75, 0.0, -0.25, 0.25, 0.5, 0.0, -1.0, -0.25, 0.25, 0.25, 0.75, -1.0, 0.25, 0.0, 0.0, ]);
    
    const array5 = new Float32Array([1.0, 1.0, -0.5, 0.75, -1.0, -0.25, 0.0, -1.0, 1.0, 1.0, 0.0, -0.75, -0.75, -0.25, 0.25, 0.75, 1.0, 0.75, -0.25, -0.5, -0.75, -1.0, -0.5, 1.0, 0.0, 0.25, 0.0, 0.5, 0.25, 0.5, -0.5, 1.0, 0.75, -0.75, -0.25, 0.5, -0.75, 0.0, -0.75, -0.75, 1.0, -0.5, -0.5, -0.25, 0.5, -0.5, -0.25, -0.5, -0.5, 0.5, 0.5, -0.25, -1.0, 0.0, 0.25, -0.75, -0.25, -0.5, 1.0, -0.75, -0.5, 0.75, 1.0, -0.25, 0.25, 0.75, 0.25, 0.25, 0.5, -0.75, -0.75, -1.0, -0.5, 0.0, -0.75, 0.5, -1.0, -0.25, -0.5, 0.75, -0.75, -0.75, 0.0, 0.0, -0.25, 0.25, -0.5, -0.25, -0.5, 0.75, 0.5, 0.5, 0.0, 0.0, -0.75, 0.25, -0.25, -1.0, 0.5, -1.0, ]);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    query300.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
    
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.pushErrorScope("internal");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    buffer400.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const array6 = new Float32Array([1.0, -0.75, -0.5, 1.0, 0.25, -0.75, 0.0, -0.25, -0.75, -0.75, -0.25, 1.0, -0.5, -0.5, 0.0, 0.75, 0.5, 0.25, -0.75, -0.25, 0.75, 0.25, -0.5, -0.75, 0.0, -0.5, 0.5, -0.5, -1.0, -0.25, 0.25, -0.75, 0.0, 0.0, 0.75, 1.0, -0.25, 0.25, -0.25, 0.0, -0.5, -0.25, -0.25, -1.0, 1.0, 1.0, 1.0, -0.5, 0.25, -0.25, 1.0, 0.75, 0.0, -0.75, -0.25, -0.25, 0.75, -1.0, -0.75, -0.25, -0.25, -0.5, -0.25, 0.75, 0.5, 0.25, 0.25, -0.25, -0.25, 1.0, 0.75, 1.0, -0.5, 0.0, 1.0, 0.25, 0.5, -0.25, 0.25, 0.25, 0.0, -0.25, 0.75, 0.25, 0.75, -0.75, 0.75, -0.75, 0.0, -0.5, -0.75, 0.25, -0.5, 0.0, -1.0, 0.25, 0.25, -0.5, 0.0, -0.75, ]);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
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
    const array7 = new Float32Array([0.0, -0.25, -0.5, -0.75, -1.0, -1.0, 0.0, 1.0, 1.0, -1.0, -0.25, 0.0, -0.5, 0.75, -0.75, -0.25, -1.0, 0.0, 0.25, -1.0, -0.75, 0.5, 0.5, -1.0, -0.75, 0.0, 1.0, 0.75, 0.25, 0.75, 0.0, 0.0, -0.5, -1.0, 0.25, 0.25, 0.25, -0.75, 0.25, -0.25, -0.25, -0.5, -0.25, 0.5, 0.0, 0.25, 0.25, 1.0, 0.0, 0.25, 0.25, -0.5, 0.75, 0.0, -1.0, 0.0, -0.75, 0.5, 0.75, 0.5, 0.5, -0.25, 0.0, 0.0, 0.25, -0.5, -0.25, 0.25, 0.75, 0.5, -0.25, -0.75, -0.75, -0.75, -1.0, 0.0, -0.25, 0.0, 0.0, 0.5, -0.25, 0.5, -1.0, -0.25, 1.0, 0.75, -0.25, -0.75, -0.75, 0.75, 0.25, 0.75, -1.0, 1.0, 1.0, -1.0, -1.0, -0.75, 0.5, 0.25, ]);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    texture400.destroy();
    const array8 = new Float32Array([-1.0, 0.25, 0.5, -0.5, 0.75, 0.0, 0.0, 0.5, -0.75, 1.0, -0.25, -1.0, -0.5, -1.0, -0.25, 0.75, -1.0, -0.75, 1.0, 0.75, 0.5, 0.75, 1.0, -0.25, -0.25, -0.75, 0.75, 1.0, 0.75, -0.75, -1.0, 0.0, -0.25, -0.75, 1.0, 0.0, -1.0, -0.75, 0.5, -0.25, -0.75, -0.25, 0.25, 0.75, 0.25, 1.0, 0.5, -1.0, 0.0, -0.25, -0.5, -0.75, -0.5, 0.75, -1.0, -0.75, -0.25, -0.5, -1.0, 1.0, -0.25, 0.75, -0.25, -0.5, 1.0, -1.0, 0.0, -0.75, -0.5, -0.5, 0.5, 1.0, 1.0, 0.25, -1.0, 1.0, -0.75, -0.25, 0.75, -0.75, 1.0, -1.0, 0.25, 0.75, -0.25, 1.0, 0.0, 0.25, 1.0, -0.75, -0.5, 0.25, 0.5, -0.5, 0.25, -1.0, 1.0, -0.5, -0.25, 0.5, ]);
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
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query401.destroy()
    
    
    query400.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query400.destroy()
    query400.destroy()
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder400.setPipeline(render_pipeline400);
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const array9 = new Float32Array([0.25, 1.0, -0.25, 0.75, 1.0, 0.75, -0.5, -0.5, -1.0, -0.75, 1.0, -0.25, 0.0, -0.25, -1.0, -0.25, 0.75, 0.25, 0.0, 1.0, 0.75, 1.0, -0.5, 1.0, 0.5, -0.5, -1.0, 0.25, -1.0, -1.0, 0.5, 1.0, 0.25, -1.0, -0.25, -0.25, 0.75, 1.0, 0.5, 1.0, 0.0, 0.5, -0.5, -0.5, 0.25, -0.5, 1.0, -1.0, -1.0, -1.0, -0.75, 0.0, -0.5, 0.75, 0.25, -0.25, 1.0, -0.25, 0.5, 1.0, 0.75, 0.0, -1.0, 0.25, -1.0, -0.5, 0.25, -0.75, 0.75, 0.25, 0.5, 0.25, -0.25, 0.75, 0.5, -0.75, -0.75, -1.0, 0.5, 0.5, 0.25, -0.75, -0.25, -0.75, -1.0, -0.5, -0.75, 1.0, -0.75, 0.25, -0.75, 1.0, 1.0, -0.25, 0.75, 0.0, 0.25, 0.0, 0.25, 1.0, ]);
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder401.popDebugGroup();
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.setPipeline(render_pipeline401);
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    query400.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
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
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    buffer401.destroy()
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    const array10 = new Float32Array([1.0, -1.0, 0.75, 0.75, -0.25, -0.5, -0.75, -0.5, 0.0, -0.5, 0.0, -0.75, 0.25, -0.25, -0.25, 0.5, 1.0, 0.5, 0.5, 1.0, 0.75, -0.5, 0.5, -0.75, -0.5, -0.25, 0.0, -1.0, 1.0, -0.25, -0.5, 0.5, 0.75, -0.75, -0.75, 0.25, 0.0, -1.0, -1.0, -0.25, -0.5, 0.25, 0.5, -0.75, -0.5, -0.5, 1.0, 0.5, 0.0, 0.5, 0.5, 1.0, -0.5, 0.75, -1.0, 0.0, 0.75, 1.0, -0.25, -0.5, 0.25, 1.0, 0.0, -0.75, 0.5, -1.0, 0.75, 0.5, -0.25, 0.75, -0.25, 1.0, -1.0, 0.0, 1.0, -0.75, 1.0, -0.75, 0.75, -0.5, 0.25, -0.5, 0.75, -0.75, -0.5, -1.0, 0.75, 0.5, -1.0, 0.25, 0.5, -0.5, 0.25, 0.0, 0.0, -0.75, -1.0, -0.25, 0.25, 0.25, ]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device60.pushErrorScope("internal");
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    
    query401.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    buffer402.destroy()
    query401.destroy()
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture_view4031 = texture403.createView({ label: "texture_view4031" });
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    command_encoder600.pushDebugGroup("mygroupmarker")
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder601.pushDebugGroup("mygroupmarker")
    
    
    
    query101.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder601.insertDebugMarker("mymarker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    query401.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
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
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
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
    command_encoder601.popDebugGroup()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder400.popDebugGroup();
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query101.destroy()
    
    
    query401.destroy()
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
    command_encoder601.insertDebugMarker("mymarker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const texture_view4041 = texture404.createView({ label: "texture_view4041" });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture_view4032 = texture403.createView({ label: "texture_view4032" });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    
    render_bundle_encoder402.setPipeline(render_pipeline403);
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const array11 = new Float32Array([-0.5, -0.5, -0.25, -0.25, 1.0, 1.0, 1.0, -0.5, 0.0, 1.0, 0.75, 0.75, -1.0, -0.25, -0.75, -0.75, -1.0, 1.0, 0.25, -0.25, -0.25, -0.75, -0.75, 0.0, -1.0, -0.5, 0.0, 0.0, 0.5, -1.0, -1.0, 1.0, -0.25, -0.25, -0.75, 0.5, 0.75, 0.5, -1.0, -0.25, 0.75, 0.5, -0.5, 0.75, -0.25, 0.75, 0.0, 0.5, 1.0, 0.0, -0.25, -0.25, -1.0, 0.75, 0.25, -1.0, 0.5, 0.0, 0.5, 0.25, -1.0, -1.0, 0.0, 1.0, -0.5, 1.0, -0.5, -1.0, -1.0, 0.5, 0.25, 0.75, 0.0, 0.25, 0.0, 0.75, 0.0, -0.75, 0.25, -0.75, -0.75, 0.25, -0.25, 1.0, 0.0, 0.75, -0.25, -1.0, 0.25, 0.5, -0.25, 0.5, 0.5, -0.5, -0.5, 0.0, 0.5, 0.25, -0.75, 0.0, ]);
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
    
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
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
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    buffer600.destroy()
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_bundle_encoder700.popDebugGroup();
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8sint",
        dimension: "2d"
    });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    
    
    
    compute_pass_encoder6000.popDebugGroup()
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
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
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    buffer101.destroy()
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    query100.destroy()
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    texture401.destroy();
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
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout406,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    query600.destroy()
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    query100.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    render_bundle_encoder600.popDebugGroup();
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout406,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    
    
    
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    query602.destroy()
    const array12 = new Float32Array([-1.0, 0.75, -0.75, 0.75, 1.0, 0.25, -0.5, 1.0, -1.0, -0.75, 0.25, -0.75, 0.25, -0.25, 0.0, -0.75, 0.25, -0.25, 1.0, 0.25, -0.5, 1.0, -0.75, -0.25, 0.25, 0.75, 1.0, 0.25, 0.5, 0.5, 0.0, 0.0, 0.75, 0.5, -0.75, 0.5, -0.5, -0.25, -0.75, -1.0, -1.0, 0.5, -0.5, -0.25, 0.75, -0.5, 0.25, 0.0, 0.5, -0.25, 0.5, -0.75, -1.0, -0.75, -0.75, -0.75, -0.25, -0.5, 0.25, 0.25, -0.25, -0.25, 1.0, 0.0, -0.75, 0.0, -0.5, -0.5, 0.75, -0.25, -0.75, -1.0, 0.75, 0.0, 0.25, -0.75, 0.0, 0.0, 0.5, -1.0, 0.0, 0.25, -0.5, -0.5, -0.5, -0.5, -1.0, 1.0, 0.5, -0.75, -1.0, 0.25, 0.25, 0.0, -0.25, 0.0, 0.5, 0.5, -0.75, 0.25, ]);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout103]
    });
    buffer700.destroy()
    query401.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
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
    render_bundle_encoder402.popDebugGroup();
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
    buffer403.destroy()
    texture402.destroy();
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_bundle_encoder602.setPipeline(render_pipeline600);
    
    compute_pass_encoder6020.insertDebugMarker("marker")
    buffer404.destroy()
    texture701.destroy();
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout407,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
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
    
    compute_pass_encoder6020.insertDebugMarker("marker")
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
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
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout409,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture_view4033 = texture403.createView({ label: "texture_view4033" });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    device10.pushErrorScope("out-of-memory");
    texture700.destroy();
    render_bundle_encoder601.popDebugGroup();
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout103]
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.popDebugGroup();
    
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    buffer102.destroy()
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout409,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout407,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.setVertexBuffer(0, buffer101);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("out-of-memory");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder6010.setPipeline(compute_pipeline601);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const texture_view4042 = texture404.createView({ label: "texture_view4042" });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
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
    const compute_pipeline4032 = device40.createComputePipeline({
        label: "compute_pipeline4032",
        layout: pipeline_layout407,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    compute_pass_encoder6000.setPipeline(compute_pipeline601);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder400.popDebugGroup();
    const texture_view4034 = texture403.createView({ label: "texture_view4034" });
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
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4033 = device40.createComputePipeline({
        label: "compute_pipeline4033",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    
    const compute_pipeline4034 = device40.createComputePipeline({
        label: "compute_pipeline4034",
        layout: pipeline_layout409,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    query601.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    const compute_pipeline4035 = device40.createComputePipeline({
        label: "compute_pipeline4035",
        layout: pipeline_layout405,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4036 = device40.createComputePipeline({
        label: "compute_pipeline4036",
        layout: pipeline_layout409,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder102.setPipeline(render_pipeline100);
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder600.popDebugGroup();
    query100.destroy()
    const compute_pipeline4037 = device40.createComputePipeline({
        label: "compute_pipeline4037",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4038 = device40.createComputePipeline({
        label: "compute_pipeline4038",
        layout: pipeline_layout406,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    const compute_pipeline4039 = device40.createComputePipeline({
        label: "compute_pipeline4039",
        layout: pipeline_layout408,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4040 = device40.createComputePipeline({
        label: "compute_pipeline4040",
        layout: pipeline_layout409,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
        layout: compute_pipeline601.getBindGroupLayout(0),
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

    compute_pass_encoder6000.setBindGroup(0, bind_group600);
    const compute_pipeline4041 = device40.createComputePipeline({
        label: "compute_pipeline4041",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    buffer601.destroy()
    query403.destroy()
    
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
    
    
    const compute_pipeline4042 = device40.createComputePipeline({
        label: "compute_pipeline4042",
        layout: pipeline_layout406,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const array13 = new Float32Array([-0.75, 1.0, 1.0, -0.5, 1.0, -0.25, -0.25, 0.0, -1.0, -0.5, 0.0, 0.0, 0.5, 0.25, 1.0, 0.75, 1.0, -0.75, 1.0, 0.25, 0.5, 0.5, 0.75, -0.75, -0.75, -0.25, -0.25, 1.0, -0.75, 0.0, 0.25, 0.5, -0.25, 0.5, -0.75, 0.5, -1.0, 1.0, 1.0, 0.75, -0.25, 1.0, 1.0, -0.5, 0.75, 0.75, -1.0, 0.25, -0.75, 0.75, -0.5, 1.0, -1.0, -1.0, 0.25, -0.75, 0.5, 0.25, 0.75, -0.75, 0.5, 0.25, 0.5, -0.5, 0.75, 1.0, 0.0, 0.25, 0.5, 0.75, -0.75, -1.0, 0.75, 0.25, -0.75, -0.25, 0.75, -0.25, 1.0, -0.25, 0.5, -1.0, 0.0, -0.25, 0.25, 0.5, -1.0, 0.75, -0.25, -1.0, -0.5, -0.25, 0.5, -0.75, 0.0, 0.75, 1.0, -0.5, 0.75, 0.75, ]);
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    compute_pass_encoder6020.popDebugGroup()
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
        layout: compute_pipeline601.getBindGroupLayout(0),
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

    compute_pass_encoder6010.setBindGroup(0, bind_group601);
    
    const compute_pipeline4043 = device40.createComputePipeline({
        label: "compute_pipeline4043",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const compute_pipeline4044 = device40.createComputePipeline({
        label: "compute_pipeline4044",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const compute_pipeline4045 = device40.createComputePipeline({
        label: "compute_pipeline4045",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline4046 = device40.createComputePipeline({
        label: "compute_pipeline4046",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    
    
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    const compute_pipeline4047 = device40.createComputePipeline({
        label: "compute_pipeline4047",
        layout: pipeline_layout407,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    
    query102.destroy()
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4031,
            },
        ],
        occlusionQuerySet: query401
    });
    const compute_pipeline4048 = device40.createComputePipeline({
        label: "compute_pipeline4048",
        layout: pipeline_layout409,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4049 = device40.createComputePipeline({
        label: "compute_pipeline4049",
        layout: pipeline_layout405,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    query604.destroy()
    const compute_pipeline4050 = device40.createComputePipeline({
        label: "compute_pipeline4050",
        layout: pipeline_layout406,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    query402.destroy()
    
    compute_pass_encoder6000.dispatchWorkgroups(100);
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4000.setPipeline(render_pipeline402);
    compute_pass_encoder6020.setPipeline(compute_pipeline602);
    const command_buffer603 = command_encoder603.finish();
    compute_pass_encoder6000.end();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder600.popDebugGroup()
    compute_pass_encoder6010.dispatchWorkgroups(100);
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

    render_pass_encoder4000.setBindGroup(0, bind_group402);
    const command_buffer600 = command_encoder600.finish();
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
        layout: compute_pipeline602.getBindGroupLayout(0),
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

    compute_pass_encoder6020.setBindGroup(0, bind_group602);
    const uint32_6020 = new Uint32Array(3);

    uint32_6020[0] = 100;
    uint32_6020[1] = 1;
    uint32_6020[2] = 1;

    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer608, 0, uint32_6020, 0, uint32_6020.length);

    compute_pass_encoder6020.dispatchWorkgroupsIndirect(buffer608, 0);
    compute_pass_encoder6010.end();
    device60.queue.submit([command_buffer600, command_buffer603, ]);
    compute_pass_encoder6020.end();
    const command_buffer601 = command_encoder601.finish();
    device60.queue.submit([command_buffer601, ]);
    const command_buffer602 = command_encoder602.finish();
}