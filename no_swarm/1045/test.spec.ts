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
    const array0 = new Float32Array([0.5, 0.25, 0.75, 0.5, 0.25, -0.5, -0.75, -0.75, -0.5, -0.5, -0.75, 0.75, -1.0, 0.25, -0.25, -0.75, -0.25, 1.0, -0.5, 0.5, 0.25, 0.0, -1.0, 1.0, 0.25, 0.5, 0.5, 1.0, -0.5, 0.75, -0.5, 0.75, -0.5, -0.25, 0.25, 1.0, -0.75, 1.0, 0.0, -0.75, -0.5, -0.75, 0.25, 0.25, 0.25, -0.5, 0.25, 1.0, 0.75, -0.25, 0.0, 0.5, 0.25, 0.25, -0.5, -0.5, 0.75, 1.0, 0.5, -0.5, -1.0, 0.5, 1.0, 0.0, -1.0, 0.0, 0.0, -1.0, -0.25, 0.5, 0.25, 0.0, 0.0, 0.25, 0.75, 0.75, -1.0, 0.75, -0.25, 1.0, 0.75, 0.75, 0.75, -0.5, 0.75, -0.5, -1.0, -1.0, -0.75, -0.75, -0.75, -0.25, 1.0, 0.0, 1.0, 0.5, -0.25, -0.25, -1.0, -0.25, ]);
    const array1 = new Float32Array([-0.25, 0.0, 0.5, -0.5, -0.75, 0.5, -1.0, 1.0, -0.75, -0.5, 0.5, 0.25, 0.75, 0.25, -1.0, 1.0, -1.0, -0.5, -1.0, 1.0, -0.75, -0.25, 0.75, 1.0, 0.75, -0.25, 1.0, -0.25, -0.25, 0.25, 0.5, 0.25, -0.75, 0.5, 0.0, 0.75, -0.25, 0.0, -1.0, 0.75, 0.0, -0.25, -1.0, 0.75, 1.0, 0.75, 0.0, -1.0, -0.5, 0.25, 1.0, -0.75, 0.5, -0.5, 0.25, 1.0, 0.25, -1.0, 0.5, 0.0, 0.5, 0.25, 1.0, -0.5, 0.25, 0.5, 1.0, -1.0, -0.5, -0.25, 0.0, 0.0, 0.5, 1.0, -1.0, -0.25, 0.25, -0.25, 0.25, 1.0, -0.25, 0.75, 0.0, 0.0, 1.0, -0.25, 0.0, 0.75, -0.25, -1.0, -0.75, -0.25, -0.5, 0.5, -0.25, 0.25, 0.0, 0.75, 0.75, 0.75, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array2 = new Float32Array([-0.25, 1.0, 0.25, 0.0, -0.25, -0.25, -1.0, 1.0, 0.0, 1.0, -1.0, 0.25, -0.5, -0.25, -1.0, -1.0, -0.75, 0.75, 0.75, -0.25, 0.75, -1.0, 1.0, 0.5, -0.5, 0.5, -0.75, 0.75, 0.5, 0.5, 0.0, 0.25, 0.25, 0.5, 1.0, 0.25, 0.75, -0.25, -0.5, 1.0, -0.75, -0.25, -0.5, 0.75, -0.25, -0.5, 0.0, 0.5, -1.0, -0.5, -0.25, -0.5, -0.25, -1.0, -0.5, 0.0, 0.75, 0.5, 0.25, 0.5, -0.25, -0.5, -0.5, 1.0, -0.75, 0.25, -0.5, -0.5, 0.0, 1.0, -0.75, 0.25, 0.25, 0.5, 0.5, -1.0, 0.0, -0.25, -0.75, -1.0, 0.25, -0.25, 1.0, 1.0, 0.75, -1.0, -1.0, -0.5, -1.0, 1.0, 0.25, 0.25, -0.75, 0.25, 0.25, 1.0, -1.0, -0.5, -0.25, -1.0, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device10.destroy();
    
    const array3 = new Float32Array([0.25, 1.0, -0.5, 0.0, 0.75, 0.0, 0.75, -0.5, 0.75, 0.75, -1.0, -1.0, 0.25, -0.25, 0.5, -0.25, 0.75, 0.25, 0.0, 0.0, 0.25, 0.0, -0.25, -1.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.0, 0.0, -1.0, -0.75, 1.0, -1.0, -0.5, 0.25, 0.25, 1.0, 0.75, 0.25, 0.0, -1.0, -0.25, -0.25, -0.75, -0.5, -1.0, -0.25, -0.25, 0.0, 0.75, -0.75, -0.75, 0.25, -1.0, 0.75, 1.0, -1.0, -0.75, 0.25, 0.75, -0.25, 0.0, -0.5, 0.75, 0.0, -0.5, 0.0, 0.25, -1.0, 0.5, 1.0, 0.25, 0.0, 0.75, 0.5, 0.25, 1.0, 0.5, 0.5, 0.0, -0.25, 0.75, -0.75, -0.5, -1.0, 1.0, 1.0, -0.25, -1.0, 0.5, -0.25, 0.5, -1.0, 0.75, 1.0, -0.25, -0.5, ]);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    buffer301.destroy()
    buffer300.destroy()
    query300.destroy()
    const array4 = new Float32Array([1.0, 0.5, -0.25, 0.0, -0.5, -0.5, 0.25, 0.5, 0.5, -1.0, -0.75, -0.5, 0.5, 1.0, 0.25, 1.0, -0.5, -0.75, -0.25, 1.0, -1.0, 0.25, 1.0, 0.5, -0.25, 0.75, -0.75, 0.75, 0.75, -1.0, 1.0, 1.0, -0.75, -0.75, 0.0, -1.0, -1.0, -1.0, -0.75, 0.0, -0.75, -0.5, 1.0, -1.0, -0.25, 0.5, -1.0, 0.0, 0.0, 0.75, -1.0, -1.0, -0.5, -1.0, 0.25, -1.0, 0.0, -1.0, 0.0, -1.0, -1.0, 1.0, 0.25, -0.25, -0.25, 0.75, -0.25, -0.5, -0.5, 0.25, -0.5, -0.5, 0.25, -0.75, 1.0, 0.25, 0.0, 0.5, -0.75, 0.75, -0.5, 0.75, -0.75, -0.25, 0.75, 1.0, 0.0, 0.75, 0.75, -1.0, -1.0, 0.75, -0.25, 0.0, -0.5, -0.5, -0.5, -0.75, -0.25, 1.0, ]);
    const array5 = new Float32Array([0.5, -0.25, 0.75, -0.25, -0.5, 0.5, -0.25, 0.5, 0.5, 0.5, -0.5, -1.0, 0.5, -0.75, 0.0, 1.0, 0.25, -0.75, 1.0, -0.25, 0.0, 0.25, 0.5, 0.75, 0.5, -0.25, -0.75, 1.0, 0.5, 0.5, 0.75, 0.75, 1.0, 0.75, 0.25, 0.5, -0.5, 0.5, -0.5, 0.0, -0.25, -0.5, -1.0, -1.0, -0.5, 0.0, 0.25, -0.25, 0.5, 0.5, 0.5, 0.5, 1.0, 0.25, 0.25, 0.0, 1.0, -0.25, -0.25, -0.25, 1.0, -1.0, 1.0, 0.0, 0.25, 0.0, 1.0, 0.75, 1.0, -0.5, 0.25, -0.25, 1.0, 0.75, 1.0, 1.0, 0.25, -0.75, 0.25, -1.0, 1.0, 0.75, 1.0, 0.0, 0.25, 0.75, 0.75, -1.0, 1.0, 0.5, 0.25, 0.0, 1.0, 0.5, 1.0, -1.0, -0.75, 0.5, 1.0, 1.0, ]);
    device30.destroy();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.destroy();
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    device20.destroy();
    
    
    const array6 = new Float32Array([-0.5, -0.75, 0.0, 0.25, -1.0, 0.0, 0.0, 0.75, -1.0, 0.0, 1.0, 1.0, -1.0, 0.5, -0.5, 1.0, -0.25, 0.0, 1.0, 0.0, -0.75, 0.0, -0.75, -1.0, -0.25, 0.0, -0.5, 0.75, -1.0, -1.0, 0.5, 1.0, -0.25, -1.0, -1.0, 1.0, 1.0, -0.5, -0.75, 0.25, 1.0, -1.0, 0.5, 0.5, -1.0, -1.0, -0.5, -0.75, -0.25, 1.0, 0.0, 0.0, 0.25, 0.25, -0.25, 1.0, 0.25, -0.5, -0.75, 1.0, 0.25, 0.5, 0.0, 1.0, -0.25, 0.25, 0.25, 0.75, 1.0, -0.25, -1.0, 0.75, -0.5, 0.5, -0.5, 0.25, 0.75, 0.75, -0.75, 1.0, 1.0, 0.0, 0.25, 0.0, 0.0, -1.0, 1.0, -1.0, 0.5, 0.75, -0.25, -0.75, 1.0, -0.25, 0.5, 0.5, -0.5, 0.75, -0.75, -0.75, ]);
    
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    device00.pushErrorScope("internal");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query500.destroy()
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    query500.destroy()
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    device30.pushErrorScope("out-of-memory");
    
    device50.pushErrorScope("out-of-memory");
    texture500.destroy();
    query501.destroy()
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    query501.destroy()
    query502.destroy()
    query501.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    device50.destroy();
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    
    
    const array7 = new Float32Array([-0.5, 0.25, -1.0, -0.75, 0.5, 0.75, 1.0, 0.5, 0.25, 0.75, -0.75, 0.0, -1.0, 0.25, -0.25, -0.5, 0.5, -0.5, 0.0, 0.25, 0.5, -1.0, 0.0, -0.25, -1.0, -0.5, 0.5, 0.75, -0.25, -0.25, -0.5, 1.0, 1.0, 0.0, 0.5, -0.5, -0.5, 0.5, -0.5, -0.5, 0.0, -0.25, -1.0, 0.25, -0.5, 0.0, 0.25, 0.25, 0.25, -0.25, 1.0, 0.0, -0.75, -0.75, 0.75, 0.75, 0.75, 0.0, -0.25, -0.25, -0.25, 0.75, 0.75, 0.75, 0.0, 0.5, 0.75, 1.0, 0.5, 0.5, -0.5, 0.0, 0.25, 0.75, 0.75, -0.5, -0.25, 0.75, 0.5, 0.75, 0.5, 0.0, 0.5, -0.5, 0.75, 0.25, -0.75, 0.5, -0.75, -0.25, 0.5, -0.75, 0.25, 0.5, -1.0, -0.25, -1.0, -0.5, -0.5, 0.75, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device70.pushErrorScope("internal");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const query700 = device70.createQuerySet({
        label: "query700",
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
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    device60.destroy();
    render_bundle_encoder701.insertDebugMarker("marker");
    
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
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const array8 = new Float32Array([-0.75, 0.75, 0.25, -1.0, 0.75, -0.25, 1.0, 1.0, 0.5, -0.5, -0.25, 0.25, 1.0, -0.5, -0.5, 0.0, 0.0, 1.0, -0.5, -1.0, -0.5, 0.75, -0.5, 0.25, 0.0, 0.5, -0.5, 0.75, -0.5, 0.5, 0.5, 0.25, 0.5, 0.5, 0.0, -0.25, 0.75, 0.25, 0.5, -0.75, -1.0, -1.0, -0.5, -1.0, -1.0, -0.75, 1.0, -1.0, 0.75, 0.25, 0.0, -0.5, 0.75, 0.5, 1.0, 0.25, 1.0, -0.5, -0.75, -0.25, 0.5, 0.75, 1.0, -1.0, 0.25, 0.5, 0.0, -0.25, -1.0, -0.75, -0.75, 0.0, 0.0, -0.25, 1.0, 0.5, 0.5, 0.5, 1.0, -1.0, 0.25, 0.75, 0.0, 1.0, 0.75, 1.0, 1.0, 0.0, -1.0, 0.75, 0.0, 1.0, 0.25, -0.5, 0.5, 0.0, -0.5, -0.75, 0.0, 1.0, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    render_bundle_encoder701.popDebugGroup();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    texture500.destroy();
    
    render_bundle_encoder702.pushDebugGroup("group_marker");
    query700.destroy()
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.destroy();
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
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
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    
    device70.queue.writeBuffer(buffer700, 0, array6, 0, array6.length);
    query701.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    command_encoder701.pushDebugGroup("mygroupmarker")
    compute_pass_encoder7020.pushDebugGroup("group_marker")
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    buffer700.destroy()
    
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    command_encoder702.resolveQuerySet(
        query703,
        0,
        32,
        buffer700,
        0
    )
    
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder702.popDebugGroup();
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
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
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder7020.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder7020.popDebugGroup()
    device70.pushErrorScope("validation");
    query703.destroy()
    query702.destroy()
    
    const array9 = new Float32Array([-0.25, 0.25, 0.5, 0.0, 0.0, 0.5, -0.25, 0.0, -0.25, 1.0, -1.0, 0.75, -0.5, 0.5, 0.5, -1.0, 1.0, -0.5, 1.0, 0.0, 0.5, 0.75, -0.75, 0.75, 0.0, -0.5, -1.0, -0.5, 0.75, 1.0, -0.5, -0.75, -0.5, -0.25, 0.0, 0.0, -0.75, -0.75, 0.5, -0.25, -1.0, 0.0, 0.75, -0.75, -0.5, -0.5, 1.0, 0.25, 1.0, -0.5, -0.5, 0.75, -1.0, 0.25, 0.5, 1.0, -0.25, -0.25, -0.5, -0.5, 0.75, 0.5, -1.0, -0.25, 0.5, -0.25, 0.5, -0.5, 0.75, 0.25, -1.0, 0.5, -0.25, -0.25, -0.5, 1.0, 0.75, -0.5, 0.25, 0.25, 0.0, 1.0, 0.25, -0.75, 0.5, -1.0, -0.5, -0.25, 0.0, 0.5, 0.5, 0.75, 0.5, 0.5, -0.5, -1.0, 0.25, 0.0, 1.0, -0.25, ]);
    command_encoder701.resolveQuerySet(
        query701,
        0,
        32,
        buffer700,
        0
    )
    query702.destroy()
    compute_pass_encoder7020.insertDebugMarker("marker")
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder700.setPipeline(render_pipeline700);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    device70.queue.writeBuffer(buffer701, 0, array9, 0, array9.length);
    compute_pass_encoder7010.insertDebugMarker("marker")
    device70.queue.writeBuffer(buffer701, 0, array6, 0, array6.length);
    device70.queue.writeBuffer(buffer701, 0, array1, 0, array1.length);
    device70.queue.writeBuffer(buffer701, 0, array8, 0, array8.length);
    device70.pushErrorScope("internal");
    render_bundle_encoder702.insertDebugMarker("marker");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder702.pushDebugGroup("group_marker");
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
        layout: render_pipeline700.getBindGroupLayout(0),
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

    render_bundle_encoder700.setBindGroup(0, bind_group700);
    device70.queue.writeBuffer(buffer701, 0, array0, 0, array0.length);
    render_bundle_encoder702.setPipeline(render_pipeline700);
    compute_pass_encoder7000.popDebugGroup()
    query703.destroy()
    
    buffer703.destroy()
    
    device70.queue.writeBuffer(buffer701, 0, array5, 0, array5.length);
    texture700.destroy();
    
    device70.queue.writeBuffer(buffer701, 0, array8, 0, array8.length);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    buffer302.destroy()
    
    device70.queue.writeBuffer(buffer701, 0, array8, 0, array8.length);
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer701.destroy()
    compute_pass_encoder7000.insertDebugMarker("marker")
    query701.destroy()
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
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
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    compute_pass_encoder7020.insertDebugMarker("marker")
    compute_pass_encoder7000.insertDebugMarker("marker")
    query701.destroy()
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
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler703 = device70.createSampler( { label: "sampler703" } );
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
    const compute_pass_encoder7030 = command_encoder703.beginComputePass({ label: "compute_pass_encoder7030" });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer704.destroy()
    buffer702.destroy()
    compute_pass_encoder7030.pushDebugGroup("group_marker")
    query703.destroy()
    compute_pass_encoder7020.insertDebugMarker("marker")
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder702.popDebugGroup();
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout702]
    });
    
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
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
    compute_pass_encoder7020.insertDebugMarker("marker")
    command_encoder704.resolveQuerySet(
        query704,
        0,
        32,
        buffer700,
        0
    )
    render_bundle_encoder701.setPipeline(render_pipeline701);
    
    command_encoder704.insertDebugMarker("mymarker");
    command_encoder704.resolveQuerySet(
        query701,
        0,
        32,
        buffer700,
        0
    )
    command_encoder704.resolveQuerySet(
        query704,
        0,
        32,
        buffer703,
        0
    )
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder7000.popDebugGroup()
    buffer700.destroy()
    const command_encoder705 = device70.createCommandEncoder({ label: "command_encoder705" });
    command_encoder701.insertDebugMarker("mymarker");
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    command_encoder704.resolveQuerySet(
        query703,
        0,
        32,
        buffer700,
        0
    )
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    command_encoder705.resolveQuerySet(
        query701,
        0,
        32,
        buffer700,
        0
    )
    const sampler705 = device70.createSampler( { label: "sampler705" } );
    render_bundle_encoder702.popDebugGroup();
    command_encoder704.resolveQuerySet(
        query700,
        0,
        32,
        buffer700,
        0
    )
    const command_buffer704 = command_encoder704.finish();
    command_encoder705.copyBufferToBuffer(
        buffer700,
        0,
        buffer700,
        0,
        400
    );
    texture400.destroy();
    render_bundle_encoder701.insertDebugMarker("marker");
    const array10 = new Float32Array([0.75, -0.75, 0.25, -0.5, 0.75, -0.25, 0.75, -1.0, 0.0, -0.25, 0.25, -0.5, -0.75, 1.0, 1.0, 1.0, 0.75, -0.25, -0.75, 0.0, 0.5, 1.0, 0.75, 0.0, 0.25, -0.5, -1.0, -0.75, 0.0, 0.25, 0.75, -0.25, -0.25, 1.0, -0.25, 0.75, 0.5, -0.25, -0.25, -0.5, -0.5, -0.5, 0.75, 1.0, 0.0, 1.0, 1.0, -0.25, -0.25, 1.0, 0.0, -0.75, -0.75, 0.75, -0.25, -0.5, 0.5, 0.5, 0.75, -0.5, 0.75, 0.25, 0.5, -1.0, -1.0, -0.75, -0.25, 0.5, 0.25, -1.0, 0.25, 0.25, 0.5, -0.75, -0.5, -0.25, -0.75, 0.0, 1.0, -0.25, 0.5, 0.25, 0.75, -0.75, 0.0, -1.0, 0.75, 0.5, 1.0, 0.25, -0.25, -0.25, -1.0, -1.0, -0.75, 0.0, -0.25, -0.75, 0.5, -0.75, ]);
    
    buffer701.destroy()
    const command_encoder706 = device70.createCommandEncoder({ label: "command_encoder706" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const array11 = new Float32Array([0.0, -0.25, -0.25, 0.0, 1.0, 0.0, 0.5, 0.75, -0.5, -0.25, 0.75, -0.75, -0.5, -0.25, 0.5, 0.25, -0.25, -0.25, 0.5, -0.5, -0.25, -1.0, 1.0, 0.75, -0.25, 1.0, -0.5, 0.75, 0.25, 0.0, 1.0, 1.0, -0.75, -1.0, 0.0, -1.0, -0.75, -1.0, -0.75, 0.5, 0.5, 0.25, 0.25, -0.25, 0.5, 0.0, 0.75, -1.0, -0.75, 0.5, 0.75, -0.75, -0.5, -0.5, -0.25, 0.25, 0.75, 0.75, -0.75, -1.0, -1.0, 0.0, 0.5, 0.0, -1.0, -1.0, -0.5, 0.0, 0.75, -0.5, 0.0, -0.25, -0.5, 0.75, -0.25, -0.75, 0.25, 0.0, 0.25, 0.25, -0.25, -1.0, 0.0, 0.25, -0.25, -1.0, 0.75, 0.75, 0.25, -1.0, 0.25, 0.0, -0.75, -0.75, 0.0, 0.75, -0.75, 1.0, 0.5, 0.25, ]);
    
    command_encoder706.pushDebugGroup("mygroupmarker")
    device20.pushErrorScope("internal");
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout703]
    });
    
    command_encoder703.pushDebugGroup("mygroupmarker")
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder705.resolveQuerySet(
        query703,
        0,
        32,
        buffer700,
        0
    )
    const sampler706 = device70.createSampler( { label: "sampler706" } );
    
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    command_encoder706.resolveQuerySet(
        query702,
        0,
        32,
        buffer700,
        0
    )
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout702]
    });
    command_encoder706.resolveQuerySet(
        query700,
        0,
        32,
        buffer700,
        0
    )
    command_encoder706.resolveQuerySet(
        query703,
        0,
        32,
        buffer701,
        0
    )
    render_bundle_encoder700.pushDebugGroup("group_marker");
    query501.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder705.resolveQuerySet(
        query700,
        0,
        32,
        buffer703,
        0
    )
    command_encoder705.resolveQuerySet(
        query703,
        0,
        32,
        buffer700,
        0
    )
    
    query701.destroy()
    compute_pass_encoder7030.popDebugGroup()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder705.resolveQuerySet(
        query701,
        0,
        32,
        buffer700,
        0
    )
    command_encoder706.popDebugGroup()
    const query705 = device70.createQuerySet({
        label: "query705",
        type: "occlusion",
        count: 32,
    });
    command_encoder705.resolveQuerySet(
        query702,
        0,
        32,
        buffer700,
        0
    )
    
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder7030.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder706.resolveQuerySet(
        query705,
        0,
        32,
        buffer700,
        0
    )
    query700.destroy()
    command_encoder702.resolveQuerySet(
        query704,
        0,
        32,
        buffer700,
        0
    )
    command_encoder705.insertDebugMarker("mymarker");
    command_encoder703.resolveQuerySet(
        query703,
        0,
        32,
        buffer700,
        0
    )
    const compute_pass_encoder7060 = command_encoder706.beginComputePass({ label: "compute_pass_encoder7060" });
    const compute_pass_encoder7050 = command_encoder705.beginComputePass({ label: "compute_pass_encoder7050" });
    
    compute_pass_encoder7020.insertDebugMarker("marker")
    device40.pushErrorScope("validation");
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
    compute_pass_encoder7010.insertDebugMarker("marker")
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder7050.insertDebugMarker("marker")
    compute_pass_encoder7020.pushDebugGroup("group_marker")
    command_encoder706.resolveQuerySet(
        query701,
        0,
        32,
        buffer700,
        0
    )
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder706.resolveQuerySet(
        query702,
        0,
        32,
        buffer705,
        0
    )
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder702.insertDebugMarker("marker");
    command_encoder706.resolveQuerySet(
        query701,
        0,
        32,
        buffer700,
        0
    )
    
    query702.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout702]
    });
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
    
    
    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query701.destroy()
    device70.queue.writeBuffer(buffer706, 0, array0, 0, array0.length);
    compute_pass_encoder7020.popDebugGroup()
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    query502.destroy()
    compute_pass_encoder7030.insertDebugMarker("marker")
    query700.destroy()
    command_encoder706.resolveQuerySet(
        query703,
        0,
        32,
        buffer704,
        0
    )
    
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
    compute_pass_encoder7010.insertDebugMarker("marker")
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout702]
    });
    device10.destroy();
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
    const buffer707 = device70.createBuffer({
        label: "buffer707",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer708 = device70.createBuffer({
        label: "buffer708",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer707,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer708,
                },
            },
        ],
    });

    render_bundle_encoder702.setBindGroup(0, bind_group701);
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    compute_pass_encoder7000.setPipeline(compute_pipeline700);
    
    compute_pass_encoder7060.setPipeline(compute_pipeline700);
    command_encoder706.resolveQuerySet(
        query701,
        0,
        32,
        buffer701,
        0
    )
    buffer706.destroy()
    
    compute_pass_encoder7060.insertDebugMarker("marker")
    command_encoder706.resolveQuerySet(
        query705,
        0,
        32,
        buffer705,
        0
    )
    const array12 = new Float32Array([-0.25, 1.0, -0.5, 0.5, -0.25, -1.0, 1.0, -1.0, 0.25, -0.25, 1.0, -0.5, 0.0, -0.5, 0.0, -1.0, -0.25, 0.0, 1.0, -0.25, -0.25, 0.5, -0.25, 0.75, -0.5, 0.0, -1.0, 0.75, -0.5, 0.5, 0.5, 0.75, 1.0, 0.75, 1.0, 0.75, -0.25, 0.0, 0.5, -0.25, 0.25, -0.25, 0.0, 1.0, 1.0, 0.5, -0.25, 0.25, -0.25, -0.5, 0.0, 0.75, -0.5, 1.0, 0.0, 1.0, -1.0, 1.0, 0.75, -1.0, 1.0, 0.0, 0.75, 0.5, 0.5, 0.25, 1.0, 0.75, 1.0, -0.75, -0.25, 0.75, -0.25, 0.5, -0.5, -0.75, 0.0, 0.75, -1.0, -0.25, 0.5, -0.25, 1.0, 0.0, -0.75, 0.25, -0.5, -0.5, 0.0, -0.5, 0.0, 0.5, 0.5, 0.0, 0.75, 0.0, 0.5, 0.25, -0.5, 0.25, ]);
    query704.destroy()
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query700.destroy()
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7060.popDebugGroup()
    device70.queue.writeBuffer(buffer701, 0, array10, 0, array10.length);
    command_encoder706.resolveQuerySet(
        query705,
        0,
        32,
        buffer703,
        0
    )
    query703.destroy()
    const render_pipeline704 = device70.createRenderPipeline({
        label: "render_pipeline704",
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
    compute_pass_encoder7000.insertDebugMarker("marker")
    buffer708.destroy()
    const render_pipeline705 = device70.createRenderPipeline({
        label: "render_pipeline705",
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
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    query703.destroy()
    
    const buffer709 = device70.createBuffer({
        label: "buffer709",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7010 = device70.createBuffer({
        label: "buffer7010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group702 = device70.createBindGroup({
        label: "bind_group702",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer709,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7010,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group702);
    
    
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
    compute_pass_encoder7000.dispatchWorkgroups(100);
    compute_pass_encoder7050.setPipeline(compute_pipeline701);
    
    compute_pass_encoder7010.setPipeline(compute_pipeline700);
    const buffer7011 = device70.createBuffer({
        label: "buffer7011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7012 = device70.createBuffer({
        label: "buffer7012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group703 = device70.createBindGroup({
        label: "bind_group703",
        layout: render_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7012,
                },
            },
        ],
    });

    render_bundle_encoder701.setBindGroup(0, bind_group703);
    device70.queue.writeBuffer(buffer7011, 0, array2, 0, array2.length);
    command_encoder702.resolveQuerySet(
        query703,
        0,
        32,
        buffer700,
        0
    )
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32float",
        dimension: "2d"
    });
    const render_pipeline706 = device70.createRenderPipeline({
        label: "render_pipeline706",
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
    query703.destroy()
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
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
    render_bundle_encoder702.setVertexBuffer(0, buffer700);
    
    compute_pass_encoder7030.setPipeline(compute_pipeline700);
    render_bundle_encoder702.drawIndirect(buffer706, 0);
    
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer7013 = device70.createBuffer({
        label: "buffer7013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7013, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer7013, 0);
    device70.queue.writeBuffer(buffer7013, 0, array5, 0, array5.length);
    device70.queue.writeBuffer(buffer7012, 0, array0, 0, array0.length);
    device00.destroy();
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder7060.pushDebugGroup("group_marker")
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout700]
    });
    render_bundle_encoder700.setVertexBuffer(0, buffer702);
    device70.queue.writeBuffer(buffer7012, 0, array7, 0, array7.length);
    compute_pass_encoder7020.setPipeline(compute_pipeline701);
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
        
    const bind_group704 = device70.createBindGroup({
        label: "bind_group704",
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

    compute_pass_encoder7010.setBindGroup(0, bind_group704);
    const render_pipeline707 = device70.createRenderPipeline({
        label: "render_pipeline707",
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
    device70.queue.writeBuffer(buffer7013, 0, array10, 0, array10.length);
    command_encoder702.resolveQuerySet(
        query702,
        0,
        32,
        buffer708,
        0
    )
    const pipeline_layout706 = device70.createPipelineLayout({ 
        label: "pipeline_layout706",
        bindGroupLayouts: [bind_group_layout706]
    });
    query705.destroy()
    compute_pass_encoder7000.end();
    command_encoder700.copyBufferToBuffer(
        buffer7015,
        0,
        buffer7013,
        0,
        400
    );
    
    compute_pass_encoder7010.insertDebugMarker("marker")
    const query706 = device70.createQuerySet({
        label: "query706",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder7000.insertDebugMarker("marker")
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout705,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    texture701.destroy();
    device70.pushErrorScope("validation");
    render_bundle_encoder700.drawIndirect(buffer706, 0);
    device70.queue.writeBuffer(buffer7013, 0, array7, 0, array7.length);
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout705,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder700.resolveQuerySet(
        query700,
        0,
        32,
        buffer7010,
        0
    )
    command_encoder702.resolveQuerySet(
        query705,
        0,
        32,
        buffer704,
        0
    )
    buffer705.destroy()
    render_bundle_encoder701.setVertexBuffer(0, buffer702);
    const render_pipeline708 = device70.createRenderPipeline({
        label: "render_pipeline708",
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
    render_bundle_encoder700.popDebugGroup();
    
    command_encoder700.resolveQuerySet(
        query703,
        0,
        32,
        buffer700,
        0
    )
    buffer7013.destroy()
    query703.destroy()
    const buffer7016 = device70.createBuffer({
        label: "buffer7016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7017 = device70.createBuffer({
        label: "buffer7017",
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
                    buffer: buffer7016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7017,
                },
            },
        ],
    });

    compute_pass_encoder7030.setBindGroup(0, bind_group705);
    compute_pass_encoder7010.insertDebugMarker("marker")
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    command_encoder700.resolveQuerySet(
        query700,
        0,
        32,
        buffer700,
        0
    )
    command_encoder700.resolveQuerySet(
        query700,
        0,
        32,
        buffer700,
        0
    )
    render_bundle_encoder701.setIndexBuffer(buffer7014, "uint16");
    command_encoder700.clearBuffer(buffer702);
    
    const render_pipeline709 = device70.createRenderPipeline({
        label: "render_pipeline709",
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
    render_bundle_encoder701.drawIndirect(buffer706, 0);
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer700 = command_encoder700.finish();
    const uint32_7010 = new Uint32Array(3);

    uint32_7010[0] = 100;
    uint32_7010[1] = 1;
    uint32_7010[2] = 1;

    const buffer7018 = device70.createBuffer({
        label: "buffer7018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7018, 0, uint32_7010, 0, uint32_7010.length);

    compute_pass_encoder7010.dispatchWorkgroupsIndirect(buffer7018, 0);
    const uint32_7030 = new Uint32Array(3);

    uint32_7030[0] = 100;
    uint32_7030[1] = 1;
    uint32_7030[2] = 1;

    const buffer7019 = device70.createBuffer({
        label: "buffer7019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7019, 0, uint32_7030, 0, uint32_7030.length);

    compute_pass_encoder7030.dispatchWorkgroupsIndirect(buffer7019, 0);
    const command_buffer500 = command_encoder500.finish();
    device70.queue.submit([command_buffer700, ]);
    command_encoder701.popDebugGroup()
    compute_pass_encoder7030.end();
    compute_pass_encoder7020.popDebugGroup()
    compute_pass_encoder7030.dispatchWorkgroups(100);
    const buffer7020 = device70.createBuffer({
        label: "buffer7020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7021 = device70.createBuffer({
        label: "buffer7021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group706 = device70.createBindGroup({
        label: "bind_group706",
        layout: compute_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7021,
                },
            },
        ],
    });

    compute_pass_encoder7050.setBindGroup(0, bind_group706);
    const uint32_7050 = new Uint32Array(3);

    uint32_7050[0] = 100;
    uint32_7050[1] = 1;
    uint32_7050[2] = 1;

    const buffer7022 = device70.createBuffer({
        label: "buffer7022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7022, 0, uint32_7050, 0, uint32_7050.length);

    compute_pass_encoder7050.dispatchWorkgroupsIndirect(buffer7022, 0);
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
        
    const bind_group707 = device70.createBindGroup({
        label: "bind_group707",
        layout: compute_pipeline701.getBindGroupLayout(0),
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

    compute_pass_encoder7020.setBindGroup(0, bind_group707);
    device70.queue.submit([command_buffer704, ]);
    const uint32_7020 = new Uint32Array(3);

    uint32_7020[0] = 100;
    uint32_7020[1] = 1;
    uint32_7020[2] = 1;

    const buffer7025 = device70.createBuffer({
        label: "buffer7025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7025, 0, uint32_7020, 0, uint32_7020.length);

    compute_pass_encoder7020.dispatchWorkgroupsIndirect(buffer7025, 0);
    compute_pass_encoder7000.dispatchWorkgroups(100);
    command_encoder703.popDebugGroup()
    compute_pass_encoder7020.end();
    const buffer7026 = device70.createBuffer({
        label: "buffer7026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7027 = device70.createBuffer({
        label: "buffer7027",
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
                    buffer: buffer7026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7027,
                },
            },
        ],
    });

    compute_pass_encoder7060.setBindGroup(0, bind_group708);
    compute_pass_encoder7060.popDebugGroup()
    const command_buffer703 = command_encoder703.finish();
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder7060.dispatchWorkgroups(100);
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer7028 = device70.createBuffer({
        label: "buffer7028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7028, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer7028, 0);
    const command_buffer702 = command_encoder702.finish();
    compute_pass_encoder7050.end();
    const uint32_7050 = new Uint32Array(3);

    uint32_7050[0] = 100;
    uint32_7050[1] = 1;
    uint32_7050[2] = 1;

    const buffer7029 = device70.createBuffer({
        label: "buffer7029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7029, 0, uint32_7050, 0, uint32_7050.length);

    compute_pass_encoder7050.dispatchWorkgroupsIndirect(buffer7029, 0);
    compute_pass_encoder7010.end();
    const command_buffer706 = command_encoder706.finish();
    const command_buffer701 = command_encoder701.finish();
    compute_pass_encoder7000.end();
    compute_pass_encoder7060.end();
    compute_pass_encoder7010.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer703, ]);
    compute_pass_encoder7000.popDebugGroup()
    const uint32_7060 = new Uint32Array(3);

    uint32_7060[0] = 100;
    uint32_7060[1] = 1;
    uint32_7060[2] = 1;

    const buffer7030 = device70.createBuffer({
        label: "buffer7030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7030, 0, uint32_7060, 0, uint32_7060.length);

    compute_pass_encoder7060.dispatchWorkgroupsIndirect(buffer7030, 0);
    compute_pass_encoder7060.popDebugGroup()
    const command_buffer705 = command_encoder705.finish();
    compute_pass_encoder7030.end();
    compute_pass_encoder7050.dispatchWorkgroups(100);
    compute_pass_encoder7020.popDebugGroup()
    device60.queue.submit([]);
    compute_pass_encoder7020.dispatchWorkgroups(100);
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer7031 = device70.createBuffer({
        label: "buffer7031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7031, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer7031, 0);
    compute_pass_encoder7060.popDebugGroup()
    device70.queue.submit([command_buffer701, command_buffer702, command_buffer705, command_buffer706, ]);
    compute_pass_encoder7030.end();
    device70.queue.submit([command_buffer705, ]);
    const uint32_7050 = new Uint32Array(3);

    uint32_7050[0] = 100;
    uint32_7050[1] = 1;
    uint32_7050[2] = 1;

    const buffer7032 = device70.createBuffer({
        label: "buffer7032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7032, 0, uint32_7050, 0, uint32_7050.length);

    compute_pass_encoder7050.dispatchWorkgroupsIndirect(buffer7032, 0);
    compute_pass_encoder7020.popDebugGroup()
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder7060.end();
    compute_pass_encoder7060.popDebugGroup()
    const uint32_7050 = new Uint32Array(3);

    uint32_7050[0] = 100;
    uint32_7050[1] = 1;
    uint32_7050[2] = 1;

    const buffer7033 = device70.createBuffer({
        label: "buffer7033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7033, 0, uint32_7050, 0, uint32_7050.length);

    compute_pass_encoder7050.dispatchWorkgroupsIndirect(buffer7033, 0);
    const buffer7034 = device70.createBuffer({
        label: "buffer7034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7035 = device70.createBuffer({
        label: "buffer7035",
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
                    buffer: buffer7034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7035,
                },
            },
        ],
    });

    compute_pass_encoder7030.setBindGroup(0, bind_group709);
    compute_pass_encoder7020.end();
    const uint32_7060 = new Uint32Array(3);

    uint32_7060[0] = 100;
    uint32_7060[1] = 1;
    uint32_7060[2] = 1;

    const buffer7036 = device70.createBuffer({
        label: "buffer7036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7036, 0, uint32_7060, 0, uint32_7060.length);

    compute_pass_encoder7060.dispatchWorkgroupsIndirect(buffer7036, 0);
    device30.queue.submit([]);
    const buffer7037 = device70.createBuffer({
        label: "buffer7037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7038 = device70.createBuffer({
        label: "buffer7038",
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
                    buffer: buffer7037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7038,
                },
            },
        ],
    });

    compute_pass_encoder7030.setBindGroup(0, bind_group7010);
    const buffer7039 = device70.createBuffer({
        label: "buffer7039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7040 = device70.createBuffer({
        label: "buffer7040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group7011 = device70.createBindGroup({
        label: "bind_group7011",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7040,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group7011);
    const uint32_7060 = new Uint32Array(3);

    uint32_7060[0] = 100;
    uint32_7060[1] = 1;
    uint32_7060[2] = 1;

    const buffer7041 = device70.createBuffer({
        label: "buffer7041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7041, 0, uint32_7060, 0, uint32_7060.length);

    compute_pass_encoder7060.dispatchWorkgroupsIndirect(buffer7041, 0);
    compute_pass_encoder7010.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder7030.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder7030.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer701, command_buffer703, command_buffer706, ]);
    compute_pass_encoder7030.dispatchWorkgroups(100);
    device40.queue.submit([]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder7050.popDebugGroup()
    compute_pass_encoder7010.dispatchWorkgroups(100);
    device70.queue.submit([]);
    const buffer7042 = device70.createBuffer({
        label: "buffer7042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7043 = device70.createBuffer({
        label: "buffer7043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group7012 = device70.createBindGroup({
        label: "bind_group7012",
        layout: compute_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7043,
                },
            },
        ],
    });

    compute_pass_encoder7050.setBindGroup(0, bind_group7012);
    compute_pass_encoder7060.end();
    device70.queue.submit([command_buffer704, ]);
    device70.queue.submit([command_buffer703, ]);
    device70.queue.submit([command_buffer705, ]);
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer7044 = device70.createBuffer({
        label: "buffer7044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7044, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer7044, 0);
    const uint32_7010 = new Uint32Array(3);

    uint32_7010[0] = 100;
    uint32_7010[1] = 1;
    uint32_7010[2] = 1;

    const buffer7045 = device70.createBuffer({
        label: "buffer7045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7045, 0, uint32_7010, 0, uint32_7010.length);

    compute_pass_encoder7010.dispatchWorkgroupsIndirect(buffer7045, 0);
    const buffer7046 = device70.createBuffer({
        label: "buffer7046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7047 = device70.createBuffer({
        label: "buffer7047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group7013 = device70.createBindGroup({
        label: "bind_group7013",
        layout: compute_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7047,
                },
            },
        ],
    });

    compute_pass_encoder7020.setBindGroup(0, bind_group7013);
    compute_pass_encoder7050.popDebugGroup()
    device70.queue.submit([command_buffer704, command_buffer706, ]);
    const buffer7048 = device70.createBuffer({
        label: "buffer7048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7049 = device70.createBuffer({
        label: "buffer7049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group7014 = device70.createBindGroup({
        label: "bind_group7014",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7049,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group7014);
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder7020.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder7000.dispatchWorkgroups(100);
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer7050 = device70.createBuffer({
        label: "buffer7050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7050, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer7050, 0);
    compute_pass_encoder7000.popDebugGroup()
}