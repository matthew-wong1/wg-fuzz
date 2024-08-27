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
    
    
    
    const array0 = new Float32Array([0.75, -0.25, 0.25, -1.0, 0.5, 1.0, 1.0, 1.0, 0.0, -0.25, -0.25, -0.25, -0.75, -0.25, -0.75, -0.5, -0.25, -1.0, 0.0, 0.75, 0.0, -1.0, -1.0, -0.75, -1.0, -0.5, 0.5, 0.5, -0.25, -0.75, 0.25, -0.25, 0.0, -0.5, -0.5, -0.75, 0.5, -0.75, -0.75, 0.25, 0.75, -0.5, 0.75, -0.75, 0.25, 1.0, 0.5, 0.75, -0.5, 0.5, 0.75, -0.25, 0.25, 1.0, -1.0, 0.5, 0.75, -0.5, 0.25, 0.0, 0.75, 0.25, 1.0, -0.25, 0.75, 0.5, -0.5, -1.0, -0.75, 1.0, -0.75, -1.0, 0.5, 0.25, 0.0, 0.25, -0.5, -0.5, -0.25, 0.0, 0.75, 0.25, 0.75, 0.75, -1.0, 0.75, 0.75, -1.0, -1.0, 0.25, 0.0, -0.75, 0.25, -0.75, 0.25, -0.5, 0.5, -0.75, 0.0, -0.5, ]);
    
    const array1 = new Float32Array([0.0, -1.0, -0.75, -1.0, 0.5, 0.0, 0.5, 0.75, 0.5, 0.25, 0.0, 0.5, 0.75, -0.5, 1.0, -0.5, 0.0, -1.0, 1.0, 0.75, 0.75, -0.5, 0.5, 0.5, 0.25, -0.75, -0.5, -0.5, -0.25, -0.75, 0.25, 0.5, -0.75, -0.5, 0.75, 0.25, -0.5, -0.75, 0.75, 0.0, 0.75, -0.75, 0.0, -0.75, -1.0, 0.5, -0.25, 0.75, 1.0, -0.25, 1.0, -1.0, 0.5, -1.0, 0.25, -0.75, 0.25, 0.25, 0.25, 0.5, 0.5, 0.0, -0.75, 0.25, -0.75, -1.0, -0.75, -0.75, -0.75, -1.0, 1.0, 0.25, -0.25, 0.0, -0.25, -0.5, -0.5, 0.25, -0.5, 1.0, -1.0, 1.0, -0.75, -1.0, -0.5, -0.75, -0.25, -0.5, 0.0, 1.0, -1.0, -0.25, 0.5, 1.0, 0.75, 0.5, 0.75, 1.0, 0.5, 0.25, ]);
    const array2 = new Float32Array([-1.0, 0.25, 0.75, -0.5, 0.25, 0.0, -0.5, 0.25, -0.5, 0.25, -0.75, 0.0, -0.5, 0.25, 0.25, -0.75, -0.25, -0.5, -0.5, -1.0, -0.25, -1.0, -0.5, 0.75, -0.75, -1.0, 0.0, -0.75, 0.0, 0.75, -0.5, 0.5, 0.5, 0.25, 0.0, 0.75, 0.0, 0.75, -0.75, 0.0, 0.25, -1.0, 0.25, 0.25, -0.5, -1.0, -1.0, 0.0, 0.25, 0.25, 0.25, -0.5, 0.75, -0.25, -1.0, -1.0, 0.25, -0.5, 0.75, 0.75, 0.5, -1.0, -0.5, -1.0, -1.0, -0.75, -1.0, 0.5, -0.5, 0.0, -0.75, -1.0, 0.75, 1.0, -0.5, 0.5, 0.75, -0.75, -0.5, -0.25, 0.0, -0.75, -0.5, -0.25, -0.25, -0.75, 0.0, 1.0, -0.5, -0.25, 0.75, 0.5, 1.0, 0.5, 0.25, 0.25, -0.25, 1.0, -0.5, -0.5, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([-1.0, -0.25, -0.75, 1.0, 0.25, -0.75, 0.25, -0.25, -0.25, 1.0, 0.5, -0.75, -1.0, 1.0, -0.5, -0.75, 0.0, 0.75, 0.25, 1.0, 0.75, -1.0, -0.5, -0.25, 0.25, -1.0, 0.25, -0.25, 0.75, -0.5, -0.25, -0.75, 1.0, 0.0, 0.5, -1.0, -1.0, 0.75, -1.0, 1.0, 1.0, 1.0, 0.75, 1.0, 0.25, 0.5, 0.75, -0.25, -0.5, 0.0, -1.0, 0.75, 0.75, -0.5, 0.75, -0.5, 0.0, 0.0, 0.25, 0.75, -0.25, 0.0, 0.75, 0.5, -1.0, -1.0, -0.75, 0.0, 0.5, 0.25, 0.75, -0.75, 0.0, -1.0, 0.5, -0.5, 0.75, -1.0, -0.25, 0.75, -1.0, 1.0, 0.75, 0.75, 0.75, -0.25, 0.0, -0.5, -0.5, 1.0, 0.75, 0.75, 1.0, 0.75, 0.25, 0.5, 0.25, 0.5, 1.0, 0.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    const array4 = new Float32Array([0.25, -0.5, 0.0, 0.0, 0.25, 0.75, 1.0, 0.0, 0.25, 1.0, -0.75, -0.75, 0.5, -0.75, 0.75, 1.0, 0.25, 0.5, -0.5, 0.5, 0.25, -0.25, -0.25, 0.75, -0.5, -0.5, 0.25, -0.75, 0.5, -0.25, -0.25, 1.0, 0.5, 0.0, -0.25, 1.0, -0.25, 0.5, -0.5, -0.75, -0.75, -1.0, -0.25, 0.0, -1.0, 0.0, -0.25, 1.0, -0.5, 0.75, 0.25, -0.25, 0.75, 1.0, 0.75, -0.5, 1.0, 0.5, -0.25, -0.75, 0.25, 0.75, 0.75, -0.75, -1.0, 0.75, 0.75, 1.0, 0.5, 0.75, 0.25, 1.0, -1.0, 0.75, -0.5, -1.0, -0.5, -0.5, -0.5, 0.0, -0.25, -0.25, -1.0, -1.0, -0.75, -0.75, -1.0, 0.75, 0.75, -0.75, -0.75, 0.0, -0.75, -0.75, -0.25, -0.5, 1.0, 0.0, 0.25, 0.0, ]);
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array5 = new Float32Array([0.75, 0.0, 0.0, -0.25, 1.0, -0.25, -0.25, 0.25, 0.25, 0.0, -1.0, 0.0, -0.25, 1.0, 1.0, 0.25, 1.0, -0.25, 1.0, -0.25, 0.25, 1.0, 0.25, -1.0, 0.25, -0.5, 0.0, -0.75, -0.5, -0.5, 0.75, -0.25, -0.5, 0.25, -0.75, -0.5, -0.75, -0.25, 0.5, -0.5, 0.5, 0.25, -0.75, 0.75, 1.0, -0.25, 0.75, -0.25, -1.0, 0.5, -0.5, 0.25, 0.5, 1.0, -0.75, -0.75, 0.75, -1.0, 0.5, -0.75, 0.5, 1.0, 0.0, -0.25, -0.75, 0.75, 0.75, 0.5, -0.75, 1.0, -1.0, 0.5, -1.0, -0.5, 0.25, -0.75, -0.75, 1.0, -0.75, 0.5, 1.0, 0.75, 0.5, -1.0, 0.25, -1.0, 1.0, -0.5, -0.5, 0.5, 0.25, -0.5, 0.0, -0.75, 0.25, 0.5, 0.0, 0.25, 0.0, 0.5, ]);
    
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.pushErrorScope("validation");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    device30.destroy();
    const array6 = new Float32Array([0.75, -1.0, -0.75, -0.75, -0.25, -0.5, 0.5, 0.5, 0.5, 0.0, -1.0, 0.0, 1.0, 0.5, -0.25, 0.0, -0.5, -1.0, 0.25, -0.25, 0.5, 0.25, 0.0, -0.5, 0.75, -0.25, 0.25, -0.5, 0.25, -0.25, -0.5, 0.25, -1.0, -0.75, -0.5, 0.25, -1.0, 0.25, 0.0, 0.25, 1.0, 0.75, -0.25, 0.25, -0.5, -1.0, 0.0, 0.5, 1.0, 0.75, 0.5, 0.25, -0.5, 1.0, -0.75, -0.25, 0.25, -1.0, 0.5, 0.25, 0.0, -0.5, 0.75, -1.0, 0.25, 0.5, 0.0, 0.5, -0.5, -1.0, 0.5, 0.5, -0.5, 0.5, 1.0, 0.25, -0.75, 0.25, -1.0, -1.0, -0.25, 0.75, 0.5, 0.75, -1.0, -0.75, 1.0, 0.0, 0.25, 1.0, -0.5, 0.25, -0.75, 0.25, 0.5, -0.75, 0.0, 0.5, -0.5, -0.75, ]);
    const array7 = new Float32Array([0.0, -0.5, 0.25, 0.5, -0.75, 0.5, -0.5, 0.75, 0.75, 1.0, 0.0, -0.25, -0.25, 0.25, -0.75, -1.0, 0.0, 0.5, -0.75, 0.25, -0.5, 1.0, 0.25, -0.25, 1.0, 0.25, 0.75, 1.0, 1.0, 0.25, -1.0, -0.25, 0.5, 0.25, 0.5, 0.0, -0.5, -0.75, -0.5, -0.5, -0.75, 0.0, 1.0, 0.5, 0.0, 1.0, -0.25, 0.25, -0.5, -0.75, 0.25, -1.0, 0.75, -0.25, 0.25, 1.0, 0.5, 0.5, 0.5, -0.5, -1.0, 0.25, -0.5, 0.25, -1.0, -0.25, 0.0, -0.25, 0.75, -0.75, 0.25, 0.25, -0.5, 0.5, -0.75, 0.25, 0.5, -1.0, -0.5, 0.75, -1.0, 0.75, -0.5, 0.25, 0.0, 0.5, 1.0, -1.0, 0.75, 0.25, -0.25, -0.25, -1.0, 0.25, -0.25, -0.5, 0.25, 0.5, 0.25, 0.75, ]);
    const array8 = new Float32Array([0.75, -0.75, -0.25, 0.0, -1.0, 0.75, 0.0, 1.0, 1.0, 0.75, -0.25, 0.5, 0.5, 0.5, 0.25, -1.0, 0.75, 0.0, -0.25, 0.75, 0.0, 1.0, 0.25, -0.5, -0.5, 0.0, 0.75, 0.75, 0.75, 0.75, 0.5, -0.25, 0.75, 0.25, -0.5, -1.0, -0.75, -0.5, 0.75, 0.25, -0.5, -0.5, -0.25, 0.5, 0.0, -0.5, -0.5, -0.25, 0.0, 1.0, -0.25, -0.5, 0.25, 0.5, 0.0, 0.0, -1.0, -1.0, 0.25, -0.5, -0.75, -1.0, 0.25, 1.0, 0.5, -0.25, -0.75, -1.0, 0.75, -0.5, 1.0, 0.5, -0.75, 0.25, -0.75, 0.75, -1.0, 0.0, -1.0, -0.5, -0.75, -0.5, 0.0, 0.0, -0.75, 0.25, 0.75, 0.25, -0.75, 0.5, -0.25, -0.25, -0.75, 0.5, -0.25, -1.0, 0.75, 0.25, -0.5, -1.0, ]);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.pushErrorScope("out-of-memory");
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query001.destroy()
    
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
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
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([0.5, 0.0, 0.0, 0.75, 0.5, 1.0, 0.25, 0.75, 1.0, 0.25, 1.0, 1.0, 0.25, 0.25, -0.5, 1.0, 1.0, 0.75, 0.75, -1.0, 0.0, 0.25, 0.0, 0.5, 0.0, 0.5, -1.0, 0.0, -0.25, -0.25, -0.25, -0.5, -0.75, -0.5, -1.0, -0.5, 1.0, -0.25, -0.5, -0.75, -0.25, -0.5, -0.75, 0.25, -0.25, -0.75, -0.75, 0.0, 0.25, 0.0, 0.5, -1.0, -1.0, 0.25, -0.75, 1.0, -1.0, -0.25, 0.0, -0.25, 0.0, 0.25, 0.5, 0.0, -0.75, 0.5, -0.75, 0.75, -0.75, -0.5, 0.75, 0.5, 0.0, -0.25, 0.5, 1.0, -0.75, 1.0, 0.75, 1.0, 0.25, -0.5, -0.75, -0.75, 0.0, 0.75, -1.0, 0.75, 0.5, 0.75, -0.75, 0.0, 1.0, 0.5, -0.5, -0.5, -0.5, 0.75, 1.0, -0.75, ]);
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
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
    device40.destroy();
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    texture503.destroy();
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.queue.submit([]);
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
    const array10 = new Float32Array([0.75, -0.5, -0.75, 1.0, 1.0, 0.25, 0.0, 1.0, 0.25, -1.0, 0.0, 0.25, -0.25, -0.75, -0.25, 1.0, -0.25, -0.5, -0.75, 0.0, -0.25, 0.5, -0.25, -0.5, 0.0, -0.25, 1.0, -1.0, -0.5, 0.0, 0.5, 0.25, -0.25, 0.5, 0.25, -0.25, -0.5, -0.5, 0.75, 0.0, 1.0, -0.5, -1.0, 0.25, -1.0, 0.75, 0.0, -0.25, 0.0, -1.0, -0.25, 0.75, 0.25, -0.25, -0.25, -0.75, 0.25, -0.5, 0.0, 0.75, 1.0, -0.75, 0.25, 0.25, 1.0, -0.5, 0.25, 0.75, 0.25, 0.75, 0.75, -0.5, 0.5, -0.5, 0.25, 0.25, 1.0, 0.75, -1.0, 0.5, 0.75, 0.0, 0.0, -1.0, -0.75, 1.0, 0.5, 1.0, 0.25, 0.0, -0.75, 0.25, -0.75, -0.75, 0.0, 0.25, 0.0, 1.0, 0.5, 1.0, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    texture502.destroy();
    query300.destroy()
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array11 = new Float32Array([-0.75, -0.25, 0.75, 0.5, -0.5, 0.5, 0.75, -0.75, 0.0, -1.0, 0.0, 0.0, 0.25, -0.75, -0.5, -1.0, 0.25, 0.0, 1.0, 0.75, 1.0, 0.5, 0.25, -0.25, 0.25, 0.25, -0.25, 0.75, 1.0, -1.0, -0.5, 0.25, -0.25, 0.5, 0.75, 0.25, 0.25, -0.25, 0.0, -0.25, -0.5, -0.75, 0.0, 0.0, -0.75, 0.5, 1.0, 0.0, -0.25, 0.25, 0.25, 0.25, -0.75, -0.5, 0.75, -0.75, -0.25, 0.75, -0.5, 0.0, 0.0, 1.0, -1.0, 0.0, 1.0, 1.0, 1.0, 0.0, -0.25, 0.5, 0.0, 0.5, 0.75, 0.5, -0.5, 0.75, -0.25, -0.5, -1.0, -0.25, 0.5, -0.5, 0.0, -0.25, -0.5, 0.5, 0.25, 0.75, 1.0, 0.75, 0.0, -0.5, -0.5, 0.5, -0.75, -0.5, -0.75, -1.0, -0.5, -0.25, ]);
    const texture_view5012 = texture501.createView({ label: "texture_view5012" });
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    
    
    device60.pushErrorScope("internal");
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    device50.queue.writeTexture({ texture: texture500 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    const array12 = new Float32Array([0.75, 1.0, 0.25, 0.75, 0.25, -0.25, 0.5, -0.75, 1.0, 1.0, -0.5, 0.25, -1.0, -1.0, 0.75, -1.0, -0.5, 0.75, 0.25, -0.75, -1.0, -0.5, -0.5, 1.0, 0.0, -0.5, -0.75, -0.25, 0.0, -0.5, -0.5, 0.25, -1.0, -0.75, -0.25, 0.5, 0.25, 0.0, 0.25, 0.75, 0.0, 0.25, -0.5, 0.75, -0.5, -0.75, -0.5, 0.0, 0.25, 0.5, 0.25, -0.25, -0.75, 0.5, 1.0, 0.25, 1.0, 1.0, 0.5, 0.5, -0.75, 0.0, 0.75, -0.25, -0.75, -0.5, -1.0, 1.0, 0.75, -0.5, -1.0, -0.5, -1.0, -1.0, 1.0, 0.5, 1.0, 0.0, -0.75, -0.75, 0.75, 0.75, 0.25, -1.0, 0.0, 0.25, -0.25, 0.5, -0.75, 0.25, 0.0, 1.0, -0.5, -1.0, 1.0, -1.0, 1.0, 0.25, 0.0, -0.25, ]);
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    
    
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    
    device20.destroy();
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    render_bundle_encoder601.popDebugGroup();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device60.destroy();
    
    
    query500.destroy()
    
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    device60.destroy();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query300.destroy()
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder7000.insertDebugMarker("marker")
    compute_pass_encoder7000.insertDebugMarker("marker")
    
    compute_pass_encoder7000.popDebugGroup()
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder7000.insertDebugMarker("marker")
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device70.queue.writeBuffer(buffer700, 0, array10, 0, array10.length);
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    texture900.destroy();
    
    
    
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    query000.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_bundle_encoder700.popDebugGroup();
    buffer701.destroy()
    compute_pass_encoder7010.popDebugGroup()
    device70.queue.writeTexture({ texture: texture700 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer300 = command_encoder300.finish();
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    
    
    
    
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
    render_bundle_encoder900.setPipeline(render_pipeline900);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    
    texture700.destroy();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    compute_pass_encoder7010.insertDebugMarker("marker")
    device70.queue.writeTexture({ texture: texture700 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    buffer700.destroy()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder901.setPipeline(render_pipeline901);
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("validation");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group900 = device90.createBindGroup({
        label: "bind_group900",
        layout: render_pipeline901.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer900,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer901,
                },
            },
        ],
    });

    render_bundle_encoder901.setBindGroup(0, bind_group900);
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
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder901.setVertexBuffer(0, buffer900);
    render_bundle_encoder900.popDebugGroup();
    render_bundle_encoder700.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    
    
    render_bundle_encoder901.draw(3);
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    device40.destroy();
    device70.queue.writeTexture({ texture: texture700 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.pushErrorScope("internal");
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
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
    texture901.destroy();
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    render_bundle_encoder901.pushDebugGroup("group_marker");
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    render_bundle_encoder901.insertDebugMarker("marker");
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    
    render_bundle_encoder901.draw(3);
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
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
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    device100.pushErrorScope("validation");
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer903 = device90.createBuffer({
        label: "buffer903",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group901 = device90.createBindGroup({
        label: "bind_group901",
        layout: render_pipeline900.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer902,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer903,
                },
            },
        ],
    });

    render_bundle_encoder900.setBindGroup(0, bind_group901);
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    buffer000.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    const query1000 = device100.createQuerySet({
        label: "query1000",
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
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    device100.queue.writeBuffer(buffer1000, 0, array11, 0, array11.length);
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    device90.queue.writeBuffer(buffer901, 0, array9, 0, array9.length);
    
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder700.popDebugGroup();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    compute_pass_encoder7010.popDebugGroup()
    
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module904.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    
    
    
    device70.queue.writeBuffer(buffer702, 0, array8, 0, array8.length);
    device70.queue.writeBuffer(buffer702, 0, array12, 0, array12.length);
    
    
    device70.queue.writeBuffer(buffer702, 0, array4, 0, array4.length);
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
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
        occlusionQuerySet: undefined
    });
    device70.pushErrorScope("validation");
    query1000.destroy()
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32sint",
        dimension: "2d"
    });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    render_bundle_encoder900.popDebugGroup();
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    {
        await buffer702.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer702.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer702.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module705.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    
    
    device70.queue.writeBuffer(buffer702, 0, array10, 0, array10.length);
    
    
    
    device90.queue.writeBuffer(buffer900, 0, array0, 0, array0.length);
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16sint",
        dimension: "2d"
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
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    device70.queue.writeTexture({ texture: texture700 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    render_bundle_encoder901.popDebugGroup();
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    const texture_view10001 = texture1000.createView({ label: "texture_view10001" });
    compute_pass_encoder7000.setPipeline(compute_pipeline701);
    
    device70.queue.writeTexture({ texture: texture700 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder701.insertDebugMarker("marker");
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    device90.queue.writeBuffer(buffer903, 0, array6, 0, array6.length);
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    compute_pass_encoder7000.popDebugGroup()
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const render_pipeline902 = device90.createRenderPipeline({
        label: "render_pipeline902",
        vertex: {
            module: shader_module903,
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
            module: shader_module903,
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
    
    device80.pushErrorScope("validation");
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    render_pass_encoder10000.setStencilReference(1);
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout700,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer702, 0, array12, 0, array12.length);
    device70.queue.writeBuffer(buffer702, 0, array7, 0, array7.length);
    
    device90.destroy();
    render_pass_encoder10000.pushDebugGroup("group_marker");
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device100.queue.writeBuffer(buffer1001, 0, array6, 0, array6.length);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder702.pushDebugGroup("group_marker");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    const texture_view10002 = texture1000.createView({ label: "texture_view10002" });
    texture1000.destroy();
    device70.queue.writeBuffer(buffer702, 0, array1, 0, array1.length);
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout701,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7010.setPipeline(compute_pipeline703);
    
    buffer600.destroy()
    render_pass_encoder10000.setPipeline(render_pipeline1000);
    render_pass_encoder10000.popDebugGroup();
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device70.queue.writeBuffer(buffer702, 0, array3, 0, array3.length);
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    render_pass_encoder10000.setViewport(0, 0, texture1000.width / 2, texture1000.height / 2, 0, 1);
    
    device100.queue.writeBuffer(buffer1002, 0, array12, 0, array12.length);
    const render_pipeline1001 = device100.createRenderPipeline({
        label: "render_pipeline1001",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    const compute_pipeline705 = device70.createComputePipeline({
        label: "compute_pipeline705",
        layout: pipeline_layout701,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
        
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: compute_pipeline701.getBindGroupLayout(0),
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

    compute_pass_encoder7000.setBindGroup(0, bind_group700);
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder7000.dispatchWorkgroups(100);
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: compute_pipeline703.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer705,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer706,
                },
            },
        ],
    });

    compute_pass_encoder7010.setBindGroup(0, bind_group701);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_7010 = new Uint32Array(3);

    uint32_7010[0] = 100;
    uint32_7010[1] = 1;
    uint32_7010[2] = 1;

    const buffer707 = device70.createBuffer({
        label: "buffer707",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer707, 0, uint32_7010, 0, uint32_7010.length);

    compute_pass_encoder7010.dispatchWorkgroupsIndirect(buffer707, 0);
    compute_pass_encoder7010.end();
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder7000.end();
    const buffer1003 = device100.createBuffer({
        label: "buffer1003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1004 = device100.createBuffer({
        label: "buffer1004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1000 = device100.createBindGroup({
        label: "bind_group1000",
        layout: render_pipeline1000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1004,
                },
            },
        ],
    });

    render_pass_encoder10000.setBindGroup(0, bind_group1000);
    const command_buffer1000 = command_encoder1000.finish();
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer700 = command_encoder700.finish();
    render_pass_encoder10000.setVertexBuffer(0, buffer1001);
    const command_buffer701 = command_encoder701.finish();
    device70.queue.submit([command_buffer701, ]);
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
        layout: compute_pipeline703.getBindGroupLayout(0),
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

    compute_pass_encoder7010.setBindGroup(0, bind_group702);
    render_pass_encoder10000.draw(3);
    compute_pass_encoder7000.popDebugGroup()
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
        layout: compute_pipeline703.getBindGroupLayout(0),
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

    compute_pass_encoder7010.setBindGroup(0, bind_group703);
    render_pass_encoder10000.setIndexBuffer(buffer1000, "uint16");
    render_pass_encoder10000.end();
    compute_pass_encoder7010.popDebugGroup()
    device100.queue.submit([command_buffer1000, ]);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder7000.end();
    device100.queue.submit([]);
}