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
    const array0 = new Float32Array([0.75, -0.5, 0.25, 0.75, 0.75, 0.0, 1.0, 0.75, -0.25, -0.5, 0.5, -0.5, 0.25, 0.75, -1.0, 0.5, 0.0, -0.5, -0.25, 1.0, 0.0, -1.0, 0.75, 0.5, 0.25, 1.0, -0.25, -0.5, -1.0, -0.5, -1.0, -0.5, 0.25, 1.0, -0.5, 0.5, -0.25, -0.5, -0.25, 0.25, 0.25, -0.5, -0.25, 0.5, 1.0, -0.25, -0.75, 0.5, -0.25, 1.0, 1.0, 1.0, -0.5, -1.0, 0.5, -0.25, 0.5, -0.75, -0.5, -0.25, -0.75, 0.5, 0.5, -0.75, 0.5, -1.0, 0.5, 0.75, -0.25, 0.0, 0.5, -0.5, 0.25, 0.0, -0.25, -1.0, -0.5, -0.25, 1.0, 0.5, 0.25, -1.0, -0.5, 0.75, -0.25, -1.0, 0.0, 0.5, 0.0, 0.75, 0.5, -1.0, -0.75, 1.0, -0.5, 0.5, -1.0, 1.0, 0.0, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    
    const array1 = new Float32Array([-0.75, -0.5, 0.0, 1.0, 0.25, -0.5, -0.5, 1.0, -1.0, 0.5, -1.0, -1.0, -1.0, 0.5, 0.25, 0.75, -0.25, -1.0, 0.25, 0.25, -0.25, -0.25, 0.75, 0.25, -0.75, 0.5, 0.25, 1.0, 0.0, -0.25, -0.5, -1.0, 0.5, 1.0, 1.0, 0.75, 1.0, 1.0, -0.5, 0.75, -0.25, 0.0, -1.0, -0.5, 0.25, 0.75, 1.0, -1.0, -0.25, 0.0, 0.75, 0.5, 0.0, 1.0, -1.0, 1.0, -0.25, -1.0, 1.0, -1.0, 0.25, -1.0, -0.75, 0.0, -1.0, -1.0, -0.5, -1.0, -0.25, 1.0, -1.0, 0.0, -0.75, 0.0, 0.5, 0.5, -0.5, -1.0, 0.75, -0.5, -0.25, 0.25, -1.0, 0.75, -1.0, -0.75, 0.75, 0.25, -0.5, -0.25, 0.5, -1.0, -1.0, 0.0, 1.0, 0.75, -1.0, 1.0, 0.75, -0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    device10.destroy();
    
    
    
    
    
    
    
    
    
    const array2 = new Float32Array([-0.5, 0.5, -0.5, 0.25, 0.0, -1.0, -0.5, -0.25, 0.75, -1.0, 0.25, 0.25, 0.5, -1.0, 1.0, 0.75, -1.0, 0.25, 0.25, -0.25, -0.75, 0.0, 1.0, -0.5, -0.5, -1.0, -1.0, 0.5, -1.0, 0.25, 0.75, 0.0, -1.0, -1.0, 0.75, -0.5, 0.25, -0.5, 1.0, 1.0, -0.5, 0.25, 1.0, 0.5, -0.25, -0.25, 0.25, 0.25, -0.5, 0.25, 0.0, 0.25, -0.75, -0.25, -0.5, 0.0, 0.0, 0.75, 0.5, 0.0, 0.75, 0.25, 1.0, -1.0, -1.0, -0.75, -0.5, 0.0, -1.0, -0.25, -0.25, -0.25, 0.5, -0.5, 0.25, 0.75, 0.75, 1.0, 1.0, 0.25, 0.0, 1.0, 0.25, 1.0, -0.5, -1.0, 0.75, 0.5, 0.75, 0.5, 0.25, -0.25, -0.5, 1.0, -0.75, 0.75, 1.0, 1.0, -0.5, 0.75, ]);
    
    const array3 = new Float32Array([-0.25, 0.0, -0.75, 0.75, -1.0, 1.0, -0.25, 0.5, -0.25, 0.25, -0.25, 0.75, -0.75, 1.0, 0.0, -0.75, 0.75, -1.0, -0.5, 0.75, -0.25, 0.25, -1.0, 0.0, -1.0, -0.5, 0.5, -1.0, 1.0, 0.75, 0.0, 0.5, 1.0, 0.75, -0.5, -0.75, 0.25, 0.5, 1.0, 0.0, 0.75, 1.0, 0.5, 1.0, 0.5, 1.0, 0.25, 0.25, 0.75, 0.75, 0.0, -0.5, -0.75, 0.5, 0.25, -0.75, 0.5, -1.0, -0.5, 0.25, -0.75, 0.5, -0.5, -0.5, 1.0, -1.0, 1.0, -0.5, 0.0, -0.75, -1.0, -0.75, -0.5, 1.0, -0.25, 0.75, -0.5, 0.5, 0.25, 0.5, 1.0, -0.75, 0.25, -1.0, -1.0, -0.75, 0.5, -0.5, 1.0, -0.75, -1.0, -1.0, -0.25, -0.5, 1.0, 0.25, 0.25, 0.5, -0.75, 0.5, ]);
    
    
    
    const array4 = new Float32Array([0.25, 0.25, 0.75, -0.25, 0.5, 1.0, 0.5, -1.0, 0.5, 0.25, 0.0, 0.75, 0.75, -0.5, -1.0, 0.25, -0.75, 0.0, -0.25, 0.0, -1.0, -0.75, 0.75, -1.0, 0.75, -1.0, 0.75, 1.0, 0.25, -0.25, -1.0, -0.5, 0.25, 0.75, -1.0, 0.25, -0.25, 0.0, -1.0, 0.5, 0.0, 0.25, -0.75, -0.75, 0.5, -0.75, 1.0, 0.0, -1.0, -0.5, -1.0, 1.0, -0.25, -0.5, 0.0, -1.0, 0.75, 0.25, 0.25, 0.0, 0.0, 0.75, -1.0, -1.0, -0.25, 0.25, 0.0, -1.0, 0.75, -0.75, 1.0, 1.0, 0.75, -0.75, 0.5, -0.75, -0.75, 1.0, -0.75, 0.25, 0.5, -0.5, 0.0, -0.75, -0.25, -0.5, -0.25, -1.0, -0.25, -0.25, -0.75, -0.25, -1.0, 0.5, 0.5, 0.5, -1.0, 0.75, -0.75, -0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    texture200.destroy();
    
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
    
    
    
    
    
    
    const array5 = new Float32Array([0.75, -0.25, 0.25, 0.0, 0.25, 1.0, 0.0, -0.75, -0.5, 0.5, -0.75, 0.75, 0.75, 0.25, -0.75, -0.5, 0.25, 0.0, 0.25, 0.5, 0.5, -1.0, 0.25, -1.0, 0.0, -0.5, -1.0, -0.75, 0.75, -0.75, 0.25, -0.5, -1.0, -0.5, -0.75, 0.75, -0.75, -0.75, -0.5, 0.25, 0.25, -0.75, -0.25, 1.0, 0.75, -0.75, -0.5, 0.5, 1.0, 0.75, -1.0, 0.25, -1.0, -0.5, 0.0, -1.0, 1.0, -1.0, 0.75, -0.75, 0.5, -1.0, 0.75, -0.75, 0.0, 1.0, 0.75, -0.25, 0.25, -1.0, -0.25, -0.5, 0.5, -0.75, -0.75, -0.5, 0.75, -1.0, 0.0, 1.0, 1.0, 0.0, 1.0, -0.75, 1.0, -0.5, 0.25, 1.0, 1.0, -0.25, 0.0, -1.0, -0.25, -1.0, -0.5, 0.75, -0.25, 1.0, 0.75, -1.0, ]);
    
    
    
    
    
    const array6 = new Float32Array([0.5, -0.75, -1.0, -0.75, -0.5, 1.0, 0.25, -0.25, -0.75, -0.25, 0.0, -0.25, 0.25, 0.25, 1.0, 0.5, -0.25, 0.25, 0.0, 1.0, 0.25, -0.75, 0.5, -0.5, 1.0, 1.0, -0.5, 0.75, 1.0, 0.25, -0.75, 0.25, 1.0, -0.25, -0.5, -1.0, 0.5, 0.0, 0.0, -0.5, 0.5, 0.5, -0.25, -1.0, 0.25, 1.0, 1.0, 0.5, -0.5, 0.75, 0.0, 0.25, 0.25, -0.25, 0.75, 1.0, -0.75, -0.25, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, -1.0, -0.25, 1.0, 1.0, -0.75, 0.25, 1.0, -0.5, 1.0, -0.5, -0.5, 1.0, 0.25, 0.5, 0.0, -1.0, 0.0, 0.75, 0.0, 0.75, -0.75, -0.5, 0.5, 0.75, 0.25, 1.0, 0.75, -1.0, 0.5, -1.0, 1.0, 0.0, -0.5, 0.0, 1.0, -0.75, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array7 = new Float32Array([1.0, 1.0, -1.0, 0.75, 0.5, 1.0, 0.75, -1.0, 0.5, 1.0, 0.0, 0.75, -1.0, -0.5, 0.25, 0.0, 1.0, 0.25, 1.0, -0.25, -0.25, -0.5, -0.25, 1.0, -0.25, 0.5, -1.0, 0.25, -1.0, -0.5, 1.0, 0.0, -0.25, 0.25, 1.0, 0.0, 0.75, 0.0, 0.75, -0.5, 0.5, 0.75, -0.75, 0.5, -1.0, -0.75, -1.0, 1.0, -0.75, -0.5, -0.75, -0.75, 0.0, 0.75, 0.0, -1.0, -1.0, -0.75, 0.25, 1.0, -0.5, -1.0, 0.75, -0.5, 0.25, -0.5, 0.5, 0.5, 0.75, 0.0, 0.25, -0.5, -1.0, 0.25, 1.0, 1.0, 1.0, 0.25, -0.75, -0.5, 0.25, -0.5, 0.0, 0.25, -0.5, 0.25, 0.25, 0.0, 0.75, 0.75, 0.0, 0.75, 0.0, 0.5, -0.5, 0.75, 0.25, 1.0, -0.25, 0.0, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const array8 = new Float32Array([0.0, 0.5, 0.25, -0.25, 0.25, -1.0, -1.0, 0.5, 0.0, -0.5, -0.75, 0.25, -0.5, -0.75, 0.25, 1.0, -0.75, 0.5, -1.0, -1.0, -1.0, -0.25, 0.25, -0.5, 0.5, 0.75, 0.5, 0.75, -0.25, 0.75, -0.25, -1.0, 0.5, 0.25, 0.75, -0.5, -0.25, 0.25, -1.0, 0.25, -1.0, -1.0, -1.0, -0.75, 0.0, 0.0, 0.25, 0.0, -0.75, -0.5, 0.75, 0.0, 0.25, 0.0, 1.0, 0.25, -0.5, -0.5, -0.5, 0.75, 0.75, 1.0, 0.25, -0.75, 0.25, 0.0, 0.0, 1.0, -0.75, -0.75, 0.0, -1.0, -0.25, -0.25, 0.5, 0.25, -1.0, -1.0, 1.0, 0.25, 1.0, 1.0, 0.25, 1.0, 1.0, -0.25, -0.25, 0.5, -0.25, 0.25, 0.75, -0.75, 0.0, 0.5, 0.25, 0.75, -1.0, 0.75, -0.25, 0.75, ]);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    
    const array9 = new Float32Array([1.0, 0.0, 0.25, 0.25, 0.75, -0.25, 0.0, -0.75, -0.75, -0.5, -0.25, 0.75, 0.0, 0.75, 0.25, -0.75, 1.0, 1.0, 0.0, -0.5, -1.0, -0.25, -0.75, 1.0, -0.75, 0.25, 0.75, 0.75, -0.75, 0.25, -0.5, -0.25, 0.75, -0.5, 1.0, -1.0, 1.0, -1.0, 0.25, 0.0, 0.25, 0.75, 1.0, 0.25, -0.5, 1.0, -1.0, 0.0, -0.5, -0.25, -0.5, 0.5, -0.5, 1.0, 0.5, 1.0, -0.75, -1.0, 0.5, 0.25, 0.0, -0.5, -1.0, -1.0, 0.5, 0.25, 0.0, 1.0, 0.5, -0.75, 0.75, 0.5, 0.75, -1.0, 1.0, -0.5, -1.0, -0.25, -0.75, 0.25, 0.5, -0.5, 0.5, -0.75, -0.75, 0.75, 0.75, -0.75, 0.0, 0.0, 0.75, -0.5, 0.25, 0.0, 0.5, 0.5, 0.25, 0.25, 0.25, -0.75, ]);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device40.pushErrorScope("internal");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const query500 = device50.createQuerySet({
        label: "query500",
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
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    query500.destroy()
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    command_encoder400.pushDebugGroup("mygroupmarker")
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder400.popDebugGroup()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer500.destroy()
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    texture400.destroy();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    command_encoder401.insertDebugMarker("mymarker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    
    query400.destroy()
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    {
        await buffer501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer501.unmap();
        console.log(new Float32Array(data));
    }
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device50.pushErrorScope("validation");
    render_bundle_encoder400.popDebugGroup();
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
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    device30.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder500.clearBuffer(buffer501);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    command_encoder501.clearBuffer(buffer501);
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    query500.destroy()
    const array10 = new Float32Array([-0.25, 0.75, 0.75, 0.5, -0.5, -0.25, -0.25, -0.5, -0.75, 0.5, 0.25, -1.0, 0.5, -0.25, -0.75, -0.25, -0.75, 1.0, 1.0, -1.0, 0.5, -0.5, -0.5, -0.5, -0.75, -0.75, 0.25, -1.0, 0.75, 0.0, 1.0, -1.0, 0.5, 0.25, -0.5, 0.5, 1.0, -0.75, -1.0, -1.0, -0.25, 1.0, -0.25, -0.25, -0.5, -0.25, -0.75, 0.25, 0.75, -0.5, -0.5, -0.25, 1.0, 0.0, -1.0, 1.0, 0.5, 0.75, -0.75, 0.75, 0.0, 0.0, -0.25, 0.5, -0.5, 0.5, 0.0, 0.0, 0.5, -0.5, -0.5, 0.25, -1.0, 1.0, 0.0, 0.75, -0.75, -0.25, -0.25, -1.0, -0.25, 0.75, 0.0, -0.25, 0.25, -0.25, -0.5, 1.0, 0.0, 0.0, 1.0, 0.75, -0.75, -0.5, 0.25, -0.75, 1.0, -0.25, 0.25, -0.5, ]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder500.popDebugGroup();
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    texture401.destroy();
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    device60.pushErrorScope("internal");
    command_encoder501.pushDebugGroup("mygroupmarker")
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array10, 0, array10.length);
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder501.clearBuffer(buffer501);
    command_encoder501.popDebugGroup()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device50.queue.writeBuffer(buffer501, 0, array10, 0, array10.length);
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    command_encoder500.pushDebugGroup("mygroupmarker")
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    
    
    buffer400.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    render_bundle_encoder402.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    render_bundle_encoder400.setPipeline(render_pipeline401);
    
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    const command_buffer501 = command_encoder501.finish();
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    
    device60.pushErrorScope("internal");
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
    compute_pass_encoder4010.pushDebugGroup("group_marker")
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
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device60.queue.writeBuffer(buffer601, 0, array9, 0, array9.length);
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
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
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    render_bundle_encoder402.setPipeline(render_pipeline400);
    
    render_bundle_encoder401.setPipeline(render_pipeline401);
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    compute_pass_encoder4010.popDebugGroup()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    render_bundle_encoder502.popDebugGroup();
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
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
    render_bundle_encoder500.insertDebugMarker("marker");
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

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    device40.pushErrorScope("out-of-memory");
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    command_encoder800.pushDebugGroup("mygroupmarker")
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer402, 0, array10, 0, array10.length);
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
    device40.queue.writeBuffer(buffer402, 0, array9, 0, array9.length);
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout401,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4000.popDebugGroup()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
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
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    device40.queue.writeBuffer(buffer402, 0, array8, 0, array8.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
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
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder800.popDebugGroup()
    buffer501.destroy()
    compute_pass_encoder4000.setPipeline(compute_pipeline401);
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout403]
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_buffer800 = command_encoder800.finish();
    
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    buffer402.destroy()
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4010.setPipeline(compute_pipeline409);
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
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    render_bundle_encoder502.setPipeline(render_pipeline500);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout405,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout405,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
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
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const array11 = new Float32Array([0.5, 0.5, 0.75, 0.5, -0.75, -0.25, 0.5, 0.5, 0.5, 0.5, 0.25, 0.0, 0.0, 0.25, 0.25, 0.25, 0.5, -0.5, -0.5, -0.5, 1.0, 0.5, 0.5, 0.25, -0.25, -0.5, 0.25, 1.0, 0.0, -1.0, -0.25, 0.75, 1.0, 0.5, -0.25, -0.5, 1.0, -0.75, -0.75, -0.5, 1.0, 0.75, -0.25, 1.0, -0.75, -0.75, 0.5, 0.25, -1.0, -0.25, -0.25, 0.25, 0.75, 0.25, 0.75, -0.25, -0.75, 0.75, -0.25, -0.5, 1.0, 0.0, 0.25, 1.0, 0.5, -0.25, -0.5, 0.5, 1.0, -0.5, 0.25, -1.0, -1.0, -0.75, -1.0, -0.5, -0.75, -0.75, -1.0, -1.0, -0.75, -0.25, 0.5, -0.25, 0.75, 1.0, 0.5, 0.75, 0.25, 0.75, 0.25, 0.25, 0.0, -1.0, -0.75, -0.75, 0.25, 1.0, 0.75, -0.25, ]);
    device50.queue.submit([command_buffer501, ]);
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device80.pushErrorScope("validation");
    
    
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout402,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout403,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    device60.queue.writeBuffer(buffer601, 0, array10, 0, array10.length);
    
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder5000.setPipeline(compute_pipeline501);
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    device60.queue.writeBuffer(buffer601, 0, array11, 0, array11.length);
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_bundle_encoder501.setPipeline(render_pipeline500);
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer801.destroy()
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    render_bundle_encoder800.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout401,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    texture501.destroy();
    buffer701.destroy()
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout405,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout403]
    });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    buffer802.destroy()
    
    buffer602.destroy()
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    texture500.destroy();
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout405,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device60.pushErrorScope("internal");
    
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    texture402.destroy();
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    render_bundle_encoder402.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer601, 0, array9, 0, array9.length);
    texture801.destroy();
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    device50.queue.writeTexture({ texture: texture503 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout404,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    command_encoder600.insertDebugMarker("mymarker");
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_buffer801 = command_encoder801.finish();
    command_encoder600.clearBuffer(buffer601);
    device50.queue.writeTexture({ texture: texture503 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder600.insertDebugMarker("mymarker");
    
    const array12 = new Float32Array([-1.0, 0.5, 0.75, 0.75, 1.0, -0.25, 0.0, 0.75, 0.5, 0.5, 0.0, 0.5, 1.0, -1.0, 0.0, 0.25, 0.75, -0.75, 0.5, 0.5, -0.75, -0.25, 0.0, 1.0, 0.5, -0.5, 0.0, -0.75, -1.0, 0.75, 1.0, 1.0, 0.75, -0.25, 1.0, -0.75, 0.75, 1.0, 0.0, -0.5, -0.25, -0.5, 0.75, -0.25, 0.5, 1.0, 0.75, -0.25, -0.25, 0.0, 0.75, 0.0, -0.5, 0.5, -0.75, -1.0, 0.5, -0.25, 0.75, -0.5, 0.5, 0.0, 0.5, -0.25, -0.25, 1.0, 1.0, 0.0, 0.75, -0.25, -0.25, 0.5, -1.0, -1.0, 0.75, -0.75, -0.5, -0.5, 0.25, -0.5, 0.25, -0.75, -0.5, -1.0, 0.75, -0.25, -0.5, 0.0, -0.75, -1.0, 1.0, -0.25, 0.0, 0.5, -0.75, 0.0, -0.75, 0.75, 0.75, -1.0, ]);
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    device50.queue.writeTexture({ texture: texture503 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device70.pushErrorScope("out-of-memory");
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout403]
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    texture800.destroy();
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer1000.destroy()
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    device80.queue.writeBuffer(buffer803, 0, array6, 0, array6.length);
    render_bundle_encoder402.popDebugGroup();
    device90.destroy();
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture503 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder600.clearBuffer(buffer601);
    compute_pass_encoder7010.insertDebugMarker("marker")
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout409,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    command_encoder600.pushDebugGroup("mygroupmarker")
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
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    query500.destroy()
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    render_bundle_encoder800.insertDebugMarker("marker");
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout406,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4032 = device40.createComputePipeline({
        label: "compute_pipeline4032",
        layout: pipeline_layout407,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4033 = device40.createComputePipeline({
        label: "compute_pipeline4033",
        layout: pipeline_layout408,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout504,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline4034 = device40.createComputePipeline({
        label: "compute_pipeline4034",
        layout: pipeline_layout408,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    buffer502.destroy()
    const compute_pipeline4035 = device40.createComputePipeline({
        label: "compute_pipeline4035",
        layout: pipeline_layout409,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4036 = device40.createComputePipeline({
        label: "compute_pipeline4036",
        layout: pipeline_layout406,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    
    const array13 = new Float32Array([1.0, -0.75, 0.25, 0.25, -0.75, 0.75, 0.75, -0.5, -0.25, 0.5, 0.5, 0.0, -1.0, -0.25, -0.5, 0.25, 0.25, 0.0, -0.25, 0.25, 1.0, -0.75, 0.75, 0.5, 0.75, -0.5, -0.5, 0.5, -0.25, -0.25, 0.0, 0.25, -0.25, 0.0, 0.5, -0.25, -0.25, -0.75, 0.25, -0.5, 0.5, 0.0, 0.25, -0.25, 1.0, -0.5, -0.5, -0.5, -0.5, 0.25, -0.5, -0.5, 0.0, 1.0, -0.25, -0.25, 1.0, -0.5, 0.75, -0.5, 0.75, -1.0, -1.0, -0.25, -1.0, 0.5, -0.5, -0.5, 0.0, -0.75, 0.75, -0.25, -0.25, 0.75, 0.25, -0.5, 0.25, -1.0, 0.25, 0.5, -1.0, 0.75, 1.0, 0.0, 0.25, -0.75, 0.5, -1.0, -0.5, 0.0, 1.0, 1.0, 0.5, 1.0, 0.0, 1.0, 0.75, 0.75, 0.0, -0.25, ]);
    command_encoder600.popDebugGroup()
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    const compute_pipeline4037 = device40.createComputePipeline({
        label: "compute_pipeline4037",
        layout: pipeline_layout406,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    buffer405.destroy()
    const compute_pipeline4038 = device40.createComputePipeline({
        label: "compute_pipeline4038",
        layout: pipeline_layout409,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    device80.queue.writeBuffer(buffer803, 0, array12, 0, array12.length);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4010.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5000.dispatchWorkgroups(100);
    const command_buffer700 = command_encoder700.finish();
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
        layout: compute_pipeline401.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group402);
    compute_pass_encoder5000.end();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4011, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4011, 0);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder500.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    device70.queue.submit([command_buffer700, ]);
    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline409.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4013,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group403);
    compute_pass_encoder4000.end();
    device50.queue.submit([command_buffer500, ]);
    command_encoder400.popDebugGroup()
    compute_pass_encoder4010.dispatchWorkgroups(100);
    const command_buffer400 = command_encoder400.finish();
    const command_buffer600 = command_encoder600.finish();
    compute_pass_encoder4010.end();
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer401, ]);
    device60.queue.submit([command_buffer600, ]);
    device80.queue.submit([command_buffer801, ]);
    device80.queue.submit([command_buffer800, ]);
}