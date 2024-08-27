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
    const array0 = new Float32Array([0.0, 0.5, 1.0, 0.25, 1.0, 0.0, -1.0, 0.25, 0.25, 0.5, 0.25, 0.0, 0.25, -0.75, 0.25, 0.75, -0.5, 0.75, 0.25, 0.0, 0.75, 0.25, 0.5, 1.0, 0.0, -0.5, 0.0, -0.5, -0.75, -1.0, -0.75, -0.25, -0.25, -0.5, -1.0, -0.5, -1.0, 0.75, -0.5, 0.0, 0.0, -0.75, -0.5, 1.0, -0.25, -0.75, 0.75, 1.0, -0.5, 1.0, -0.5, -0.75, -0.25, -0.5, -0.75, 0.25, 1.0, 0.25, 1.0, -0.25, 1.0, 1.0, -0.25, 0.25, -1.0, 1.0, -0.75, 0.75, 0.75, -0.75, 0.0, 0.75, -1.0, 0.25, 0.25, -0.25, 0.5, -0.25, 0.0, 1.0, -0.75, -1.0, 0.25, 0.0, -0.5, 0.75, 1.0, 0.5, -0.5, 0.0, 0.0, 0.5, -0.5, -0.75, -0.75, -0.25, 0.0, -0.5, -1.0, 0.75, ]);
    const array1 = new Float32Array([-1.0, -0.5, 0.25, -1.0, -1.0, 0.75, 0.5, 1.0, -0.25, -1.0, -1.0, 0.0, 1.0, 0.0, 0.5, 0.75, 0.75, 1.0, 0.5, 0.5, -1.0, -0.5, 0.75, -0.25, 0.25, -1.0, 0.25, -0.5, 1.0, -0.75, 0.5, 0.25, 0.25, 0.5, 0.0, 0.25, 0.0, -1.0, -0.5, 0.0, 0.5, -0.75, 0.25, 0.0, -1.0, 0.5, 0.25, 0.0, -1.0, -0.25, -1.0, -1.0, 0.75, 1.0, -0.75, 0.5, -0.25, 0.0, 1.0, 0.0, -0.75, -0.25, 0.75, 0.5, 0.75, 0.0, -1.0, -0.5, 0.0, -1.0, -1.0, -0.5, 0.25, 0.5, 0.25, 0.75, 0.5, -0.5, 1.0, -0.75, -0.25, 0.0, 1.0, -0.25, 0.25, 0.0, 0.0, 0.75, 0.25, -0.5, 1.0, 0.25, 1.0, -0.25, 0.5, -0.25, -0.25, -0.5, 1.0, 1.0, ]);
    const array2 = new Float32Array([-0.75, 0.5, 0.75, -0.25, 1.0, -0.5, 0.0, -0.25, 0.5, -0.25, -1.0, -1.0, -0.25, -0.25, -0.75, 0.25, 1.0, -0.5, -0.25, -0.25, -0.25, 0.0, 0.0, -0.25, -0.5, 1.0, -0.5, -1.0, 0.5, 0.5, -0.25, -0.25, 0.75, -0.25, 0.5, 0.75, 0.5, 0.0, 0.25, 1.0, 0.75, 0.75, -0.5, -1.0, 0.0, 0.75, 0.25, 1.0, 1.0, 0.0, 0.5, -0.75, 0.75, -1.0, 0.5, 0.75, -0.75, 0.25, 0.5, 1.0, 0.5, 0.5, 0.25, 0.5, 0.5, -0.75, 0.5, -1.0, 0.0, 0.75, -0.25, -0.25, 1.0, -1.0, -0.75, 0.0, 0.25, 0.0, 0.25, 1.0, 0.25, 1.0, -0.5, 1.0, -0.75, 0.5, 0.25, -0.75, 0.5, 0.0, 0.0, 0.0, 0.25, 1.0, 0.75, 0.0, 0.5, 0.25, 0.75, 0.0, ]);
    
    const array3 = new Float32Array([-0.75, -0.25, 1.0, 0.75, -1.0, 0.5, -1.0, -0.25, 0.25, 1.0, -0.5, 0.75, -1.0, -1.0, 0.75, -0.5, -0.5, -0.25, -0.25, -0.25, -0.5, 0.0, 1.0, 0.75, 0.0, -0.5, 1.0, 0.75, 0.25, 0.75, 0.25, 0.25, 0.0, 1.0, 0.25, 0.75, 0.0, 1.0, -0.75, -0.25, -0.75, -0.25, -1.0, 1.0, -0.75, 1.0, 0.5, -0.25, 0.0, -0.75, -0.25, -0.25, -1.0, 0.25, 1.0, 0.0, 0.0, -0.5, -0.25, 0.25, 0.25, 0.0, -0.25, 1.0, 0.5, 0.5, 0.0, 0.75, -0.25, -0.75, -0.25, 1.0, 0.75, -0.75, 0.75, 0.5, 0.75, 0.5, 0.75, 0.25, 0.0, -0.25, 0.75, -0.5, -0.25, -0.75, 0.0, -1.0, 0.25, -1.0, -0.5, -1.0, -0.75, 0.25, 1.0, -0.75, -0.5, -0.75, 0.0, -0.5, ]);
    const array4 = new Float32Array([0.5, 0.5, -1.0, -0.75, 0.25, 0.75, -0.5, -1.0, -0.25, -0.5, 1.0, -0.25, 0.5, 0.5, 0.0, -1.0, -0.25, -0.5, 0.25, 0.0, -0.75, 0.5, -1.0, 0.0, 0.5, -0.5, -0.5, 0.5, 1.0, -0.75, 0.75, -0.5, 0.25, -0.25, 0.75, 1.0, 0.75, 0.5, 0.5, 0.25, -0.75, 1.0, -0.5, 0.0, 0.5, -0.25, -0.25, 0.75, -0.25, 0.0, -0.75, 0.25, 0.0, 0.5, -0.25, -0.5, 0.75, -1.0, -0.25, 1.0, 1.0, -1.0, 0.75, 0.5, 1.0, 0.75, 0.25, -0.75, -0.75, -0.5, -1.0, 0.5, -0.5, -0.75, -0.5, -0.5, 0.25, 1.0, -0.75, -0.25, -0.25, 0.5, 0.0, -0.75, 0.0, 1.0, 0.75, -0.5, -0.25, -0.25, 0.25, 1.0, 0.5, 0.25, -0.75, 0.75, -0.5, -0.25, -1.0, 0.25, ]);
    const array5 = new Float32Array([-0.75, 0.75, -1.0, 0.5, 0.25, -0.5, 1.0, 1.0, -0.5, 0.0, -0.5, 0.75, -0.5, -0.75, 1.0, -0.25, 0.75, -0.25, 0.75, 0.25, -1.0, -0.5, 1.0, 0.75, 1.0, 0.25, 0.75, 0.5, 0.5, 0.0, -1.0, 0.0, -0.5, -1.0, 0.5, -0.5, 0.5, 0.25, -0.25, -1.0, 0.0, -0.25, -0.75, -0.25, 0.5, 0.75, -0.75, -1.0, 0.75, 0.25, 0.5, 0.25, 1.0, -1.0, 0.25, -0.75, -0.25, 1.0, 0.25, 1.0, 0.0, -1.0, 0.0, 0.5, 0.25, 0.75, 0.0, -0.25, 0.0, -0.5, -0.5, 0.75, -0.75, -0.25, -1.0, -0.25, -0.75, 0.5, 0.0, -1.0, 1.0, -0.25, 0.75, -0.5, -0.75, -0.25, 1.0, 0.75, -0.25, -0.5, -1.0, 1.0, -1.0, 0.5, 0.0, 0.25, -0.75, -0.5, 0.25, 0.0, ]);
    
    
    
    const array6 = new Float32Array([0.75, 0.25, -1.0, -1.0, 0.5, -0.75, 1.0, 0.0, 0.0, -1.0, 1.0, -1.0, 0.75, 1.0, 0.0, 1.0, 0.0, -1.0, 0.25, 0.0, 0.5, 0.75, 0.75, 0.0, 1.0, 0.5, 0.5, 0.25, 0.0, 0.25, -0.25, -1.0, -0.5, -1.0, 0.75, 1.0, 0.5, 0.75, 1.0, 0.25, 1.0, -0.25, 0.0, 0.75, 0.25, 0.0, -0.75, -0.25, 0.0, 0.25, 0.25, 0.5, 0.0, 0.5, 0.0, 0.5, -0.75, 0.0, 1.0, 0.75, 0.75, -0.75, 0.0, 0.75, 0.25, 0.75, 1.0, -1.0, -0.75, 0.5, -1.0, 1.0, 0.0, 0.75, -0.25, -0.5, 0.0, -0.5, -0.75, 0.0, -0.25, -1.0, -0.75, -1.0, 0.75, 0.5, 0.75, -1.0, 0.25, -1.0, 0.75, -1.0, 0.0, -1.0, 0.25, -1.0, -0.25, 0.75, 0.5, -0.75, ]);
    const array7 = new Float32Array([-0.75, -0.75, 1.0, 0.0, 0.5, 0.0, 0.25, 0.5, 1.0, 0.75, -1.0, -1.0, -1.0, -0.5, 0.0, 0.5, -0.25, 0.5, 0.0, 0.75, 0.25, 0.75, 0.0, 1.0, -0.75, 0.5, 0.75, 1.0, 0.75, -1.0, 0.0, -0.75, -1.0, 0.75, -0.5, 0.25, 1.0, 0.25, -0.5, 0.0, -0.25, 1.0, -0.5, -0.25, 0.0, 0.0, -0.75, 0.0, 1.0, 0.0, 0.5, 0.75, -0.5, 0.25, -0.25, 0.0, 0.25, -1.0, 0.0, -0.25, 0.25, 0.5, -0.5, -0.5, 0.75, -1.0, -0.25, 0.0, -1.0, -0.5, -0.75, -1.0, 0.5, 0.5, 0.0, -0.75, -0.75, -0.25, -0.5, 0.0, 0.5, -0.75, 0.25, 1.0, 0.25, 0.0, -0.75, -0.75, -0.25, -0.25, 0.5, 0.25, -1.0, 0.5, 0.25, 0.0, 0.25, 0.75, -0.75, 0.25, ]);
    
    const array8 = new Float32Array([-0.75, 0.0, -0.5, 0.5, -0.5, -0.5, -0.25, 0.75, 1.0, 0.25, -0.25, 0.75, -0.75, -0.5, 0.75, 1.0, 0.5, -0.5, 1.0, -0.25, 0.75, -1.0, 0.5, 0.5, 1.0, 1.0, -0.5, 1.0, 1.0, -1.0, -0.5, 0.75, -0.25, 1.0, 0.5, 0.75, 0.5, 1.0, 0.25, -0.25, -0.75, -0.25, -0.25, -0.75, -1.0, 1.0, 0.5, 0.25, 0.25, -0.75, 1.0, -0.5, -0.5, -0.25, 0.5, 0.0, -0.5, 0.75, -0.75, -0.25, -0.75, 0.75, 1.0, -1.0, 0.25, -0.5, -1.0, -0.25, -0.5, 0.0, 0.75, -1.0, -1.0, 0.25, -0.5, 0.0, -0.5, 0.25, -0.75, 0.5, 0.5, -0.75, 1.0, 0.5, 0.5, 0.75, -0.5, -0.75, 0.5, -0.75, -1.0, 0.5, 0.0, 0.0, -0.5, -1.0, -0.25, 0.25, -0.25, -0.75, ]);
    const array9 = new Float32Array([-0.25, 0.75, 0.75, 0.5, 0.0, -0.5, 0.5, 0.75, 0.0, 0.5, -0.25, -0.75, 0.75, 0.5, 1.0, 1.0, 1.0, 1.0, 0.75, 0.25, -0.5, -0.25, 0.5, 0.0, 0.0, 1.0, 0.0, 1.0, 0.5, -0.25, 0.75, -0.25, -0.75, -0.5, 0.75, 0.25, 0.75, 0.5, 0.75, 0.5, 0.25, 0.0, -0.25, 0.75, -0.75, 0.75, 0.25, -1.0, 0.75, -1.0, 0.5, 0.5, 0.0, 0.5, -0.75, -0.25, -0.25, -0.25, -0.5, -0.75, -0.75, 0.0, -0.5, 0.25, 0.75, 0.25, -0.25, 1.0, 0.75, -1.0, 0.25, 0.5, 0.25, -0.5, 0.25, -0.75, 0.5, -0.25, 0.5, 0.0, 1.0, -0.75, -1.0, -1.0, 0.0, -0.75, -1.0, -1.0, 0.25, -0.25, -0.75, -0.5, 1.0, 0.25, 0.5, 0.5, -0.75, -0.5, -1.0, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array10 = new Float32Array([0.25, -0.75, 0.0, 0.75, -0.5, -1.0, -1.0, 0.5, 1.0, 0.5, 1.0, -1.0, -0.75, 0.25, 0.0, -0.75, -0.75, 0.5, -1.0, 0.0, 1.0, -0.75, 0.5, -0.75, 0.25, -0.75, -0.25, -0.75, -0.5, -0.25, -0.5, -0.5, -0.5, -0.75, 0.0, 0.25, 0.5, 0.25, 0.25, -0.25, 0.0, 0.0, -0.25, 1.0, 0.5, -1.0, -0.5, -1.0, -0.75, 1.0, 0.0, 0.75, 0.25, 0.75, -1.0, -0.25, -0.25, -0.5, -1.0, 0.75, 0.25, 0.5, 0.0, 0.75, 0.5, 0.0, 0.0, 0.25, 0.75, -0.75, 0.0, 0.0, 0.0, 0.5, 0.75, 0.0, -0.5, 0.5, -1.0, 0.0, 1.0, -0.25, 0.25, 1.0, 0.75, -0.5, 0.75, 0.75, 0.25, -1.0, -0.75, 0.25, 0.75, -0.5, 0.25, 0.25, 0.25, 0.25, -0.25, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.destroy();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    device10.pushErrorScope("out-of-memory");
    
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
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder100.popDebugGroup();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const array11 = new Float32Array([0.25, 0.75, 0.0, -0.5, -0.5, -0.25, 1.0, -0.5, 1.0, 0.75, -0.5, -1.0, -0.25, 1.0, 1.0, 0.25, -0.5, 0.0, 0.25, -1.0, 1.0, 0.5, -0.5, 0.5, -0.75, -0.5, 0.75, 0.5, 0.5, -0.5, -1.0, 0.0, -1.0, -0.75, -0.75, -0.75, -0.5, 0.75, 0.0, -0.25, -0.75, -1.0, -0.25, -1.0, 0.5, -1.0, 0.75, -0.5, 0.0, 0.5, 0.25, -0.5, 1.0, -0.5, 0.5, -0.5, 0.5, -0.75, -0.5, 0.25, -0.25, 0.0, -0.25, 0.5, -0.5, 0.25, 0.25, -0.25, 0.75, -0.75, 0.0, -0.25, -0.75, -1.0, 0.0, 0.0, -0.5, 0.0, 1.0, -0.25, 0.0, 1.0, -0.75, -0.5, -1.0, 1.0, 0.0, 1.0, -1.0, -1.0, 1.0, 0.0, -0.75, -0.25, 0.0, -1.0, -0.5, 1.0, 0.0, -0.75, ]);
    buffer100.destroy()
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer101, 0, array10, 0, array10.length);
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const command_buffer100 = command_encoder100.finish();
    
    render_bundle_encoder100.popDebugGroup();
    buffer101.destroy()
    buffer100.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    buffer102.destroy()
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    device10.queue.submit([command_buffer100, ]);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    query101.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    buffer100.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.destroy();
    
    const array12 = new Float32Array([0.0, 1.0, -0.5, -0.75, -0.5, 0.5, 0.75, -0.5, -0.5, 0.0, 0.75, -0.5, -1.0, 0.0, 0.0, 0.5, 1.0, -0.5, 0.25, -0.75, 0.0, 0.5, -0.75, 0.0, 1.0, 0.0, 0.0, 0.0, 0.25, 1.0, -0.5, 0.25, 1.0, -0.5, 0.75, 0.5, -0.5, -0.25, -0.25, 0.25, 0.5, 0.0, -0.25, 0.0, 0.25, 0.5, -0.75, 1.0, -1.0, -1.0, 1.0, 1.0, 0.0, 1.0, -0.25, -0.75, -0.25, -1.0, -0.5, 0.75, -0.5, -0.5, -0.25, 0.75, 1.0, -0.75, 0.75, -0.5, 0.5, 0.75, 0.25, 1.0, 0.5, -0.25, 0.75, -1.0, 0.5, 0.75, -0.75, 0.5, -0.75, -1.0, 0.5, 0.0, -0.25, -0.25, -0.5, -1.0, 1.0, -0.25, 1.0, 0.75, -0.25, 0.0, -1.0, 0.25, -0.75, -0.25, -0.25, 0.25, ]);
    
    
    
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.destroy();
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture300.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    command_encoder300.popDebugGroup()
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
    
    texture300.destroy();
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
    command_encoder300.insertDebugMarker("mymarker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device30.pushErrorScope("internal");
    command_encoder300.copyBufferToTexture(
        {
            buffer: buffer301
        },
        {
            texture: texture300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
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
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_bundle_encoder300.popDebugGroup();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    query300.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
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
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const command_buffer300 = command_encoder300.finish();
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer300.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device20.pushErrorScope("validation");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    
    const array13 = new Float32Array([-0.25, 1.0, -0.25, -1.0, 0.75, 1.0, 0.25, -1.0, 0.25, 0.0, 1.0, 0.75, -0.5, -0.75, 1.0, -0.5, -0.75, -0.25, -0.25, -0.25, 0.25, -0.5, 0.25, -0.75, -0.75, 1.0, 1.0, 0.25, -1.0, 0.5, 0.25, 1.0, 0.75, 0.5, 0.25, 0.0, -1.0, 1.0, 0.75, -1.0, -1.0, -0.25, 0.75, -0.5, -0.25, 0.5, 0.5, 0.75, -0.5, 0.75, -0.75, -0.25, 0.0, 0.5, 0.5, -0.5, 1.0, 0.25, -1.0, -0.25, -0.5, -0.75, -0.5, -0.5, 0.75, 0.75, -0.5, 0.25, -0.5, -1.0, -0.75, 0.0, 0.75, -1.0, 0.0, 0.5, 0.0, -0.75, -0.5, 0.25, -0.75, -0.75, -0.25, -0.5, 0.5, -0.25, -1.0, 0.5, 1.0, 0.75, -1.0, 0.5, -1.0, -0.25, -0.75, -0.5, 0.5, 0.0, -0.5, -0.5, ]);
    texture301.destroy();
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array14 = new Float32Array([0.0, -0.75, 0.25, -1.0, 0.0, 0.25, 0.5, -1.0, 0.0, -0.25, -0.75, -0.25, -0.75, -0.75, -1.0, 1.0, -1.0, 0.75, -0.75, 0.25, -0.25, 0.75, 0.25, 0.5, -0.5, -0.75, -0.75, -0.25, 0.25, -1.0, -1.0, 0.25, -0.5, 0.0, -0.25, 0.5, 0.25, -1.0, 0.5, -0.25, 1.0, -1.0, -0.5, -1.0, 1.0, -0.75, -0.5, -0.25, 0.0, -0.75, 1.0, 0.5, -0.25, -0.75, 0.5, -0.5, 0.75, -0.5, 0.75, 1.0, 0.0, -1.0, 0.75, 0.25, -0.25, 0.5, 0.0, 0.0, 1.0, -1.0, 0.0, -0.5, -0.25, -0.75, 0.0, 0.25, 1.0, 0.25, -0.5, 1.0, -0.25, -0.5, -0.25, 0.0, 1.0, 0.5, 0.25, 0.0, -0.75, 0.5, 0.25, 0.75, -0.5, 0.0, 1.0, 0.5, 0.0, -0.75, -0.5, -1.0, ]);
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
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    
    buffer301.destroy()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    
    query300.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder301.setPipeline(render_pipeline300);
    render_bundle_encoder302.setPipeline(render_pipeline300);
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    query100.destroy()
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder300.setPipeline(render_pipeline301);
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    render_bundle_encoder300.popDebugGroup();
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
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

    render_bundle_encoder302.setBindGroup(0, bind_group300);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.setPipeline(compute_pipeline302);
    buffer302.destroy()
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    compute_pass_encoder3000.insertDebugMarker("marker")
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

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    buffer305.destroy()
    
    
    
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device30.queue.writeBuffer(buffer304, 0, array0, 0, array0.length);
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: query300
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const array15 = new Float32Array([0.5, 0.5, -0.75, -0.75, 0.5, 1.0, 0.25, 0.75, 0.5, -0.75, -0.25, -0.5, -0.25, -1.0, 0.25, 0.0, 0.5, 1.0, -0.25, -1.0, 0.25, -0.25, -1.0, 0.25, 0.0, 0.5, 0.25, 0.0, 0.0, -1.0, -0.5, 0.25, 0.5, 0.75, 0.25, -0.75, 0.25, -0.25, 1.0, -1.0, 1.0, 0.5, -0.75, -0.5, -1.0, 0.5, -0.25, 0.75, 0.5, -1.0, 0.0, -1.0, 0.25, -0.25, -0.25, -0.75, -0.5, -0.5, 0.0, -0.25, 0.75, -0.75, -0.25, -0.75, 0.75, 0.5, 0.25, 0.25, 0.0, 1.0, -0.75, 0.0, -1.0, 0.5, 0.25, 0.5, -0.5, 0.5, 1.0, -0.25, -0.5, -0.25, -0.5, 0.0, -0.5, 1.0, 1.0, -1.0, 0.0, 1.0, -0.25, 1.0, -0.75, -0.75, 1.0, -0.25, -0.75, 0.25, 1.0, 0.25, ]);
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.popDebugGroup();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    query301.destroy()
    render_pass_encoder3010.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer306, 0, array13, 0, array13.length);
    texture302.destroy();
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device30.queue.writeBuffer(buffer306, 0, array0, 0, array0.length);
    
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
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query300
    });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_pass_encoder3011.setPipeline(render_pipeline301);
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer304, 0, array1, 0, array1.length);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const array16 = new Float32Array([-1.0, -1.0, 1.0, 0.25, 0.5, 0.5, 0.25, 0.25, 0.25, 0.75, 1.0, 0.75, -1.0, 0.25, 0.75, -0.75, -0.25, 0.75, -0.5, -0.75, -0.75, -1.0, 0.0, 0.75, 0.25, 1.0, 0.75, -1.0, -1.0, -1.0, -0.75, 0.75, 0.25, 0.0, 1.0, 0.0, 0.25, 0.0, -0.75, 0.5, -0.25, -0.25, -0.25, -0.5, 0.0, 0.0, -0.25, 0.25, -1.0, 0.5, -0.5, -0.75, 0.5, -0.75, 0.5, -0.5, 0.0, 0.0, -0.75, 1.0, 1.0, 0.75, -0.75, 0.25, -0.75, -0.25, -0.5, 1.0, -0.5, 0.5, 0.5, 0.5, -1.0, 0.25, -0.75, -0.5, 0.25, -1.0, 0.5, -1.0, 0.75, -0.5, -0.25, 0.5, 0.5, -1.0, -1.0, 1.0, 1.0, -0.25, -0.5, 0.75, 1.0, 0.5, 0.0, 0.75, 1.0, -0.25, 0.0, -1.0, ]);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer307, 0, array11, 0, array11.length);
    device30.queue.writeBuffer(buffer303, 0, array15, 0, array15.length);
    
    
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
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3011.setBindGroup(0, bind_group303);
    
    
    
    
    buffer308.destroy()
    render_pass_encoder3011.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
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
    
    render_pass_encoder3010.setPipeline(render_pipeline304);
    
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    device30.queue.writeBuffer(buffer3010, 0, array5, 0, array5.length);
    buffer3010.destroy()
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3011.pushDebugGroup("group_marker");
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer307, 0, array11, 0, array11.length);
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    
    {
        await buffer309.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer309.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer309.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer303, 0, array11, 0, array11.length);
    buffer301.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const array17 = new Float32Array([1.0, 0.75, 0.25, -0.5, 0.5, -0.5, 0.0, 0.0, -0.75, 0.0, -0.75, -0.75, -0.25, 0.75, 0.75, 0.75, -0.25, -0.5, 0.0, 0.25, 1.0, -0.75, 1.0, -0.5, 0.5, 0.0, -0.75, 1.0, 0.25, 1.0, -1.0, 0.25, 1.0, 0.75, 0.5, 0.75, 0.0, 0.25, 0.5, -0.25, 0.5, -1.0, 0.25, -0.75, -1.0, -0.5, 0.5, -0.75, 0.25, 1.0, -0.5, -0.75, -0.5, -0.25, 0.75, 0.75, -1.0, 0.75, 0.5, -1.0, -0.5, -0.5, -0.5, 1.0, 1.0, 0.25, 0.25, 0.75, -0.75, 0.75, 1.0, 0.75, -0.75, 0.0, 0.75, -0.75, 0.75, -0.75, -1.0, -0.75, 0.5, 0.0, 0.75, 0.0, 1.0, -1.0, 0.25, -0.25, -0.5, -0.75, 1.0, -0.75, -0.25, -0.25, 1.0, 0.0, -1.0, 0.75, 0.0, 0.25, ]);
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer3011, 0, array10, 0, array10.length);
    render_pass_encoder3011.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_bundle_encoder302.popDebugGroup();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.setStencilReference(1);
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    buffer303.destroy()
    const array18 = new Float32Array([-0.25, 1.0, 0.5, 0.5, 0.0, -1.0, 0.0, 0.75, 0.5, 0.75, -0.5, -0.75, 0.5, 0.75, 0.75, -1.0, -0.25, -0.25, 1.0, -1.0, 0.25, -1.0, 0.5, 0.75, 0.25, -0.25, -0.25, 1.0, -0.25, -1.0, 0.75, -0.5, 0.5, -1.0, 0.5, 0.75, 0.5, 1.0, -0.25, 0.75, -0.25, -0.25, 1.0, -0.5, -0.25, -0.25, -1.0, 0.25, 0.75, 1.0, 0.75, 0.0, 0.5, 0.75, 0.0, -0.75, -0.25, 1.0, -1.0, 0.75, -0.75, 0.5, -0.5, 0.0, -0.75, 0.75, 0.5, -0.25, 0.0, 1.0, -0.25, 0.5, -0.5, -0.5, 0.25, 0.0, 0.5, 0.0, 0.0, -1.0, -0.75, 1.0, -0.25, -0.25, 0.0, 0.0, -0.5, 1.0, 0.25, 0.25, -0.25, 0.25, 0.5, 0.5, -0.75, 1.0, -0.25, -1.0, -0.25, -0.25, ]);
    
    
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder3010.pushDebugGroup("group_marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device30.queue.writeBuffer(buffer304, 0, array15, 0, array15.length);
    render_pass_encoder3011.popDebugGroup();
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
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    
    device50.destroy();
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder3011.insertDebugMarker("marker");
    
    
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    buffer306.destroy()
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeBuffer(buffer304, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer400, 0, array17, 0, array17.length);
    query302.destroy()
    device30.queue.writeBuffer(buffer3012, 0, array10, 0, array10.length);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer3012, 0, array9, 0, array9.length);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder302.insertDebugMarker("marker");
    buffer400.destroy()
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
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
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    buffer3012.destroy()
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
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
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

    render_bundle_encoder300.setBindGroup(0, bind_group304);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    texture303.destroy();
    device60.destroy();
    device30.queue.writeBuffer(buffer3014, 0, array3, 0, array3.length);
    query301.destroy()
    
    render_bundle_encoder400.popDebugGroup();
    
    device30.queue.writeBuffer(buffer3014, 0, array14, 0, array14.length);
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    query302.destroy()
    render_pass_encoder3010.popDebugGroup();
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    
    command_encoder400.popDebugGroup()
    render_pass_encoder3010.setStencilReference(1);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    buffer400.destroy()
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder302.popDebugGroup();
    device30.queue.writeBuffer(buffer3013, 0, array3, 0, array3.length);
    
    device30.queue.writeBuffer(buffer309, 0, array3, 0, array3.length);
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer304,
        0
    )
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder3011.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    command_encoder400.insertDebugMarker("mymarker");
    buffer307.destroy()
    render_bundle_encoder302.setVertexBuffer(0, buffer300);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    device30.queue.writeBuffer(buffer309, 0, array10, 0, array10.length);
    
    
    render_pass_encoder3010.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    buffer401.destroy()
    render_bundle_encoder300.setVertexBuffer(0, buffer309);
    
    render_bundle_encoder301.setVertexBuffer(0, buffer301);
    command_encoder301.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout305,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.popDebugGroup()
    device00.pushErrorScope("internal");
    device30.queue.writeBuffer(buffer3014, 0, array10, 0, array10.length);
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline304.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group305);
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
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
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
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
    
    query301.destroy()
    device30.queue.writeBuffer(buffer309, 0, array10, 0, array10.length);
    
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    buffer302.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture304 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture304 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    command_encoder102.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer3015, 0, array15, 0, array15.length);
    device30.queue.writeTexture({ texture: texture304 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture304 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device30.queue.writeTexture({ texture: texture304 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3011.setVertexBuffer(0, buffer301);
    
    buffer3015.destroy()
    device30.queue.writeTexture({ texture: texture304 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const command_buffer400 = command_encoder400.finish();
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3011.draw(3);
    render_pass_encoder3010.setVertexBuffer(0, buffer307);
    render_pass_encoder3010.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3010.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3010.setIndexBuffer(buffer309, "uint16");
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    render_pass_encoder3010.drawIndexedIndirect(buffer3014, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3010.end();
    render_pass_encoder3011.end();
    compute_pass_encoder3000.end();
    device30.queue.submit([command_buffer300, ]);
    const command_buffer301 = command_encoder301.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3011.drawIndirect(buffer3015, 0);
}