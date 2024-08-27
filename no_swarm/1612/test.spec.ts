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
    const array0 = new Float32Array([-1.0, -0.75, 0.75, -0.75, 0.5, -1.0, 0.75, -0.5, -1.0, 0.25, 1.0, 0.75, 0.0, -0.25, 0.0, -1.0, -0.5, -0.25, 0.25, 0.75, -0.75, 0.5, 1.0, 1.0, -0.25, 0.0, 0.5, 0.5, 1.0, -1.0, -0.25, -0.5, -0.5, -0.5, 0.75, -0.5, -1.0, 0.5, 0.0, -0.5, 0.75, 0.25, 0.5, -0.5, -0.25, -1.0, 0.75, 0.25, 1.0, -0.75, 0.0, 1.0, -0.75, 0.75, 0.0, -0.5, 0.0, 0.25, 0.75, 0.75, 0.0, 0.25, -0.75, 0.25, 0.25, -0.75, 0.25, 1.0, 0.0, -0.5, -0.75, 0.5, -0.75, 1.0, 0.5, -0.75, 0.5, -1.0, 0.0, 0.25, 0.5, -0.75, 0.0, 1.0, -0.75, 0.5, 1.0, 0.5, 0.75, -0.25, -0.75, -0.75, 1.0, -1.0, -0.5, 0.25, -0.5, -1.0, 0.0, 1.0, ]);
    const array1 = new Float32Array([-0.5, 0.5, -0.25, 0.0, -0.75, 0.25, 0.25, 0.5, -0.25, 0.25, 0.0, 0.25, -1.0, 0.0, 0.75, 0.25, 0.5, 0.0, 0.0, -0.75, 1.0, -0.75, -0.75, 0.25, -0.75, 0.0, -0.25, -0.5, 1.0, -0.75, -0.5, -0.5, -1.0, 0.0, 0.25, -1.0, -0.75, 0.0, 0.0, -0.5, 0.25, 0.0, -0.25, 1.0, 0.5, 0.5, -1.0, 0.0, 0.75, 1.0, -0.5, -0.75, 0.5, 0.0, -1.0, 0.0, 1.0, 0.0, -0.5, -0.25, 0.5, -0.25, -0.75, 1.0, 0.0, -1.0, -1.0, 0.0, -0.75, -0.25, 0.25, 0.0, -1.0, 0.25, 0.25, -0.5, -0.75, 0.5, 0.75, -0.75, -0.25, -0.25, 1.0, 0.25, -1.0, 0.25, 0.0, 0.25, -1.0, 0.0, -0.5, 0.25, 0.5, 0.75, -0.75, 0.75, -1.0, 0.75, 0.25, -0.25, ]);
    const array2 = new Float32Array([1.0, -1.0, -0.25, -0.75, -1.0, -0.75, 1.0, 0.0, -0.75, -0.75, -0.25, -0.25, -0.75, 0.25, -0.25, -0.25, 0.75, -0.25, 1.0, -0.5, -0.75, 0.25, -1.0, 0.75, 0.5, -0.5, -0.75, 1.0, 0.5, 0.5, -0.75, 0.0, -0.5, 0.25, 0.75, 0.0, -0.25, -0.75, 0.5, 0.25, 0.5, -1.0, -0.25, -0.5, 0.75, -0.75, 1.0, -0.75, 0.25, -0.5, -0.5, -0.25, 0.75, -1.0, 0.5, 0.0, 0.75, -1.0, -0.5, 0.5, 1.0, 0.5, -0.5, 0.0, 0.5, -0.25, 0.5, 0.0, 1.0, 0.25, 0.0, -1.0, 1.0, -0.25, 0.75, 0.25, -0.5, -0.5, -0.25, 0.75, 0.75, -0.75, 0.25, 0.5, 0.25, -1.0, -0.5, -1.0, -1.0, 0.0, -0.25, 0.25, -1.0, 0.75, -0.75, 1.0, -1.0, 0.25, 0.5, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([-0.75, -0.5, -0.75, -0.5, 0.5, 1.0, 0.0, -0.75, 0.5, -0.75, -0.75, -1.0, 0.75, -0.75, -0.25, 0.0, 1.0, -0.25, 0.75, 1.0, -0.25, -1.0, 0.0, 0.25, 0.0, 1.0, 0.5, 0.75, -0.5, 0.25, -1.0, 0.75, 0.0, 0.0, 0.75, 0.75, 0.0, 0.75, -1.0, -0.5, 1.0, 0.75, -0.25, 1.0, 1.0, -0.25, 1.0, 1.0, 0.75, 0.0, -1.0, -0.5, 1.0, 0.0, 0.0, 0.75, 0.0, 0.5, 0.75, -0.25, 0.25, -0.25, -0.5, 0.75, 1.0, 1.0, 0.25, 0.75, 0.75, 1.0, 0.5, -0.5, -0.5, 1.0, -0.75, 1.0, -0.5, 1.0, 0.0, 0.25, 1.0, 0.5, 0.25, -0.5, 1.0, -0.25, -1.0, 0.0, 0.25, 0.75, -0.5, -0.5, 0.25, -1.0, -0.25, 0.0, -1.0, 1.0, -0.75, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array4 = new Float32Array([0.0, 0.75, 0.25, -0.5, -0.75, 1.0, 0.0, -1.0, 0.5, -0.75, 0.75, -0.5, -0.75, -0.75, -0.75, 0.25, -1.0, 0.75, -0.5, -0.25, 0.75, 0.75, -0.75, 0.75, -1.0, -0.75, 0.0, -0.5, 0.25, -0.25, 1.0, 0.25, 1.0, 0.25, 0.5, 0.75, 1.0, -0.75, -1.0, -0.5, -0.25, 0.5, -0.5, 0.25, -0.25, 0.5, -0.75, 1.0, 0.75, 0.25, 0.0, 0.25, 0.0, -0.5, -0.25, 0.0, -0.25, -0.75, 0.25, -1.0, 1.0, 0.25, -1.0, -1.0, 0.25, 0.25, 1.0, -1.0, -0.25, 0.5, -0.5, 0.5, -0.25, 0.25, 0.75, 0.75, -0.75, 0.0, -0.5, -1.0, -1.0, 0.25, 1.0, 0.25, 1.0, -0.75, 0.5, 0.75, -0.25, -0.5, -0.5, -0.25, -1.0, -0.75, -0.25, -0.25, -0.5, 0.25, 0.0, -0.25, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array5 = new Float32Array([-1.0, 1.0, 1.0, 0.0, 1.0, -1.0, -0.75, -0.5, -0.5, 1.0, -0.5, -0.75, 0.25, 0.25, 0.25, -0.25, -0.75, -1.0, 0.5, -0.25, 1.0, -0.25, 0.75, -0.25, 0.5, -0.25, -1.0, 0.25, -0.75, 0.75, 0.0, 0.25, -1.0, -0.5, 0.75, -1.0, 0.75, 0.5, -0.75, -0.75, 1.0, 0.0, -0.75, 0.75, 0.25, -0.25, -0.5, -0.5, -1.0, 0.75, 0.75, -1.0, 0.25, -0.75, 0.5, 0.75, 1.0, 1.0, 0.75, -0.5, -0.75, -1.0, -0.25, -1.0, 0.5, 0.75, -0.25, 0.0, 1.0, -0.5, -1.0, 1.0, 0.75, 0.75, 0.25, 0.25, -1.0, 0.75, 1.0, 0.0, -0.75, 0.5, 0.25, 0.75, 0.75, 0.0, -0.5, 1.0, 0.5, -0.5, 0.25, -1.0, 1.0, -1.0, -1.0, -0.25, 0.0, 0.5, 1.0, -0.25, ]);
    
    const array6 = new Float32Array([1.0, 0.25, -0.25, -0.75, -1.0, 0.5, 0.0, -0.5, 0.5, 0.5, 0.75, -0.5, 1.0, 1.0, 0.75, 0.75, -0.75, 0.5, 0.75, 0.0, -1.0, 1.0, -0.25, 0.0, -1.0, -0.5, 1.0, -1.0, -1.0, 0.0, 0.0, 0.5, -0.75, 1.0, 0.75, -0.25, 1.0, -1.0, 0.25, -0.75, 0.0, 0.5, -0.5, 0.25, -0.5, -0.5, 0.5, 0.75, 0.75, 0.0, -0.5, 1.0, 1.0, -0.25, 0.5, 1.0, 1.0, 0.75, -0.5, 1.0, 0.0, 0.75, -1.0, -0.25, -0.25, -0.25, -0.75, -1.0, 0.25, 0.5, 0.0, 0.5, -1.0, -0.25, 0.25, -0.75, -0.75, -1.0, -1.0, 1.0, -0.5, 0.5, -1.0, 0.25, -0.75, 0.5, 0.25, 0.5, -1.0, 0.25, 0.5, 0.5, -1.0, 0.25, 0.5, 0.0, -0.25, 0.75, -0.25, -0.5, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.pushErrorScope("internal");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const array7 = new Float32Array([1.0, -1.0, 0.75, -0.25, 0.25, 0.25, 0.75, -0.75, 1.0, 0.5, -0.5, -0.5, 0.5, -0.75, -1.0, 0.75, 1.0, 1.0, -0.75, -1.0, -0.5, -0.25, 0.5, 0.5, -1.0, -0.25, -0.75, -0.25, 0.5, 0.5, -1.0, -0.5, 0.25, -0.5, 0.75, -0.75, 0.5, 0.5, -0.25, -1.0, 0.5, -0.25, -1.0, 0.25, 0.75, 0.75, 0.25, 0.25, 0.25, -1.0, 0.25, -1.0, -0.5, -0.75, 0.0, 0.5, 0.25, 0.25, 0.25, 0.5, -0.25, -0.75, -1.0, 0.0, 0.75, 1.0, -0.25, -0.25, 0.5, -0.25, 0.25, -0.5, 0.25, 0.25, 0.0, 0.25, 0.75, 0.75, -0.5, 0.75, -0.25, 0.25, -0.5, 0.25, 0.75, 1.0, -0.75, 0.25, -0.25, 0.0, 0.0, -1.0, 1.0, 0.25, 0.25, -0.25, -0.75, 1.0, 0.5, 0.75, ]);
    device20.destroy();
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder300.popDebugGroup();
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    const array8 = new Float32Array([0.0, -1.0, 1.0, -0.5, 0.0, 0.75, 0.0, -0.75, -1.0, 0.25, -0.25, -0.25, -0.5, 0.75, 0.25, 0.0, 0.0, -0.25, 0.5, -0.75, -0.75, 0.0, 0.25, 0.25, -0.75, -0.25, -0.5, -0.5, 0.75, 0.5, 0.5, 0.0, 0.25, 0.75, 0.0, 1.0, -1.0, 0.0, 0.25, 0.75, 0.75, 0.75, 0.0, -0.5, 1.0, -0.25, -1.0, -0.25, -0.5, 0.25, 0.75, -0.5, 0.0, 0.75, -0.5, 0.75, 0.0, 0.25, 0.25, -0.75, -1.0, 0.5, 0.25, 0.25, 0.75, 0.5, 0.25, -0.5, -0.5, -1.0, -1.0, 0.25, 0.25, 0.75, -0.25, 0.5, 0.0, -0.75, -0.75, 1.0, 0.25, 0.25, 1.0, -0.75, 0.5, -1.0, 0.5, -0.25, 0.0, 0.25, 0.75, 0.75, 0.5, -1.0, -0.25, -0.5, -0.5, 0.25, 0.5, 0.5, ]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array9 = new Float32Array([-0.25, 0.25, -0.5, 0.0, -0.25, 0.75, -0.5, -1.0, -1.0, 0.75, 0.75, 0.25, 1.0, 0.25, -0.25, 0.25, -1.0, 0.5, -1.0, -0.5, 1.0, -0.25, -0.25, -1.0, 0.0, 0.5, 0.0, 0.0, 1.0, -1.0, -0.75, -0.75, -0.25, 0.25, -0.25, 1.0, 0.0, -0.25, 1.0, 0.5, 0.0, -0.5, 0.5, 0.75, 1.0, -1.0, -0.5, 0.25, 0.0, -0.75, 0.0, -0.75, 0.0, 0.75, -0.25, 0.5, 0.75, -1.0, 0.0, 0.0, 1.0, 0.5, 1.0, 0.25, -0.75, -0.5, 1.0, 0.5, -0.5, -0.5, -0.25, 1.0, 0.5, 0.75, 0.5, 0.5, -0.5, -0.5, 0.5, 0.5, -0.5, -0.75, -1.0, 1.0, 0.5, 1.0, -0.5, -0.5, -0.5, -0.5, 0.5, -1.0, -0.25, 0.75, 0.0, 0.25, -0.25, -1.0, 0.0, -0.25, ]);
    render_bundle_encoder301.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device40.destroy();
    
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
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device50.destroy();
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device50.destroy();
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    render_bundle_encoder301.popDebugGroup();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder301.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer100.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16float",
        dimension: "2d"
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    buffer300.destroy()
    device30.destroy();
    device10.destroy();
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    device50.pushErrorScope("internal");
    device60.destroy();
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const array10 = new Float32Array([0.75, 1.0, 0.5, 0.5, 0.0, 1.0, -0.25, 0.5, 1.0, 0.25, -0.5, 0.5, -0.75, -0.25, -0.5, -0.5, 0.5, -0.25, -1.0, 1.0, 0.0, -1.0, -0.25, 0.25, 0.5, -0.75, -0.5, 0.75, 0.5, 0.0, -0.25, 0.0, -0.5, -0.75, 0.5, -1.0, 0.5, -0.25, 0.25, -1.0, -1.0, 0.25, -1.0, 0.5, -0.25, 1.0, 1.0, -0.5, 0.0, -0.25, -1.0, -0.5, 0.5, -0.75, 0.75, -0.75, 0.25, 0.75, 1.0, 0.25, 0.75, 0.75, 0.75, 0.5, -1.0, -0.75, 0.0, 0.75, 1.0, -0.5, 0.25, -0.5, -0.25, 0.0, 0.0, 0.75, -1.0, -0.5, -0.25, 0.75, 0.25, 1.0, 0.75, -0.25, 0.75, -0.75, 0.25, -1.0, 0.5, 0.75, -0.75, 0.75, 0.75, -0.5, -1.0, -1.0, 0.75, -1.0, 1.0, -0.75, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
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
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const array11 = new Float32Array([-1.0, 1.0, -0.25, 0.25, 0.75, -0.5, 1.0, 1.0, 0.75, -0.75, 0.0, -1.0, 0.5, 1.0, 0.5, 0.5, 0.5, -0.25, -0.5, -1.0, -0.25, -0.25, -0.75, -0.5, -0.25, 1.0, 0.75, 0.75, 0.25, 0.5, 0.0, 0.0, -0.75, 0.5, -1.0, -0.25, 0.75, 0.5, -1.0, -0.75, 0.75, 1.0, 0.5, -1.0, -0.75, 0.5, 0.25, 0.25, 1.0, -0.5, 0.5, -1.0, -1.0, -0.75, -0.75, -0.25, -0.5, -0.5, 0.75, 1.0, 0.0, 1.0, 0.75, 0.5, 0.75, -0.5, 0.5, -1.0, 1.0, -0.5, 0.75, -0.75, 0.75, -1.0, 1.0, -1.0, 1.0, 0.0, 0.25, -0.5, -0.25, 0.25, -0.25, 1.0, 0.5, 0.75, -0.75, -1.0, -0.25, 0.25, 0.75, -1.0, -0.5, 0.0, -0.25, 0.25, 0.75, 0.0, -1.0, 0.5, ]);
    
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
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
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    
    query800.destroy()
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    query400.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    device80.destroy();
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const array12 = new Float32Array([-0.5, 0.0, -0.75, -0.75, 0.75, 0.75, 1.0, 0.75, 0.5, -1.0, 0.0, 0.0, -1.0, 0.75, -0.25, -0.5, -0.75, 0.75, -0.75, -0.5, -0.25, 0.75, 0.5, 0.25, 0.75, -0.75, 0.0, 0.75, 1.0, 0.5, 0.75, 0.0, 0.0, -0.25, 1.0, -1.0, -0.5, 0.5, 1.0, 0.5, -0.5, -1.0, 0.5, -1.0, -1.0, -0.75, 0.5, -0.5, -0.5, 0.0, 0.25, 0.0, -0.5, -1.0, -1.0, 0.0, -0.75, 0.25, -0.25, 0.25, -1.0, -0.75, 0.75, -1.0, 0.25, 1.0, 0.5, 1.0, -0.25, 1.0, 0.0, -0.75, -0.25, -0.75, 1.0, -1.0, -1.0, -0.25, 0.5, 0.25, 0.25, 0.5, -0.25, 0.75, 0.0, 0.5, -0.5, 0.75, 0.75, 1.0, -0.75, -0.25, -0.75, -1.0, 0.5, -0.25, -0.25, 1.0, 0.0, 0.0, ]);
    
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
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
    device70.queue.writeBuffer(buffer700, 0, array11, 0, array11.length);
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    device70.destroy();
    
    
    
    
    const array13 = new Float32Array([-0.75, -1.0, 0.5, -0.75, 0.75, -0.75, -1.0, 0.0, -0.5, -0.75, 0.0, -0.75, 0.5, 0.75, 1.0, -1.0, 0.75, 0.0, 0.5, 0.0, -0.25, 0.0, 1.0, -1.0, 1.0, -1.0, 0.5, -0.75, -1.0, -0.25, 0.5, -1.0, -0.75, 1.0, 0.25, -0.25, 0.75, 0.25, 0.0, 0.0, -1.0, 0.5, 1.0, 0.75, -1.0, -0.5, 1.0, -0.25, 1.0, -1.0, -0.25, -1.0, 0.25, -0.75, 0.25, 0.0, 0.25, 0.25, 0.75, -0.5, -0.25, -0.75, -0.25, 0.0, 0.75, 0.5, -1.0, -1.0, 0.75, 0.25, 0.25, 1.0, 0.75, -0.75, 0.0, -1.0, 0.75, 0.75, -0.75, 0.25, -0.5, -0.5, 0.0, 0.5, -1.0, 1.0, 0.5, 0.0, 0.0, -0.5, 0.0, -0.5, 0.25, 1.0, -0.25, -0.5, -0.5, 0.0, -1.0, 0.5, ]);
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_buffer400 = command_encoder400.finish();
    device00.queue.writeBuffer(buffer000, 0, array9, 0, array9.length);
    
    
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device50.pushErrorScope("out-of-memory");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    command_encoder900.insertDebugMarker("mymarker");
    
    const command_buffer700 = command_encoder700.finish();
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
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
    
    buffer200.destroy()
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    device90.destroy();
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16float",
        dimension: "2d"
    });
    
    
    const array14 = new Float32Array([1.0, 0.75, 0.75, -1.0, 1.0, 1.0, -1.0, -0.75, 0.5, 0.5, -0.75, -1.0, -0.25, 0.0, -0.75, 0.75, 0.5, 0.5, 0.75, 0.0, 0.25, 0.5, 0.5, -0.75, 1.0, 1.0, -1.0, -0.25, -0.25, -0.25, -0.75, 0.5, -1.0, -0.5, 0.25, -0.5, -0.75, 0.75, -0.75, 0.5, -0.5, -1.0, 1.0, 0.75, -0.75, 0.25, -1.0, 0.0, -0.25, -1.0, -0.75, -1.0, -0.5, -1.0, -0.5, 0.75, -1.0, 0.0, 0.25, -0.25, 0.75, 1.0, -0.5, -0.75, -0.75, -1.0, 0.25, -0.75, -0.75, -0.5, -0.75, -1.0, 1.0, 0.0, 1.0, -0.75, 1.0, -0.75, -1.0, 0.75, -0.25, 0.5, -0.5, 1.0, -0.75, -1.0, 0.0, -0.75, 1.0, 1.0, -1.0, 1.0, 0.25, 0.75, 1.0, 1.0, 0.5, 0.75, -1.0, -1.0, ]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const array15 = new Float32Array([0.75, 0.25, 0.25, 0.25, 0.5, 1.0, 0.0, 1.0, 0.25, 1.0, -1.0, 0.5, -1.0, -0.5, -0.25, 0.25, 0.25, -1.0, 0.0, 0.0, 0.75, -1.0, -1.0, -0.25, -0.25, 0.0, 1.0, -1.0, -1.0, 1.0, -1.0, 1.0, -0.5, -0.75, 0.75, 0.0, 1.0, -0.25, 0.0, 0.25, -1.0, 0.0, -0.75, 0.0, 0.75, 0.5, 0.0, -0.75, 1.0, -1.0, 1.0, 0.5, 1.0, -0.5, -0.5, -0.5, -0.75, -0.25, -1.0, -0.25, 1.0, 0.75, 0.25, 1.0, 0.0, -1.0, -0.5, -0.5, 0.5, -1.0, 1.0, 0.25, 0.0, 0.25, 1.0, 0.25, -0.75, 0.75, 0.75, -1.0, 0.0, -0.75, 1.0, 0.25, -0.25, 0.75, 0.75, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, -1.0, -0.75, -0.75, -1.0, -0.5, 0.25, 1.0, ]);
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    texture201.destroy();
    
    
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const array16 = new Float32Array([1.0, 0.5, 0.75, 0.25, -0.75, -0.5, 0.75, 0.75, -0.75, -1.0, -0.5, -0.75, 0.0, -0.5, 0.5, 0.25, 0.5, -0.5, 1.0, -0.75, 0.25, -0.5, -0.75, -1.0, 1.0, 0.0, 0.75, 1.0, -0.5, 1.0, 0.75, 0.75, -0.5, -1.0, 0.0, -0.5, 0.25, 1.0, 0.5, -0.25, 0.75, 0.5, 0.5, 0.25, -0.75, 1.0, 0.75, 0.25, -0.25, -1.0, -0.75, -0.5, 1.0, -0.5, 0.5, -1.0, 0.5, -0.5, -1.0, 0.0, -0.5, -1.0, 0.0, 0.75, 0.25, -0.25, -0.5, -1.0, -0.75, -1.0, 0.0, -0.75, 0.25, -1.0, -0.5, 0.75, 0.75, 0.0, 0.5, -0.75, -0.25, -1.0, 0.25, 0.25, 1.0, 0.25, 0.25, -0.75, -1.0, 0.25, 0.5, -0.5, 0.5, 0.25, 1.0, 0.0, -1.0, -1.0, 0.25, 0.75, ]);
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
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
    
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    device100.destroy();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    device00.queue.writeBuffer(buffer000, 0, array11, 0, array11.length);
    
    device70.queue.writeBuffer(buffer701, 0, array10, 0, array10.length);
    
    const array17 = new Float32Array([-1.0, 0.5, -0.5, 1.0, 1.0, -0.75, 0.25, -0.25, 1.0, -0.5, 0.0, 1.0, 1.0, -1.0, 0.75, 0.75, -1.0, -0.5, 0.0, 0.0, -1.0, 0.0, -0.25, -0.75, -1.0, -0.75, -1.0, 0.5, 0.25, 0.5, 0.25, -0.5, -0.75, -0.25, -0.5, -1.0, -0.25, 0.25, 1.0, 1.0, -0.5, 0.5, 0.5, -0.5, -1.0, -1.0, 0.25, 1.0, 0.0, -1.0, -1.0, 1.0, 0.75, -0.75, 0.5, -0.75, 0.25, -0.5, -0.5, 0.25, -0.25, 0.0, -1.0, -0.25, 0.0, 1.0, 0.75, 1.0, -0.5, -0.25, 0.25, -0.25, -0.5, -0.75, 0.75, -0.25, 1.0, 0.5, 1.0, 0.75, -1.0, -0.25, 1.0, -1.0, 0.75, 0.75, 0.0, 0.25, -1.0, -0.25, -0.25, -0.5, 0.75, 0.75, -0.25, 1.0, -0.75, -0.25, 0.75, 0.25, ]);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array18 = new Float32Array([0.75, -1.0, -0.5, 0.0, 0.5, -0.75, 1.0, -0.75, -0.5, 0.25, 0.5, -0.75, -0.5, 0.75, 0.25, 0.0, -0.75, -0.25, 0.0, 1.0, 0.25, 0.0, 0.25, -0.5, -0.25, 0.75, 0.75, 1.0, -0.75, 1.0, 0.5, 0.0, -1.0, 0.75, 0.75, -0.25, -0.25, 1.0, -0.75, -0.25, -1.0, 0.75, 0.75, 0.5, -0.75, 0.25, 1.0, 0.0, 0.75, 1.0, -0.25, -0.5, -0.5, -0.75, 1.0, -0.75, 0.75, 0.5, 0.0, 0.25, 0.75, 0.25, 0.75, -1.0, -0.25, -0.75, 0.5, 0.25, 0.25, -1.0, 0.5, 0.5, 0.75, 0.25, 0.25, 0.75, -0.75, -0.75, -1.0, -0.25, 1.0, -0.75, -0.75, 0.0, 0.25, -0.25, 0.0, -0.5, -0.5, -0.25, -0.75, 0.5, 0.25, 1.0, -1.0, 0.5, 0.75, -1.0, 0.25, 0.0, ]);
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device70.queue.writeBuffer(buffer700, 0, array9, 0, array9.length);
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    
    
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    render_bundle_encoder601.insertDebugMarker("marker");
    
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    device70.queue.writeBuffer(buffer700, 0, array16, 0, array16.length);
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    
    
    
    
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
        dimension: "2d"
    });
    const command_buffer1100 = command_encoder1100.finish();
    
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    texture1100.destroy();
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.queue.submit([]);
    
    render_bundle_encoder601.insertDebugMarker("marker");
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const command_encoder1101 = device110.createCommandEncoder({ label: "command_encoder1101" });
    
    
    command_encoder1101.insertDebugMarker("mymarker");
    device110.queue.writeBuffer(buffer1100, 0, array18, 0, array18.length);
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    device50.destroy();
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device110.pushErrorScope("validation");
    buffer1100.destroy()
    
    
    buffer701.destroy()
    
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    const array19 = new Float32Array([0.0, 0.0, 0.75, -0.75, -0.5, -1.0, 0.0, -0.25, 0.25, 0.75, -0.5, 0.25, 0.0, -1.0, 1.0, -0.25, 0.0, -1.0, 1.0, -1.0, -1.0, -0.25, 1.0, 0.5, -0.75, 1.0, 0.25, 1.0, 0.25, 0.25, -0.75, 0.75, -0.5, -1.0, 0.5, -0.75, -0.75, -0.25, 1.0, 0.25, -1.0, -1.0, 0.25, -0.75, -0.25, 0.75, 0.5, 0.25, -0.75, -0.25, 0.25, -0.75, -0.5, 0.0, 0.0, 0.75, -1.0, 0.75, -0.25, 0.75, -1.0, 0.5, 0.5, 0.25, 0.5, 0.25, -1.0, 0.25, -0.75, -0.75, -0.75, 0.5, 0.0, 0.25, -0.25, 0.75, 0.25, 1.0, 0.0, -0.25, 1.0, 0.5, -0.75, -0.25, -0.25, -0.5, 0.25, 0.75, -1.0, 1.0, -0.25, -0.5, -0.25, -0.75, 0.5, -0.5, 1.0, -1.0, 1.0, -0.75, ]);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
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
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    
    
    const compute_pass_encoder11010 = command_encoder1101.beginComputePass({ label: "compute_pass_encoder11010" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device120.queue.writeBuffer(buffer1200, 0, array10, 0, array10.length);
    
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    device110.pushErrorScope("internal");
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    
    const command_encoder1201 = device120.createCommandEncoder({ label: "command_encoder1201" });
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    
    
    buffer1201.destroy()
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    command_encoder1201.insertDebugMarker("mymarker");
    query1200.destroy()
    query1200.destroy()
    const compute_pass_encoder12000 = command_encoder1200.beginComputePass({ label: "compute_pass_encoder12000" });
    
    
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
    
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder12000.insertDebugMarker("marker")
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    command_encoder1101.insertDebugMarker("mymarker");
    device70.queue.writeBuffer(buffer700, 0, array9, 0, array9.length);
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    device120.queue.submit([]);
    
    render_bundle_encoder1100.pushDebugGroup("group_marker");
    render_bundle_encoder1100.popDebugGroup();
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    
    
    const sampler1202 = device120.createSampler( { label: "sampler1202" } );
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    
    compute_pass_encoder12000.pushDebugGroup("group_marker")
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
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder902 = device90.createCommandEncoder({ label: "command_encoder902" });
    device120.queue.writeBuffer(buffer1201, 0, array15, 0, array15.length);
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    
    device120.queue.writeBuffer(buffer1200, 0, array17, 0, array17.length);
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder1202 = device120.createCommandEncoder({ label: "command_encoder1202" });
    device120.queue.writeBuffer(buffer1201, 0, array19, 0, array19.length);
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    query1200.destroy()
    const buffer1202 = device120.createBuffer({
        label: "buffer1202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_buffer1202 = command_encoder1202.finish();
    command_encoder100.insertDebugMarker("mymarker");
    
    device70.queue.writeTexture({ texture: texture700 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder1201.insertDebugMarker("mymarker");
    
    
    
    device120.queue.writeBuffer(buffer1201, 0, array0, 0, array0.length);
    device120.queue.writeBuffer(buffer1200, 0, array11, 0, array11.length);
    
    const buffer1203 = device120.createBuffer({
        label: "buffer1203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const compute_pass_encoder12010 = command_encoder1201.beginComputePass({ label: "compute_pass_encoder12010" });
    device110.queue.writeBuffer(buffer1100, 0, array8, 0, array8.length);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    render_bundle_encoder1101.pushDebugGroup("group_marker");
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    const compute_pass_encoder12001 = command_encoder1200.beginComputePass({ label: "compute_pass_encoder12001" });
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1200]
    });
    
    query1201.destroy()
    
    const sampler1203 = device120.createSampler( { label: "sampler1203" } );
    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
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
    
    
    var shader_module1103_code = "";
    try {
        shader_module1103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1103 = await device110.createShaderModule({ label: "shader_module1103", code: shader_module1103_code })
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1104_code = "";
    try {
        shader_module1104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1104 = await device110.createShaderModule({ label: "shader_module1104", code: shader_module1104_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const command_encoder1203 = device120.createCommandEncoder({ label: "command_encoder1203" });
    
    render_bundle_encoder1200.pushDebugGroup("group_marker");
    device80.queue.writeTexture({ texture: texture800 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline1100 = device110.createRenderPipeline({
        label: "render_pipeline1100",
        vertex: {
            module: shader_module1104,
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
            module: shader_module1104,
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
    
    command_encoder1203.resolveQuerySet(
        query1200,
        0,
        32,
        buffer1202,
        0
    )
    const buffer1204 = device120.createBuffer({
        label: "buffer1204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device80.queue.writeTexture({ texture: texture800 }, array18, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder12000.popDebugGroup()
    buffer1200.destroy()
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array20 = new Float32Array([0.25, -0.75, 0.75, 0.25, 0.5, 0.75, 0.0, 0.5, 0.0, 1.0, 0.25, -1.0, -0.75, -0.25, 1.0, -0.25, -0.25, -0.75, 1.0, 1.0, -0.25, 0.25, 0.25, -0.5, -0.75, -0.75, -0.75, -0.5, 0.5, -1.0, 0.75, -0.75, 1.0, -0.5, 0.5, 0.5, 1.0, 0.25, -0.25, 0.75, 0.25, 0.75, 0.75, -0.5, -1.0, 0.25, 0.75, 0.25, 1.0, 1.0, 1.0, 0.25, 1.0, -0.25, -1.0, -0.25, 0.25, 0.75, 0.0, -0.25, 0.5, 0.5, 0.25, 1.0, 0.5, -0.5, 0.5, 0.5, -1.0, -0.25, -0.75, 0.25, -0.5, -0.5, 0.0, 0.25, -0.25, 0.75, 0.75, 1.0, 0.0, 0.5, 0.25, -0.5, 0.75, -0.5, 0.75, -0.25, 0.0, -0.75, 0.75, 1.0, 1.0, 0.0, -0.75, -1.0, -1.0, -0.5, 0.0, 1.0, ]);
    
    
    const query1202 = device120.createQuerySet({
        label: "query1202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const query1203 = device120.createQuerySet({
        label: "query1203",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder1100.pushDebugGroup("group_marker");
    const command_encoder1204 = device120.createCommandEncoder({ label: "command_encoder1204" });
    
    device80.queue.writeTexture({ texture: texture800 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1105_code = "";
    try {
        shader_module1105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1105 = await device110.createShaderModule({ label: "shader_module1105", code: shader_module1105_code })
    
    
    texture1200.destroy();
    render_bundle_encoder1200.popDebugGroup();
    device120.queue.writeBuffer(buffer1202, 0, array7, 0, array7.length);
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    const buffer1205 = device120.createBuffer({
        label: "buffer1205",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const render_pipeline1101 = device110.createRenderPipeline({
        label: "render_pipeline1101",
        vertex: {
            module: shader_module1103,
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
            module: shader_module1103,
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
    device90.queue.writeBuffer(buffer900, 0, array19, 0, array19.length);
    
    
    compute_pass_encoder11010.pushDebugGroup("group_marker")
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const command_encoder1205 = device120.createCommandEncoder({ label: "command_encoder1205" });
    device120.queue.writeBuffer(buffer1205, 0, array1, 0, array1.length);
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    command_encoder1203.resolveQuerySet(
        query1201,
        0,
        32,
        buffer1202,
        0
    )
    const array21 = new Float32Array([1.0, 0.0, -0.5, -0.25, -1.0, -0.75, 0.25, 0.75, -0.75, -1.0, -0.75, -0.5, 0.5, -0.5, -0.5, 0.25, -0.75, -0.5, 0.25, 1.0, 1.0, 1.0, 0.0, 0.75, 1.0, -0.75, 0.25, 0.5, 0.5, -0.25, -0.25, -0.5, -0.5, 0.5, -1.0, -0.5, 0.75, 0.25, 0.5, -0.25, -0.5, -1.0, 0.0, 0.25, 0.75, 1.0, -0.5, -1.0, 0.5, 0.0, 1.0, 0.25, -0.75, -0.25, -0.5, 1.0, 1.0, -0.75, -0.25, -0.5, -1.0, 1.0, -0.75, 0.75, 0.75, 0.0, -1.0, -0.5, 0.75, 1.0, -0.5, 0.5, -0.25, 0.5, -0.5, 0.5, -0.75, 0.0, -1.0, 0.75, -1.0, 0.0, 1.0, 0.75, -0.5, -0.5, -0.75, -0.5, -1.0, -0.75, 0.0, -0.5, 0.5, 1.0, -1.0, 0.5, 0.5, -0.75, 0.0, 0.75, ]);
    compute_pass_encoder11010.popDebugGroup()
    const command_buffer1204 = command_encoder1204.finish();
    const command_buffer1203 = command_encoder1203.finish();
    const command_buffer1200 = command_encoder1200.finish();
    device120.queue.submit([command_buffer1202, command_buffer1203, command_buffer1204, ]);
    const command_buffer1205 = command_encoder1205.finish();
    device110.queue.submit([command_buffer1100, ]);
    const command_buffer001 = command_encoder001.finish();
    compute_pass_encoder11010.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    device110.queue.submit([]);
    device110.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
    device120.queue.submit([command_buffer1203, command_buffer1205, ]);
    const command_buffer000 = command_encoder000.finish();
    device120.queue.submit([command_buffer1202, ]);
    device120.queue.submit([command_buffer1200, ]);
    const command_buffer1000 = command_encoder1000.finish();
    device120.queue.submit([command_buffer1203, ]);
    device130.queue.submit([]);
    device120.queue.submit([command_buffer1205, ]);
}