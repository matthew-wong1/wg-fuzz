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
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32uint",
        dimension: "2d"
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
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    const array0 = new Float32Array([-0.5, 1.0, 0.0, -0.5, 1.0, -0.75, 0.0, 0.75, -1.0, -0.25, -1.0, -0.75, 0.0, 1.0, 0.75, -1.0, -0.25, 0.75, -0.75, -0.5, -0.5, 0.75, 0.0, 0.75, -0.75, 0.5, 0.25, 0.75, -0.75, -0.75, 0.5, 1.0, 0.5, -0.75, 1.0, 0.0, -0.25, -0.75, 1.0, 0.0, 0.75, -1.0, -0.5, 1.0, -0.75, -0.75, 0.5, -0.5, 0.5, -0.25, -0.25, 0.0, 0.25, -0.5, -0.75, -0.25, 0.75, 0.75, -0.75, -0.5, 0.75, -1.0, -0.5, -0.75, 0.0, 1.0, -0.75, 1.0, -0.75, 1.0, 0.5, -0.25, -1.0, 1.0, -0.25, -0.5, 0.25, -0.25, -0.75, 0.0, 0.5, 0.0, 0.5, 0.5, 1.0, -0.25, -0.5, 0.0, 0.5, 0.5, -1.0, -0.25, -1.0, -1.0, 1.0, 0.0, -0.25, 0.75, -0.25, -0.5, ]);
    
    
    const array1 = new Float32Array([-1.0, -1.0, 0.5, -0.25, 0.25, 0.75, 0.0, 0.0, 1.0, -0.25, -0.25, 0.5, -0.25, -0.25, -0.75, -1.0, 0.5, -1.0, 0.25, 1.0, 1.0, -0.5, 0.5, -0.25, 1.0, -0.25, 0.75, -0.25, 1.0, -0.75, 1.0, 0.5, -1.0, 0.0, 0.75, -0.25, -0.5, -1.0, 0.5, -0.5, 1.0, -1.0, 0.75, -0.75, -0.5, 0.5, -1.0, 0.25, -0.25, 0.0, 1.0, 0.25, 1.0, 0.75, -0.75, -0.25, 0.5, 0.0, -0.5, -0.75, 0.5, 0.75, -0.5, -0.25, 1.0, 0.75, 0.5, 0.0, 0.0, -1.0, -0.5, -0.25, 1.0, -0.75, -1.0, -1.0, -0.25, -0.75, -0.75, 0.0, -0.25, 0.5, 0.0, 0.5, -1.0, 1.0, -0.5, 0.0, 1.0, -0.5, 0.25, -0.5, 0.0, 0.0, 0.0, 0.25, -0.5, 0.0, -0.25, 0.0, ]);
    
    
    
    
    const array2 = new Float32Array([0.75, 0.5, 0.25, -0.75, -0.5, -1.0, 1.0, -0.5, 0.75, -0.75, 0.75, -0.25, -1.0, 0.25, -0.75, -0.75, -0.75, -1.0, 1.0, 0.25, -1.0, 0.0, 0.75, -0.25, -0.5, 0.75, -0.5, -1.0, -0.25, -0.75, 0.25, 0.75, 0.5, -1.0, 1.0, 0.5, -0.25, -0.75, 0.25, -0.25, 0.5, -0.5, 1.0, 0.5, 0.0, 0.75, 0.75, 1.0, -0.75, 0.25, -0.5, 0.5, -0.75, -0.75, -0.25, 0.0, -0.25, 0.75, -0.5, 0.5, -0.5, 0.75, 0.75, 0.25, -0.25, -0.75, -0.25, -0.25, 0.25, -0.5, -0.25, -0.5, 1.0, -0.5, -0.75, 0.0, -1.0, 1.0, -0.5, -0.25, 0.75, -0.75, 0.75, 0.75, 0.0, 1.0, 1.0, 0.0, 0.25, 0.75, 0.75, 0.0, -0.25, 1.0, -1.0, 0.75, -1.0, 0.75, 0.75, 0.0, ]);
    
    const array3 = new Float32Array([0.0, 0.5, -1.0, -0.5, -1.0, 0.25, -0.25, 0.75, 0.5, 1.0, -1.0, -0.25, -0.5, 1.0, 0.5, 0.25, -1.0, 1.0, -0.25, -1.0, -0.75, 0.5, -1.0, -1.0, 0.75, 1.0, 0.25, -0.75, -1.0, 0.5, 0.5, 0.0, -0.75, 0.5, -1.0, 0.0, 0.5, -0.25, 0.0, 1.0, -1.0, -1.0, -0.75, 0.5, 0.25, 0.25, -1.0, -0.75, 1.0, 0.25, 1.0, 1.0, -1.0, 0.5, 0.5, -0.5, 1.0, 0.25, -1.0, -0.5, 0.25, 0.5, 0.25, 1.0, -1.0, -0.25, -0.75, -0.75, -0.5, 0.75, 0.25, 0.0, -0.75, 1.0, -0.5, -0.75, -0.75, 0.5, 1.0, 0.75, -0.75, 1.0, 0.75, -0.75, 0.25, 0.75, 0.75, -0.75, 0.25, 1.0, 0.25, 1.0, 0.75, 0.0, 0.25, -0.5, -0.75, 0.25, 1.0, 0.5, ]);
    const array4 = new Float32Array([-1.0, -0.75, -0.25, -0.25, -0.25, -0.25, 0.5, -0.5, 0.75, 0.0, -0.5, 1.0, 0.5, -0.75, -1.0, -0.25, 0.0, 0.75, 0.0, -0.25, -0.25, 0.0, 0.75, 1.0, 0.5, -0.75, 0.25, -0.5, -0.25, 0.75, 0.75, 1.0, -0.75, 0.75, -0.25, 0.25, -1.0, 0.0, 0.0, 1.0, -0.5, -1.0, -1.0, 0.0, 0.25, 0.5, 0.25, -1.0, 0.25, -0.5, -0.5, -0.25, -0.75, 0.0, 0.25, -0.5, 0.25, -0.75, 0.25, 0.0, 0.0, 0.25, -0.5, -0.25, 0.5, -1.0, -0.5, 0.25, 0.75, -0.75, 0.5, -1.0, -0.75, 1.0, -1.0, 0.75, 0.0, 0.25, -0.75, -0.5, -1.0, -0.25, 0.25, 1.0, 0.25, -1.0, -0.75, 0.75, -0.25, 0.5, -1.0, -0.75, -0.25, -1.0, 0.5, 1.0, -1.0, -0.75, -0.75, 1.0, ]);
    
    const array5 = new Float32Array([1.0, -0.25, -0.75, -0.25, 1.0, -0.5, 0.75, 0.75, -0.75, 0.25, -0.5, 0.0, 1.0, 0.0, 1.0, -0.75, -0.75, -0.5, 0.0, -0.25, 0.5, -0.75, 0.25, 0.75, -0.5, 0.75, 0.25, 0.0, -0.5, 1.0, -0.5, -0.75, 1.0, -0.5, 0.0, 0.5, 0.25, -1.0, -1.0, -1.0, 0.75, 1.0, 0.0, 0.0, 0.75, -0.5, -0.25, 0.0, -0.75, 0.75, -0.75, -0.25, 0.25, -0.25, 0.5, -0.5, -0.25, -0.5, -1.0, -0.75, 0.75, -0.5, 0.0, 1.0, -1.0, 0.25, 0.5, 1.0, 0.75, 0.75, 1.0, 0.0, -0.75, -0.5, 0.75, -0.75, -1.0, 0.75, -0.5, -0.5, 0.25, -0.5, 0.0, 1.0, 0.5, 0.5, -1.0, 0.25, 0.25, -0.75, 0.25, 0.75, 0.75, 0.75, -0.5, -1.0, 1.0, -0.5, 1.0, -0.75, ]);
    const array6 = new Float32Array([0.75, 0.0, -1.0, 0.25, 0.5, -0.75, -0.5, -1.0, -0.75, -0.5, 1.0, 0.25, -0.5, 0.75, 1.0, 0.0, 1.0, 0.5, -0.5, -0.75, -1.0, 0.0, -0.75, -0.75, 0.5, 0.75, 0.5, -1.0, -1.0, -0.25, 0.5, 0.5, 0.0, 0.75, -1.0, -0.25, 0.75, 0.5, 0.5, 0.0, 0.0, -0.75, 0.0, -0.5, -0.75, 0.0, 1.0, -1.0, -1.0, -0.5, -0.5, 0.0, -0.25, 0.75, 0.75, 1.0, -0.25, -0.25, 0.25, -0.5, -0.5, -0.25, -0.5, -1.0, 0.0, -0.25, 0.0, 0.5, 0.5, -1.0, 0.25, 0.0, 1.0, -1.0, 1.0, -0.75, 1.0, -0.75, -0.25, -0.25, 0.75, -1.0, 0.0, 0.75, -1.0, 0.0, -0.5, -0.5, 0.0, 0.25, 0.25, 1.0, -1.0, -0.25, 0.0, 0.0, -0.75, -0.25, -0.25, 0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const array7 = new Float32Array([-0.5, 0.0, -0.75, -1.0, -1.0, -0.75, 0.25, 0.75, 0.5, 0.0, -1.0, -0.25, 0.5, 0.75, 0.75, -1.0, 0.25, 0.25, 0.25, -0.5, 0.5, 0.0, -0.5, -1.0, 1.0, -0.5, 0.5, 0.0, 0.75, 0.25, -0.75, 0.75, -0.75, 0.0, -0.75, -0.25, -1.0, 0.0, 0.25, 0.0, -0.5, 0.25, -0.75, 0.0, 0.75, -0.75, -1.0, 0.5, 0.0, -1.0, 1.0, -0.5, 0.0, -0.5, -0.5, 1.0, 0.75, -0.75, -0.25, -0.5, -1.0, -1.0, 0.25, -0.25, 1.0, 0.5, -1.0, 0.0, -0.5, 0.5, 0.5, 0.25, -0.75, 0.25, 0.25, 0.0, -0.75, -0.5, -1.0, -1.0, -0.5, 1.0, -0.75, -1.0, -1.0, 0.75, 0.25, 0.0, -0.25, 0.0, 0.5, 0.75, 0.25, 0.25, -0.5, 0.0, -1.0, 0.5, -0.75, -1.0, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    
    
    device10.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array8 = new Float32Array([0.75, 0.5, 0.5, -1.0, -0.25, 0.25, -1.0, -0.5, 0.75, 0.75, 1.0, -0.75, 0.25, 0.5, -0.25, -0.5, -0.25, 0.5, -0.25, 0.0, -0.25, 0.75, 1.0, -0.5, -0.25, -0.75, -0.75, -0.5, 1.0, 1.0, 1.0, 1.0, 0.75, -0.75, 0.75, -0.25, -0.75, 0.25, 0.0, -0.5, 0.25, 1.0, 0.25, -0.75, -0.5, 0.5, -0.5, -0.75, 0.75, 0.0, -0.5, -1.0, 0.5, -1.0, 1.0, 0.0, 0.0, -0.5, -0.25, -0.5, -0.25, -0.25, -0.5, -1.0, -1.0, 0.5, 0.75, 1.0, -1.0, 0.5, 1.0, 0.25, -0.25, 1.0, 0.5, -1.0, 0.25, -0.5, -0.25, 0.75, 0.75, -0.75, 0.5, -0.5, 1.0, -0.5, -1.0, 0.25, 0.5, 1.0, 0.5, -0.5, 0.0, 0.25, 0.5, -0.75, -0.25, 0.25, -1.0, -0.5, ]);
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const array9 = new Float32Array([-1.0, 1.0, -1.0, 0.0, -0.75, 0.25, 0.25, 1.0, 0.75, 0.5, 0.25, -0.25, 0.25, 0.5, 0.75, 1.0, -1.0, 0.0, -0.5, -1.0, 0.25, -0.25, -0.25, 1.0, -1.0, 0.5, 1.0, -0.75, 0.25, -0.5, 0.5, -1.0, 0.75, 0.25, 0.75, -0.25, 0.5, -0.5, 0.75, -0.75, 1.0, 0.0, -1.0, 1.0, 0.75, 0.5, -1.0, 1.0, 1.0, 0.75, 1.0, 0.5, -1.0, 0.25, -1.0, -0.75, 0.5, 0.25, -0.25, 0.0, 0.75, -0.5, 0.75, -0.5, -0.5, -0.25, 0.0, 0.0, -0.25, -0.5, -1.0, -1.0, -0.5, -0.75, 0.25, 0.75, 0.5, -0.75, -0.75, 1.0, 0.75, -0.75, 0.75, -0.25, -0.25, -0.25, 0.5, 0.0, -0.5, -0.25, 0.75, 0.5, -0.25, -0.5, 0.25, 0.0, -1.0, 0.0, -0.5, 0.0, ]);
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
        powerPreference: "high-performance"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const array10 = new Float32Array([0.0, 0.0, -0.75, -0.5, -0.5, -0.25, 1.0, 1.0, 0.0, -0.5, -0.5, -1.0, 0.25, -1.0, 0.5, -0.5, 0.25, 0.75, 1.0, -0.5, -0.25, 0.5, 0.75, 1.0, -0.25, 0.75, -0.25, -0.25, -1.0, 1.0, 1.0, 0.5, -1.0, -0.75, 1.0, -0.75, 0.0, 0.25, 0.75, -0.5, -0.75, 0.75, -0.5, 1.0, 0.5, -1.0, 0.0, 0.0, 0.0, -0.25, -0.25, 0.5, -0.75, 0.5, -0.25, 0.25, 1.0, -1.0, 0.25, 0.0, 0.25, 0.0, 0.0, 0.25, -0.25, 0.75, 0.75, 1.0, -0.75, 1.0, 0.0, -1.0, 0.5, -0.25, -1.0, 0.75, -0.75, 0.0, 0.5, 0.75, -0.25, 0.75, -1.0, 0.5, -0.75, 0.0, 0.0, -0.75, -0.25, 0.0, 1.0, 0.25, 0.5, -0.75, 0.75, 0.25, -0.5, -0.5, 0.25, 0.0, ]);
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
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
    
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array11 = new Float32Array([1.0, -0.75, 0.0, 1.0, -0.5, 0.0, 0.0, -0.5, -0.5, 0.75, -1.0, 0.5, 1.0, -0.5, -0.5, 0.75, -1.0, 1.0, 1.0, 0.25, -0.5, 0.25, 0.25, -0.75, 0.75, 0.25, 1.0, -1.0, -1.0, -1.0, 0.25, 0.75, 0.5, 0.25, 0.25, -0.5, -0.75, -0.75, -0.75, 0.0, 0.75, -0.75, 0.0, -0.5, -0.5, -0.25, 1.0, -0.25, 0.75, 0.5, -0.25, -1.0, -0.75, 0.5, -1.0, -0.5, -0.75, 0.0, 0.0, -1.0, -0.5, -0.5, -0.75, -0.5, -1.0, -0.25, -0.75, -0.5, -0.75, -1.0, -0.25, 0.75, -0.25, 1.0, 0.25, -0.5, 0.0, 0.5, -1.0, 0.75, -1.0, 0.25, -0.75, 0.25, -0.5, 0.0, -0.25, 0.25, -0.25, 0.25, -0.5, 0.25, 0.75, 0.75, 0.5, -0.5, -1.0, 0.0, -0.75, -0.25, ]);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device30.destroy();
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    query400.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8sint",
        dimension: "2d"
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    
    query501.destroy()
    device40.destroy();
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
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    texture501.destroy();
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    buffer500.destroy()
    
    
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
    query500.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    device60.destroy();
    
    
    buffer501.destroy()
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    
    query501.destroy()
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    
    
    query501.destroy()
    query500.destroy()
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const render_pipeline508 = device50.createRenderPipeline({
        label: "render_pipeline508",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    device80.destroy();
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module506.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    device100.destroy();
    
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    texture500.destroy();
    const render_pipeline509 = device50.createRenderPipeline({
        label: "render_pipeline509",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout503]
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    query501.destroy()
    const render_pipeline5010 = device50.createRenderPipeline({
        label: "render_pipeline5010",
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
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    query502.destroy()
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout500,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    const render_pipeline5011 = device50.createRenderPipeline({
        label: "render_pipeline5011",
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
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer503, 0, array2, 0, array2.length);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query500.destroy()
    
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout503,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    
    buffer503.destroy()
    
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    query502.destroy()
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout503,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
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
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query503.destroy()
    
    
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module508.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout502,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout504,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    const render_pipeline5012 = device50.createRenderPipeline({
        label: "render_pipeline5012",
        vertex: {
            module: shader_module507,
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
            module: shader_module507,
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
    var shader_module509_code = "";
    try {
        shader_module509_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module509 = await device50.createShaderModule({ label: "shader_module509", code: shader_module509_code })
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout501,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout505,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout503,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
    buffer700.destroy()
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout502]
    });
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout506,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const array12 = new Float32Array([0.5, 0.5, 1.0, 0.5, 0.25, 0.75, -1.0, -1.0, -0.75, -0.25, -1.0, 0.5, -1.0, 0.0, 1.0, -0.75, 1.0, -0.5, -0.25, -0.25, -1.0, 0.25, -1.0, -1.0, -0.75, 0.25, -0.5, 0.5, 0.75, 0.75, -0.5, -0.5, 0.25, -0.25, -0.25, 0.75, 0.25, 1.0, -0.75, 0.75, 1.0, 0.0, -0.75, 0.0, -0.5, 0.0, -0.75, -1.0, 0.0, -0.5, -0.75, -0.25, 0.75, 0.75, 1.0, 0.25, 0.0, 0.5, -1.0, 0.75, 0.0, -0.25, 1.0, 0.25, -0.5, 0.0, -1.0, -0.25, 0.25, 0.25, 0.0, -1.0, 0.25, 0.75, 1.0, -0.5, 0.25, 1.0, 0.25, -1.0, -0.5, 0.25, 0.25, 0.0, -1.0, 0.75, -0.75, 0.5, -0.75, 0.5, 0.5, -0.5, 0.5, -0.5, 0.5, 1.0, -1.0, 0.5, -0.75, -1.0, ]);
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline5021 = device50.createComputePipeline({
        label: "compute_pipeline5021",
        layout: pipeline_layout504,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const compute_pipeline5022 = device50.createComputePipeline({
        label: "compute_pipeline5022",
        layout: pipeline_layout502,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    const compute_pipeline5023 = device50.createComputePipeline({
        label: "compute_pipeline5023",
        layout: pipeline_layout506,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline5024 = device50.createComputePipeline({
        label: "compute_pipeline5024",
        layout: pipeline_layout506,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
    const render_pipeline5013 = device50.createRenderPipeline({
        label: "render_pipeline5013",
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
    
    const compute_pipeline5025 = device50.createComputePipeline({
        label: "compute_pipeline5025",
        layout: pipeline_layout506,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_pipeline5014 = device50.createRenderPipeline({
        label: "render_pipeline5014",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const compute_pipeline5026 = device50.createComputePipeline({
        label: "compute_pipeline5026",
        layout: pipeline_layout502,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    const compute_pipeline5027 = device50.createComputePipeline({
        label: "compute_pipeline5027",
        layout: pipeline_layout505,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
    const compute_pipeline5028 = device50.createComputePipeline({
        label: "compute_pipeline5028",
        layout: pipeline_layout505,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const render_pipeline5015 = device50.createRenderPipeline({
        label: "render_pipeline5015",
        vertex: {
            module: shader_module509,
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
            module: shader_module509,
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
    const compute_pipeline5029 = device50.createComputePipeline({
        label: "compute_pipeline5029",
        layout: pipeline_layout506,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout505]
    });
    const compute_pipeline5030 = device50.createComputePipeline({
        label: "compute_pipeline5030",
        layout: pipeline_layout508,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    const render_pipeline5016 = device50.createRenderPipeline({
        label: "render_pipeline5016",
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
    
    const compute_pipeline5031 = device50.createComputePipeline({
        label: "compute_pipeline5031",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const compute_pipeline5032 = device50.createComputePipeline({
        label: "compute_pipeline5032",
        layout: pipeline_layout507,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    query700.destroy()
    const compute_pipeline5033 = device50.createComputePipeline({
        label: "compute_pipeline5033",
        layout: pipeline_layout508,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
    query700.destroy()
    
    const array13 = new Float32Array([-1.0, -1.0, 0.25, -0.25, -0.5, -0.75, -0.5, -0.25, 0.0, 0.25, 0.25, 0.75, 0.25, 0.25, 0.75, 0.5, 0.75, 0.75, 0.0, -0.25, 1.0, 0.0, 0.75, -0.25, -0.75, -0.25, -1.0, -0.75, -1.0, -0.75, 0.5, 0.75, -0.75, 1.0, -1.0, 0.5, -0.5, 0.25, -1.0, 0.5, -0.5, 1.0, 1.0, -0.25, 0.25, 1.0, 0.0, 0.75, -1.0, -0.25, -0.75, -0.75, 1.0, 0.25, -0.25, -0.75, -0.5, 1.0, -0.75, 1.0, -0.25, 0.5, -0.5, 0.5, 0.25, -1.0, -1.0, -0.25, -0.75, 0.0, -1.0, 0.25, 0.0, 1.0, 0.0, -0.25, -0.75, -0.25, 0.25, -0.75, -0.5, 0.5, -1.0, -0.75, 0.75, -0.75, 0.25, -0.5, -0.5, 1.0, 0.0, 0.75, 0.25, -0.5, 0.75, -0.5, -0.25, 0.75, 0.75, 0.25, ]);
    
    const compute_pipeline5034 = device50.createComputePipeline({
        label: "compute_pipeline5034",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5035 = device50.createComputePipeline({
        label: "compute_pipeline5035",
        layout: pipeline_layout507,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    const render_pipeline5017 = device50.createRenderPipeline({
        label: "render_pipeline5017",
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
    buffer504.destroy()
    query701.destroy()
    render_bundle_encoder700.popDebugGroup();
    const compute_pipeline5036 = device50.createComputePipeline({
        label: "compute_pipeline5036",
        layout: pipeline_layout506,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5037 = device50.createComputePipeline({
        label: "compute_pipeline5037",
        layout: pipeline_layout503,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    const compute_pipeline5038 = device50.createComputePipeline({
        label: "compute_pipeline5038",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5039 = device50.createComputePipeline({
        label: "compute_pipeline5039",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5040 = device50.createComputePipeline({
        label: "compute_pipeline5040",
        layout: pipeline_layout506,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    var shader_module5010_code = "";
    try {
        shader_module5010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5010 = await device50.createShaderModule({ label: "shader_module5010", code: shader_module5010_code })
    const compute_pipeline5041 = device50.createComputePipeline({
        label: "compute_pipeline5041",
        layout: pipeline_layout505,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    buffer502.destroy()
    const compute_pipeline5042 = device50.createComputePipeline({
        label: "compute_pipeline5042",
        layout: pipeline_layout500,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
    const compute_pipeline5043 = device50.createComputePipeline({
        label: "compute_pipeline5043",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query701.destroy()
    
    render_bundle_encoder501.popDebugGroup();
    const render_pipeline5018 = device50.createRenderPipeline({
        label: "render_pipeline5018",
        vertex: {
            module: shader_module5010,
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
            module: shader_module5010,
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
    const render_pipeline5019 = device50.createRenderPipeline({
        label: "render_pipeline5019",
        vertex: {
            module: shader_module509,
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
            module: shader_module509,
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
    const compute_pipeline5044 = device50.createComputePipeline({
        label: "compute_pipeline5044",
        layout: pipeline_layout500,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5045 = device50.createComputePipeline({
        label: "compute_pipeline5045",
        layout: pipeline_layout505,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5046 = device50.createComputePipeline({
        label: "compute_pipeline5046",
        layout: pipeline_layout507,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline5047 = device50.createComputePipeline({
        label: "compute_pipeline5047",
        layout: pipeline_layout503,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const render_pipeline5020 = device50.createRenderPipeline({
        label: "render_pipeline5020",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const compute_pipeline5048 = device50.createComputePipeline({
        label: "compute_pipeline5048",
        layout: pipeline_layout504,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.destroy();
    
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    
    
    query702.destroy()
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    device70.destroy();
    
    
    
    
    
    
    
    const array14 = new Float32Array([0.25, 0.25, 0.0, 0.0, 0.5, 0.25, 1.0, -0.25, 1.0, 0.25, -0.75, 0.75, -0.25, 1.0, 1.0, 0.25, 0.25, 0.75, -0.75, 0.0, 0.0, -0.75, 0.25, -0.75, 0.5, -0.25, -1.0, 0.75, -1.0, -0.5, -0.5, 1.0, 0.25, 0.0, -0.25, -1.0, 1.0, 0.75, -0.75, 0.75, -0.5, 0.0, -0.25, 0.75, 0.25, -1.0, 0.25, -0.25, -0.25, -0.25, -0.75, 0.75, -0.25, 0.75, -0.5, -0.5, -0.5, 0.25, -0.5, -1.0, 0.0, 0.75, 1.0, 0.25, 0.25, -0.75, 0.5, -0.5, -0.75, 1.0, -1.0, 0.75, 0.75, 0.25, 0.0, -1.0, -0.25, -0.5, -1.0, -0.5, 0.5, -1.0, 0.25, 1.0, 0.25, 0.75, -0.75, 0.75, 1.0, -0.5, -0.5, -0.5, 0.25, -1.0, 1.0, 0.5, -0.75, 0.5, 0.25, 0.0, ]);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    
    const array15 = new Float32Array([-1.0, 0.25, -0.25, -1.0, -1.0, -0.5, -0.5, -0.75, 0.25, 1.0, 0.75, 0.75, -0.75, 0.25, -0.5, 0.5, -1.0, 1.0, 0.25, 0.5, 0.0, 1.0, 0.25, 0.25, -0.25, 0.5, -0.75, 1.0, 0.25, 1.0, 0.5, -0.75, 1.0, 0.75, 0.0, -0.75, 0.75, -0.25, 0.25, -0.75, -0.5, -0.5, 0.75, 0.75, 0.5, 0.5, 0.0, 1.0, 0.0, 0.25, 0.25, 0.0, 0.75, -0.5, -0.75, -1.0, -0.5, 0.0, 1.0, 0.25, 1.0, -1.0, -0.75, -0.75, -1.0, -0.5, 0.25, -0.75, -0.5, -0.25, -0.75, -0.25, 0.75, -0.5, 1.0, 0.25, 0.0, -1.0, 0.25, 0.75, -0.5, -1.0, 0.25, -0.5, 0.5, -0.25, -0.25, -0.25, -0.25, 0.5, 1.0, 0.75, -0.25, 0.0, -0.5, 0.75, 0.75, 0.75, -0.25, 0.5, ]);
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const array16 = new Float32Array([-0.25, -0.5, 0.25, 0.75, 0.25, 0.25, 0.5, 0.5, 0.5, 0.75, 0.75, 0.25, -0.5, 1.0, 0.5, 0.75, -1.0, 1.0, -0.25, -0.5, 0.25, 0.5, -1.0, -0.25, 1.0, -1.0, -1.0, -0.25, 0.5, -1.0, -1.0, 1.0, -0.5, 0.25, -0.5, -0.5, 1.0, 1.0, -0.75, -0.25, 1.0, 0.25, 0.25, -0.75, -1.0, 1.0, 0.75, -0.5, 1.0, -1.0, 0.5, 1.0, 0.5, -0.5, 0.0, -0.5, -0.5, -0.5, 0.75, 1.0, 0.5, -1.0, 0.0, -0.25, -0.25, 0.75, -0.75, -0.75, 0.5, 0.25, 0.5, -0.25, 0.5, -0.5, -0.75, 0.5, 0.5, 0.0, 0.75, -0.75, -0.5, 0.25, 0.0, -0.25, -1.0, 1.0, -0.5, 1.0, -0.5, 0.75, -0.75, -0.75, -0.75, 0.75, 0.75, 0.0, 0.0, 1.0, -0.5, -0.75, ]);
    texture900.destroy();
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device110.queue.writeTexture({ texture: texture1100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    device110.queue.writeTexture({ texture: texture1100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    const bind_group_layout1102 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1102",
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
    device110.queue.writeTexture({ texture: texture1100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer1100.destroy()
    const array17 = new Float32Array([1.0, -0.25, 0.75, 0.75, 0.0, 0.75, 0.0, -0.5, 0.75, -0.25, 0.5, 0.75, 0.25, -1.0, 0.0, -1.0, -0.25, -0.75, 0.25, 1.0, 0.5, 0.75, -0.75, 0.5, -0.25, -0.75, -0.5, 0.0, -1.0, 0.25, 0.75, -0.75, 0.25, 0.25, -0.5, 0.5, -0.25, -0.5, -1.0, -0.25, -0.5, -1.0, -1.0, 0.5, 0.25, 0.0, 0.75, 1.0, 0.25, 0.25, 0.25, 0.5, 0.5, -1.0, 0.5, 0.25, 0.25, -0.75, 0.75, -0.5, -0.75, 0.5, -0.75, 0.75, -0.25, -0.25, 0.25, -0.5, 0.75, -0.5, 0.5, -0.5, 0.0, 0.25, -0.75, 0.5, 0.75, -0.5, -0.5, -0.75, -1.0, 0.0, -0.75, -0.25, 0.25, -0.25, 0.25, 0.25, 1.0, -1.0, 0.5, -0.25, 0.75, -0.25, 0.5, -0.75, 0.25, 0.75, 0.75, 1.0, ]);
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    
    
    
    device110.queue.writeTexture({ texture: texture1100 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1101]
    });
    
    device110.queue.writeTexture({ texture: texture1100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device90.queue.writeBuffer(buffer900, 0, array12, 0, array12.length);
    device90.destroy();
    device110.destroy();
    const array18 = new Float32Array([0.0, 0.75, -1.0, 1.0, -0.25, 1.0, 0.75, 0.0, 1.0, -0.75, -0.5, -1.0, 0.75, -0.25, 0.5, -0.5, -0.5, -0.5, 0.0, 0.25, -0.75, -0.5, -0.5, 0.25, -0.25, 0.0, 0.0, 1.0, 0.5, 0.0, 0.75, 0.75, 1.0, -0.25, -0.25, 0.5, 0.75, -1.0, 0.25, 0.5, 0.75, 1.0, 0.25, 0.5, 0.5, -1.0, -0.25, 0.25, -1.0, 0.0, -1.0, 0.5, 0.5, 0.25, -1.0, 0.0, -1.0, -1.0, -0.25, -0.25, -0.5, 1.0, 0.5, -1.0, 0.25, -0.25, 0.75, -0.75, -0.75, 0.0, 1.0, 0.0, 1.0, 0.25, 0.5, -0.5, -0.25, -0.25, 0.0, -0.75, 1.0, 0.25, -0.25, 0.5, -1.0, -1.0, -0.25, 0.0, -0.5, 0.0, 0.5, 0.25, 0.75, -0.5, 1.0, 0.0, -1.0, 0.0, -1.0, -0.25, ]);
    
    
    const array19 = new Float32Array([0.25, 0.5, -0.5, 0.0, -0.75, 1.0, 0.25, -0.25, 0.5, -0.25, -0.75, 0.0, -1.0, -0.75, 0.5, -0.5, 0.5, 0.75, -0.25, -0.5, 0.75, -1.0, 0.75, -0.5, -0.25, -0.25, 0.5, -0.25, -0.25, 0.75, 0.75, 0.0, -0.75, 0.75, -0.75, -0.5, -0.25, -0.75, -0.25, 0.5, 0.0, -0.25, 0.75, 0.25, 0.5, 1.0, -0.25, 0.0, -1.0, 0.5, -0.5, -0.75, 1.0, -0.25, -0.5, 0.25, 0.5, 0.25, 1.0, -0.25, 0.5, 0.25, 0.25, 0.25, -0.25, -0.25, -1.0, 0.5, -1.0, 0.5, 0.0, 0.75, -1.0, -0.25, -0.25, -0.75, 0.0, 0.75, 0.5, -0.5, -0.75, 0.75, -0.25, -1.0, 0.25, 0.5, 0.0, 1.0, 1.0, 0.5, 0.0, 0.5, -1.0, 1.0, 0.75, -1.0, -0.75, 0.5, -0.5, 0.25, ]);
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
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
    
    
    const array20 = new Float32Array([0.0, 1.0, 0.25, -1.0, 0.75, 1.0, 0.75, 0.75, -0.75, 0.0, 0.75, 0.25, -1.0, 0.5, 1.0, 0.0, -1.0, -0.5, 0.5, 0.75, -0.75, -1.0, -0.75, -0.25, 1.0, 0.75, 0.75, 0.25, 0.0, 0.0, -0.5, 0.0, 0.0, -1.0, 0.0, -1.0, -0.5, -1.0, -0.25, 1.0, -0.75, -0.25, 1.0, -0.75, -1.0, 0.0, -1.0, -0.75, 0.0, -1.0, -0.25, -0.75, -0.25, -0.25, -0.5, 0.25, 0.75, 0.25, -0.5, -0.5, -0.75, -0.5, 0.0, -0.25, -0.25, -0.25, 1.0, -1.0, -0.25, -1.0, 0.5, 0.25, 0.0, 0.5, -0.25, -0.25, -0.75, -0.75, 0.0, -0.25, -0.75, -0.5, -0.5, 0.0, 1.0, -0.5, 0.5, -1.0, -1.0, 0.0, 0.0, -0.5, 0.0, 1.0, 0.75, 0.5, 0.75, 0.0, -0.25, -0.75, ]);
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    
    
    
    
    
    
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    device140.destroy();
    
    const pipeline_layout1300 = device130.createPipelineLayout({ 
        label: "pipeline_layout1300",
        bindGroupLayouts: [bind_group_layout1300]
    });
    const compute_pipeline1300 = device130.createComputePipeline({
        label: "compute_pipeline1300",
        layout: pipeline_layout1300,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device120.destroy();
    
    
    
    
    const bind_group_layout1301 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1301",
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
    
    
    
    device130.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array21 = new Float32Array([-1.0, -0.5, 0.25, 0.5, -1.0, 1.0, -1.0, -0.25, 1.0, 1.0, 1.0, 0.25, 0.5, -0.25, 0.5, -1.0, 0.5, -1.0, -1.0, 0.25, 0.0, -1.0, 0.0, 0.5, -1.0, -0.75, -0.5, 0.5, -0.5, -1.0, 1.0, 0.5, 0.5, 1.0, 0.5, 0.5, 0.75, -0.75, -0.75, 0.0, -0.25, -0.75, -0.75, -1.0, 0.0, -0.5, -0.25, -0.25, -0.75, 0.25, -0.75, -0.75, 0.25, -0.75, 0.25, -0.5, 0.75, 1.0, 0.5, -0.75, -1.0, 0.25, 1.0, 0.0, 1.0, -0.5, -0.75, 1.0, -1.0, -0.25, 0.75, 0.75, 1.0, 0.75, -0.75, 0.5, 0.5, 0.5, 0.75, 0.5, 0.25, -0.75, -1.0, -0.25, 0.75, -0.5, 0.25, 1.0, -0.25, 1.0, 0.5, 1.0, 0.0, -0.5, -0.25, -0.5, 0.5, 0.25, 0.5, 0.0, ]);
    
    
    const array22 = new Float32Array([0.5, 0.75, -0.25, -1.0, 1.0, -1.0, -0.25, 0.25, 1.0, 0.75, 0.5, 0.0, -1.0, -0.5, 0.5, -0.75, 0.0, 0.0, -0.5, 0.0, 0.0, -0.25, 0.0, 0.0, -0.25, 0.25, 0.5, -0.25, 0.5, -0.75, -0.75, -0.25, 0.0, -0.5, -1.0, 0.25, -0.75, 0.0, -0.5, 0.0, -1.0, -0.5, 0.75, 1.0, 1.0, 0.25, 1.0, 0.75, 0.25, 0.5, 0.25, -0.25, 0.5, -0.25, -0.75, -0.25, -0.25, 0.25, 0.25, -1.0, -0.75, 0.75, 0.0, -0.25, 0.5, 0.5, -0.5, -0.5, -0.25, -0.75, -0.5, 0.25, 0.0, -0.5, -0.75, -0.75, 0.25, -0.25, 0.5, -0.5, 0.0, -0.5, -0.25, 0.25, -0.5, 1.0, 0.75, -0.75, 1.0, 0.75, 1.0, -0.75, 0.25, -1.0, 0.25, 0.5, -0.25, 1.0, 1.0, -0.25, ]);
    
    
    
    
    
    const array23 = new Float32Array([0.75, 0.25, 0.0, 0.0, 0.0, -1.0, -0.25, 1.0, 0.25, 1.0, -0.75, -0.25, 1.0, 0.5, 0.0, -0.75, 0.25, 0.25, -1.0, 0.25, 0.5, -0.75, 0.25, -0.25, 1.0, 0.5, 1.0, 0.5, 0.25, 0.5, 0.25, -0.5, 1.0, 1.0, 0.75, 1.0, -1.0, 1.0, 1.0, -1.0, 0.25, 0.75, -0.5, -0.5, -0.5, -0.25, 0.25, 0.0, 0.75, 0.5, 1.0, -1.0, -0.5, 0.25, 0.75, 0.5, -0.5, 0.0, 0.25, -1.0, 0.0, -1.0, 0.25, -1.0, -0.5, 0.0, -0.25, -0.5, -1.0, -0.5, -0.5, -0.5, 1.0, 0.75, 0.0, -0.5, -1.0, -0.25, 1.0, 0.75, 0.75, -0.25, 1.0, -0.75, -0.75, -0.75, 0.0, 1.0, -1.0, -0.75, 0.5, -0.75, -0.5, -0.5, -0.25, -1.0, 0.75, -0.75, 1.0, -0.5, ]);
    
}