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
    
    
    
    const array0 = new Float32Array([0.25, 1.0, 0.5, -0.75, 0.0, -0.25, -0.75, -0.75, 0.5, 0.25, 0.5, 0.25, 0.25, -0.5, -0.75, 1.0, 1.0, 0.5, 0.5, 0.0, 0.25, 0.75, -0.75, -0.5, -0.5, 0.25, 0.25, 0.0, 0.75, 0.25, -0.25, 0.75, -1.0, -0.75, 0.25, -1.0, -0.75, -0.25, 0.0, 0.75, 0.0, -0.25, -0.75, 0.0, 0.75, 0.5, -1.0, 1.0, 0.75, -1.0, -1.0, 0.25, -0.5, -0.5, 0.75, 0.0, 0.5, 0.0, 0.75, 1.0, -0.5, 0.5, 1.0, 0.75, 0.25, -0.5, -0.5, 1.0, 0.0, -0.75, -0.5, 0.75, -0.5, 0.75, 0.5, -0.5, 0.5, 1.0, 0.5, 0.25, 0.75, 0.25, 1.0, 0.75, 1.0, 0.5, 0.75, 0.25, -0.75, 0.75, -0.5, 0.75, 0.75, 0.25, 1.0, -0.5, 1.0, -0.75, 0.25, 0.25, ]);
    const array1 = new Float32Array([0.5, 0.0, -0.75, 0.25, 0.5, 0.25, -0.5, -0.75, -0.75, -1.0, 0.0, 0.25, 0.0, 0.5, -0.5, -0.25, 0.5, -0.25, 1.0, 0.0, -0.25, -0.25, 0.0, 0.0, -0.25, 0.5, 0.75, -1.0, 0.0, 0.25, 0.25, 0.75, 0.0, 0.75, 0.0, 0.75, 0.25, 1.0, 0.5, -0.75, 0.25, 0.5, -0.25, -0.25, 0.25, -0.5, -0.75, -0.75, 0.5, 0.75, -0.25, 0.0, -0.25, -1.0, -0.75, 0.5, -1.0, 1.0, 1.0, 0.0, 0.5, -0.25, -0.75, 0.0, 0.0, 0.0, -1.0, 0.5, 0.5, -1.0, 0.0, -1.0, -1.0, 1.0, 0.5, 1.0, 0.0, 1.0, -0.5, 0.5, -0.75, -0.5, 0.0, -0.5, 0.75, -0.25, -0.25, 0.25, 0.0, 1.0, -0.5, -0.75, -0.75, -0.25, 0.0, 0.5, -0.25, -0.25, -0.75, 0.75, ]);
    const array2 = new Float32Array([-0.25, -0.25, 0.75, 0.25, -0.5, -1.0, 0.25, 0.0, 0.75, -0.75, 0.25, 0.25, 0.5, -0.75, -1.0, 0.5, -1.0, 0.5, 0.0, 0.75, 1.0, 0.0, -0.25, 1.0, 0.25, -0.5, -0.5, -1.0, -1.0, 0.75, -1.0, -0.5, -0.75, 0.25, -0.75, -1.0, -0.5, 0.0, -0.25, -0.25, 0.25, 0.75, 1.0, 0.5, 0.75, 0.0, 0.25, 0.25, 1.0, 1.0, 0.75, 1.0, -1.0, -0.5, -0.75, 1.0, -0.25, -0.25, 0.0, -1.0, 0.0, -0.5, 0.25, -0.25, -0.5, -1.0, 0.25, -0.75, -0.5, -1.0, 0.5, 0.0, -0.75, -1.0, 0.5, 0.5, -1.0, -1.0, 0.25, -0.75, 0.5, -0.75, 0.25, -1.0, -1.0, 0.25, -0.5, -1.0, 0.0, -1.0, 0.5, -0.5, -0.25, 0.25, 0.0, 0.75, -0.5, -0.25, -0.75, -0.5, ]);
    const array3 = new Float32Array([-0.25, -1.0, -1.0, -0.25, 0.75, 0.75, 0.25, 0.0, -0.75, -0.25, -1.0, -0.5, 0.25, 0.25, 0.0, 0.5, 1.0, -1.0, -0.75, -0.25, -0.25, 0.75, 0.25, -0.5, -0.25, 0.25, -0.75, -0.25, -1.0, -0.75, -1.0, -0.75, -0.75, -0.5, -0.75, 0.25, 0.25, -0.5, 0.5, -0.25, -1.0, 0.5, 1.0, 0.25, 0.75, -0.5, -1.0, 0.0, 0.5, 0.75, 0.0, -0.5, 0.0, -0.25, 0.25, -1.0, 0.75, 0.25, -1.0, 0.75, 1.0, 0.0, 0.75, 1.0, 0.0, 0.75, -0.25, 0.5, -0.75, 0.5, -0.5, 1.0, -0.25, 0.0, 0.0, -0.75, -0.75, 1.0, 0.75, 0.0, 1.0, -0.5, -0.5, 0.5, 0.75, 0.5, -0.75, -0.25, 0.0, 0.5, 0.25, -0.75, -0.25, -1.0, -0.75, -1.0, -0.25, 0.5, -1.0, 1.0, ]);
    const array4 = new Float32Array([0.5, 0.5, 0.0, 0.0, 1.0, 0.5, 0.75, 0.0, -0.75, 0.75, -0.75, 0.25, 0.0, -0.5, -0.25, 1.0, -0.25, 0.25, 0.75, 0.25, 0.5, -0.75, 0.5, 0.0, -1.0, 0.0, -0.5, 0.5, 0.75, 0.25, 1.0, 0.25, -0.25, -1.0, 1.0, 0.75, -0.75, -0.5, -0.25, 1.0, -0.25, 0.75, 0.25, 0.25, 0.5, -0.5, -1.0, 0.75, -0.5, -0.5, 0.5, 0.0, -0.75, 0.0, 0.5, -1.0, -0.5, 0.5, -1.0, 0.0, 0.5, -0.75, 1.0, -0.25, -0.25, 1.0, 0.5, -0.75, 1.0, 0.25, -1.0, -0.5, 0.0, 0.0, -0.5, 0.75, 1.0, -0.75, -1.0, 0.5, -0.25, -0.75, -0.75, 1.0, 0.0, 0.5, -0.5, 0.5, 0.25, 0.0, 0.5, -0.5, 0.25, 0.25, -0.5, 1.0, 0.5, -0.25, 1.0, -0.75, ]);
    
    const array5 = new Float32Array([0.5, -0.75, 0.0, -0.5, -0.25, -0.75, 0.75, 0.75, -0.75, 0.0, 0.5, 0.25, 0.25, 1.0, 0.75, 0.75, -0.5, -0.25, -1.0, 0.25, -0.75, -0.5, 0.25, 0.0, 0.5, -0.25, 0.5, 0.5, -1.0, -0.75, -1.0, 0.75, 0.0, 0.25, -0.75, -0.75, -0.75, -0.75, 0.75, -0.25, -1.0, 0.25, -0.25, -0.5, -0.5, 0.75, 0.75, -1.0, 0.5, 0.75, 1.0, -0.5, 0.75, -0.25, 1.0, 0.5, 0.25, 0.25, 0.25, -1.0, 0.25, -0.75, 0.0, 0.0, -0.5, 0.75, 0.75, 1.0, -0.75, 0.0, 0.5, 0.25, 0.75, 0.25, 0.0, 0.75, -0.5, -0.75, -0.25, -0.5, -0.5, 0.75, -0.25, -1.0, -0.25, 0.25, 0.0, 0.0, 0.5, -0.75, 0.75, 0.25, -0.25, -0.5, -0.25, 0.0, 0.5, 1.0, 0.25, -0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array6 = new Float32Array([0.5, 0.5, 0.0, -0.5, 0.5, 0.0, -0.75, 1.0, 1.0, 0.0, 0.25, 0.25, -1.0, 0.5, -1.0, -1.0, 0.25, -0.25, 0.5, -0.5, 0.0, -0.5, -0.75, -0.25, 0.5, -0.5, 0.25, 0.75, -0.25, -0.75, 0.0, -0.25, 1.0, 1.0, -0.5, 0.0, 0.25, 0.5, 0.75, -0.25, 0.25, 0.25, 0.0, -0.25, -0.25, -0.5, -0.75, 0.75, -0.75, 0.0, 1.0, 0.0, 1.0, 0.5, 1.0, 0.5, 0.25, -0.5, 0.75, -0.75, -0.5, 1.0, 1.0, 0.25, 0.25, 0.75, -0.5, 0.75, 0.0, -0.25, -0.25, -0.5, -0.25, -0.5, 0.0, 0.5, 0.25, -0.75, 0.75, 0.75, -0.25, 0.25, -0.5, -0.5, 1.0, -1.0, -0.75, -0.25, -0.25, 0.5, 1.0, -0.5, -0.5, 0.75, -0.75, -0.75, 0.0, -0.5, -1.0, 0.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("out-of-memory");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const array7 = new Float32Array([-1.0, -0.25, 1.0, -0.25, 0.75, -0.75, -1.0, -0.5, -0.25, -1.0, 0.0, -0.5, -1.0, 0.0, 0.25, -0.5, 0.0, 0.5, -0.75, 0.5, -0.5, 0.5, 0.5, 0.5, 0.75, 0.5, 0.25, 0.75, 0.75, -1.0, -0.25, 1.0, 1.0, -1.0, -0.5, 0.25, -0.25, 0.0, 0.25, 0.75, 0.75, 0.25, 0.75, 0.5, 0.75, -0.25, -0.25, 0.0, 0.0, 0.25, -0.5, 0.5, 0.25, 0.0, 0.5, -0.25, 0.75, -0.25, 1.0, 1.0, -0.75, -0.75, 0.0, -0.75, 1.0, 0.75, 1.0, 0.25, 0.0, -0.25, 0.0, 0.25, 0.75, -0.25, -1.0, -0.5, -1.0, -1.0, -0.25, -0.25, -0.25, -0.25, 1.0, -1.0, 1.0, -0.75, -0.25, -0.25, 1.0, 0.25, 0.5, -0.5, -0.25, 1.0, 1.0, -0.5, -0.75, 1.0, 1.0, -0.75, ]);
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    
    const array8 = new Float32Array([-0.75, -0.5, 0.75, 0.25, -0.75, -0.25, 1.0, -0.5, -0.25, -0.75, 0.0, -0.5, 0.0, 0.25, -0.5, 1.0, -0.25, -0.75, 0.25, 0.75, -1.0, -0.25, -0.5, 0.25, -0.5, 0.75, -0.5, -1.0, -0.25, 0.0, -1.0, -0.5, 1.0, 0.75, -0.75, -1.0, -1.0, -0.25, -0.5, -0.75, -0.5, -0.25, -0.75, -0.25, -1.0, 0.0, -0.5, -0.75, -0.75, -1.0, -0.75, -0.75, 0.5, 0.75, 0.25, 0.5, -0.25, 0.75, 0.0, 1.0, -0.75, -0.5, 0.75, 0.5, -0.5, -0.75, -0.5, 0.5, 0.25, -0.5, 0.25, 0.75, 0.75, -0.25, 0.25, -0.75, 1.0, 0.5, 0.5, -0.75, 0.0, 0.25, 0.5, 0.0, 0.5, -0.5, 0.75, 1.0, 0.25, -0.75, 1.0, 0.75, -0.25, 1.0, -1.0, -0.25, 0.0, 0.75, 0.25, -1.0, ]);
    
    buffer100.destroy()
    
    device10.destroy();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array9 = new Float32Array([-0.5, -0.5, 0.75, 0.25, -0.75, 0.25, -0.25, -0.25, 0.25, 0.25, -0.75, -0.75, 1.0, 1.0, -0.25, 1.0, 0.25, 0.0, 0.0, 0.25, 0.75, -0.5, 0.25, 0.0, 0.25, -0.75, 0.25, -0.25, 1.0, -1.0, 1.0, -0.25, 0.5, 1.0, 0.25, -0.25, 1.0, -0.75, 0.75, 0.25, 0.5, 0.25, 0.75, -0.25, -0.5, -0.5, 0.75, 0.5, 1.0, -0.75, -0.25, 0.25, 0.75, -0.5, -1.0, -0.75, 1.0, 0.25, -0.5, 1.0, -1.0, 0.75, 0.75, 0.75, -0.25, 0.5, -0.5, 0.75, 0.25, -0.25, 0.5, 0.5, 0.25, 0.25, -0.75, 0.25, -0.75, 0.0, -0.75, -0.5, -0.5, 0.0, 0.25, -0.5, 0.5, 0.25, 0.25, 0.25, -0.25, 0.75, -0.25, -1.0, 0.75, 0.25, 0.75, 0.5, 0.75, 1.0, 0.25, 0.5, ]);
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    device20.destroy();
    
    
    const array10 = new Float32Array([-0.75, 0.0, -0.75, 0.25, -0.25, 0.5, -1.0, 0.5, 1.0, -0.5, 1.0, 1.0, 0.25, -0.75, 0.5, -0.25, -0.5, 1.0, 0.75, -1.0, 0.25, -0.75, -0.75, 0.5, -0.5, 0.5, 0.0, 1.0, 1.0, 0.5, 0.5, -0.75, 1.0, 0.0, -1.0, 0.5, 1.0, 0.0, 1.0, -0.5, 0.25, 0.0, 0.75, 1.0, 0.75, -0.5, -1.0, 0.25, -0.25, 0.0, 0.5, -1.0, 0.75, 0.25, -1.0, -1.0, 0.5, 0.25, 0.25, 0.0, 1.0, -0.5, -0.25, -1.0, 0.0, 0.0, 1.0, -0.25, 0.75, 0.25, -0.25, 1.0, -1.0, -0.25, 0.0, 0.5, 0.25, 0.5, -0.5, -0.25, -0.5, 0.0, 0.25, -0.75, 0.75, 0.5, -0.25, -1.0, 0.75, 0.25, 0.5, 0.5, 0.0, -0.5, 0.5, 0.5, -0.25, 0.5, -1.0, 0.0, ]);
    
    
    
    const array11 = new Float32Array([0.0, 1.0, 0.0, 0.5, -0.25, 0.5, 1.0, 0.5, -0.25, 0.5, 0.5, 0.5, 0.5, -0.5, 0.0, -1.0, 0.0, 0.25, 0.0, -0.75, -0.75, -0.75, -0.25, -0.5, -1.0, -0.25, 0.0, 0.0, 0.75, 0.0, -0.75, -1.0, -0.25, -0.5, -0.5, -1.0, 0.75, 1.0, 1.0, 0.5, 0.25, -0.25, 0.25, 0.5, -1.0, 0.25, 0.0, -0.5, -0.75, 0.25, -1.0, -0.5, 0.75, -0.5, -0.75, 0.5, 0.0, -1.0, 0.75, -0.25, 0.75, -0.25, 0.5, -0.25, 0.75, -1.0, -1.0, -0.5, 1.0, 0.0, 1.0, 1.0, 0.5, -0.5, 0.25, 0.5, 0.5, 0.0, -0.75, -0.75, 0.0, -0.25, 0.0, -1.0, -1.0, 0.0, -0.75, 1.0, 0.25, 0.25, -0.25, -0.25, 0.75, 0.25, 0.0, 1.0, 0.5, -0.25, -0.75, 1.0, ]);
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    buffer300.destroy()
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.pushErrorScope("internal");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    query300.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_buffer300 = command_encoder300.finish();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    query301.destroy()
    command_encoder301.pushDebugGroup("mygroupmarker")
    buffer301.destroy()
    query300.destroy()
    texture300.destroy();
    
    device30.queue.submit([command_buffer300, ]);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder301.insertDebugMarker("marker");
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
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const array12 = new Float32Array([-1.0, -0.5, 0.25, 0.75, 0.0, 0.0, 0.25, -0.25, 0.25, 1.0, 0.5, -0.25, -1.0, 0.5, -0.75, 0.0, 1.0, 0.25, 0.25, -0.75, -0.25, 0.75, 0.25, 0.75, -0.5, 1.0, 0.75, -1.0, 0.25, -1.0, -1.0, -0.75, 0.25, -0.75, 0.5, -1.0, 0.0, 0.25, 1.0, 0.25, 1.0, 0.25, 0.0, 0.75, 1.0, -0.25, 1.0, 0.75, -0.25, -0.5, -1.0, -0.25, 0.75, -1.0, 1.0, 0.75, -1.0, -0.25, 0.5, -1.0, -1.0, -0.25, 0.25, 0.0, -0.25, 0.25, -0.25, 0.5, -0.5, -0.75, 0.0, 0.25, 1.0, -0.25, -1.0, 0.5, 0.75, 0.25, -0.75, -0.5, -0.25, -0.5, 1.0, 1.0, -1.0, 0.75, -1.0, 0.5, 0.5, 0.0, -0.25, -0.5, 0.75, 0.75, -0.75, -1.0, 0.5, -1.0, -0.25, 0.5, ]);
    
    query301.destroy()
    
    
    const array13 = new Float32Array([0.25, -0.25, 0.25, -1.0, 0.25, 0.25, 0.5, 0.25, -0.75, -0.5, 0.0, 0.5, 0.25, -1.0, 1.0, -0.75, 0.75, -0.25, 0.25, 0.75, 0.5, -1.0, 0.25, 0.0, -1.0, 1.0, 0.5, 0.75, -0.5, -0.25, 0.75, 1.0, -1.0, -0.5, -0.75, -0.25, 0.75, -1.0, -0.5, 0.5, 1.0, 0.5, -0.75, -1.0, 0.5, 1.0, 0.25, 0.0, 0.75, -0.25, -1.0, -0.75, -0.25, 0.25, 1.0, -0.5, -0.25, 0.75, 0.25, 1.0, -1.0, -0.75, 0.25, 0.25, 0.0, -1.0, -0.75, 0.5, 0.0, 1.0, 0.25, -0.5, 0.25, 0.0, 0.0, 0.75, 0.0, -0.75, -0.75, 0.5, -0.75, 0.5, 0.5, -0.75, 0.75, -0.5, 1.0, -0.25, 0.0, 1.0, 1.0, 0.25, -0.5, -0.5, 0.5, -0.5, 0.0, 0.0, -0.5, 1.0, ]);
    
    query301.destroy()
    command_encoder301.popDebugGroup()
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
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
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    query300.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    
    texture302.destroy();
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    device50.pushErrorScope("internal");
    
    
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    query301.destroy()
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    
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
    
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder3010.setStencilReference(1);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    device30.pushErrorScope("internal");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture301.destroy();
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.popDebugGroup();
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    query302.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    
    
    buffer303.destroy()
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    render_bundle_encoder501.insertDebugMarker("marker");
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
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
    render_pass_encoder3010.setStencilReference(1);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    command_encoder400.insertDebugMarker("mymarker");
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    command_encoder400.insertDebugMarker("mymarker");
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module308,
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
            module: shader_module308,
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
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
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
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const command_buffer600 = command_encoder600.finish();
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
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
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    device60.queue.writeTexture({ texture: texture600 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_bundle_encoder501.insertDebugMarker("marker");
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder300.setPipeline(render_pipeline300);
    compute_pass_encoder4000.insertDebugMarker("marker")
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array14 = new Float32Array([0.5, 0.75, -0.75, -1.0, -1.0, 0.75, 0.25, -0.75, 0.75, 0.5, 0.5, 0.0, -0.75, 0.0, 0.75, 0.5, 0.75, 0.25, 0.75, -0.5, -1.0, 0.0, 0.75, 0.0, 0.0, 1.0, 0.25, 1.0, 0.25, 0.5, -0.75, 0.5, 0.75, 0.25, 0.5, 0.25, 1.0, -0.75, 0.0, -0.25, 0.5, -1.0, 0.0, -0.5, 0.25, 0.75, -0.75, 0.5, 0.25, 1.0, 0.5, -0.5, 0.25, -0.75, -1.0, -0.5, 0.25, -1.0, 0.75, 0.25, 1.0, -0.25, 0.5, 0.0, 1.0, 1.0, -0.75, -0.25, 0.75, 0.25, -1.0, 0.5, 0.0, -0.75, 0.25, -0.25, -1.0, -0.25, -0.25, 0.0, -0.5, -0.5, 0.75, -0.5, -1.0, -0.25, -0.5, -0.75, 0.5, 0.75, -0.25, 1.0, -0.25, -0.75, 1.0, 0.25, -1.0, -0.75, -1.0, -1.0, ]);
    
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder302.setPipeline(render_pipeline301);
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    texture600.destroy();
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
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
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    render_pass_encoder3010.executeBundles([])
    render_bundle_encoder502.insertDebugMarker("marker");
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module309.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    query303.destroy()
    
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
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
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    
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
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout602]
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
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("out-of-memory");
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout300,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module308,
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
            module: shader_module308,
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
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout602]
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder301.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    query302.destroy()
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query305.destroy()
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    query300.destroy()
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    render_bundle_encoder301.setVertexBuffer(0, buffer301);
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout303,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout504]
    });
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout303,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout303,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.popDebugGroup();
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer502.destroy()
    device60.pushErrorScope("out-of-memory");
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout303,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    query304.destroy()
    
    render_pass_encoder3010.setPipeline(render_pipeline304);
    query302.destroy()
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    
    query302.destroy()
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout301,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    query500.destroy()
    query305.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture304.destroy();
    
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    texture400.destroy();
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer307.destroy()
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout604]
    });
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout303,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout305,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout300,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    var shader_module3011_code = "";
    try {
        shader_module3011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3011 = await device30.createShaderModule({ label: "shader_module3011", code: shader_module3011_code })
    
    
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    render_bundle_encoder502.insertDebugMarker("marker");
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout505]
    });
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_bundle_encoder302.setBindGroup(0, bind_group301);
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder3010.pushDebugGroup("group_marker");
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
        vertex: {
            module: shader_module3010,
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
            module: shader_module3010,
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
    render_pass_encoder3010.popDebugGroup();
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout604]
    });
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout305,
        compute: {
            module: shader_module3011,
            entryPoint: "main"
        }
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device60.queue.submit([command_buffer600, ]);
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder402.pushDebugGroup("group_marker");
    query300.destroy()
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout604,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    buffer308.destroy()
    const compute_pipeline3045 = device30.createComputePipeline({
        label: "compute_pipeline3045",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    const compute_pipeline3046 = device30.createComputePipeline({
        label: "compute_pipeline3046",
        layout: pipeline_layout302,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const compute_pipeline3047 = device30.createComputePipeline({
        label: "compute_pipeline3047",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3048 = device30.createComputePipeline({
        label: "compute_pipeline3048",
        layout: pipeline_layout303,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    
    
    
    const compute_pipeline3049 = device30.createComputePipeline({
        label: "compute_pipeline3049",
        layout: pipeline_layout303,
        compute: {
            module: shader_module3011,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3010.setStencilReference(1);
    
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout505]
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
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8snorm",
        dimension: "2d"
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
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
        layout: compute_pipeline500.getBindGroupLayout(0),
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

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    buffer601.destroy()
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder400.popDebugGroup();
    const array15 = new Float32Array([-0.75, 0.25, 0.5, -1.0, -1.0, -1.0, 0.75, -0.75, -0.25, -1.0, 0.0, 0.25, -0.25, -0.5, -0.75, 0.0, -1.0, 0.0, -0.25, -1.0, 0.75, -1.0, 1.0, 0.5, -0.5, -0.75, 1.0, -0.5, 0.5, -0.75, 0.75, 0.0, 0.0, 0.75, 0.75, 0.75, 0.25, 1.0, -0.75, -0.5, -1.0, -0.75, 0.0, -0.5, -0.25, -0.5, -1.0, 0.75, 0.0, -0.25, -1.0, -0.5, -0.5, 0.75, 0.75, 0.0, -1.0, -1.0, -0.75, -1.0, 0.75, -1.0, 0.0, -0.75, -0.25, 1.0, 1.0, -1.0, -0.75, 0.75, 0.0, 0.75, 0.5, 0.5, -0.5, -0.25, -0.75, -0.5, 0.0, -0.75, 0.0, 0.5, 0.0, 0.25, -0.5, 0.25, -0.5, -0.5, -1.0, 0.25, -1.0, -1.0, -0.75, -0.75, -0.25, 0.0, -0.5, -1.0, 0.75, 0.5, ]);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline3050 = device30.createComputePipeline({
        label: "compute_pipeline3050",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3051 = device30.createComputePipeline({
        label: "compute_pipeline3051",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    buffer304.destroy()
    
    
    
    query301.destroy()
    
    buffer306.destroy()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    const command_buffer601 = command_encoder601.finish();
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer505, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer505, 0);
    compute_pass_encoder5000.end();
    const command_buffer500 = command_encoder500.finish();
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group302);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder3010.setVertexBuffer(0, buffer300);
    render_pass_encoder3010.draw(3);
    render_pass_encoder3010.end();
    const command_buffer301 = command_encoder301.finish();
    device60.queue.submit([command_buffer601, ]);
}