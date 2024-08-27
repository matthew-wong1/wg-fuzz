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
    
    
    const array0 = new Float32Array([-1.0, 0.75, -0.5, -0.5, 0.5, 0.75, -0.25, -0.75, 0.75, -1.0, -0.75, 0.5, -0.5, -0.75, -1.0, -0.75, -0.25, -0.25, -0.75, 0.0, 0.75, -0.5, 0.0, -0.25, 0.0, 0.0, -1.0, -1.0, 0.75, 0.25, 0.25, 0.0, -0.5, -0.75, 0.5, 0.25, 0.0, 0.75, -0.5, -0.75, 1.0, 0.75, -0.25, 0.5, 0.75, 0.5, 1.0, -0.75, -1.0, 0.75, 0.25, 0.25, -1.0, -1.0, 0.75, -0.5, 0.0, -0.25, 0.25, 1.0, 0.25, -0.75, -1.0, 0.0, -1.0, 1.0, 0.25, 0.75, -0.25, -0.75, -0.75, -0.25, 0.0, 0.75, -0.75, 0.0, -0.75, -0.5, 0.75, 0.5, -0.75, 0.75, 0.0, 0.5, -0.25, -0.5, 0.0, -0.5, 0.5, -0.25, -1.0, -0.75, 1.0, -0.25, -0.25, -0.25, -0.25, 1.0, -0.25, 1.0, ]);
    
    
    
    const array1 = new Float32Array([0.75, 0.25, -1.0, 0.25, 0.0, 1.0, 0.0, 0.75, 0.0, 0.5, 0.25, -0.25, 0.75, 0.75, -0.25, 0.0, 1.0, 0.75, 1.0, 0.75, 0.25, 1.0, -0.25, 0.5, -0.75, 0.5, 0.5, 1.0, -0.75, 0.0, 0.25, -0.25, 0.75, 1.0, -0.5, -1.0, -1.0, -0.5, 1.0, -0.25, 0.5, 0.5, 0.75, -1.0, 0.25, 0.25, 0.75, -0.25, -0.75, 0.0, -0.25, -0.75, 0.25, 1.0, 0.0, 0.25, 1.0, -0.25, 0.75, -0.75, 0.0, 0.75, 0.5, -0.5, -0.25, -1.0, 0.5, -0.25, -1.0, -0.25, 0.0, -0.5, 1.0, -0.5, -0.75, 0.25, -0.75, -0.25, -0.75, -1.0, 1.0, 0.75, 1.0, 1.0, -0.75, -0.75, 0.0, -1.0, 0.75, -0.75, -0.5, -0.25, 0.0, 0.5, 0.25, 0.0, -1.0, -1.0, -1.0, -1.0, ]);
    
    
    const array2 = new Float32Array([0.0, 0.0, -0.5, -0.75, 0.5, 1.0, -0.75, 0.75, 0.0, -0.25, 0.0, 0.75, -1.0, 0.75, -0.25, -0.25, 0.5, -0.75, 0.25, 0.75, -0.75, 1.0, -1.0, -0.25, -0.75, 0.25, 0.75, 0.75, 0.25, 0.75, 0.5, 0.75, -0.25, 0.75, -0.25, 0.0, 0.0, 1.0, -0.75, 0.0, 1.0, -0.25, 0.0, 0.0, 0.75, 1.0, 0.75, 0.75, -0.25, -1.0, -0.5, -0.25, -0.5, -0.25, 0.5, 0.75, -0.25, 1.0, -0.75, 0.5, -0.25, 0.25, -0.5, 1.0, -1.0, 0.0, -1.0, -1.0, -0.75, 0.5, -0.25, 0.25, -0.5, 0.5, 0.75, -0.25, -0.25, -0.25, -0.75, 0.75, -0.5, -0.5, 1.0, 0.0, -1.0, 0.0, 1.0, 0.75, -0.5, -0.75, 1.0, 1.0, 1.0, 0.5, 0.75, -1.0, -0.25, -0.25, 1.0, 0.5, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([1.0, 0.75, 0.75, -0.25, 0.75, 0.5, -1.0, 0.5, -1.0, -0.25, 0.5, -0.5, -0.25, 0.75, 0.75, 0.75, -1.0, 0.5, -1.0, 0.25, 0.0, -1.0, -0.5, -0.5, 0.0, 0.75, 1.0, 0.5, 0.5, 0.75, -0.5, -0.5, -0.75, 0.5, -1.0, -0.5, -0.75, 0.0, -0.75, -1.0, 0.25, 0.5, 0.5, -0.25, -0.75, -0.75, 0.0, 0.5, 0.0, -1.0, 0.25, 0.5, -0.25, -1.0, 0.5, -0.25, -0.25, 1.0, -0.5, -0.5, -0.25, 0.5, 0.0, 0.0, -0.25, -0.5, -0.25, -0.5, -0.5, -1.0, 0.0, 0.5, 0.25, -1.0, 0.25, -0.25, 0.75, 0.5, -0.75, 1.0, -1.0, 0.75, 0.75, 1.0, -0.5, 0.75, 0.25, 0.5, 0.75, 0.5, -0.5, 0.25, 0.25, -0.25, 0.75, 0.0, -0.5, 0.25, 0.5, 0.75, ]);
    
    
    const array4 = new Float32Array([1.0, -1.0, 1.0, 0.5, -0.5, 0.25, 0.0, -0.25, 0.5, -0.75, 1.0, 1.0, -0.25, 0.25, -0.25, 0.0, 0.25, 0.5, -1.0, -0.25, 1.0, 0.5, 0.5, 0.25, 0.75, 0.0, -0.5, 0.0, 0.0, 0.75, -0.75, 1.0, 0.5, -1.0, -0.5, 0.0, -0.25, -1.0, 0.75, 0.0, 0.0, -1.0, -0.5, -0.75, -0.75, -0.25, 0.25, -0.25, 0.75, -1.0, -0.25, 0.0, -1.0, -1.0, -0.25, -1.0, 0.0, -0.75, 0.25, -0.75, 0.25, -0.5, 0.75, 0.0, 0.25, -0.25, -0.5, -0.75, 1.0, -0.5, 0.5, -1.0, 0.0, -0.75, 1.0, -0.75, -0.5, -1.0, 0.25, -1.0, -0.5, 0.0, 0.25, 0.5, 0.5, 0.5, -0.25, 0.0, 1.0, -1.0, -0.5, 0.75, -0.5, 0.25, 1.0, 1.0, 0.0, 1.0, 0.0, 0.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array5 = new Float32Array([0.5, 0.75, -0.5, -0.5, -1.0, 1.0, -0.25, 0.0, 0.0, 1.0, 0.0, -0.25, 0.5, 0.25, 0.75, -1.0, 0.75, -0.5, -1.0, 0.0, 0.25, -0.25, -1.0, 1.0, 0.75, -0.25, -1.0, 1.0, -0.5, 1.0, 0.5, -1.0, 0.0, 1.0, 0.25, 0.5, -1.0, 0.25, -1.0, -0.5, 0.5, 0.0, 0.75, -0.25, -0.75, 0.75, -0.75, -0.75, -1.0, -0.25, -1.0, 0.5, -1.0, 0.75, -1.0, -0.75, 0.5, 0.5, 0.25, 1.0, -1.0, 1.0, -0.25, 0.75, -0.5, -0.5, 0.0, -0.5, -1.0, 1.0, -1.0, 0.5, 1.0, -0.75, 1.0, -0.75, -0.5, 1.0, 0.5, -0.5, 0.0, 0.75, 0.0, 0.0, 0.5, 0.25, -1.0, 0.0, 0.5, 0.75, 0.5, -0.5, -1.0, -0.5, -0.75, 0.25, -0.25, -0.25, 1.0, 1.0, ]);
    const array6 = new Float32Array([0.75, -0.5, -0.75, -0.25, 0.75, 0.75, 0.0, 0.25, 0.0, -0.25, 0.25, 1.0, 0.5, 0.75, -0.5, 0.5, -1.0, -0.25, 0.0, 0.0, -0.5, 0.25, -0.75, 0.5, 0.25, 0.75, -0.25, 0.75, -1.0, 0.25, 0.0, -0.5, 1.0, -1.0, 1.0, 1.0, 1.0, 0.25, 1.0, 1.0, -0.25, -1.0, -0.25, 0.25, 1.0, -0.75, -1.0, 0.25, -1.0, 0.75, -1.0, -1.0, -0.25, -0.5, -0.75, 0.5, -0.5, -0.5, 1.0, 1.0, 0.75, 0.75, 1.0, -0.75, 1.0, -0.75, 0.0, 0.75, 0.25, 0.25, 0.0, -1.0, -0.25, -1.0, 0.5, -1.0, 0.0, 0.25, 0.75, 0.75, -0.5, 1.0, 0.5, -0.5, -0.75, 0.25, -0.25, -0.25, 0.0, -0.25, 0.75, -0.75, 0.0, 0.5, -0.75, 0.0, 0.75, -1.0, 1.0, 0.5, ]);
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
    device20.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("internal");
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder000.pushDebugGroup("mygroupmarker")
    query000.destroy()
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder001.insertDebugMarker("mymarker");
    buffer000.destroy()
    command_encoder001.insertDebugMarker("mymarker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    
    
    const array7 = new Float32Array([-0.75, -0.75, -0.75, 0.5, 0.25, 0.25, 0.0, -0.25, -0.75, 0.75, 0.5, 0.25, 1.0, 0.5, 0.75, 0.25, 0.25, 0.75, 1.0, 0.25, 0.75, -0.75, -0.5, 1.0, -0.25, 1.0, 0.75, -1.0, 0.25, -0.5, -0.75, -1.0, -0.75, 0.75, -0.5, -0.5, 0.25, 0.25, -1.0, 0.0, 0.5, 0.75, -0.5, -0.75, -1.0, 0.25, 0.5, 0.25, -0.75, -0.75, -0.75, -0.75, 0.5, -0.75, -0.25, 0.25, -0.5, 0.5, -0.5, 0.75, -0.25, 0.5, 0.0, 0.25, 0.0, -0.5, -1.0, -1.0, 1.0, 0.75, 1.0, -1.0, 1.0, 0.75, 0.75, 0.25, 0.75, -0.75, 1.0, 0.75, 0.0, -1.0, 0.0, -0.25, 0.75, 0.75, 0.25, -0.75, 0.25, -0.5, 0.5, -0.25, 0.0, 0.75, 0.0, 1.0, 0.25, 0.5, 0.25, -0.5, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array8 = new Float32Array([0.75, 0.75, 0.5, -0.75, -1.0, -1.0, 0.75, 0.0, -0.5, 0.5, -0.5, -1.0, -0.75, -1.0, 0.5, -0.25, 0.5, 0.75, 0.75, 0.25, 0.25, 1.0, 0.5, -0.5, -0.5, 0.5, 0.25, 0.5, -0.75, 0.25, -1.0, -0.75, -0.75, -0.75, -1.0, -1.0, 1.0, 0.25, 1.0, -0.25, -0.25, 0.0, 0.25, -0.75, -0.75, 0.75, -0.5, 0.25, -0.75, 0.5, -0.75, 0.5, -1.0, 0.75, 0.5, -0.25, -1.0, 0.5, 0.25, 1.0, -1.0, -0.25, -0.5, 1.0, -0.5, -0.5, 0.0, 1.0, 0.25, 0.0, 0.75, -0.25, -1.0, 0.0, 0.25, 0.5, 0.0, -1.0, -0.5, -1.0, 0.5, 1.0, 0.5, 0.75, -1.0, 0.25, -0.25, -0.5, 0.75, -0.5, -0.75, 0.75, -0.25, -0.5, -0.75, 0.75, -0.25, 0.0, 0.75, 0.75, ]);
    const command_buffer300 = command_encoder300.finish();
    
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
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const command_buffer001 = command_encoder001.finish();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query000.destroy()
    
    const array9 = new Float32Array([0.5, -0.5, -0.5, -0.5, 0.0, 0.75, -1.0, 0.5, 0.25, 1.0, 0.5, -0.25, -0.75, -0.25, -0.25, 0.25, -0.75, -0.5, 0.5, 0.75, 0.75, 1.0, -0.5, -1.0, 1.0, 0.5, 0.0, 0.25, 0.5, -0.25, 0.75, 1.0, 0.0, -0.75, -1.0, 0.25, -0.25, 1.0, 1.0, 0.25, 0.75, -0.75, -0.5, 1.0, 0.5, -0.75, 0.0, 1.0, -1.0, 0.75, 0.25, 0.75, 0.75, 0.5, -0.5, 0.5, 0.75, 0.75, -1.0, -1.0, 0.5, 0.25, 0.0, -0.25, 1.0, -0.75, -1.0, -0.75, -0.25, 0.75, -0.75, 1.0, -0.5, -1.0, -1.0, -0.75, 1.0, -0.25, 1.0, 1.0, 0.5, 0.25, -0.25, -1.0, 0.25, 1.0, -1.0, -0.5, -0.25, 1.0, 0.5, -0.5, 0.75, -0.75, 0.25, 0.0, 0.5, 1.0, 0.5, 0.5, ]);
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    const array10 = new Float32Array([0.0, 0.75, 0.0, 0.5, -1.0, 0.75, 1.0, 0.75, 0.0, 0.75, 0.5, 1.0, -0.75, -1.0, -1.0, 0.0, 0.25, -0.5, 0.25, 0.0, -1.0, 0.75, -1.0, 0.5, 0.25, 0.0, -0.25, -1.0, 0.5, 0.0, 0.75, 0.25, -0.75, 1.0, 0.5, 1.0, 1.0, 0.75, 1.0, -0.5, -0.75, -0.5, -0.5, 0.5, -0.75, 0.5, -0.25, 0.75, 1.0, -0.5, -0.25, 0.5, 0.0, 0.5, -0.5, 0.25, -0.25, 0.0, -0.25, 0.5, -0.25, 0.5, -0.25, 0.0, 1.0, 0.0, 0.75, 0.0, -1.0, 0.5, 0.5, 0.75, -0.75, -1.0, 0.75, -0.5, 0.25, -0.5, 0.5, 0.0, -1.0, 0.25, 0.5, 0.75, 0.75, 0.25, 0.75, 0.0, 0.5, 1.0, -0.5, -1.0, 0.25, -0.25, 0.5, -0.25, 0.0, 0.0, 1.0, -0.5, ]);
    command_encoder000.popDebugGroup()
    query300.destroy()
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture301.destroy();
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device00.queue.submit([command_buffer001, ]);
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.submit([command_buffer300, ]);
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder001.insertDebugMarker("marker");
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
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.insertDebugMarker("marker");
    query002.destroy()
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.submit([command_buffer300, ]);
    render_bundle_encoder003.insertDebugMarker("marker");
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture300.destroy();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    render_bundle_encoder003.insertDebugMarker("marker");
    command_encoder000.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
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
    render_bundle_encoder000.popDebugGroup();
    
    
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    device00.queue.writeTexture({ texture: texture000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
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
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    texture000.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device30.pushErrorScope("out-of-memory");
    buffer300.destroy()
    query303.destroy()
    render_bundle_encoder501.insertDebugMarker("marker");
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder501.popDebugGroup();
    
    query000.destroy()
    
    query302.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    buffer301.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.pushErrorScope("internal");
    render_bundle_encoder500.insertDebugMarker("marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    query002.destroy()
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    query302.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer001.destroy()
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    query300.destroy()
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("validation");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
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
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder002.popDebugGroup();
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    query302.destroy()
    device00.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder502.insertDebugMarker("marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder501.insertDebugMarker("marker");
    device40.pushErrorScope("out-of-memory");
    
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query304.destroy()
    device30.destroy();
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    buffer500.destroy()
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    query400.destroy()
    
    query100.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    render_bundle_encoder500.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const array11 = new Float32Array([0.0, 0.25, 0.0, 0.5, -0.5, 0.75, 0.5, -1.0, 0.75, 0.25, 0.5, -0.25, 0.25, 0.0, 0.5, -0.5, -0.25, 0.5, 0.0, 0.0, 0.0, 0.75, -0.75, 0.25, 0.0, 0.25, -0.75, -1.0, -0.5, -1.0, -0.5, 0.25, -0.5, 0.0, -0.5, 0.5, 0.25, -0.75, 1.0, 0.0, -0.25, -0.75, 0.0, 0.75, 0.0, 1.0, 0.0, -0.25, 0.0, -0.25, 1.0, -0.75, -0.5, -1.0, 1.0, 0.75, -0.5, 0.0, 0.0, 0.75, -1.0, -0.5, 0.75, 0.25, 0.75, 0.25, 0.75, 0.25, 0.5, -1.0, 1.0, 1.0, 0.25, -0.75, 1.0, 0.5, 0.0, -1.0, 0.0, 0.25, -1.0, -1.0, 0.5, -0.25, 1.0, 1.0, 0.0, 0.5, 0.5, 0.5, -0.75, -0.75, -1.0, -1.0, 0.5, 1.0, -0.75, 0.75, -0.5, -1.0, ]);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder502.insertDebugMarker("marker");
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
    query400.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    
    
    query400.destroy()
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    device50.pushErrorScope("out-of-memory");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query400.destroy()
    query401.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder500.popDebugGroup();
    device50.queue.writeBuffer(buffer502, 0, array8, 0, array8.length);
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    render_bundle_encoder502.popDebugGroup();
    device50.queue.writeBuffer(buffer502, 0, array6, 0, array6.length);
    query401.destroy()
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    query400.destroy()
    
    
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    render_bundle_encoder502.insertDebugMarker("marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    buffer402.destroy()
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder501.popDebugGroup();
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    {
        await buffer502.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer502.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer502.unmap();
        console.log(new Float32Array(data));
    }
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    query400.destroy()
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder502.insertDebugMarker("marker");
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    query101.destroy()
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
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
    device40.pushErrorScope("internal");
    const array12 = new Float32Array([0.5, -1.0, 0.0, -0.25, 0.25, 0.75, 1.0, -0.75, 0.25, -0.75, 1.0, -0.5, -0.75, 0.5, -0.5, 0.0, 0.75, -0.75, 0.5, -0.25, 0.75, 0.75, 1.0, -0.75, 0.25, 0.0, 0.75, 0.5, 0.5, -0.75, 0.75, 0.0, 0.5, 0.25, -0.5, -0.25, -0.25, 0.75, -1.0, 0.75, -0.5, -0.5, 0.25, -0.75, 1.0, 0.0, 1.0, 0.25, 0.5, 0.5, 1.0, -1.0, -0.5, 1.0, 0.0, -0.75, 0.25, -0.25, -0.5, 0.75, -0.75, -0.75, -0.25, 0.5, -0.75, -0.25, 0.5, 1.0, 1.0, -0.5, -1.0, -0.25, 0.5, -0.5, 0.0, -0.25, 0.5, 0.25, -0.75, 0.0, -0.75, 1.0, -0.25, 0.25, 0.75, 0.5, -1.0, -0.5, 0.0, 1.0, -0.75, 0.5, 0.75, 0.25, 0.5, -0.5, -0.25, -0.75, -0.5, -0.25, ]);
    render_bundle_encoder002.insertDebugMarker("marker");
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    query400.destroy()
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device50.queue.writeBuffer(buffer502, 0, array8, 0, array8.length);
    render_bundle_encoder502.popDebugGroup();
    
    texture400.destroy();
    const array13 = new Float32Array([-0.5, -0.25, -0.75, -0.5, -0.5, 1.0, -1.0, 1.0, 0.25, 0.5, 0.25, 0.75, -0.25, 0.0, 0.25, -1.0, 0.5, -0.75, -0.5, 0.25, -1.0, -0.5, 0.25, -0.5, -0.25, 0.25, -0.75, -0.75, -0.25, 0.75, -0.25, 0.5, 1.0, 1.0, 1.0, 0.75, -0.75, 0.0, 0.25, -0.5, 0.5, 0.25, 0.25, 0.25, 0.25, 0.0, 1.0, -0.5, 0.25, 0.25, -0.5, 1.0, -0.25, 0.5, -0.75, -0.5, -0.5, -0.5, 0.75, 0.75, 0.0, 0.75, 1.0, 1.0, 0.75, 1.0, 0.25, 0.5, -0.5, -0.25, 0.25, -1.0, -0.25, 0.0, 0.0, -0.25, -0.5, 1.0, -0.25, 1.0, -0.5, -0.75, -0.25, 0.25, 0.25, 0.75, 0.75, -1.0, 0.5, 0.75, -0.25, -0.25, -1.0, -0.5, -0.25, 0.25, 0.75, 0.25, 0.0, 1.0, ]);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    query402.destroy()
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    query402.destroy()
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
    device50.queue.writeBuffer(buffer502, 0, array7, 0, array7.length);
    device50.queue.writeBuffer(buffer502, 0, array13, 0, array13.length);
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    command_encoder501.resolveQuerySet(
        query500,
        0,
        32,
        buffer502,
        0
    )
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder501.insertDebugMarker("mymarker");
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    
    query305.destroy()
    command_encoder502.copyTextureToBuffer(
        {
            texture: texture500
        },
        {
            buffer: buffer502
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    compute_pass_encoder5010.setPipeline(compute_pipeline503);
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer502, 0, array12, 0, array12.length);
    
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeBuffer(buffer502, 0, array9, 0, array9.length);
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    const render_pass_encoder5001 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder5000.setStencilReference(1);
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: query501
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_pass_encoder5001.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
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
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device50.queue.writeBuffer(buffer502, 0, array7, 0, array7.length);
    
    device40.queue.writeTexture({ texture: texture400 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    query500.destroy()
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group500);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder502.insertDebugMarker("marker");
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array13, 0, array13.length);
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    device50.queue.writeBuffer(buffer502, 0, array10, 0, array10.length);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    render_pass_encoder5001.pushDebugGroup("group_marker");
    command_encoder503.insertDebugMarker("mymarker");
    
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    buffer503.destroy()
    
    render_pass_encoder5001.popDebugGroup();
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
    
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer505, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer505, 0);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5010.dispatchWorkgroups(100);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder5001.popDebugGroup();
    compute_pass_encoder5010.end();
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
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    const command_buffer501 = command_encoder501.finish();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer406, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer406, 0);
    const command_buffer503 = command_encoder503.finish();
    device30.queue.submit([]);
    compute_pass_encoder4000.end();
}