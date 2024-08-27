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
    const array0 = new Float32Array([-1.0, -0.75, 1.0, -0.5, -0.25, 0.5, -0.25, -1.0, 0.5, 0.25, 0.0, 1.0, -0.75, 0.25, -0.5, 0.25, 0.25, -0.75, 0.75, 1.0, 0.75, 0.5, -1.0, -0.75, 0.0, -0.75, -0.5, 0.75, -0.75, -0.5, -1.0, 0.25, 1.0, 0.75, -0.75, 0.0, 0.25, 0.75, -0.25, -1.0, 0.75, 1.0, 0.75, -1.0, -0.75, 0.0, -0.5, 0.5, -1.0, -0.75, 1.0, 1.0, -0.25, 1.0, 1.0, -1.0, -0.25, 0.25, 0.25, 0.25, -1.0, -0.75, 0.75, 0.0, -0.5, 0.25, 0.0, 0.0, -0.25, -0.5, -0.5, 0.75, -1.0, 0.0, 1.0, 0.5, -1.0, 1.0, 0.5, -0.75, 0.0, 0.75, 0.0, 0.75, 0.75, -0.25, -0.5, 0.5, 0.5, 0.0, 0.75, -1.0, -0.5, 0.0, -0.5, -0.25, -0.25, -1.0, -1.0, -0.5, ]);
    const array1 = new Float32Array([0.0, 0.75, 1.0, 0.75, 1.0, 0.0, 0.75, 0.0, 0.25, 1.0, 0.75, 0.75, -0.5, 1.0, -0.75, 0.5, 0.5, 0.5, -0.5, 0.25, 1.0, 0.5, 0.25, -0.75, 0.0, -1.0, 0.5, 0.25, -0.5, 1.0, 0.75, -0.25, 0.25, -1.0, 1.0, 0.75, -0.75, -1.0, -0.25, -1.0, 1.0, 0.25, 1.0, 0.0, -1.0, 1.0, -0.75, 0.5, -0.5, 0.5, -0.25, 1.0, -0.25, -0.75, -0.75, 0.25, 1.0, 0.25, 0.5, 0.75, 0.0, 0.0, -0.5, 0.0, 0.5, 0.5, 1.0, -0.5, 0.5, 1.0, 0.0, -0.75, 0.25, 0.75, -1.0, -0.5, -1.0, 0.75, -0.5, 0.25, -0.25, -0.5, 0.75, -0.25, -0.5, -0.75, -1.0, 0.0, -0.5, -0.25, 0.5, 0.25, 0.75, 0.0, -0.75, -0.25, 0.75, -0.5, -0.75, 0.75, ]);
    const array2 = new Float32Array([0.5, 0.75, -0.25, 1.0, 1.0, -0.5, -0.75, -0.25, 1.0, 1.0, 0.5, 0.0, 1.0, -0.75, 0.0, 0.75, 0.75, -1.0, 0.0, 0.75, -0.75, 0.5, -0.75, 0.0, -0.5, -0.75, 1.0, 0.25, 0.75, -1.0, -0.25, 0.75, -0.5, 0.25, 0.5, 1.0, -0.75, 0.25, 0.0, 0.75, 1.0, 0.0, -0.25, -0.25, -1.0, -0.25, -1.0, 0.25, -0.25, -0.25, 0.25, 0.75, -0.5, 0.0, -0.75, 0.5, 1.0, 0.0, -1.0, -1.0, -0.25, 0.25, 0.25, -0.5, -0.75, 0.25, -0.75, -0.25, -1.0, -0.5, 0.5, 0.0, -0.5, -1.0, -0.75, 0.25, -0.5, 0.75, -0.75, -1.0, 1.0, -1.0, 1.0, 0.25, 0.0, -0.25, 0.5, 0.25, 0.75, -0.25, 0.0, 0.75, 0.5, 0.5, -1.0, 0.25, -1.0, 1.0, 0.5, 1.0, ]);
    const array3 = new Float32Array([0.25, 0.0, 0.5, 0.75, 1.0, -0.5, 0.5, 0.25, -0.75, 1.0, 0.5, 1.0, 0.75, 0.25, -0.75, 0.0, 0.25, -0.75, -0.25, 0.0, 0.25, 0.75, 0.25, 0.0, 0.75, -1.0, -0.25, -1.0, 0.75, 1.0, 0.75, 0.25, -0.25, -0.5, -1.0, -0.25, 0.25, 0.25, -0.75, 0.25, 0.75, 0.75, -0.75, -0.25, -0.25, 0.5, 1.0, 0.75, -0.75, 0.5, 0.75, -0.25, -0.25, 0.5, 0.0, 1.0, 0.0, 0.0, -0.75, -0.25, -0.75, 0.75, -0.5, 1.0, -0.5, -0.75, -1.0, -0.75, -0.25, -0.5, -0.75, 0.0, -0.5, -0.25, -0.25, -1.0, -0.5, -0.75, -0.5, -0.5, 0.25, 0.5, -0.25, 0.25, 0.5, -0.75, 0.75, 0.5, -0.75, 0.25, -0.5, 0.75, 0.25, -1.0, -0.75, 0.25, 0.25, 0.75, 0.25, 0.5, ]);
    const array4 = new Float32Array([-0.5, -1.0, -1.0, 0.0, 0.75, -0.75, 0.5, 0.25, 0.0, 1.0, 1.0, -0.25, 0.0, 0.25, 0.75, 0.0, -0.75, 0.0, 0.5, 0.5, -0.25, 0.75, -0.5, -0.25, 0.25, 0.25, 0.25, -1.0, -0.75, 1.0, 0.75, 0.0, -0.5, -0.5, -0.75, 1.0, 0.5, 1.0, 0.0, 0.75, 0.25, 0.75, -0.5, 0.25, 0.25, 1.0, -0.25, -0.5, 0.25, 0.75, -0.75, -0.5, 0.75, -0.25, 0.75, -0.25, -0.25, 0.25, -0.5, 1.0, 0.25, 0.5, -0.5, 1.0, -0.25, -0.5, -1.0, 0.75, 0.25, 1.0, -0.75, 0.75, -0.75, 0.75, 0.5, 0.25, -0.25, 0.0, -0.5, -0.25, -0.5, 0.5, 0.5, 0.25, 0.25, 0.5, 0.75, 1.0, -1.0, -1.0, -1.0, -0.25, -0.75, 0.0, -0.25, -0.5, -0.5, -0.5, 0.75, -0.5, ]);
    
    const array5 = new Float32Array([-0.75, 1.0, -0.25, 0.25, -0.25, -0.75, -0.25, 0.0, 0.0, 1.0, -1.0, 0.0, -1.0, 1.0, 0.5, 0.0, 0.0, 1.0, 0.25, 0.0, -0.25, -0.75, 0.0, 0.75, 0.75, -1.0, -1.0, -1.0, -1.0, -1.0, 0.25, 0.0, 0.5, 0.75, -1.0, 1.0, -1.0, 0.0, 0.75, -0.75, 1.0, 0.25, 0.5, 0.5, 0.5, -1.0, -1.0, 0.0, 0.75, -0.25, -0.75, -0.5, 0.5, -1.0, 0.25, 0.5, -0.5, 1.0, -0.5, 0.75, 1.0, 0.75, -1.0, 1.0, -0.75, 0.5, 1.0, -0.25, -0.5, 0.75, 0.0, 1.0, 0.75, 0.75, -1.0, -0.25, -0.25, 1.0, 1.0, -0.5, 0.0, 0.0, 1.0, -1.0, -0.5, -0.5, -1.0, 0.25, 0.0, -0.75, -0.75, -1.0, 1.0, -1.0, 1.0, -1.0, 0.0, -0.75, -1.0, 1.0, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array6 = new Float32Array([-0.5, -1.0, -0.5, 0.25, 0.75, 0.5, -0.75, 0.5, -0.25, 0.0, 0.5, 0.75, 0.75, 0.0, -1.0, 0.25, -0.5, -0.5, -1.0, -0.25, 0.0, 0.5, -0.75, -1.0, -0.25, 0.25, 0.0, 1.0, 0.0, 1.0, 1.0, 1.0, 1.0, 0.25, 0.0, -0.5, 0.5, 0.75, 1.0, 0.0, -0.75, -0.5, 1.0, -1.0, 0.75, -0.75, 0.75, -1.0, 0.75, 1.0, -0.25, -1.0, 0.0, -0.75, 0.0, 1.0, -1.0, 0.0, 0.75, 0.25, 0.75, 0.25, 0.25, -0.25, 0.25, -0.5, -0.25, 1.0, 0.25, -0.5, 0.5, -0.25, 0.0, -0.75, -0.75, -0.25, 1.0, -1.0, 0.5, 0.5, -0.5, 0.75, -0.5, -0.25, -1.0, -0.75, 0.75, 0.5, 1.0, 1.0, 0.25, 1.0, -0.75, -0.25, 0.25, 0.0, 0.25, 0.5, 0.25, -0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    texture001.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.destroy();
    
    
    
    const array7 = new Float32Array([0.25, -0.75, -1.0, 0.5, -0.25, -0.25, -1.0, -1.0, 1.0, -0.75, -1.0, 0.0, -0.5, 1.0, -0.25, -0.25, 0.0, 0.0, 0.5, 0.75, -0.5, 0.25, 0.5, -0.25, -1.0, 0.75, 0.0, 0.25, 0.0, -0.5, -0.5, -0.75, 0.5, -0.75, -0.75, -0.25, 0.0, 1.0, -0.75, 0.0, -0.75, 1.0, 0.25, 0.5, -0.25, 0.5, 0.0, -0.75, 0.25, 0.0, 0.75, 0.5, 0.25, 1.0, 0.75, 1.0, 1.0, -0.25, 0.0, -1.0, 0.0, 0.5, -1.0, 0.25, -0.5, 0.5, 0.0, 0.75, 0.75, 0.0, 0.0, -0.5, 0.25, 1.0, -0.5, 0.0, -1.0, 0.25, 0.5, -0.25, 0.5, 0.5, 0.5, -0.75, 0.5, 0.25, -0.25, -0.5, 0.25, -0.75, -0.75, 0.0, -0.25, 1.0, -0.75, -0.25, 0.5, -0.25, 0.5, -0.75, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array8 = new Float32Array([-0.5, 0.0, 0.75, 0.75, 1.0, 0.75, 1.0, -0.25, 0.0, -0.5, 0.75, -0.75, 0.75, -0.5, 0.5, -0.75, 0.5, 0.0, 0.0, 0.5, -1.0, 0.5, 0.25, 1.0, -0.25, 0.75, -0.5, 0.75, 0.0, 0.5, 0.75, 0.25, 0.5, -0.5, 1.0, -1.0, -1.0, 0.75, -0.75, 1.0, -0.25, -0.75, 0.25, -0.5, 0.75, 0.0, 0.5, -0.25, 0.75, -1.0, 0.0, -0.25, -0.75, -1.0, 0.75, 0.5, 0.75, 0.5, 0.25, 0.75, 0.5, -0.25, 1.0, -0.75, -0.5, -0.5, 0.0, 0.0, 0.0, 0.75, 0.0, 0.25, -0.5, 0.25, 0.75, 0.5, 1.0, -0.75, 0.75, -0.25, 0.75, 1.0, -0.5, 0.25, 0.25, -0.25, 0.25, 0.5, 0.25, 0.75, 1.0, -0.5, -0.5, 1.0, -0.5, 0.25, 0.5, 0.0, 0.0, 1.0, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.pushErrorScope("internal");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    command_encoder302.insertDebugMarker("mymarker");
    command_encoder300.popDebugGroup()
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    buffer300.destroy()
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
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
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const array9 = new Float32Array([0.25, -0.75, 1.0, -0.25, 0.0, -0.5, -0.75, 0.0, -0.25, -1.0, 0.75, 1.0, -0.5, 1.0, -0.25, -0.25, 0.75, -0.25, -0.5, 0.25, 0.25, -1.0, -0.25, -1.0, -1.0, -1.0, -0.5, 1.0, -1.0, -0.75, -0.75, 0.5, 0.0, -0.5, -0.75, -0.5, 0.5, 0.75, -1.0, 1.0, -1.0, -0.75, 0.5, 0.0, 0.75, 0.0, -0.25, 0.0, 0.0, 0.5, -0.25, 0.5, 0.5, 0.0, 0.0, -0.5, 0.75, 1.0, -1.0, -0.25, -1.0, 0.75, -1.0, 0.25, 0.75, -1.0, -0.75, 0.0, 0.5, -0.25, -0.5, 0.25, 0.5, 0.75, -1.0, -0.25, 0.0, 0.5, 0.25, -0.5, -0.5, 0.75, -1.0, -0.25, 0.25, -0.75, 1.0, 0.75, 0.75, -0.5, 0.5, -0.5, -0.5, -1.0, -0.75, 0.5, 0.5, -1.0, 1.0, 1.0, ]);
    command_encoder301.pushDebugGroup("mygroupmarker")
    const array10 = new Float32Array([-0.75, 0.75, -0.25, 0.0, 0.0, 0.75, 0.25, 0.75, 0.0, 0.25, -0.75, 0.5, -0.75, 0.5, -0.75, 0.0, -1.0, 0.75, 0.25, 1.0, 1.0, 0.0, 1.0, 0.75, 0.5, -0.25, 1.0, 0.75, -0.75, 0.0, -1.0, -1.0, 0.5, -1.0, -0.25, 1.0, 0.5, 0.25, -1.0, 0.5, -0.25, 0.0, -1.0, -0.75, -0.25, -1.0, 0.25, -0.5, -0.25, 0.25, -0.75, -0.75, 0.25, 0.75, 0.5, -0.75, 0.25, 0.0, -1.0, -0.75, -0.25, -1.0, -0.5, -0.25, 0.25, 0.75, -0.5, -0.5, 0.0, 0.0, 1.0, -0.25, 0.75, -1.0, -0.5, 0.75, 0.25, 1.0, 0.5, 0.0, -0.75, -1.0, -0.5, 0.5, -0.5, 0.75, -0.25, -0.25, -0.25, 0.25, -0.25, 1.0, 0.0, -1.0, -0.75, -0.25, -0.5, 0.0, 0.75, 0.0, ]);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder301.popDebugGroup()
    const command_buffer301 = command_encoder301.finish();
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query300.destroy()
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32uint",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query300.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8uint",
        dimension: "2d"
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    texture301.destroy();
    texture400.destroy();
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    query300.destroy()
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const array11 = new Float32Array([1.0, 0.5, -1.0, 0.0, -1.0, 0.0, 0.5, -0.25, -0.5, -0.5, 0.25, 1.0, 1.0, 1.0, -0.25, -1.0, 0.0, 0.5, -0.25, 1.0, -0.75, -0.25, 0.25, 0.25, 0.75, -0.5, 0.75, -0.75, -0.25, -1.0, -0.5, -0.75, 0.25, 1.0, -0.75, 0.25, 1.0, -0.75, 0.25, -1.0, 0.25, 1.0, 0.25, -0.25, -0.25, 0.5, 0.0, 1.0, -0.5, -0.25, 1.0, 0.0, -0.25, -0.75, 0.75, 0.75, -1.0, 0.0, 1.0, -1.0, -0.25, 0.5, -0.25, 0.75, 0.0, 0.75, -0.5, -1.0, -0.25, -1.0, 1.0, 0.25, 0.5, -0.75, 1.0, 0.75, -0.5, 0.5, -0.5, -0.5, 0.75, -0.75, -1.0, -1.0, 0.5, 0.75, 0.0, -0.75, -1.0, 0.5, 0.0, 0.25, -0.25, -1.0, -0.25, 0.0, -0.25, 0.0, 0.25, 0.5, ]);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query401.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query401.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    compute_pass_encoder3000.pushDebugGroup("group_marker")
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
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.destroy();
    compute_pass_encoder3000.insertDebugMarker("marker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder3000.popDebugGroup()
    device20.pushErrorScope("validation");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    
    
    
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    buffer200.destroy()
    
    
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    query300.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    device10.destroy();
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    
    
    render_bundle_encoder301.popDebugGroup();
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
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
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3020.insertDebugMarker("marker")
    const array12 = new Float32Array([-1.0, 0.25, 0.5, 1.0, 0.75, 1.0, -0.75, -1.0, -0.5, 0.0, -0.5, -0.75, -1.0, -1.0, 0.5, 1.0, -0.5, 0.25, -0.5, 1.0, -0.25, -0.75, 1.0, 0.25, -1.0, 0.0, 0.75, 0.25, 1.0, -1.0, 0.5, -0.5, -0.25, 0.5, 0.75, 0.0, -0.5, 0.25, -1.0, -0.25, 0.5, 0.0, 1.0, -1.0, 0.75, -0.25, 0.75, -0.75, 0.25, 0.5, 0.25, 0.5, 1.0, 0.5, 0.5, 0.5, -0.5, -0.25, 1.0, -0.25, -0.25, -1.0, -0.5, 0.0, 0.25, -1.0, -1.0, 0.25, 0.75, -0.75, -1.0, -0.25, 0.5, 1.0, -0.5, -0.25, 1.0, -0.75, -1.0, 0.5, 0.0, 0.25, 1.0, -0.5, 1.0, 0.25, 0.0, -0.75, 0.75, -0.5, 0.25, 0.25, -1.0, 0.5, -1.0, 0.0, 1.0, 0.75, 0.75, 0.5, ]);
    
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_buffer303 = command_encoder303.finish();
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const array13 = new Float32Array([1.0, 1.0, 1.0, 0.5, -0.25, -0.5, 0.25, 1.0, -0.75, 1.0, -1.0, 1.0, 0.75, -0.25, -1.0, -0.5, 0.5, -0.75, 0.0, -1.0, -0.75, 0.75, -0.5, 1.0, 0.25, 0.25, 0.5, 0.5, 0.75, 0.75, -0.25, 0.75, -0.25, -0.25, 0.25, -1.0, 0.0, -1.0, 0.75, -0.5, -0.75, -0.25, -0.25, 1.0, -0.25, -0.75, 0.0, 0.25, 0.5, 1.0, -0.25, 0.5, 1.0, 0.75, 0.0, -0.75, 1.0, -0.25, 0.0, -0.5, -0.75, 1.0, 0.75, 0.0, -1.0, 0.75, 0.0, -1.0, 0.5, -0.75, 0.25, 0.75, -1.0, -0.75, -0.5, 0.75, 1.0, -0.25, 0.0, 0.5, 0.5, 0.25, 0.25, -1.0, -0.5, 0.0, 1.0, 0.75, -0.5, -0.25, -1.0, 0.25, 0.75, -0.75, 0.25, 0.25, 0.25, -0.5, 1.0, 0.0, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    query302.destroy()
    compute_pass_encoder3000.popDebugGroup()
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.popDebugGroup();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    texture200.destroy();
    render_bundle_encoder301.setPipeline(render_pipeline300);
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    render_bundle_encoder300.setPipeline(render_pipeline300);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
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
    
    device20.queue.writeBuffer(buffer201, 0, array11, 0, array11.length);
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
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
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    device30.queue.submit([command_buffer303, ]);
    render_bundle_encoder302.insertDebugMarker("marker");
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    
    texture201.destroy();
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const command_buffer304 = command_encoder304.finish();
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    buffer304.destroy()
    
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const command_buffer305 = command_encoder305.finish();
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture202 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("validation");
    
    render_bundle_encoder302.setPipeline(render_pipeline300);
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    
    device20.queue.writeTexture({ texture: texture202 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pass_encoder3060 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder3000.popDebugGroup()
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    query302.destroy()
    buffer201.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    
    device20.queue.writeTexture({ texture: texture202 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.destroy();
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
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
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group302);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array14 = new Float32Array([-1.0, 0.0, 0.75, -1.0, -0.75, 0.75, -0.75, 0.5, 1.0, -1.0, -0.25, 0.75, 1.0, 0.0, -0.75, 0.25, 0.75, 0.25, 0.25, -0.25, 0.75, 1.0, -0.75, 0.5, 0.25, -0.75, 0.0, -0.25, 1.0, -1.0, -0.25, 0.75, -0.5, 0.75, 0.75, -0.25, -0.25, 0.75, 0.75, 0.75, 0.0, -1.0, 1.0, -0.25, -0.5, 0.25, 0.5, -0.5, -0.5, 0.5, -0.25, -0.5, -0.25, -0.25, -0.75, 0.5, 0.75, -0.25, -0.5, 0.25, -0.25, 0.25, 0.0, 0.0, 0.25, 0.75, -0.25, -1.0, -0.25, 0.75, -0.5, 0.75, -1.0, 1.0, 0.5, 0.0, 1.0, 1.0, -0.5, 0.25, 1.0, 0.5, 0.75, 0.25, 1.0, -0.5, -0.25, 0.0, -1.0, -0.75, 0.0, -1.0, -0.75, 0.75, -1.0, -0.5, -1.0, 0.25, 1.0, 1.0, ]);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    command_encoder601.pushDebugGroup("mygroupmarker")
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    
    device20.queue.writeTexture({ texture: texture202 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3020.setPipeline(compute_pipeline301);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device20.queue.writeTexture({ texture: texture202 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer307.destroy()
    compute_pass_encoder3020.insertDebugMarker("marker")
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device20.queue.writeTexture({ texture: texture202 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder3060.setPipeline(render_pipeline301);
    
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    command_encoder307.pushDebugGroup("mygroupmarker")
    device60.pushErrorScope("internal");
    
    buffer303.destroy()
    
    
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
    
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture202 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    
    command_encoder600.insertDebugMarker("mymarker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    render_bundle_encoder200.setPipeline(render_pipeline201);
    const render_pass_encoder3070 = command_encoder307.beginRenderPass({
        label: "render_pass_encoder3070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query302
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    render_pass_encoder3070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer308.destroy()
    device20.queue.writeTexture({ texture: texture202 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3070.setPipeline(render_pipeline300);
    command_encoder600.popDebugGroup()
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    command_encoder601.popDebugGroup()
    
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
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group303);
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    device20.destroy();
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    query302.destroy()
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
    render_pass_encoder3060.insertDebugMarker("marker");
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group304);
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    render_pass_encoder3060.setBindGroup(0, bind_group305);
    
    
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    texture300.destroy();
    
    
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device30.pushErrorScope("internal");
    render_pass_encoder3060.pushDebugGroup("group_marker");
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    render_bundle_encoder301.popDebugGroup();
    
    
    buffer3011.destroy()
    render_pass_encoder3060.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    buffer302.destroy()
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    render_pass_encoder3070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    render_pass_encoder3060.insertDebugMarker("marker");
    
    
    
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    
    buffer3012.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.setPipeline(render_pipeline600);
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    buffer601.destroy()
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout303,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    command_encoder602.insertDebugMarker("mymarker");
    render_bundle_encoder302.insertDebugMarker("marker");
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    command_encoder601.pushDebugGroup("mygroupmarker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer309.destroy()
    
    
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
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    
    const command_encoder308 = device30.createCommandEncoder({ label: "command_encoder308" });
    const render_pass_encoder3080 = command_encoder308.beginRenderPass({
        label: "render_pass_encoder3080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query301
    });
    query303.destroy()
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const array15 = new Float32Array([-0.75, -0.75, 0.25, -0.25, 0.5, 0.0, 1.0, -0.5, 0.0, 1.0, -0.5, -0.75, -0.5, -1.0, -0.5, -0.75, 0.0, 0.25, -0.25, 0.75, 0.75, 0.25, 1.0, 0.75, 0.75, -0.25, 0.25, 0.5, 0.0, 1.0, -0.5, 0.25, 1.0, 1.0, -0.25, 1.0, 0.25, 0.25, 0.25, 0.0, -1.0, -0.5, -1.0, -0.75, -1.0, -0.25, 1.0, -1.0, 1.0, 0.25, -0.5, -0.75, 0.25, 0.75, -0.5, 1.0, -1.0, 1.0, -0.75, 0.75, -0.5, 0.5, -0.25, 0.25, 0.5, 0.75, 0.25, 0.25, 1.0, -0.5, -0.75, -0.5, -0.75, 0.5, 0.5, -1.0, 0.25, 0.5, -1.0, 1.0, 0.0, 0.25, 0.75, -0.25, -0.25, 0.75, 0.25, -0.75, 0.25, 0.0, 0.25, -0.25, 0.0, -0.5, -0.75, -1.0, 0.75, -0.25, -0.75, 0.5, ]);
    render_pass_encoder3060.popDebugGroup();
    render_pass_encoder3070.pushDebugGroup("group_marker");
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder603.pushDebugGroup("mygroupmarker")
    query300.destroy()
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    render_pass_encoder3080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    
    render_pass_encoder3080.setPipeline(render_pipeline302);
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
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3080.setBindGroup(0, bind_group306);
    render_pass_encoder3070.popDebugGroup();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3020.dispatchWorkgroups(100);
    compute_pass_encoder3000.popDebugGroup()
    const command_buffer602 = command_encoder602.finish();
    compute_pass_encoder8000.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder3000.end();
    const command_buffer600 = command_encoder600.finish();
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder3020.end();
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3018,
                },
            },
        ],
    });

    render_pass_encoder3070.setBindGroup(0, bind_group307);
    device30.queue.submit([command_buffer304, ]);
    device30.queue.submit([command_buffer300, command_buffer305, ]);
    device60.queue.submit([command_buffer602, ]);
    const command_buffer302 = command_encoder302.finish();
    command_encoder603.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    const command_buffer603 = command_encoder603.finish();
    device60.queue.submit([command_buffer600, ]);
    device60.queue.submit([command_buffer603, ]);
}