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
    const array0 = new Float32Array([0.0, -0.25, 1.0, 0.0, -0.5, 0.25, -0.75, 0.0, -0.25, -1.0, -0.25, 0.25, 1.0, 0.5, 0.75, 1.0, -0.5, 0.0, 0.25, 0.25, -0.75, 0.0, 0.25, -1.0, 0.75, -1.0, 0.75, -1.0, 0.5, 0.25, -1.0, -1.0, 0.0, -1.0, -0.75, -0.5, -0.5, 1.0, 0.0, -0.5, 0.5, -0.25, 0.0, -0.75, 0.0, 1.0, -0.75, 0.25, 0.5, 1.0, -0.5, 0.25, -0.5, 1.0, 0.0, -0.5, -1.0, -0.75, -0.75, 0.0, -0.5, -1.0, -1.0, 0.25, 0.75, 0.75, -1.0, -0.5, 0.25, -0.25, 0.0, -0.75, -0.25, -1.0, 0.0, 0.75, -0.75, -0.25, 0.25, 0.0, -0.25, -0.5, -0.25, -1.0, 0.25, -1.0, -0.75, -1.0, 0.25, 0.75, 0.0, -0.5, 0.75, 0.0, -0.75, 0.75, -1.0, -0.25, -0.75, -1.0, ]);
    
    
    
    
    const array1 = new Float32Array([-0.25, -1.0, -0.75, 1.0, 0.25, -0.25, -0.75, 0.5, -1.0, 0.5, 0.5, 1.0, 0.0, 0.5, 0.25, 0.75, 0.75, -0.5, -0.25, -0.75, -0.75, 1.0, 0.0, 0.75, 0.0, 1.0, -0.5, -0.5, -1.0, -0.25, -1.0, -0.25, -0.25, -0.25, -0.5, 0.5, -0.25, -1.0, -0.5, 0.75, -0.5, 0.75, 0.25, 0.0, -0.25, 1.0, 0.0, 0.0, -0.75, -0.5, -0.25, -1.0, 0.25, 0.0, 0.75, 0.0, -0.75, 0.75, -0.75, -0.25, 0.25, -0.25, 0.25, 0.75, -0.5, 0.25, 0.5, 0.25, -1.0, -0.25, -1.0, 1.0, 1.0, 0.75, 0.5, 0.0, -0.75, -1.0, 0.0, -0.25, -1.0, -1.0, -0.75, -0.5, -0.75, -0.5, -0.75, 1.0, -1.0, 0.5, 1.0, 0.5, -0.25, -0.5, -1.0, 1.0, 0.5, 0.5, -0.75, 0.75, ]);
    
    const array2 = new Float32Array([-0.75, -0.75, 0.75, -1.0, 0.25, 1.0, 0.0, -0.5, -1.0, 0.25, -0.75, 1.0, -1.0, -1.0, 0.25, -0.25, 1.0, 0.25, 1.0, -1.0, -1.0, -0.25, 0.0, -1.0, -0.5, 0.75, -0.25, -1.0, -0.5, -0.75, -0.25, 0.25, 0.75, 0.25, 0.75, 0.25, 0.0, 0.75, 0.0, 0.25, -0.75, -0.25, -0.25, 0.5, 0.5, 1.0, 0.0, 0.0, -0.5, -0.5, -1.0, -1.0, -0.5, -0.5, -0.5, -1.0, 1.0, -0.75, -1.0, 0.5, 0.25, 0.0, -0.25, 0.0, 1.0, 0.75, 0.0, 0.0, -0.75, -0.5, 0.0, 0.25, 0.5, 1.0, -1.0, 0.5, 0.25, -0.75, -0.75, 1.0, 0.25, -0.25, 0.25, 0.0, 1.0, -0.75, -0.5, 0.0, 0.75, -0.25, -0.25, 1.0, -1.0, 1.0, 0.75, 0.25, -0.25, 0.75, 0.75, -0.75, ]);
    const array3 = new Float32Array([0.5, -0.25, -0.5, -0.75, 0.25, 0.25, -0.25, 1.0, 0.75, 0.0, 0.25, 0.75, -1.0, 0.5, -0.75, -0.5, 1.0, -0.75, 0.75, 0.25, 1.0, -0.25, -0.25, -0.5, -0.75, 0.75, -1.0, -0.25, -0.75, -0.75, 0.25, 0.75, 1.0, 0.75, -1.0, 0.75, -0.75, -0.5, 0.5, 0.0, 0.75, 0.5, -0.75, -0.5, -0.75, 1.0, 1.0, 0.0, -0.5, 0.5, -1.0, 0.5, 0.5, 1.0, 0.0, 0.75, 0.5, 1.0, 0.0, -0.5, 0.5, 0.0, 0.0, 0.0, -0.75, -1.0, -1.0, -0.5, -0.25, 0.75, 0.5, 0.0, -0.25, 0.5, 0.25, 0.75, 0.0, 0.25, -0.25, 1.0, -0.5, 1.0, 0.0, -0.25, 1.0, -0.25, 0.0, -0.25, -0.25, 1.0, 0.25, 0.75, 0.0, 0.5, 0.0, -0.5, -0.5, 0.25, -1.0, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    
    
    const array4 = new Float32Array([-0.25, 0.5, -0.75, -0.5, -0.25, 1.0, 1.0, -1.0, -0.5, 0.0, 0.5, -0.75, -1.0, 0.5, -0.75, -0.75, -0.75, -0.5, 0.0, 1.0, 1.0, -0.25, -0.75, 0.75, 0.0, -1.0, -0.25, 0.0, 0.0, 0.5, 0.75, -1.0, 0.75, -0.5, -0.25, -0.25, 1.0, -1.0, -0.25, -0.5, 0.75, 1.0, -0.25, 0.0, 0.5, 0.5, 0.75, 0.75, 1.0, -0.75, -0.25, 0.0, 0.0, 0.0, 0.25, -1.0, 0.75, -0.25, 0.75, 0.5, 0.5, 0.5, 1.0, 0.0, -0.5, 0.5, -0.25, 1.0, -0.5, 0.75, 1.0, -0.25, -0.75, 0.0, 0.0, -0.25, -0.25, -0.25, 0.0, 0.0, 1.0, -0.5, -0.75, 0.0, 0.0, 0.5, -0.25, 0.0, -1.0, -0.5, -1.0, -0.25, -1.0, 0.25, -0.75, -0.25, 0.0, 1.0, 0.5, 1.0, ]);
    
    
    
    
    const array5 = new Float32Array([1.0, -0.75, -1.0, 0.5, 0.5, -1.0, 0.0, 1.0, -1.0, 1.0, -0.5, 0.25, -0.25, 0.5, 0.5, 0.5, 0.75, -0.5, 0.0, -1.0, -0.75, -0.5, 1.0, -0.5, -1.0, 0.5, -0.5, -0.5, 0.5, 0.0, 0.25, 0.75, 0.5, -0.5, 0.25, 0.5, 0.75, 0.0, 1.0, -0.75, -1.0, -1.0, -0.75, -0.5, -1.0, -0.25, 1.0, 0.75, 1.0, 0.25, 0.5, 0.75, 1.0, -0.25, -0.75, 0.5, -0.5, 0.5, -0.5, 0.75, -0.25, 0.5, 0.75, 0.5, 0.75, 0.75, -0.25, 0.0, -1.0, 0.0, -0.5, -0.25, 1.0, -1.0, 0.0, 0.25, 0.0, 0.75, 0.5, 0.0, 0.75, 0.0, -0.5, -0.75, -1.0, 1.0, -0.5, -0.5, 0.0, 0.5, -0.5, -0.75, -0.75, 1.0, -0.5, 0.25, 0.75, -0.5, 0.25, 0.25, ]);
    
    
    
    const array6 = new Float32Array([-0.5, -0.25, 1.0, 0.75, 0.25, 0.0, -1.0, 0.5, 0.75, -0.25, -0.25, 0.0, 0.25, 0.25, 0.25, -0.25, 0.5, -0.75, -1.0, 0.0, -0.5, 0.75, -0.75, 0.75, -0.25, -0.5, -0.5, -0.5, -1.0, -1.0, -0.75, 0.25, 0.75, 0.0, 0.75, -0.75, 0.75, -1.0, 1.0, 0.25, -0.75, -0.25, 1.0, 1.0, -0.5, -0.75, 1.0, -0.25, -1.0, -0.75, 0.0, -0.75, -1.0, -0.25, 1.0, 0.5, 0.25, 0.75, 1.0, 0.25, -1.0, 0.75, 0.25, 0.0, 0.25, -1.0, 0.5, 1.0, 0.25, 0.5, -0.5, -1.0, -0.25, 1.0, 0.0, 0.75, -0.25, 1.0, 1.0, 0.75, 0.75, -0.25, -0.75, -1.0, 0.5, 0.0, 0.5, 0.75, 0.25, -0.75, -1.0, -0.75, -0.25, -1.0, -0.5, 1.0, -1.0, 0.75, 1.0, 0.0, ]);
    
    
    
    const array7 = new Float32Array([0.25, -0.75, -0.25, 1.0, -0.5, -0.75, -0.5, 1.0, 0.5, 0.0, -1.0, 0.75, 0.0, -0.25, -0.5, 0.5, 0.5, -0.25, -0.75, -0.25, 1.0, 0.25, 0.0, -0.75, -1.0, -1.0, 0.0, 0.0, 0.5, -1.0, 1.0, 0.25, -0.25, 0.5, 0.75, -0.75, 0.75, -0.5, 0.5, -0.5, -0.5, -1.0, 0.75, 0.5, -0.75, 0.5, 0.75, -0.25, 0.75, -0.5, 0.0, -0.5, -1.0, -0.25, -0.5, 0.0, -0.5, 0.75, -0.5, 1.0, -0.75, -0.5, -1.0, 0.25, 0.5, -0.75, -1.0, -1.0, 0.25, -0.25, -0.25, 1.0, -1.0, 0.5, 0.75, -0.5, -0.5, 0.25, -0.5, 0.75, -1.0, -0.5, 0.0, -0.5, -1.0, -1.0, 0.75, -1.0, 0.75, -1.0, -0.75, -0.5, 0.0, 0.0, -1.0, 1.0, 1.0, 0.0, -0.25, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array8 = new Float32Array([-0.75, 0.75, -1.0, 0.25, -0.25, 0.5, 0.5, -0.25, -1.0, -0.25, -0.25, -0.75, -0.75, 0.75, -0.75, -1.0, -0.25, -1.0, -1.0, -0.75, -0.25, -0.75, 0.75, -0.25, 0.75, -0.25, 0.75, 0.25, -1.0, 1.0, -0.5, 0.5, -0.75, 0.0, -1.0, 1.0, 0.5, -0.5, -0.75, -0.75, 1.0, 0.75, -0.5, -0.25, 1.0, -0.25, 1.0, -0.75, 1.0, 0.0, -0.5, 0.5, 0.0, 0.5, 1.0, -0.75, 0.25, 0.75, -1.0, 0.0, -0.25, 0.25, 1.0, 1.0, -1.0, -0.25, 0.25, -0.5, -0.75, -0.25, 1.0, -0.25, 0.25, -0.5, -1.0, -0.75, 0.25, 0.5, -1.0, -0.5, -0.75, -0.25, -0.25, 1.0, -0.75, 1.0, -1.0, -0.75, 0.5, -0.25, 0.75, 0.25, 0.0, -0.25, -0.5, 0.5, 0.75, -0.75, -0.5, -0.5, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array9 = new Float32Array([-0.5, -0.25, 1.0, 1.0, -0.75, 0.75, -0.25, 0.0, 0.5, 0.0, -0.75, -0.75, 0.0, -0.5, -0.25, -0.5, -0.25, 0.0, 0.5, 0.0, -0.75, 0.5, -1.0, 0.75, -0.25, 1.0, -0.75, -1.0, 0.75, 0.75, 0.0, 0.75, -1.0, -0.5, -1.0, 1.0, -0.75, 1.0, 1.0, -1.0, -0.75, 0.75, -0.75, -0.75, 0.0, -0.75, -0.25, -0.5, 0.75, 1.0, 0.25, -0.5, 0.5, 0.5, -1.0, 0.5, -1.0, 0.25, 0.5, -0.5, 1.0, -0.5, 1.0, -0.75, 1.0, -0.75, 0.5, 1.0, -0.25, 0.75, -0.25, 1.0, 0.25, -0.75, 0.75, -0.25, 0.5, 0.25, 0.0, 0.25, 0.0, -0.5, -0.5, 0.0, -0.25, -0.75, 0.75, -0.5, -1.0, 0.75, -0.75, -1.0, 1.0, 0.25, -0.75, -0.25, 0.75, 0.0, 0.25, 0.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32sint",
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
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const command_buffer500 = command_encoder500.finish();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    
    
    
    
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    texture500.destroy();
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
        dimension: "2d"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const command_buffer100 = command_encoder100.finish();
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    device50.queue.submit([command_buffer500, ]);
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device50.destroy();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    device40.pushErrorScope("validation");
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
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    buffer401.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.destroy();
    device70.destroy();
    
    const texture_view4003 = texture400.createView({ label: "texture_view4003" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    texture402.destroy();
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    texture100.destroy();
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.popDebugGroup();
    device30.destroy();
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    device10.pushErrorScope("internal");
    query100.destroy()
    texture401.destroy();
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
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
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    
    
    buffer100.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    query402.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder100.popDebugGroup();
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
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
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder101.insertDebugMarker("marker");
    texture403.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query401.destroy()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder101.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
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
    
    
    
    buffer103.destroy()
    
    
    
    buffer400.destroy()
    device60.destroy();
    
    
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    render_bundle_encoder402.setPipeline(render_pipeline400);
    command_encoder102.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder401.setPipeline(render_pipeline400);
    device40.queue.writeBuffer(buffer402, 0, array8, 0, array8.length);
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    query401.destroy()
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    
    render_pass_encoder1020.setStencilReference(1);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer104.destroy()
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer102.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    compute_pass_encoder1010.insertDebugMarker("marker")
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device40.destroy();
    render_bundle_encoder102.setPipeline(render_pipeline104);
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setPipeline(render_pipeline101);
    
    device90.destroy();
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16sint",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device10.pushErrorScope("internal");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.popDebugGroup();
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    render_pass_encoder1020.setStencilReference(1);
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    buffer101.destroy()
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
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
    
    device100.pushErrorScope("validation");
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const array10 = new Float32Array([0.0, 0.5, 0.25, 0.75, 0.5, 0.5, -0.75, -1.0, 0.75, -0.5, -0.75, -0.25, 0.0, -0.75, -0.5, 0.75, -0.75, 0.75, 0.25, -1.0, -1.0, 0.75, 0.0, -1.0, -1.0, 1.0, 0.0, -1.0, 0.0, -0.75, 0.75, 1.0, 0.5, 0.25, 0.0, 0.25, 0.75, 0.25, 0.5, 0.0, 1.0, -0.25, 1.0, -0.75, -0.75, 0.5, -0.25, -1.0, -0.25, 0.25, 0.75, 0.75, 0.5, -1.0, -0.25, 0.0, -0.75, 0.0, 0.75, 1.0, 0.5, 0.0, 0.75, 0.75, 0.0, -0.25, -0.75, -0.5, 0.75, -0.25, -0.75, 1.0, 0.5, 1.0, 0.75, -0.75, 0.5, 1.0, 0.75, 0.75, -0.25, 1.0, -1.0, 0.25, -1.0, -0.5, 0.25, -1.0, 0.0, 0.5, 0.25, 0.0, 0.25, -0.5, 0.5, 0.0, -0.5, -0.5, -0.5, 0.5, ]);
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    const array11 = new Float32Array([0.0, 0.25, -1.0, -0.5, -1.0, -1.0, 0.25, 1.0, 0.5, -0.75, 0.5, -0.75, 0.75, 0.5, 0.25, -0.25, -0.75, 0.25, -0.75, -0.75, 0.5, -1.0, 0.0, -0.75, 0.0, -0.75, -0.5, -1.0, 0.0, 0.25, 1.0, 1.0, -0.25, 0.25, -0.25, 0.0, -0.25, 0.75, 0.5, 1.0, -0.75, 0.5, 0.25, 0.0, -0.25, -0.25, -0.25, 0.25, 0.25, 0.75, -0.75, 0.0, 0.25, -1.0, 0.0, 0.25, 1.0, -0.25, 0.75, -0.5, 0.75, -1.0, 0.5, -1.0, 1.0, 0.5, 1.0, -0.75, -0.5, 1.0, 1.0, 0.25, 0.75, 0.75, 0.5, 1.0, -0.75, 0.0, 0.75, -0.25, 0.25, 1.0, -0.5, -0.5, -1.0, 1.0, -0.5, -1.0, 0.5, 0.5, 1.0, 0.75, -0.25, 0.0, 0.0, -0.5, 0.75, 0.0, -1.0, 1.0, ]);
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    
    const render_pipeline1001 = device100.createRenderPipeline({
        label: "render_pipeline1001",
        vertex: {
            module: shader_module1001,
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
            module: shader_module1001,
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
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module109,
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
            module: shader_module109,
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
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.popDebugGroup();
    
    compute_pass_encoder1010.popDebugGroup()
    device10.pushErrorScope("validation");
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
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
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder1020.insertDebugMarker("marker");
    device110.destroy();
    
    
    
    
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_bundle_encoder1000.setPipeline(render_pipeline1000);
    device10.queue.submit([command_buffer100, ]);
    buffer106.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
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
                    buffer: buffer1000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1001,
                },
            },
        ],
    });

    render_bundle_encoder1000.setBindGroup(0, bind_group1000);
    render_pass_encoder1020.insertDebugMarker("marker");
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group102);
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query1000.destroy()
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query101.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1030.setPipeline(render_pipeline101);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group103);
    query101.destroy()
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device100.queue.writeTexture({ texture: texture1000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    texture101.destroy();
    buffer105.destroy()
    const sampler1002 = device100.createSampler( { label: "sampler1002" } );
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device100.queue.writeTexture({ texture: texture1000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device120.destroy();
    
    buffer1000.destroy()
    device100.queue.writeTexture({ texture: texture1000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer109.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout1500 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1500",
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
    
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    device150.pushErrorScope("validation");
    
    device100.destroy();
    
    const command_buffer104 = command_encoder104.finish();
    
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
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    
    
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    render_pass_encoder1020.popDebugGroup();
    
    texture102.destroy();
    
    
    buffer1010.destroy()
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group104);
    
    
    const texture1501 = device150.createTexture({
        label: "texture1501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query101.destroy()
    device80.destroy();
    render_bundle_encoder101.popDebugGroup();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const texture_view15010 = texture1501.createView({ label: "texture_view15010" });
    const texture_view15011 = texture1501.createView({ label: "texture_view15011" });
    
    
    
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
    buffer107.destroy()
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    
    buffer1012.destroy()
    const texture_view15000 = texture1500.createView({ label: "texture_view15000" });
    
    buffer1011.destroy()
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    query100.destroy()
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module1601_code = "";
    try {
        shader_module1601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1601 = await device160.createShaderModule({ label: "shader_module1601", code: shader_module1601_code })
    const command_encoder1500 = device150.createCommandEncoder({ label: "command_encoder1500" });
    device160.destroy();
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
        vertex: {
            module: shader_module109,
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
            module: shader_module109,
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
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const compute_pass_encoder15000 = command_encoder1500.beginComputePass({ label: "compute_pass_encoder15000" });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const command_encoder1400 = device140.createCommandEncoder({ label: "command_encoder1400" });
    const compute_pass_encoder14000 = command_encoder1400.beginComputePass({ label: "compute_pass_encoder14000" });
    render_pass_encoder1030.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    render_bundle_encoder1500.insertDebugMarker("marker");
    
    render_bundle_encoder1400.pushDebugGroup("group_marker");
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    
    device10.queue.submit([command_buffer104, ]);
    
    
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    render_bundle_encoder101.popDebugGroup();
    const sampler1501 = device150.createSampler( { label: "sampler1501" } );
    
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    var shader_module1501_code = "";
    try {
        shader_module1501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1501 = await device150.createShaderModule({ label: "shader_module1501", code: shader_module1501_code })
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group105);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1016, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1016, 0);
    compute_pass_encoder1010.end();
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer101, ]);
}