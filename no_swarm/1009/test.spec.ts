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
    const array0 = new Float32Array([0.75, 0.5, 0.25, 0.75, 0.5, 1.0, 0.75, 0.25, -0.75, -0.75, 0.75, 0.0, 0.75, 0.5, -1.0, 0.25, 0.5, -0.75, 0.25, 0.0, -1.0, -0.25, 0.5, -1.0, 0.25, 0.25, -0.25, -1.0, -0.5, 0.5, -0.75, -0.25, -1.0, 0.5, -1.0, -1.0, 0.5, 0.25, -0.75, 0.25, 0.5, -0.25, 1.0, 0.25, 0.5, 1.0, -0.75, -0.5, -0.75, -0.75, -1.0, -1.0, 0.25, 0.75, 1.0, 0.75, -0.75, -1.0, 0.25, 1.0, 0.25, 1.0, 1.0, -0.25, -1.0, 1.0, 0.25, 0.0, 0.25, -1.0, 1.0, -1.0, 0.5, 0.25, -0.75, 0.0, 0.75, 0.5, -0.75, 1.0, -0.5, 0.5, 1.0, 0.0, 1.0, -0.75, -0.75, 1.0, 0.0, 0.0, -1.0, 0.25, -1.0, 0.5, -1.0, 1.0, 0.75, 0.0, -1.0, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([-0.25, 0.25, -0.25, 0.25, 0.25, 0.5, 0.0, 0.75, -0.5, -1.0, -1.0, -0.5, 0.75, -0.25, 0.0, -0.75, -0.5, 0.5, 1.0, -0.25, -0.5, 0.0, -0.5, 0.25, -0.25, 0.0, -1.0, -1.0, -1.0, -0.25, -0.25, 0.25, -0.5, 0.25, -0.75, -0.25, 0.5, -0.75, -1.0, -0.25, 0.25, 0.5, 1.0, -1.0, -0.5, 0.5, 0.0, -0.5, 0.25, 1.0, -0.25, 0.75, 1.0, -0.5, -1.0, -0.75, 1.0, 0.0, -0.25, -0.5, -0.75, -1.0, -0.75, -0.25, -0.5, 0.75, 1.0, -1.0, 0.5, 0.25, -1.0, 0.75, 0.5, -0.5, 1.0, 1.0, 1.0, 0.0, 0.5, 0.5, 0.25, -1.0, 0.0, -0.5, 0.5, 0.5, 0.5, -1.0, -0.5, 0.25, -1.0, -1.0, 0.25, 0.25, 0.75, -0.75, 0.5, 0.75, 0.0, 0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.destroy();
    
    const array2 = new Float32Array([-1.0, 1.0, -0.5, 1.0, -0.25, 0.25, -0.25, 0.25, 0.25, 0.0, 0.75, 1.0, 0.0, -0.25, -0.75, 0.75, 1.0, 0.25, 0.75, -0.5, 0.75, 0.25, 0.25, 0.75, 1.0, -0.75, -1.0, -0.75, -0.75, -0.5, 0.0, -0.25, 0.25, 0.75, -0.75, -0.75, 0.0, -0.75, 0.75, -0.25, 0.25, 0.0, -0.75, -0.5, 0.0, 1.0, -0.5, -0.5, -0.75, 0.5, 0.25, 0.0, -1.0, 1.0, -0.75, -0.25, -0.75, -1.0, -1.0, 0.75, 0.5, 0.0, 0.0, 1.0, 0.25, 1.0, 0.75, 0.25, 0.5, -0.75, 0.25, 0.5, 1.0, -0.25, 0.0, 0.0, 0.75, 0.0, 0.75, -0.5, 0.75, -0.75, 0.0, -0.75, 0.0, -0.25, -0.5, -1.0, -0.5, 1.0, 1.0, -0.75, 0.5, 0.75, 0.0, 0.75, 0.5, 0.0, 0.75, 1.0, ]);
    
    
    
    
    
    const array3 = new Float32Array([-0.5, 0.5, -0.25, -0.75, -0.75, -0.5, 0.75, 0.25, -0.5, -0.5, 0.0, -0.75, -0.5, -0.5, 1.0, 0.0, 0.75, 0.0, 0.75, 1.0, 0.75, -0.75, 0.5, 1.0, -1.0, 0.0, 0.75, -0.5, 0.25, 0.0, 0.5, 0.25, -0.5, -0.5, 1.0, -0.5, 0.0, 0.75, 0.25, 0.25, 0.5, 0.75, 1.0, -1.0, 0.75, -0.25, 0.25, -0.25, 0.75, -0.75, -0.5, 1.0, -1.0, 0.25, 0.75, -0.25, -0.5, -1.0, -0.75, 0.75, 0.75, 1.0, 0.0, 0.0, -0.25, 0.75, 1.0, -0.5, -1.0, -0.75, 0.75, -0.75, 1.0, 0.5, 0.25, -0.75, 1.0, -1.0, 0.25, -0.5, -0.25, 0.25, -0.5, 0.25, -0.25, 0.0, -1.0, -0.25, -0.75, -0.5, 0.25, 0.5, -0.25, -0.25, -1.0, -0.25, 0.0, -0.75, 0.5, 1.0, ]);
    
    
    
    
    
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const array4 = new Float32Array([0.75, 0.25, 0.25, 0.75, 0.75, 0.0, 0.0, -0.75, -0.75, 0.25, 0.0, -1.0, 0.5, 0.75, 0.25, -0.75, -0.25, 0.25, -0.75, -0.25, -0.75, -0.5, -0.75, -0.25, 0.5, 1.0, 0.75, -0.25, -0.5, -0.5, -0.75, -0.75, -0.25, -0.5, -0.75, -0.25, -0.25, 0.5, 0.0, 0.75, -0.25, -0.25, -0.5, -0.5, 1.0, -0.25, -0.5, 0.75, 0.5, 0.0, -0.25, 0.25, -1.0, -0.5, -1.0, 1.0, 0.75, -1.0, -0.25, -0.75, 0.5, -0.75, -0.75, 0.75, -0.75, 0.0, -1.0, -1.0, -0.25, 0.75, -1.0, -0.5, 0.5, -0.25, 1.0, 0.75, 0.75, 0.25, -0.5, -0.25, -0.25, 0.75, -0.25, 0.5, -0.25, -0.25, 1.0, 0.75, 0.5, -0.25, -0.75, 0.75, -0.75, 0.75, 0.75, 0.25, 0.75, 0.25, -1.0, -0.75, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.submit([]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array5 = new Float32Array([0.0, -0.5, 0.0, 0.0, -1.0, -1.0, 0.0, -1.0, -0.75, 0.75, 0.0, -0.75, 0.0, 1.0, -0.5, 0.25, 0.25, -0.25, -0.5, -0.25, -0.25, -0.25, -0.75, 0.25, -1.0, -0.75, 0.0, -0.5, -1.0, -0.75, 1.0, 1.0, 0.0, -0.25, -0.5, -0.25, 0.75, 0.75, -0.5, -0.75, 0.5, 0.5, -0.25, 0.25, 0.0, 0.25, -0.25, 0.5, 0.75, 0.25, 1.0, 1.0, 1.0, 0.75, 1.0, -0.5, -0.25, 0.0, -1.0, 1.0, 0.0, 0.5, -0.75, -0.75, -1.0, 0.75, 0.5, -0.75, -0.5, 1.0, -0.75, -0.75, -1.0, 0.75, -0.25, -0.25, 0.0, -0.75, 0.0, 0.0, -0.5, 1.0, -0.5, -0.25, -0.25, -1.0, 0.25, 1.0, 0.0, -0.75, 0.0, -0.5, -0.5, 0.75, -0.25, -0.75, -0.25, 0.0, 0.5, 0.75, ]);
    
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const array6 = new Float32Array([-0.25, 1.0, 0.5, 0.5, -0.25, -0.25, 0.25, 1.0, 0.75, 0.0, 0.25, -0.25, -0.75, 0.0, 0.0, 0.5, -0.75, 1.0, -0.25, 0.5, 0.75, -0.5, -1.0, -0.25, 0.5, 0.0, 0.75, -0.75, 0.5, -0.25, 1.0, -0.25, -0.5, -0.75, 1.0, 1.0, -0.5, -0.25, 1.0, -0.25, -0.25, 0.75, -1.0, 1.0, 1.0, -0.75, 1.0, -0.75, 0.75, 0.75, -1.0, -1.0, 0.0, -0.75, -0.75, 0.0, -0.25, 0.5, 0.5, -0.25, -0.25, 0.25, -0.5, -0.5, 0.5, -0.75, -1.0, 0.75, -1.0, 1.0, -0.75, -0.5, 0.75, -1.0, 0.0, -0.25, -0.25, 0.5, 0.75, -0.75, 0.0, 0.25, -0.5, 1.0, 0.5, 0.5, -1.0, 0.5, -1.0, -0.5, -0.5, 0.25, -1.0, 0.5, 0.75, 0.75, -0.5, 0.25, -0.25, 0.75, ]);
    const array7 = new Float32Array([-0.5, -0.5, 0.0, -0.75, 1.0, 0.25, 0.5, 1.0, -1.0, 0.25, 0.0, 0.25, 0.25, -0.75, -1.0, 0.0, 0.5, 0.75, 0.0, 0.0, -1.0, 1.0, 1.0, 0.5, 0.5, 1.0, 0.25, 1.0, -1.0, -1.0, 0.5, 0.25, 0.25, 0.25, -0.5, 0.5, 0.75, 0.25, 0.75, 1.0, 0.75, -1.0, 0.75, 0.5, 0.25, -1.0, 1.0, 0.75, 0.75, 0.0, -1.0, -1.0, -0.5, 0.75, 0.0, 1.0, -0.5, -0.75, 0.75, 1.0, -1.0, -0.75, 0.0, -0.25, -1.0, 0.5, 0.0, -1.0, 0.75, -0.5, -1.0, -1.0, -0.25, -0.25, 1.0, 1.0, -0.25, 0.5, -0.25, -0.25, -0.25, -0.25, 0.0, 0.75, -0.5, 0.25, 1.0, -1.0, 0.25, -1.0, 0.25, 0.5, -0.5, 0.75, 0.75, 0.0, 1.0, -0.75, 0.75, 0.5, ]);
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.destroy();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    device30.pushErrorScope("out-of-memory");
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query400 = device40.createQuerySet({
        label: "query400",
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
    query300.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    query300.destroy()
    const array8 = new Float32Array([0.25, -0.25, 0.5, -0.75, 0.5, 0.25, 1.0, 0.75, -1.0, -1.0, 0.25, 0.25, -0.25, 0.0, 0.0, -0.5, 0.25, -1.0, 0.25, 1.0, 0.0, -0.75, 0.25, -0.75, -0.75, 0.25, 0.25, -0.25, 0.5, 0.5, 0.0, 0.25, 0.75, 0.0, 0.5, 0.25, 1.0, 0.5, -0.75, 0.0, -0.75, -0.25, 0.0, 1.0, -0.75, 0.5, 1.0, -0.5, -0.5, -0.75, -0.25, 0.75, 0.0, 0.25, -0.75, 0.25, -0.75, -0.75, 0.25, -0.5, 0.25, -1.0, 0.0, 0.5, 0.25, 1.0, 1.0, 0.0, 0.75, -1.0, 1.0, 1.0, -0.5, 0.25, -0.75, 0.75, 0.0, 1.0, 0.0, -1.0, 0.25, 1.0, 0.25, 0.25, -0.5, -0.75, -0.5, 0.25, 1.0, 0.75, -0.25, 0.0, 0.25, 0.25, 0.25, 0.0, -0.25, 1.0, 1.0, 0.75, ]);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture300.destroy();
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    compute_pass_encoder3000.popDebugGroup()
    
    device20.pushErrorScope("validation");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    buffer300.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.pushErrorScope("validation");
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const array9 = new Float32Array([0.5, 0.25, -0.25, 0.0, 0.5, 0.25, 1.0, 0.5, -0.25, -0.25, -0.75, -1.0, -0.75, -0.5, -0.75, 1.0, 0.25, 1.0, 0.5, -0.25, 1.0, -0.75, -0.25, -0.25, -0.5, -0.75, -1.0, 0.75, 0.0, 0.0, -0.25, -1.0, -0.75, -0.5, 0.75, -1.0, 1.0, -0.5, -0.25, -0.25, 0.75, -0.75, 0.75, -0.5, 0.25, -0.5, 0.0, 0.5, -0.5, -1.0, 1.0, 0.25, -1.0, 0.25, -0.25, -0.5, 1.0, -0.5, 1.0, 1.0, -0.75, 0.0, -0.25, 0.5, 1.0, -1.0, -0.75, 0.5, 0.0, 1.0, -0.5, -0.75, -0.75, 0.25, 0.75, -0.5, 0.25, 0.25, -0.75, -0.75, 0.5, -0.5, -0.75, 0.5, -0.5, -0.75, -0.5, -1.0, 0.0, -0.5, -1.0, 0.0, 0.5, 0.5, 0.5, 0.5, 0.5, -0.25, -0.25, 1.0, ]);
    
    const command_buffer301 = command_encoder301.finish();
    render_bundle_encoder302.insertDebugMarker("marker");
    texture301.destroy();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
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
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    buffer301.destroy()
    device40.pushErrorScope("out-of-memory");
    
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder3000.insertDebugMarker("marker");
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
    
    buffer301.destroy()
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    render_bundle_encoder302.setPipeline(render_pipeline300);
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
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
    render_bundle_encoder200.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    render_bundle_encoder301.popDebugGroup();
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device20.pushErrorScope("out-of-memory");
    
    render_pass_encoder3000.executeBundles([])
    
    buffer201.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query302.destroy()
    render_bundle_encoder201.setPipeline(render_pipeline200);
    query400.destroy()
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    buffer400.destroy()
    const command_buffer701 = command_encoder701.finish();
    
    device70.pushErrorScope("validation");
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    
    compute_pass_encoder7000.popDebugGroup()
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    query302.destroy()
    query404.destroy()
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group201);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    compute_pass_encoder3000.insertDebugMarker("marker")
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
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query404.destroy()
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const command_buffer200 = command_encoder200.finish();
    
    query700.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
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
    device80.pushErrorScope("out-of-memory");
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    buffer401.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    texture700.destroy();
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    command_encoder702.insertDebugMarker("mymarker");
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_buffer600 = command_encoder600.finish();
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder202.setPipeline(render_pipeline201);
    render_pass_encoder3000.setPipeline(render_pipeline300);
    buffer600.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device70.queue.writeBuffer(buffer700, 0, array9, 0, array9.length);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_pass_encoder7020 = command_encoder702.beginRenderPass({
        label: "render_pass_encoder7020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: query700
    });
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    command_encoder702.clearBuffer(buffer700);
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query402.destroy()
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    render_pass_encoder3000.pushDebugGroup("group_marker");
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device20.queue.writeBuffer(buffer204, 0, array8, 0, array8.length);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeTexture({ texture: texture600 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    query200.destroy()
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    texture600.destroy();
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    device60.pushErrorScope("out-of-memory");
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    
    buffer202.destroy()
    
    query601.destroy()
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    
    command_encoder703.insertDebugMarker("mymarker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    
    device60.queue.submit([command_buffer600, ]);
    
    device10.destroy();
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
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    
    compute_pass_encoder3000.popDebugGroup()
    query200.destroy()
    
    render_pass_encoder7020.executeBundles([])
    
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout701,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query401.destroy()
    render_pass_encoder7020.executeBundles([])
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout701,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query303
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    render_pass_encoder3000.insertDebugMarker("marker");
    device80.destroy();
    render_pass_encoder7020.pushDebugGroup("group_marker");
    query403.destroy()
    
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder302.insertDebugMarker("mymarker");
    render_bundle_encoder202.insertDebugMarker("marker");
    const command_buffer302 = command_encoder302.finish();
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    query301.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder201.clearBuffer(buffer203);
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer201 = command_encoder201.finish();
    query100.destroy()
    
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
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

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device30.queue.writeBuffer(buffer303, 0, array6, 0, array6.length);
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
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
    compute_pass_encoder7000.popDebugGroup()
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    device20.queue.writeBuffer(buffer204, 0, array9, 0, array9.length);
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    
    buffer402.destroy()
    query300.destroy()
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder400.resolveQuerySet(
        query404,
        0,
        32,
        buffer401,
        0
    )
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
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
    render_pass_encoder3000.insertDebugMarker("marker");
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    render_pass_encoder7020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    compute_pass_encoder7000.setPipeline(compute_pipeline701);
    const compute_pass_encoder7030 = command_encoder703.beginComputePass({ label: "compute_pass_encoder7030" });
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    {
        await buffer205.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer205.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer205.unmap();
        console.log(new Float32Array(data));
    }
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    query200.destroy()
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer402,
        0
    )
    
    render_pass_encoder7020.insertDebugMarker("marker");
    device90.pushErrorScope("validation");
    
    
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    
    
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout701,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    command_encoder401.resolveQuerySet(
        query404,
        0,
        32,
        buffer404,
        0
    )
    device20.queue.writeBuffer(buffer205, 0, array7, 0, array7.length);
    
    
    buffer203.destroy()
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    query601.destroy()
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout701,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline705 = device70.createComputePipeline({
        label: "compute_pipeline705",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    buffer305.destroy()
    
    const compute_pipeline706 = device70.createComputePipeline({
        label: "compute_pipeline706",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    query302.destroy()
    command_encoder202.insertDebugMarker("mymarker");
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
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    texture303.destroy();
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    query401.destroy()
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    device20.queue.writeBuffer(buffer204, 0, array6, 0, array6.length);
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    buffer302.destroy()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device70.pushErrorScope("internal");
    
    device70.queue.writeBuffer(buffer701, 0, array1, 0, array1.length);
    
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    command_encoder401.insertDebugMarker("mymarker");
    
    buffer303.destroy()
    buffer304.destroy()
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3001.setPipeline(render_pipeline300);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    compute_pass_encoder7000.popDebugGroup()
    command_encoder300.popDebugGroup()
    render_pass_encoder7020.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    compute_pass_encoder7030.setPipeline(compute_pipeline703);
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group302);
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
        layout: compute_pipeline703.getBindGroupLayout(0),
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

    compute_pass_encoder7030.setBindGroup(0, bind_group700);
    const uint32_7030 = new Uint32Array(3);

    uint32_7030[0] = 100;
    uint32_7030[1] = 1;
    uint32_7030[2] = 1;

    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer704, 0, uint32_7030, 0, uint32_7030.length);

    compute_pass_encoder7030.dispatchWorkgroupsIndirect(buffer704, 0);
    const command_buffer401 = command_encoder401.finish();
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
        layout: compute_pipeline701.getBindGroupLayout(0),
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

    compute_pass_encoder7000.setBindGroup(0, bind_group701);
    render_pass_encoder3000.setVertexBuffer(0, buffer301);
    render_pass_encoder3000.draw(3);
    compute_pass_encoder7030.end();
    render_pass_encoder3000.draw(3);
    compute_pass_encoder4000.setPipeline(compute_pipeline402);
    device20.queue.submit([command_buffer200, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer401, ]);
    const command_buffer202 = command_encoder202.finish();
    const command_buffer703 = command_encoder703.finish();
    compute_pass_encoder4000.popDebugGroup()
    device60.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    device90.queue.submit([]);
    device20.queue.submit([command_buffer202, ]);
    device70.queue.submit([command_buffer701, command_buffer703, ]);
    device30.queue.submit([]);
    render_pass_encoder3000.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer707 = device70.createBuffer({
        label: "buffer707",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer707, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer707, 0);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
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
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_pass_encoder3001.setBindGroup(0, bind_group303);
    compute_pass_encoder7000.end();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer702 = command_encoder702.finish();
    device20.queue.submit([command_buffer201, ]);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    const command_buffer700 = command_encoder700.finish();
    device40.queue.submit([]);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder3000.endOcclusionQuery()
    device20.queue.submit([command_buffer202, ]);
    device30.queue.submit([]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder7000.end();
    render_pass_encoder3001.setVertexBuffer(0, buffer301);
    compute_pass_encoder3000.popDebugGroup()
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    compute_pass_encoder4000.end();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3001.drawIndirect(buffer301, 0);
    render_pass_encoder3001.end();
    device70.queue.submit([command_buffer700, command_buffer702, ]);
    device70.queue.submit([command_buffer703, ]);
    compute_pass_encoder7030.popDebugGroup()
    device30.queue.submit([]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder3001.end();
    render_pass_encoder3000.end();
    compute_pass_encoder7000.dispatchWorkgroups(100);
    compute_pass_encoder7000.end();
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder7020.endOcclusionQuery()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder7020.endOcclusionQuery()
    render_pass_encoder3001.popDebugGroup();
    compute_pass_encoder7030.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder7020.endOcclusionQuery()
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer302, ]);
    device70.queue.submit([command_buffer703, ]);
    compute_pass_encoder3000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    device70.queue.submit([command_buffer703, ]);
    device50.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3000.drawIndirect(buffer305, 0);
    device50.queue.submit([]);
    device30.queue.submit([command_buffer302, ]);
    device20.queue.submit([command_buffer201, ]);
    device30.queue.submit([command_buffer302, ]);
    device70.queue.submit([command_buffer703, ]);
    render_pass_encoder7020.endOcclusionQuery()
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3001.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3000.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3001.end();
    render_pass_encoder3001.drawIndirect(buffer308, 0);
    device40.queue.submit([command_buffer401, ]);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder3001.drawIndexedIndirect(buffer301, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder7030.dispatchWorkgroups(100);
    render_pass_encoder7020.popDebugGroup();
    render_pass_encoder3000.end();
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder7020.popDebugGroup();
    device40.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder7000.end();
    compute_pass_encoder3000.popDebugGroup()
    device00.queue.submit([]);
    device90.queue.submit([]);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder3000.popDebugGroup()
    device50.queue.submit([]);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer708 = device70.createBuffer({
        label: "buffer708",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer708, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer708, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3001.drawIndexedIndirect(buffer301, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer709 = device70.createBuffer({
        label: "buffer709",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer709, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer709, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer407, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer407, 0);
    compute_pass_encoder3000.popDebugGroup()
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
        
    const bind_group702 = device70.createBindGroup({
        label: "bind_group702",
        layout: compute_pipeline701.getBindGroupLayout(0),
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

    compute_pass_encoder7000.setBindGroup(0, bind_group702);
    render_pass_encoder3001.draw(3);
    device30.queue.submit([command_buffer302, ]);
    device70.queue.submit([command_buffer701, ]);
    device70.queue.submit([]);
    render_pass_encoder7020.popDebugGroup();
    render_pass_encoder3000.end();
    compute_pass_encoder7000.popDebugGroup()
    render_pass_encoder7020.endOcclusionQuery()
    compute_pass_encoder4000.end();
    compute_pass_encoder7000.popDebugGroup()
    render_pass_encoder3000.drawIndirect(buffer302, 0);
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
        
    const bind_group703 = device70.createBindGroup({
        label: "bind_group703",
        layout: compute_pipeline701.getBindGroupLayout(0),
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

    compute_pass_encoder7000.setBindGroup(0, bind_group703);
    render_pass_encoder3001.drawIndexedIndirect(buffer300, 0);
    compute_pass_encoder7030.dispatchWorkgroups(100);
    compute_pass_encoder7030.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    compute_pass_encoder3000.popDebugGroup()
    device20.queue.submit([]);
    device70.queue.submit([command_buffer702, command_buffer703, ]);
    compute_pass_encoder7030.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    device70.queue.submit([command_buffer702, ]);
    device30.queue.submit([command_buffer302, ]);
}