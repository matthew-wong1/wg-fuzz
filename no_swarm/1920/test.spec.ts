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
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array0 = new Float32Array([-0.5, 0.5, 0.25, 1.0, 0.25, 0.0, -0.25, 0.0, 0.5, 0.0, 0.5, -1.0, -0.25, 1.0, -1.0, 1.0, 0.5, -0.5, -1.0, 0.0, -1.0, 0.75, -0.75, 0.0, 1.0, -0.25, 0.0, 0.75, 1.0, -0.5, 0.5, -0.5, 0.5, 0.75, -0.5, -1.0, -0.5, -0.75, 0.25, 0.0, 0.5, 1.0, -0.5, -0.5, -0.5, -0.5, 0.5, -0.25, 0.5, 0.75, -0.5, -0.75, -0.25, 0.0, -1.0, 0.5, 1.0, -1.0, 0.75, 0.75, -0.25, 0.0, 0.75, -1.0, -1.0, -1.0, 0.0, -0.75, 0.5, 1.0, 0.0, 0.75, 0.25, 0.0, 0.75, 1.0, 0.0, 1.0, -0.25, 0.25, -0.5, 0.0, 0.25, -0.5, -0.5, 0.5, -0.5, -0.75, -0.75, 1.0, -0.5, 0.75, -0.75, 0.0, -1.0, -0.5, -0.25, 0.25, 0.0, -0.5, ]);
    
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    
    const array1 = new Float32Array([-0.75, 0.5, 0.0, -0.5, -0.75, 1.0, -0.5, -1.0, 0.0, 0.75, 0.5, 0.0, 0.5, -0.5, -1.0, -0.5, 0.25, 0.25, -1.0, 0.0, -1.0, 1.0, -1.0, 0.75, -0.75, 1.0, -0.75, -0.5, 0.0, 0.0, 0.0, 0.0, -0.5, 0.25, 1.0, -1.0, 0.5, 0.75, -0.5, -0.5, -0.75, -1.0, -0.25, 0.75, -0.75, 0.0, -0.5, 0.0, 0.25, 1.0, 0.0, -0.75, 1.0, 0.25, 1.0, 1.0, -1.0, -1.0, 0.75, -0.75, 1.0, -0.5, 0.25, 0.0, -1.0, -1.0, 0.0, 0.0, -0.75, -0.25, -0.5, -0.75, -0.75, 0.75, -0.75, 0.75, 1.0, -1.0, 0.5, -1.0, 0.25, -0.25, -0.25, 0.25, 1.0, -0.5, 0.75, -0.5, -0.75, -0.5, 0.0, -1.0, 0.25, 0.5, -1.0, -0.25, 0.0, 1.0, 0.75, -0.25, ]);
    
    const array2 = new Float32Array([0.0, -0.75, -0.5, -0.25, -1.0, -0.75, 0.75, -1.0, 0.25, 0.0, 1.0, -0.25, 0.75, 0.5, 0.25, 0.25, 0.25, -0.5, 0.5, 0.5, -0.75, 0.0, -0.75, -0.75, 0.75, -0.5, -0.25, 0.0, 0.5, 0.25, -0.5, 0.5, -0.25, 0.5, 0.5, 0.0, -1.0, -0.5, -1.0, 0.0, 0.75, -1.0, -0.75, 0.5, 0.75, -1.0, 0.25, 0.25, -1.0, -0.25, -0.5, 0.5, 1.0, 0.25, -0.75, 0.25, -0.75, 1.0, 0.25, -0.75, 0.75, 0.0, -0.75, -0.25, -0.25, -0.5, -0.25, -0.25, -0.25, 0.75, -1.0, 0.0, -0.75, -0.25, 0.75, 1.0, -1.0, 0.75, -0.25, -0.5, -0.25, -0.5, -1.0, 0.25, 1.0, 0.25, 0.75, 1.0, -0.75, -1.0, -0.25, -0.25, -0.25, 0.25, -1.0, -0.5, 0.25, 0.0, -0.75, -0.75, ]);
    command_encoder000.pushDebugGroup("mygroupmarker")
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("internal");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    device10.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device30.destroy();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.destroy();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("out-of-memory");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array3 = new Float32Array([-0.75, 1.0, 0.25, 0.5, -0.75, -1.0, -0.75, -0.75, -0.75, -0.75, -1.0, 0.25, 0.0, 0.75, -1.0, -0.25, 0.25, -0.25, 0.5, 1.0, -1.0, -0.25, 0.0, 0.25, -1.0, -0.5, 0.75, 0.75, -0.5, -1.0, 1.0, -1.0, 0.0, 1.0, -0.75, 0.75, -0.25, 0.75, -0.75, 0.25, 1.0, -1.0, 1.0, 0.75, 0.25, 0.75, -0.25, 0.25, -0.5, -0.25, -1.0, -0.75, 1.0, 0.0, 0.75, 0.0, 0.0, -0.5, -0.75, 0.25, 1.0, -0.75, 1.0, -0.25, -0.75, -0.25, 0.0, -1.0, 0.5, 0.0, 0.25, -1.0, 0.75, 0.0, -1.0, -1.0, -0.5, -0.75, -1.0, -1.0, -0.5, 0.5, 0.0, 1.0, 0.25, 0.25, -0.25, 0.25, 0.75, -1.0, 1.0, 0.0, 0.0, 0.0, 0.5, -0.75, -0.5, 0.25, 0.75, 1.0, ]);
    
    
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    device50.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    device60.destroy();
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device70.pushErrorScope("validation");
    
    
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    const array4 = new Float32Array([1.0, 0.0, 1.0, 0.5, -1.0, -0.75, -0.25, 0.5, -0.25, 0.0, -0.75, -0.5, -1.0, 0.0, -0.75, -1.0, 0.25, -0.25, 0.0, 1.0, 0.75, -1.0, 0.0, 0.75, -1.0, 0.75, -0.5, 0.75, 0.25, -0.75, -1.0, 0.0, -0.75, 0.0, 0.0, 1.0, 0.25, -0.5, -1.0, 0.25, -0.5, 1.0, -0.75, 0.75, -0.25, -0.75, -1.0, 0.0, 1.0, 0.25, 0.0, 1.0, 0.25, -0.5, -0.25, -1.0, 0.0, 0.25, -1.0, -0.5, 0.75, 0.5, -1.0, 0.75, 0.5, 0.5, -0.75, 0.5, -0.75, -1.0, 1.0, 0.5, -1.0, -1.0, -0.75, 0.25, 0.0, 0.25, 0.0, -0.5, -0.25, -1.0, 0.75, 1.0, 0.25, -0.75, -0.75, -0.25, -0.25, 1.0, -0.25, 0.5, -1.0, 0.25, 0.0, 0.5, -1.0, 0.0, -0.75, -0.5, ]);
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view7002 = texture700.createView({ label: "texture_view7002" });
    const array5 = new Float32Array([0.25, -1.0, 0.25, 0.5, -1.0, 0.5, 1.0, 0.75, -1.0, -1.0, -0.25, -0.75, 1.0, 1.0, 0.25, 1.0, 0.5, 0.75, -1.0, -0.5, 0.75, -0.5, 1.0, 0.5, 0.75, 0.0, -0.5, -0.25, 0.75, -0.25, -1.0, 0.75, -1.0, 0.25, 0.0, -1.0, 0.5, -0.5, -0.25, 0.0, -1.0, -1.0, 0.5, -0.5, -0.75, 0.5, 0.75, 1.0, 0.5, -1.0, 0.25, 1.0, 0.25, 0.5, 0.25, -0.75, 0.25, 0.75, 0.0, 0.75, -0.5, -1.0, 0.25, -0.5, 0.0, 0.5, -0.5, -1.0, -0.5, 0.0, 0.75, -1.0, 0.75, 0.0, -0.5, 0.75, 0.75, 1.0, 1.0, 0.0, -1.0, -0.5, 0.75, 0.0, 0.25, 0.75, -0.25, 0.25, -0.75, -1.0, 0.25, -0.25, -0.75, 1.0, -0.75, 0.75, 0.25, 0.75, 0.5, -0.75, ]);
    texture700.destroy();
    
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array6 = new Float32Array([0.25, -1.0, -0.5, -0.5, -0.75, 1.0, -0.75, -0.25, -0.75, -0.5, 1.0, -0.75, -1.0, -0.5, -0.5, 0.25, -1.0, -0.5, -1.0, -0.5, 1.0, -0.75, 0.25, -0.75, -1.0, -0.5, 0.25, -0.75, 0.5, -0.5, 0.25, 0.5, 0.25, -0.25, 0.5, 0.75, -0.5, -0.75, 0.25, 0.25, -0.25, 0.0, 0.0, -1.0, -1.0, 0.0, 0.0, -0.5, 0.5, 1.0, 0.75, -1.0, -0.5, 1.0, 1.0, 0.75, 0.75, 0.5, 0.0, -0.5, 0.0, -0.75, 0.25, 0.0, -0.5, 1.0, -0.75, 0.0, -0.5, 0.75, 0.0, 0.75, -1.0, 0.0, 0.25, 0.25, 1.0, 0.25, 0.25, -0.5, -0.5, 0.5, 0.75, -0.25, -0.5, -0.5, -0.75, 0.5, 0.75, 0.5, -0.25, 1.0, -0.5, 0.25, -1.0, 0.75, -0.25, 0.25, 0.5, 0.75, ]);
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array7 = new Float32Array([1.0, 1.0, 0.75, -1.0, 1.0, 0.5, -0.5, 0.5, -0.75, 0.25, -0.75, -1.0, -1.0, 0.0, 0.0, -1.0, 0.75, -1.0, -0.75, -1.0, -1.0, -0.75, -0.75, 0.5, 0.5, -1.0, 0.0, 0.0, 0.75, 0.75, 0.0, 0.75, -0.5, -0.25, -0.5, -0.75, 0.25, -1.0, -1.0, -0.75, 0.0, -1.0, 0.0, -0.25, 0.5, 0.75, -1.0, 0.75, 0.0, -0.5, 1.0, 0.25, 1.0, 0.75, 0.0, 1.0, -0.5, 0.75, -1.0, 0.5, 0.25, -0.75, -0.5, 0.0, 0.75, -1.0, -0.5, -0.25, 0.5, 0.75, 1.0, 0.75, -1.0, -0.25, 0.0, -0.75, 0.5, -0.5, 0.0, -1.0, 0.25, 0.0, 0.0, 0.5, -1.0, 1.0, -0.75, 0.25, 0.75, 0.25, 0.75, 1.0, 0.0, -0.75, 0.25, 1.0, 0.25, 0.75, -0.5, -0.75, ]);
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    
    
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
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    
    
    compute_pass_encoder7000.popDebugGroup()
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
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
        occlusionQuerySet: undefined
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
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder7000.insertDebugMarker("marker")
    
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    render_pass_encoder7000.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const array8 = new Float32Array([0.75, 0.25, 1.0, -1.0, -0.5, -0.5, -0.75, -0.75, -0.5, 0.75, 0.25, 0.5, -1.0, -0.25, 0.75, -0.5, 0.75, -0.25, 0.0, -0.5, 0.5, -0.5, 0.75, 0.5, 0.0, -0.25, -1.0, 1.0, 1.0, -0.25, 0.0, -1.0, 0.25, 0.25, 1.0, -0.5, -0.75, 0.75, 0.0, -0.75, -0.75, -1.0, 0.25, 1.0, -0.25, 1.0, -1.0, -0.75, 0.0, -1.0, -1.0, -1.0, 0.0, -0.75, -1.0, 0.25, -0.5, -0.75, -0.75, -1.0, 0.75, -0.25, -0.5, -0.25, -0.5, -0.25, -0.5, 1.0, 0.25, -0.5, 0.25, 0.5, 0.75, 1.0, -0.5, 0.5, 0.75, 0.5, 0.5, 0.0, 0.5, 1.0, -0.25, -0.75, 1.0, -0.5, -1.0, -0.75, 1.0, 1.0, -0.5, 0.75, 0.25, -0.25, 0.25, -1.0, -0.75, -0.25, -0.25, -1.0, ]);
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_pass_encoder8000 = command_encoder800.beginRenderPass({
        label: "render_pass_encoder8000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder7000.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    const texture_view8001 = texture800.createView({ label: "texture_view8001" });
    
    
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    device80.pushErrorScope("out-of-memory");
    
    render_pass_encoder8000.insertDebugMarker("marker");
    device80.queue.writeTexture({ texture: texture800 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([1.0, 0.25, -0.75, -1.0, 0.5, 0.25, 1.0, 0.25, -0.75, 0.75, -1.0, -0.75, -0.25, 0.25, 0.0, -0.5, 0.0, 1.0, 1.0, 0.75, -0.25, 1.0, -0.5, 1.0, 1.0, -0.25, 0.0, 0.0, 0.75, 0.75, -0.5, 0.0, 1.0, -0.5, 0.5, 0.75, -0.75, 0.25, -0.25, -0.5, -0.5, 1.0, 0.0, 0.75, 0.5, -0.75, 0.75, 0.25, -1.0, 0.75, -0.5, 0.5, 1.0, 0.5, -1.0, -1.0, 0.5, 0.25, -0.5, -1.0, -0.25, 0.25, 0.0, 1.0, 0.75, 0.0, 0.5, 1.0, 0.75, 1.0, -0.5, 0.0, 0.5, 0.0, -0.5, 0.25, 0.5, -1.0, 1.0, 0.75, -0.5, -0.5, 0.0, -0.25, 0.5, 0.0, -0.25, 0.0, -0.25, 0.5, -0.25, -0.25, -0.5, -0.75, 0.75, -1.0, -0.75, 0.75, 0.75, -1.0, ]);
    
    
    render_bundle_encoder701.setPipeline(render_pipeline702);
    compute_pass_encoder7000.insertDebugMarker("marker")
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    buffer701.destroy()
    
    
    render_pass_encoder7000.setPipeline(render_pipeline700);
    
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
    
    buffer800.destroy()
    compute_pass_encoder7000.popDebugGroup()
    
    compute_pass_encoder7000.setPipeline(compute_pipeline700);
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    buffer800.destroy()
    render_pass_encoder8000.executeBundles([])
    query700.destroy()
    command_encoder700.pushDebugGroup("mygroupmarker")
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout700,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    
    render_bundle_encoder701.popDebugGroup();
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
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
    buffer400.destroy()
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder8000.pushDebugGroup("group_marker");
    command_encoder400.pushDebugGroup("mygroupmarker")
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    query400.destroy()
    texture1001.destroy();
    command_encoder400.insertDebugMarker("mymarker");
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    device90.pushErrorScope("internal");
    render_pass_encoder8000.popDebugGroup();
    command_encoder600.insertDebugMarker("mymarker");
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    device100.pushErrorScope("internal");
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    
    const render_pass_encoder7010 = command_encoder701.beginRenderPass({
        label: "render_pass_encoder7010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    buffer801.destroy()
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    render_bundle_encoder700.insertDebugMarker("marker");
    render_pass_encoder7010.executeBundles([])
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder601.pushDebugGroup("mygroupmarker")
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
        layout: compute_pipeline700.getBindGroupLayout(0),
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

    compute_pass_encoder7000.setBindGroup(0, bind_group700);
    device90.queue.writeTexture({ texture: texture900 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    render_pass_encoder8000.setStencilReference(1);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder7000.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    render_pass_encoder8000.setStencilReference(1);
    render_pass_encoder7010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device90.queue.writeTexture({ texture: texture900 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer704, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer704, 0);
    device90.queue.writeTexture({ texture: texture900 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pass_encoder7011 = command_encoder701.beginRenderPass({
        label: "render_pass_encoder7011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
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
    
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    device80.pushErrorScope("out-of-memory");
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    compute_pass_encoder7000.end();
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer702.destroy()
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const command_buffer901 = command_encoder901.finish();
    render_bundle_encoder702.pushDebugGroup("group_marker");
    const texture_view9010 = texture901.createView({ label: "texture_view9010" });
    command_encoder1000.pushDebugGroup("mygroupmarker")
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16float",
        dimension: "2d"
    });
    device70.queue.writeBuffer(buffer704, 0, array5, 0, array5.length);
    device40.pushErrorScope("internal");
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    render_pass_encoder7000.pushDebugGroup("group_marker");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device70.queue.writeBuffer(buffer704, 0, array0, 0, array0.length);
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device70.queue.writeBuffer(buffer704, 0, array3, 0, array3.length);
    render_pass_encoder8000.executeBundles([])
    render_bundle_encoder701.pushDebugGroup("group_marker");
    device90.queue.writeTexture({ texture: texture900 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.writeBuffer(buffer703, 0, array1, 0, array1.length);
    
    
    render_pass_encoder7010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device70.queue.writeBuffer(buffer704, 0, array7, 0, array7.length);
    device70.queue.writeBuffer(buffer703, 0, array6, 0, array6.length);
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    buffer700.destroy()
    
    render_pass_encoder7011.executeBundles([])
    buffer700.destroy()
    
    const compute_pass_encoder4011 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4011" });
    
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler1002 = device100.createSampler( { label: "sampler1002" } );
    const array10 = new Float32Array([-0.5, -0.5, 0.5, 0.25, 0.5, -0.75, 0.75, -0.75, 1.0, -0.5, -1.0, 0.25, -0.75, -1.0, -1.0, 0.25, 0.5, 0.0, 0.75, 0.25, 0.5, -0.5, 1.0, 0.75, -0.5, 0.5, -0.25, -1.0, 0.25, -1.0, 0.5, -1.0, 1.0, 0.5, -0.5, 0.0, 0.5, 1.0, 0.75, 0.5, -0.5, -0.5, -0.25, -0.75, 0.5, -0.25, 1.0, -1.0, 0.75, -0.5, 0.75, 0.25, 0.5, 0.0, -0.25, -0.75, 0.5, -1.0, 0.25, 0.75, 0.25, -0.75, -0.25, 0.25, 1.0, 0.5, 0.25, -0.5, -0.5, -1.0, 0.0, 1.0, -0.5, -0.75, 0.75, -1.0, 1.0, 1.0, 0.5, -0.5, 0.0, -0.75, 1.0, -0.25, 0.5, 0.75, -0.25, 1.0, 0.75, -0.5, 1.0, 0.5, 0.0, -0.25, -0.25, -0.75, 0.75, 0.25, -1.0, -0.25, ]);
    render_pass_encoder8000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder400.insertDebugMarker("mymarker");
    device70.queue.writeBuffer(buffer704, 0, array3, 0, array3.length);
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view10020 = texture1002.createView({ label: "texture_view10020" });
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    device90.queue.writeTexture({ texture: texture900 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.queue.writeBuffer(buffer704, 0, array8, 0, array8.length);
    compute_pass_encoder4010.popDebugGroup()
    device90.queue.writeTexture({ texture: texture900 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder7011.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    buffer703.destroy()
    
    
    render_pass_encoder7011.setPipeline(render_pipeline700);
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
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
    render_pass_encoder8000.insertDebugMarker("marker");
    
    
    render_bundle_encoder800.popDebugGroup();
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
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
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder7010.setViewport(0, 0, texture700.width / 2, texture700.height / 2, 0, 1);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder1001.insertDebugMarker("mymarker");
    
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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
    
    
    
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1002]
    });
    command_encoder900.pushDebugGroup("mygroupmarker")
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    render_bundle_encoder700.insertDebugMarker("marker");
    render_pass_encoder8000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout1001 = device100.createPipelineLayout({ 
        label: "pipeline_layout1001",
        bindGroupLayouts: [bind_group_layout1000]
    });
    
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    render_bundle_encoder700.setPipeline(render_pipeline700);
    device90.queue.writeTexture({ texture: texture900 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline1000 = device100.createComputePipeline({
        label: "compute_pipeline1000",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1000,
            entryPoint: "main"
        }
    });
    texture900.destroy();
    texture1100.destroy();
    
    const compute_pipeline1001 = device100.createComputePipeline({
        label: "compute_pipeline1001",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1000,
            entryPoint: "main"
        }
    });
    const render_pass_encoder9000 = command_encoder900.beginRenderPass({
        label: "render_pass_encoder9000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view9000,
            },
        ],
        occlusionQuerySet: query900
    });
    buffer700.destroy()
    const command_encoder1101 = device110.createCommandEncoder({ label: "command_encoder1101" });
    device40.queue.writeTexture({ texture: texture400 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    device80.queue.writeBuffer(buffer802, 0, array6, 0, array6.length);
    device70.queue.writeBuffer(buffer705, 0, array1, 0, array1.length);
    command_encoder1101.insertDebugMarker("mymarker");
    const compute_pass_encoder11000 = command_encoder1100.beginComputePass({ label: "compute_pass_encoder11000" });
    const render_pass_encoder10000 = command_encoder1000.beginRenderPass({
        label: "render_pass_encoder10000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view10000,
            },
        ],
        occlusionQuerySet: query1001
    });
    device90.queue.submit([command_buffer901, ]);
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
    render_pass_encoder9000.setViewport(0, 0, texture900.width / 2, texture900.height / 2, 0, 1);
    const pipeline_layout1002 = device100.createPipelineLayout({ 
        label: "pipeline_layout1002",
        bindGroupLayouts: [bind_group_layout1002]
    });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder10000.insertDebugMarker("marker");
    const compute_pass_encoder11010 = command_encoder1101.beginComputePass({ label: "compute_pass_encoder11010" });
    render_pass_encoder9000.pushDebugGroup("group_marker");
    
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    const pipeline_layout1003 = device100.createPipelineLayout({ 
        label: "pipeline_layout1003",
        bindGroupLayouts: [bind_group_layout1001]
    });
    render_bundle_encoder702.setPipeline(render_pipeline703);
    const pipeline_layout1004 = device100.createPipelineLayout({ 
        label: "pipeline_layout1004",
        bindGroupLayouts: [bind_group_layout1000]
    });
    device70.queue.writeBuffer(buffer705, 0, array1, 0, array1.length);
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    render_pass_encoder8000.pushDebugGroup("group_marker");
    const compute_pipeline1002 = device100.createComputePipeline({
        label: "compute_pipeline1002",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1001,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    query400.destroy()
    render_pass_encoder7000.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const compute_pipeline1003 = device100.createComputePipeline({
        label: "compute_pipeline1003",
        layout: pipeline_layout1003,
        compute: {
            module: shader_module1000,
            entryPoint: "main"
        }
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
    device60.pushErrorScope("validation");
    device80.queue.writeBuffer(buffer802, 0, array6, 0, array6.length);
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const compute_pipeline1004 = device100.createComputePipeline({
        label: "compute_pipeline1004",
        layout: pipeline_layout1003,
        compute: {
            module: shader_module1001,
            entryPoint: "main"
        }
    });
    command_encoder1001.insertDebugMarker("mymarker");
    device90.queue.writeTexture({ texture: texture900 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder900.insertDebugMarker("mymarker");
    render_pass_encoder7000.setStencilReference(1);
    const texture_view10001 = texture1000.createView({ label: "texture_view10001" });
    render_pass_encoder7010.executeBundles([render_bundle_encoder702, ])
    
    const compute_pipeline1005 = device100.createComputePipeline({
        label: "compute_pipeline1005",
        layout: pipeline_layout1004,
        compute: {
            module: shader_module1001,
            entryPoint: "main"
        }
    });
    const render_pass_encoder10010 = command_encoder1001.beginRenderPass({
        label: "render_pass_encoder10010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view10020,
            },
        ],
        occlusionQuerySet: query1000
    });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder1000.insertDebugMarker("marker");
    device80.queue.writeTexture({ texture: texture801 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder9000.insertDebugMarker("marker");
    device110.pushErrorScope("internal");
    render_pass_encoder7011.setViewport(0, 0, texture700.width / 2, texture700.height / 2, 0, 1);
    render_pass_encoder8000.insertDebugMarker("marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: render_pipeline703.getBindGroupLayout(0),
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

    render_bundle_encoder702.setBindGroup(0, bind_group701);
    
    compute_pass_encoder4011.pushDebugGroup("group_marker")
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_pass_encoder8000.setScissorRect(0, 0, texture800.width / 2, texture800.height / 2);
    buffer705.destroy()
    
    render_pass_encoder8000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device90.queue.writeTexture({ texture: texture900 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    texture801.destroy();
    device40.queue.writeTexture({ texture: texture401 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query801.destroy()
    
    const array11 = new Float32Array([-0.5, 0.25, -1.0, 0.0, -1.0, 0.5, 0.0, -0.25, 0.5, 0.75, -0.5, -0.5, -0.25, -0.25, 0.5, 0.0, 0.0, -0.25, 1.0, -0.5, 0.0, 0.5, 1.0, 0.0, 0.0, 0.25, 0.75, 1.0, 0.75, 0.75, 0.5, 1.0, 0.75, -0.25, 0.5, -1.0, 0.0, 0.25, 0.5, -0.5, -0.75, 0.25, 0.75, -0.75, -1.0, -0.5, 0.0, -0.75, -0.5, -0.25, 0.0, 0.5, -0.25, 0.75, -0.25, 0.25, -0.75, 0.25, 1.0, 0.5, -0.5, 0.5, 1.0, 0.0, -0.25, 0.0, 1.0, -0.75, 0.0, -0.25, 0.5, 0.75, 0.5, 0.5, 1.0, -0.5, 0.75, -1.0, 0.5, -1.0, 0.75, 0.25, 0.25, 0.75, -0.75, 0.5, -0.5, -1.0, -1.0, 1.0, 0.25, 0.5, -0.25, 0.0, -0.75, -0.75, -0.5, 0.0, -0.75, 0.5, ]);
    const command_buffer800 = command_encoder800.finish();
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4011.popDebugGroup()
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
    
    const bind_group702 = device70.createBindGroup({
        label: "bind_group702",
        layout: render_pipeline703.getBindGroupLayout(0),
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

    render_pass_encoder7010.setBindGroup(0, bind_group702);
    device110.queue.submit([]);
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
    
    const bind_group703 = device70.createBindGroup({
        label: "bind_group703",
        layout: render_pipeline700.getBindGroupLayout(0),
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

    render_pass_encoder7011.setBindGroup(0, bind_group703);
    device50.queue.submit([]);
    render_pass_encoder7011.setVertexBuffer(0, buffer7010);
    compute_pass_encoder11000.popDebugGroup()
    render_pass_encoder7011.drawIndirect(buffer706, 0);
    render_pass_encoder8000.popDebugGroup();
    render_pass_encoder7011.drawIndirect(buffer705, 0);
    device70.queue.submit([]);
    render_pass_encoder7010.setVertexBuffer(0, buffer7011);
    render_pass_encoder9000.popDebugGroup();
    command_encoder000.popDebugGroup()
    const command_buffer1001 = command_encoder1001.finish();
    render_pass_encoder7000.popDebugGroup();
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
    
    const bind_group704 = device70.createBindGroup({
        label: "bind_group704",
        layout: render_pipeline700.getBindGroupLayout(0),
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

    render_pass_encoder7000.setBindGroup(0, bind_group704);
    command_encoder900.popDebugGroup()
    const command_buffer1100 = command_encoder1100.finish();
    render_pass_encoder7011.setIndexBuffer(buffer700, "uint16");
    device90.queue.submit([]);
    render_pass_encoder7010.drawIndirect(buffer704, 0);
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder7011.drawIndexedIndirect(buffer708, 0);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder7011.setIndexBuffer(buffer707, "uint16");
    render_pass_encoder8000.popDebugGroup();
    render_pass_encoder7011.drawIndexedIndirect(buffer709, 0);
    device110.queue.submit([command_buffer1100, ]);
    render_pass_encoder7011.popDebugGroup();
    compute_pass_encoder11010.popDebugGroup()
    render_pass_encoder7000.setVertexBuffer(0, buffer7013);
    render_pass_encoder7000.drawIndirect(buffer704, 0);
    render_pass_encoder7000.end();
    render_pass_encoder7000.end();
    command_encoder700.popDebugGroup()
    device90.queue.submit([]);
    device100.queue.submit([command_buffer1001, ]);
    const buffer7014 = device70.createBuffer({
        label: "buffer7014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7015 = device70.createBuffer({
        label: "buffer7015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group705 = device70.createBindGroup({
        label: "bind_group705",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7015,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group705);
    compute_pass_encoder11010.popDebugGroup()
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder7011.end();
    const command_buffer900 = command_encoder900.finish();
    const command_buffer000 = command_encoder000.finish();
    device90.queue.submit([command_buffer900, command_buffer901, ]);
    render_pass_encoder7010.drawIndirect(buffer703, 0);
    const command_buffer701 = command_encoder701.finish();
    compute_pass_encoder4010.popDebugGroup()
    command_encoder601.popDebugGroup()
    device90.queue.submit([command_buffer901, ]);
    const command_buffer700 = command_encoder700.finish();
    compute_pass_encoder4011.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder7000.dispatchWorkgroups(100);
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder9000.popDebugGroup();
    compute_pass_encoder11000.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer7016 = device70.createBuffer({
        label: "buffer7016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7016, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer7016, 0);
    device70.queue.submit([command_buffer700, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder7000.drawIndirect(buffer704, 0);
    device90.queue.submit([command_buffer901, ]);
    render_pass_encoder7010.drawIndirect(buffer704, 0);
    render_pass_encoder4000.endOcclusionQuery()
    render_pass_encoder7010.popDebugGroup();
    device60.queue.submit([command_buffer600, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder7010.drawIndirect(buffer700, 0);
    render_pass_encoder7011.setIndexBuffer(buffer7013, "uint16");
    render_pass_encoder4000.popDebugGroup();
    device110.queue.submit([command_buffer1100, ]);
    device110.queue.submit([command_buffer1100, ]);
    render_pass_encoder7000.setIndexBuffer(buffer701, "uint16");
    compute_pass_encoder11010.popDebugGroup()
    render_pass_encoder9000.popDebugGroup();
    render_pass_encoder7000.end();
    render_pass_encoder7010.end();
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder7000.drawIndirect(buffer7016, 0);
    const buffer7017 = device70.createBuffer({
        label: "buffer7017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7018 = device70.createBuffer({
        label: "buffer7018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group706 = device70.createBindGroup({
        label: "bind_group706",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7018,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group706);
    render_pass_encoder7011.popDebugGroup();
    device90.queue.submit([]);
    compute_pass_encoder7000.end();
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder10010.popDebugGroup();
    render_pass_encoder7000.drawIndirect(buffer7016, 0);
    render_pass_encoder7010.drawIndirect(buffer709, 0);
    compute_pass_encoder7000.end();
    render_pass_encoder7010.setIndexBuffer(buffer709, "uint16");
    render_pass_encoder9000.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder7010.drawIndexedIndirect(buffer704, 0);
    compute_pass_encoder7000.end();
    compute_pass_encoder11000.popDebugGroup()
    render_pass_encoder8000.popDebugGroup();
    render_pass_encoder7011.drawIndirect(buffer705, 0);
    device90.queue.submit([command_buffer900, ]);
    device70.queue.submit([command_buffer701, ]);
    const command_buffer1101 = command_encoder1101.finish();
    device40.queue.submit([]);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder7010.drawIndirect(buffer705, 0);
    compute_pass_encoder4010.popDebugGroup()
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder7000.end();
    device100.queue.submit([]);
    render_pass_encoder7010.drawIndirect(buffer704, 0);
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder7000.drawIndexed(3);
    render_pass_encoder7010.setIndexBuffer(buffer705, "uint16");
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder7000.drawIndirect(buffer7016, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder7000.end();
    device110.queue.submit([command_buffer1101, ]);
    compute_pass_encoder11010.popDebugGroup()
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder10010.popDebugGroup();
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder7000.end();
    render_pass_encoder7011.end();
    render_pass_encoder7011.end();
    device80.queue.submit([]);
    device90.queue.submit([command_buffer901, ]);
    render_pass_encoder4000.endOcclusionQuery()
    device110.queue.submit([command_buffer1101, ]);
    render_pass_encoder7010.end();
    render_pass_encoder8000.popDebugGroup();
    render_pass_encoder7011.drawIndexedIndirect(buffer7017, 0);
    command_encoder400.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder7010.setIndexBuffer(buffer700, "uint16");
    device90.queue.submit([command_buffer901, ]);
    render_pass_encoder7010.popDebugGroup();
    render_pass_encoder7010.popDebugGroup();
    render_pass_encoder7011.drawIndirect(buffer7010, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder7010.drawIndirect(buffer7016, 0);
    compute_pass_encoder7000.popDebugGroup()
    render_pass_encoder10010.popDebugGroup();
    device110.queue.submit([]);
    compute_pass_encoder7000.end();
    compute_pass_encoder7000.end();
    device110.queue.submit([command_buffer1101, ]);
    render_pass_encoder7010.end();
    device70.queue.submit([command_buffer701, ]);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder7000.drawIndirect(buffer705, 0);
    render_pass_encoder7011.popDebugGroup();
    render_pass_encoder7011.drawIndirect(buffer704, 0);
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder7000.drawIndirect(buffer704, 0);
    render_pass_encoder10010.popDebugGroup();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder10000.popDebugGroup();
    const command_buffer400 = command_encoder400.finish();
    device90.queue.submit([command_buffer901, ]);
    render_pass_encoder7000.drawIndexedIndirect(buffer7016, 0);
    render_pass_encoder7000.drawIndexedIndirect(buffer704, 0);
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    render_pass_encoder7000.drawIndirect(buffer704, 0);
    device70.queue.submit([command_buffer701, ]);
    device70.queue.submit([command_buffer700, ]);
    device90.queue.submit([command_buffer900, ]);
    render_pass_encoder7010.setIndexBuffer(buffer702, "uint16");
    render_pass_encoder7000.end();
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder7010.popDebugGroup();
    device80.queue.submit([]);
    render_pass_encoder7000.drawIndirect(buffer705, 0);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder7000.popDebugGroup()
    render_pass_encoder4000.endOcclusionQuery()
    render_pass_encoder7011.drawIndexed(3);
    render_pass_encoder10010.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder8000.popDebugGroup();
    render_pass_encoder7010.drawIndexedIndirect(buffer705, 0);
    render_pass_encoder10010.popDebugGroup();
    render_pass_encoder7010.end();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder7000.draw(3);
    render_pass_encoder7010.end();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder7010.drawIndirect(buffer7016, 0);
    render_pass_encoder7011.setIndexBuffer(buffer705, "uint16");
    compute_pass_encoder7000.end();
    device100.queue.submit([]);
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer7019 = device70.createBuffer({
        label: "buffer7019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7019, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer7019, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder7000.end();
    render_pass_encoder7000.setIndexBuffer(buffer703, "uint16");
    render_pass_encoder10000.popDebugGroup();
    render_pass_encoder7011.end();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder7010.end();
    render_pass_encoder7000.drawIndexedIndirect(buffer7016, 0);
    render_pass_encoder7011.popDebugGroup();
    render_pass_encoder9000.popDebugGroup();
    render_pass_encoder7000.end();
    render_pass_encoder7000.popDebugGroup();
    compute_pass_encoder11000.popDebugGroup()
    command_encoder1000.popDebugGroup()
    render_pass_encoder7011.drawIndirect(buffer7016, 0);
    device110.queue.submit([command_buffer1100, ]);
    compute_pass_encoder11000.popDebugGroup()
    render_pass_encoder7011.setIndexBuffer(buffer7019, "uint16");
    render_pass_encoder9000.popDebugGroup();
    render_pass_encoder7011.drawIndexedIndirect(buffer7011, 0);
    device100.queue.submit([command_buffer1001, ]);
    device110.queue.submit([]);
    render_pass_encoder7010.drawIndexedIndirect(buffer702, 0);
    compute_pass_encoder11000.popDebugGroup()
    render_pass_encoder7010.drawIndirect(buffer704, 0);
    compute_pass_encoder7000.popDebugGroup()
    device40.queue.submit([]);
    const command_buffer1000 = command_encoder1000.finish();
    device100.queue.submit([command_buffer1000, ]);
    compute_pass_encoder7000.dispatchWorkgroups(100);
    render_pass_encoder7010.end();
    compute_pass_encoder11010.popDebugGroup()
    render_pass_encoder4000.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder7011.end();
    render_pass_encoder7011.setIndexBuffer(buffer708, "uint16");
    render_pass_encoder10000.popDebugGroup();
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer7020 = device70.createBuffer({
        label: "buffer7020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7020, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer7020, 0);
    render_pass_encoder8000.popDebugGroup();
    compute_pass_encoder11000.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    device70.queue.submit([command_buffer700, ]);
    device40.queue.submit([command_buffer400, ]);
    device110.queue.submit([]);
    device90.queue.submit([command_buffer901, ]);
    render_pass_encoder7010.end();
    render_pass_encoder7000.end();
    render_pass_encoder8000.popDebugGroup();
    render_pass_encoder7010.popDebugGroup();
    device100.queue.submit([command_buffer1001, ]);
    device80.queue.submit([]);
    device80.queue.submit([]);
    render_pass_encoder7011.drawIndirect(buffer7020, 0);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder11000.popDebugGroup()
    compute_pass_encoder11000.popDebugGroup()
    render_pass_encoder7011.end();
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder7000.drawIndexedIndirect(buffer709, 0);
    render_pass_encoder7011.drawIndirect(buffer7016, 0);
    render_pass_encoder7010.drawIndexedIndirect(buffer7020, 0);
    const buffer7021 = device70.createBuffer({
        label: "buffer7021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7022 = device70.createBuffer({
        label: "buffer7022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group707 = device70.createBindGroup({
        label: "bind_group707",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7022,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group707);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder4011.popDebugGroup()
    device100.queue.submit([command_buffer1000, ]);
    render_pass_encoder7000.drawIndexedIndirect(buffer709, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder9000.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder7010.popDebugGroup();
    render_pass_encoder7000.drawIndexedIndirect(buffer7012, 0);
    render_pass_encoder7010.drawIndexedIndirect(buffer7020, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder7011.drawIndirect(buffer7016, 0);
    compute_pass_encoder11010.popDebugGroup()
    device90.queue.submit([command_buffer900, ]);
    device80.queue.submit([command_buffer800, ]);
    device110.queue.submit([]);
    device100.queue.submit([]);
    render_pass_encoder7011.end();
    render_pass_encoder7011.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    const buffer7023 = device70.createBuffer({
        label: "buffer7023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7024 = device70.createBuffer({
        label: "buffer7024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group708 = device70.createBindGroup({
        label: "bind_group708",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7024,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group708);
    device90.queue.submit([]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder7010.end();
    compute_pass_encoder11000.popDebugGroup()
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    compute_pass_encoder7000.end();
    render_pass_encoder10010.popDebugGroup();
    device90.queue.submit([command_buffer901, ]);
    compute_pass_encoder7000.dispatchWorkgroups(100);
    render_pass_encoder7000.drawIndirect(buffer7016, 0);
    const buffer7025 = device70.createBuffer({
        label: "buffer7025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7026 = device70.createBuffer({
        label: "buffer7026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group709 = device70.createBindGroup({
        label: "bind_group709",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7026,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group709);
    render_pass_encoder7011.end();
    render_pass_encoder9000.popDebugGroup();
    device100.queue.submit([command_buffer1001, ]);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder9000.popDebugGroup();
    compute_pass_encoder11010.popDebugGroup()
    render_pass_encoder4000.endOcclusionQuery()
    device110.queue.submit([]);
    render_pass_encoder7010.end();
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder10000.popDebugGroup();
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder11010.popDebugGroup()
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder7010.drawIndexedIndirect(buffer704, 0);
    render_pass_encoder7000.end();
    render_pass_encoder7011.popDebugGroup();
    render_pass_encoder7000.drawIndexedIndirect(buffer7017, 0);
    compute_pass_encoder11010.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    device90.queue.submit([]);
    render_pass_encoder7011.popDebugGroup();
    device10.queue.submit([]);
    device80.queue.submit([]);
    render_pass_encoder7011.drawIndirect(buffer7017, 0);
    device90.queue.submit([command_buffer900, ]);
    render_pass_encoder9000.popDebugGroup();
    device40.queue.submit([]);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder7000.drawIndirect(buffer7019, 0);
    render_pass_encoder9000.popDebugGroup();
    device100.queue.submit([command_buffer1000, ]);
    render_pass_encoder7000.drawIndirect(buffer7012, 0);
    device100.queue.submit([]);
    render_pass_encoder7000.drawIndexedIndirect(buffer7012, 0);
    device70.queue.submit([]);
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder7010.drawIndexedIndirect(buffer703, 0);
    device40.queue.submit([command_buffer402, ]);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder7000.dispatchWorkgroups(100);
    render_pass_encoder7010.end();
    render_pass_encoder7011.drawIndexedIndirect(buffer7018, 0);
    render_pass_encoder7011.popDebugGroup();
    render_pass_encoder7010.drawIndirect(buffer7011, 0);
    render_pass_encoder7010.drawIndexed(3);
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder4000.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder4000.endOcclusionQuery()
    device90.queue.submit([command_buffer901, ]);
    render_pass_encoder4000.endOcclusionQuery()
    render_pass_encoder4000.endOcclusionQuery()
    device40.queue.submit([command_buffer402, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder7010.drawIndirect(buffer708, 0);
    render_pass_encoder7010.popDebugGroup();
    device90.queue.submit([command_buffer900, ]);
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder7000.end();
    device80.queue.submit([]);
    render_pass_encoder8000.popDebugGroup();
    render_pass_encoder7011.popDebugGroup();
    render_pass_encoder7000.drawIndexed(3);
    render_pass_encoder7011.drawIndexed(3);
    render_pass_encoder7000.setIndexBuffer(buffer707, "uint16");
    render_pass_encoder8000.popDebugGroup();
    device70.queue.submit([]);
    render_pass_encoder7011.end();
    render_pass_encoder7011.draw(3);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder9000.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder7010.drawIndirect(buffer7026, 0);
    render_pass_encoder7010.popDebugGroup();
    render_pass_encoder7010.drawIndexedIndirect(buffer702, 0);
    device80.queue.submit([]);
    render_pass_encoder10010.popDebugGroup();
    render_pass_encoder7011.drawIndexedIndirect(buffer707, 0);
    render_pass_encoder10000.popDebugGroup();
    render_pass_encoder7010.drawIndirect(buffer7019, 0);
    device40.queue.submit([command_buffer402, ]);
    device110.queue.submit([command_buffer1101, ]);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder7010.drawIndirect(buffer7011, 0);
    device100.queue.submit([command_buffer1000, ]);
    device100.queue.submit([]);
    compute_pass_encoder11000.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder7010.drawIndexedIndirect(buffer704, 0);
    render_pass_encoder7010.drawIndexedIndirect(buffer7020, 0);
    render_pass_encoder9000.popDebugGroup();
    device70.queue.submit([]);
    device110.queue.submit([]);
    render_pass_encoder7000.drawIndirect(buffer7020, 0);
    render_pass_encoder7000.drawIndirect(buffer709, 0);
    render_pass_encoder10010.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder7000.drawIndirect(buffer700, 0);
    render_pass_encoder4000.endOcclusionQuery()
    render_pass_encoder10010.popDebugGroup();
    device90.queue.submit([]);
    render_pass_encoder7000.drawIndexed(3);
    device80.queue.submit([command_buffer800, ]);
    device100.queue.submit([]);
    device110.queue.submit([command_buffer1100, ]);
    device90.queue.submit([command_buffer901, ]);
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder11010.popDebugGroup()
    compute_pass_encoder7000.popDebugGroup()
    render_pass_encoder7000.drawIndirect(buffer702, 0);
    render_pass_encoder10000.popDebugGroup();
    device110.queue.submit([]);
    const buffer7027 = device70.createBuffer({
        label: "buffer7027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7028 = device70.createBuffer({
        label: "buffer7028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group7010 = device70.createBindGroup({
        label: "bind_group7010",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7028,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group7010);
    device110.queue.submit([]);
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder7011.drawIndirect(buffer7019, 0);
    render_pass_encoder7011.drawIndirect(buffer7024, 0);
    render_pass_encoder10000.popDebugGroup();
    device40.queue.submit([]);
    compute_pass_encoder4011.popDebugGroup()
    device100.queue.submit([command_buffer1001, ]);
    device110.queue.submit([command_buffer1101, ]);
    render_pass_encoder7011.drawIndirect(buffer7020, 0);
    device100.queue.submit([]);
}