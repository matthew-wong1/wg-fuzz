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
    
    const array0 = new Float32Array([0.75, 1.0, -0.75, -1.0, -0.75, 0.75, 0.25, -0.5, 0.5, 0.25, 0.75, 0.75, -0.75, 0.0, -0.75, -0.75, -0.5, -0.75, 0.0, 1.0, -0.25, 0.75, 0.75, 0.75, 1.0, 0.0, -0.25, 0.25, 0.5, -0.75, 0.0, -0.5, 1.0, 0.75, 1.0, -0.5, -0.5, 0.5, -0.5, 0.0, 1.0, 0.75, 0.5, 0.0, 0.25, 0.0, 0.75, 0.25, 0.25, 0.75, -0.5, 0.5, 0.5, 1.0, 0.5, 1.0, 0.75, 0.0, 0.5, 0.0, 0.75, 1.0, 0.75, 0.5, 0.0, -1.0, 0.5, -0.5, 0.5, -1.0, -1.0, -0.5, 0.5, -1.0, -0.25, 0.5, 0.5, 0.75, 0.75, 1.0, -0.25, -0.5, 0.25, -1.0, 0.0, 0.75, 0.75, 1.0, -0.25, 0.0, 0.0, -1.0, 0.25, -0.5, 0.25, 0.75, 1.0, 0.0, -0.25, 0.75, ]);
    
    
    const array1 = new Float32Array([0.75, -0.5, -0.25, -0.5, 1.0, 1.0, 0.25, 0.0, 1.0, 0.5, 0.5, -0.25, 1.0, 0.75, -0.5, 1.0, -0.25, 0.0, 1.0, 0.5, 1.0, 0.25, 1.0, 0.5, -0.25, -1.0, 0.5, 1.0, 0.0, 0.25, -0.5, -1.0, 0.0, 1.0, -0.75, -0.5, -0.25, -0.5, -0.5, -0.75, 1.0, 1.0, 0.25, 1.0, -1.0, 1.0, 0.0, 0.5, -0.5, -0.25, 0.5, -0.5, -0.25, 0.5, -0.25, -1.0, 0.0, -0.5, 0.5, 0.5, 0.5, -0.5, 1.0, -0.75, -1.0, -0.75, 0.5, 1.0, 0.75, -1.0, -1.0, 0.0, 0.5, 1.0, 0.5, 0.25, -0.5, -0.25, -0.5, 0.0, 0.5, 0.5, -1.0, -1.0, 0.5, -0.75, -0.75, -0.75, 0.5, -0.75, 1.0, -0.5, -0.75, 0.75, 0.75, -0.5, -0.5, 0.5, 0.5, -0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    texture001.destroy();
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device10.pushErrorScope("out-of-memory");
    const array2 = new Float32Array([-0.5, 1.0, 1.0, 0.25, 0.25, -0.5, -0.5, -0.25, 0.75, -1.0, 0.5, 0.25, 0.25, 1.0, -1.0, 1.0, 0.25, -1.0, 0.0, 1.0, -0.75, -0.75, 1.0, 1.0, -0.25, 0.0, -0.25, -1.0, 0.75, 0.25, -0.75, -0.75, -1.0, 0.0, -0.25, -0.75, 0.5, -0.25, -1.0, 0.75, -1.0, 1.0, -1.0, 1.0, 0.25, -1.0, -0.5, -0.5, 0.5, -0.25, 0.75, -1.0, 0.5, -0.25, -0.25, -1.0, -0.75, 0.75, 0.0, 0.75, -1.0, 1.0, -0.5, -0.25, 0.5, 0.0, -1.0, -1.0, 1.0, 0.5, -0.25, -1.0, 0.5, -0.25, -0.5, 1.0, 1.0, 1.0, -0.75, 0.5, 0.5, -0.75, -1.0, 1.0, -0.25, -0.25, 0.75, 0.25, 1.0, 0.0, 1.0, 1.0, 0.25, -1.0, 0.5, 0.25, 0.25, -0.25, 0.5, 0.0, ]);
    const array3 = new Float32Array([-0.75, -0.5, 0.25, -1.0, -0.75, 0.25, 0.5, -0.5, 1.0, -1.0, 0.75, -1.0, 0.5, 0.0, 1.0, 0.0, -0.75, 0.0, 0.5, -0.25, 0.75, -0.75, -0.75, -1.0, -0.75, 0.0, 0.25, 0.75, -0.75, -0.5, 0.0, 0.25, -0.75, 1.0, -0.75, 0.5, -1.0, 0.0, 0.25, -0.25, -0.75, -0.75, 1.0, 0.25, 0.0, 0.25, -1.0, -1.0, -1.0, -0.25, 0.75, 0.0, 0.0, 0.5, 0.25, 0.0, 0.5, 0.5, 0.0, 0.5, -0.5, -1.0, 0.25, 0.25, 0.0, 0.75, -1.0, -0.5, 0.0, -1.0, 0.5, -0.25, 0.25, 0.5, 0.5, -0.25, -1.0, -0.25, -0.5, 0.25, 1.0, 0.5, 1.0, 0.25, 0.0, -0.25, -0.25, 0.75, 1.0, 0.75, -1.0, 1.0, 1.0, -0.25, 0.0, -0.25, -0.75, 0.25, 1.0, 0.5, ]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const array4 = new Float32Array([-0.75, -1.0, -0.75, 0.75, 0.5, -1.0, -1.0, -1.0, 0.25, 0.25, -1.0, 0.75, 0.0, 0.75, 1.0, -1.0, -1.0, -0.25, -0.25, 0.0, 0.5, -1.0, -0.75, 0.75, -0.75, 0.25, -1.0, 1.0, 0.0, 0.0, -0.5, 1.0, 0.75, -0.25, 0.25, -1.0, 1.0, -1.0, -1.0, -0.75, 0.25, -0.75, 0.25, 0.5, 0.75, -0.25, -1.0, 0.25, 0.5, -0.25, -0.25, -0.25, -1.0, -0.75, -0.75, -0.25, 0.0, -0.75, 0.25, 0.0, -0.5, 0.25, 0.75, 0.0, -0.25, -0.25, 0.75, 1.0, -1.0, 0.25, 0.75, -0.5, -1.0, 0.75, 0.5, 0.0, -0.75, 0.25, -1.0, 0.25, -1.0, -0.5, -0.5, 0.25, -0.75, 0.75, -0.25, 1.0, 0.5, 0.25, -0.25, 0.75, -1.0, -1.0, -0.5, -0.25, 0.5, 0.5, 0.75, 0.0, ]);
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
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
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    device10.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    device20.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([0.75, 0.75, 0.25, -0.25, -0.25, -0.5, -0.5, 0.75, -0.75, -1.0, 1.0, -0.25, 0.25, -1.0, 0.0, 0.5, -0.75, -0.75, -1.0, -1.0, -0.5, 0.5, 0.0, 0.75, 0.0, 0.5, 0.0, -0.5, -1.0, 0.75, -0.5, -1.0, -0.25, 0.25, 0.25, -0.25, 1.0, 0.5, -0.75, -0.75, 0.5, 0.75, 0.75, -0.75, 0.5, -0.5, -0.75, 0.0, -0.75, -0.25, -0.25, 1.0, -1.0, 0.5, 0.75, 0.25, -0.5, 0.75, -0.25, 0.5, 1.0, 0.0, -0.75, 0.5, -0.75, 0.0, -0.75, -1.0, 0.0, 0.5, -0.25, -0.75, -0.75, 0.25, 1.0, -0.25, -0.25, -0.5, -1.0, -0.5, 0.75, -0.5, -0.75, -0.75, 1.0, 1.0, 0.0, -1.0, 0.75, -1.0, -0.25, 1.0, 0.0, 1.0, -0.25, 0.75, -1.0, 0.5, 1.0, 0.25, ]);
    const array6 = new Float32Array([-1.0, -1.0, 0.25, 1.0, 0.5, 0.25, -1.0, 0.75, -0.25, -0.25, 1.0, -0.75, 1.0, 0.5, -0.25, -0.25, 0.0, 1.0, -0.5, 0.5, 1.0, -0.5, 1.0, 1.0, 0.5, 1.0, 0.25, -0.75, 1.0, 0.0, 0.25, -0.25, -0.25, 0.0, -0.5, 0.25, 0.0, 1.0, -1.0, 0.0, 1.0, 0.5, 0.5, -1.0, 1.0, 0.0, 0.25, 0.25, 0.5, -0.25, -0.25, 0.0, -0.5, 1.0, 1.0, 1.0, -0.75, 0.5, 1.0, -1.0, 0.25, -0.75, -0.25, -1.0, -0.75, 0.75, -0.75, -1.0, -0.25, 0.25, -1.0, -0.5, 0.25, -0.5, 0.75, -1.0, 0.25, 0.5, -0.5, 0.75, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 1.0, 0.0, 0.5, -0.75, -0.25, -0.5, 0.0, -0.5, 0.5, 0.5, 0.5, -1.0, -0.5, -1.0, ]);
    
    
    const array7 = new Float32Array([-1.0, 0.25, -0.5, 0.0, -0.5, 0.0, -1.0, -0.25, 0.5, -0.5, -0.75, 0.5, -0.75, -0.75, -0.5, -1.0, 0.0, -1.0, -0.25, 0.25, 0.0, -0.5, 0.75, 0.5, -0.75, -1.0, -1.0, -1.0, 1.0, 0.5, -0.25, 1.0, 0.5, -1.0, 0.75, -0.75, -0.5, -0.5, 0.0, 0.5, 0.0, -0.25, -0.25, 0.0, 0.25, 0.5, 0.75, -0.25, -1.0, 0.0, -0.25, 0.75, 0.25, -0.5, -1.0, 1.0, 0.5, 0.75, -0.5, -1.0, -0.5, -1.0, 0.75, -0.5, -0.75, 0.0, -0.25, -1.0, 0.0, 1.0, 1.0, 0.75, -0.5, 1.0, 0.75, 0.5, -0.25, 0.75, 0.0, -0.25, 0.25, -0.5, -0.5, 0.25, -0.5, 1.0, -1.0, -1.0, 0.0, -0.75, 1.0, 0.75, 0.0, 1.0, 0.25, 0.5, 1.0, 0.0, 0.0, 0.75, ]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const array8 = new Float32Array([1.0, 0.25, 0.0, -0.5, -0.5, 0.75, -0.75, 0.75, -1.0, 0.5, -0.5, 0.75, 0.5, 0.75, -0.25, -0.5, 1.0, 0.5, 0.75, 1.0, -0.5, 0.5, 0.5, -0.25, -1.0, 0.5, -0.25, 1.0, 0.25, -0.25, -0.5, 1.0, 0.0, -0.75, 1.0, 0.5, 0.5, -0.5, 0.5, 0.0, -0.5, -0.75, -0.25, -1.0, 0.25, -1.0, -1.0, -0.25, 0.75, -0.25, 0.75, 0.0, -0.25, 0.75, 0.75, 0.25, -0.75, 0.5, 0.25, 0.5, 0.0, 0.0, 1.0, 0.25, 0.5, 0.25, 0.0, 0.25, -0.75, 0.5, -1.0, -0.25, -1.0, 0.5, -0.5, -0.5, -0.5, -0.5, 0.5, 0.25, -0.75, 1.0, 0.75, 0.25, 0.0, -1.0, 0.0, -0.75, 0.5, -0.25, 0.75, 0.75, 0.75, 0.75, 0.25, -0.75, 0.0, -0.25, -0.5, 0.75, ]);
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    
    
    
    const array9 = new Float32Array([0.75, -0.5, 1.0, 1.0, 0.25, -0.5, 0.0, -0.75, 0.0, 0.0, -0.5, 1.0, -0.75, -0.25, 0.5, -0.75, 0.0, -0.25, -0.25, 0.5, 0.25, -0.5, 0.25, 0.5, -1.0, -1.0, -0.5, 1.0, -0.75, 0.0, 0.25, 1.0, 0.75, 0.25, 0.0, -0.5, 0.0, 0.75, 0.0, 0.75, 0.5, 1.0, 0.75, 0.25, -0.5, 0.25, 0.0, 0.25, -0.5, -0.25, 0.5, 0.25, -0.5, -0.5, 0.5, -0.25, 0.25, 0.25, -0.25, 0.75, -0.25, 1.0, -0.75, -0.5, 1.0, -0.25, -1.0, -0.25, -0.75, 0.5, -0.75, 0.75, 0.0, -1.0, 0.25, 1.0, -0.5, 0.25, 0.0, -0.75, 0.0, 0.75, -0.75, 0.0, 1.0, -0.5, 0.0, -0.75, 1.0, 0.75, -1.0, -1.0, 0.25, 0.75, 0.5, 0.75, 0.0, -0.25, -0.75, 0.25, ]);
    const array10 = new Float32Array([0.5, -1.0, -1.0, -0.75, 1.0, 0.75, -0.75, -0.5, -0.75, -0.75, -1.0, 0.5, -0.5, -0.75, -1.0, 0.0, 0.25, 1.0, -1.0, -0.75, 1.0, 1.0, 1.0, -0.5, 1.0, -0.25, 0.25, 1.0, 0.75, 1.0, -0.75, -1.0, 0.75, -0.25, -0.25, 0.0, -0.5, -0.25, 0.5, -1.0, 0.0, 0.5, -1.0, 0.25, 0.25, -0.75, -1.0, 0.0, -0.25, 0.25, -1.0, 0.75, -0.75, 0.75, -0.25, 0.5, 1.0, 0.0, 0.25, -0.5, 0.0, 0.75, 0.25, 0.5, -0.25, 0.75, 0.75, 0.0, -0.5, -0.5, 1.0, 1.0, 0.75, 0.5, 0.5, 0.0, -1.0, -0.75, -0.25, -1.0, 1.0, -0.5, 0.5, -1.0, -0.75, -0.25, 0.75, 0.0, 0.5, -1.0, 1.0, -0.25, 1.0, -0.25, 0.0, -0.25, 0.25, -0.75, 0.75, 0.5, ]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const array11 = new Float32Array([0.5, 0.0, 1.0, -0.75, -1.0, 0.5, 0.75, -0.25, 0.0, 0.75, 0.75, 0.75, -0.5, -0.5, 0.75, 1.0, 0.75, -0.5, -0.75, 0.5, -0.5, -0.5, 0.25, 0.75, 0.25, -0.5, 0.25, 1.0, -1.0, 0.0, 0.5, 0.0, -0.25, -0.5, 1.0, -0.75, 0.0, 0.5, -0.75, 0.0, 0.75, 0.75, 0.5, -0.25, 0.25, -1.0, 0.5, 0.5, -1.0, -1.0, 1.0, -0.25, -0.5, 1.0, -1.0, 0.0, 0.5, -0.25, 0.25, -0.75, -1.0, 1.0, 0.75, -0.75, 0.75, 0.25, 1.0, -1.0, -0.25, -0.25, 0.5, 0.75, 0.0, -0.75, -0.75, -0.25, -0.25, 1.0, -0.75, 1.0, 0.25, 0.5, 1.0, 0.5, -0.25, -1.0, -0.5, -0.5, -0.5, 0.75, 0.75, 0.25, -0.75, 1.0, 0.25, -0.5, -0.5, 0.5, -0.5, -0.75, ]);
    render_bundle_encoder600.insertDebugMarker("marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    device40.destroy();
    const array12 = new Float32Array([-0.75, 0.0, -0.75, -1.0, 0.25, -0.25, 1.0, -1.0, -0.75, 1.0, -0.25, 0.75, -1.0, -1.0, 0.5, -1.0, 0.25, 0.0, 0.5, 0.75, 0.0, 0.25, 0.25, 0.25, -0.25, -0.75, 0.0, -0.25, 0.5, 1.0, 0.25, 0.75, 0.75, 0.25, -0.25, -0.25, -0.25, -0.5, -0.25, -0.75, 1.0, -1.0, 1.0, -0.25, -0.5, -0.75, -0.25, 1.0, -0.5, 0.75, 0.75, 0.0, -0.5, -0.25, 0.75, 0.0, 0.75, -1.0, 0.0, 0.75, -0.25, -1.0, -0.25, -0.5, 0.25, 0.75, 0.75, -0.5, 0.5, 0.0, 1.0, -0.75, 0.25, 0.25, -1.0, -0.25, 0.75, 0.25, -1.0, 0.5, 1.0, 1.0, 1.0, 0.75, -0.5, 1.0, -0.75, -0.25, 0.0, 0.5, 0.75, -0.5, -0.75, 0.25, 0.0, 0.25, -0.25, 0.75, -0.75, 0.75, ]);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    device30.pushErrorScope("validation");
    
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device60.pushErrorScope("internal");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer600.destroy()
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
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
    device50.destroy();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device60.pushErrorScope("internal");
    compute_pass_encoder3000.popDebugGroup()
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer301 = command_encoder301.finish();
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    render_bundle_encoder600.popDebugGroup();
    
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder601.pushDebugGroup("group_marker");
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    command_encoder302.insertDebugMarker("mymarker");
    
    
    
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout602]
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    device30.queue.writeBuffer(buffer301, 0, array11, 0, array11.length);
    compute_pass_encoder3000.popDebugGroup()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    render_bundle_encoder602.insertDebugMarker("marker");
    
    texture300.destroy();
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    render_bundle_encoder601.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    render_bundle_encoder601.popDebugGroup();
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device30.queue.submit([command_buffer301, ]);
    render_bundle_encoder602.pushDebugGroup("group_marker");
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder701.insertDebugMarker("marker");
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture600.destroy();
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device70.pushErrorScope("out-of-memory");
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer301, 0, array10, 0, array10.length);
    command_encoder302.copyBufferToBuffer(
        buffer302,
        0,
        buffer301,
        0,
        400
    );
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const array13 = new Float32Array([-0.75, 0.75, 1.0, -0.25, -1.0, 0.5, -0.75, 0.5, -0.75, -0.75, 0.0, -0.75, -1.0, -0.75, -0.75, 0.25, 0.25, -0.75, 0.75, 0.5, -0.5, -0.25, 1.0, -0.75, 0.5, -0.25, 0.5, -0.25, -0.25, 0.0, 0.0, -0.5, 0.0, -0.25, -0.75, -0.5, 0.75, -0.5, -0.75, 1.0, -0.25, 0.5, 1.0, -0.75, 0.5, -0.75, 1.0, 0.75, 0.0, 0.5, -1.0, 1.0, -0.5, -1.0, 1.0, -1.0, 1.0, -0.25, -0.25, 0.0, 0.75, 1.0, -0.75, -0.75, -0.75, 0.0, -0.5, -1.0, -0.25, 1.0, 0.5, -0.75, -0.75, -0.25, 0.0, 0.5, 0.0, -0.5, -0.25, 1.0, 0.25, -1.0, -1.0, -1.0, 0.75, 0.0, -0.75, -0.5, -0.75, 0.0, -0.25, -0.5, 0.0, -1.0, -1.0, 0.0, -0.75, 1.0, 0.25, -1.0, ]);
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer700.destroy()
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    device30.queue.writeBuffer(buffer301, 0, array10, 0, array10.length);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
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

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const query800 = device80.createQuerySet({
        label: "query800",
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
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device30.queue.writeBuffer(buffer301, 0, array12, 0, array12.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    command_encoder302.copyTextureToBuffer(
        {
            texture: texture301
        },
        {
            buffer: buffer301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    const bind_group_layout604 = device60.createBindGroupLayout({ 
        label: "bind_group_layout604",
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
    device80.pushErrorScope("out-of-memory");
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array14 = new Float32Array([-1.0, 0.25, -0.5, 0.25, 0.75, 0.5, 1.0, 0.75, -0.25, -0.75, 0.5, 0.75, 0.5, 1.0, 0.5, 0.75, 1.0, 0.25, 0.5, -0.75, 0.0, -1.0, -0.25, 0.75, -0.75, 0.0, 1.0, 0.75, -0.5, -0.25, -1.0, 1.0, 0.75, 0.0, -0.25, -0.25, 0.75, 1.0, -0.5, 1.0, 0.0, -0.5, -1.0, -0.5, 1.0, 0.75, 0.75, 0.5, -0.25, 1.0, 0.75, 0.0, -0.75, -0.25, 0.25, 1.0, 0.0, -0.75, -0.5, -0.25, 0.25, -1.0, -0.75, -0.75, 0.5, 0.75, -1.0, 0.25, 0.5, 0.0, 0.75, 0.5, -0.25, 0.0, 0.5, -0.75, 0.5, -1.0, 0.75, -0.75, 1.0, -1.0, 1.0, -0.75, -0.25, 0.5, 1.0, 0.0, -0.25, -0.75, 0.5, 0.25, -1.0, -0.75, 1.0, 0.75, 1.0, 0.75, -0.75, 0.5, ]);
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    render_bundle_encoder302.setPipeline(render_pipeline300);
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
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder700.popDebugGroup();
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    render_bundle_encoder701.pushDebugGroup("group_marker");
    buffer303.destroy()
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout603]
    });
    device30.queue.writeBuffer(buffer301, 0, array14, 0, array14.length);
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    device90.queue.writeBuffer(buffer900, 0, array2, 0, array2.length);
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
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer301, 0, array14, 0, array14.length);
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer301, 0, array11, 0, array11.length);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture701.destroy();
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    
    buffer301.destroy()
    
    device90.queue.writeBuffer(buffer900, 0, array9, 0, array9.length);
    render_bundle_encoder301.popDebugGroup();
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32float",
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
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
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
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device90.queue.writeBuffer(buffer900, 0, array14, 0, array14.length);
    
    const array15 = new Float32Array([0.0, -0.25, -1.0, -0.5, -1.0, 0.75, -1.0, 0.75, 0.5, -0.5, 0.25, 0.5, 1.0, -1.0, 0.5, -0.75, 0.25, -0.5, 1.0, 1.0, -0.25, -0.75, 0.25, -0.25, -1.0, -0.25, 0.25, -0.75, 0.5, -0.25, 0.0, 0.5, 0.0, 0.75, 0.25, 0.25, 0.0, 0.5, 0.25, -0.25, 0.25, -1.0, 0.25, -0.5, -0.75, 0.0, -0.25, -1.0, 0.0, -0.75, -0.25, -0.25, -0.25, -0.75, 0.75, 0.75, 1.0, -0.25, 0.0, -0.5, -0.75, 0.25, 0.25, -0.5, 0.25, 0.0, 1.0, 0.25, 1.0, 1.0, 0.25, -0.5, 0.5, -1.0, 1.0, 0.75, -0.25, 1.0, -1.0, -0.25, -0.75, -0.75, 0.75, 0.0, 0.5, -1.0, 0.5, -0.5, 0.5, -0.75, 0.25, 0.0, 1.0, 1.0, 1.0, 0.0, 0.25, 0.5, 0.25, 1.0, ]);
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device60.destroy();
    render_bundle_encoder302.insertDebugMarker("marker");
    
    texture702.destroy();
    
    device90.queue.writeBuffer(buffer900, 0, array2, 0, array2.length);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    texture301.destroy();
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
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
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    query800.destroy()
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device90.queue.writeBuffer(buffer900, 0, array0, 0, array0.length);
    
    texture900.destroy();
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder7000.setStencilReference(1);
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_bundle_encoder701.insertDebugMarker("marker");
    
    command_encoder1000.insertDebugMarker("mymarker");
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder7000.insertDebugMarker("marker");
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
    command_encoder1000.insertDebugMarker("mymarker");
    
    device90.queue.writeBuffer(buffer900, 0, array13, 0, array13.length);
    
    
    texture700.destroy();
    device90.queue.writeBuffer(buffer900, 0, array7, 0, array7.length);
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    device70.pushErrorScope("internal");
    
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
    render_bundle_encoder900.insertDebugMarker("marker");
    buffer702.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device90.queue.writeBuffer(buffer900, 0, array1, 0, array1.length);
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    device90.queue.writeBuffer(buffer900, 0, array0, 0, array0.length);
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module307,
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
            module: shader_module307,
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
    
    query301.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    var shader_module1004_code = "";
    try {
        shader_module1004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1004 = await device100.createShaderModule({ label: "shader_module1004", code: shader_module1004_code })
    device90.queue.writeBuffer(buffer900, 0, array1, 0, array1.length);
    buffer304.destroy()
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module309.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    render_pass_encoder7000.setViewport(0, 0, texture700.width / 2, texture700.height / 2, 0, 1);
    
    const command_buffer1001 = command_encoder1001.finish();
    buffer703.destroy()
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
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

    render_bundle_encoder302.setBindGroup(0, bind_group301);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder701.insertDebugMarker("marker");
    
    
    texture1000.destroy();
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder303.pushDebugGroup("mygroupmarker")
    query800.destroy()
    
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder7000.pushDebugGroup("group_marker");
    
    render_bundle_encoder700.popDebugGroup();
    device30.pushErrorScope("internal");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    
    command_encoder801.pushDebugGroup("mygroupmarker")
    render_bundle_encoder1000.insertDebugMarker("marker");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer701.destroy()
    const command_buffer800 = command_encoder800.finish();
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const array16 = new Float32Array([-0.75, 0.75, 0.5, 0.5, -0.25, -1.0, -1.0, 0.0, -0.5, -0.75, 0.25, -0.75, -0.75, -0.25, -1.0, -0.25, 0.5, -0.5, -0.5, 0.75, 0.75, -0.25, -1.0, -0.75, 1.0, 0.25, 0.25, -0.25, 0.0, 0.25, -0.25, -0.25, 0.0, 0.25, -1.0, 0.75, -0.5, 0.75, -1.0, 0.75, -1.0, 0.25, -0.5, -0.75, -0.25, 0.25, -0.75, -1.0, 1.0, -0.75, 0.5, -0.75, 1.0, 0.25, 0.25, 0.75, 0.75, 0.0, -0.75, 0.0, 1.0, -1.0, 0.75, -0.5, -0.75, 0.75, -1.0, 1.0, 0.5, 1.0, -0.25, -1.0, 0.25, 1.0, 1.0, -1.0, 0.75, -0.5, 0.25, -0.75, -0.75, -0.75, 0.25, -0.75, 0.25, -0.25, 0.25, 0.5, -0.5, -0.25, -1.0, -0.5, 0.75, -0.75, -0.5, -0.75, 0.25, -0.5, 0.75, -0.5, ]);
    device90.queue.writeBuffer(buffer900, 0, array12, 0, array12.length);
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1003,
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
            module: shader_module1003,
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
    buffer300.destroy()
    
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    query800.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group302);
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    device90.queue.writeBuffer(buffer900, 0, array12, 0, array12.length);
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
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
    compute_pass_encoder3020.setPipeline(compute_pipeline301);
    
    command_encoder801.popDebugGroup()
    render_bundle_encoder1002.setPipeline(render_pipeline1000);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer306.destroy()
    command_encoder303.popDebugGroup()
    render_pass_encoder7000.popDebugGroup();
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    
    device90.queue.writeBuffer(buffer900, 0, array8, 0, array8.length);
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout801,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    buffer307.destroy()
    query701.destroy()
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group303);
    
    render_pass_encoder7000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder7000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
        powerPreference: "high-performance"
    });
    
    const texture_view9020 = texture902.createView({ label: "texture_view9020" });
    
    
    
    const command_buffer303 = command_encoder303.finish();
    compute_pass_encoder3000.setPipeline(compute_pipeline302);
    device80.queue.submit([command_buffer800, ]);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3014, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3014, 0);
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
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group304);
    const command_buffer801 = command_encoder801.finish();
    compute_pass_encoder3020.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    const command_buffer1000 = command_encoder1000.finish();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const command_buffer802 = command_encoder802.finish();
    compute_pass_encoder3020.end();
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder3000.end();
    const command_buffer300 = command_encoder300.finish();
    device100.queue.submit([command_buffer1000, command_buffer1001, ]);
    device30.queue.submit([command_buffer300, ]);
    device80.queue.submit([command_buffer801, command_buffer802, ]);
}