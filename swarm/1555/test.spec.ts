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
    
    const array0 = new Float32Array([0.5, -0.75, 1.0, -0.25, 0.5, 0.75, 0.5, -0.75, -0.75, 0.75, 0.5, 0.5, -0.5, 0.25, -0.25, -0.75, 0.5, -0.75, -0.5, 0.25, 0.5, -0.5, -0.75, 0.75, 0.75, 0.75, -1.0, 0.25, 0.0, 0.75, 0.25, 0.75, 0.0, -0.25, -0.75, -0.75, 0.75, 0.25, 0.75, -1.0, 1.0, 0.75, 0.5, 1.0, 0.5, -0.25, 0.75, 0.0, -1.0, -0.25, 0.0, 0.25, 0.25, -0.5, 0.25, 0.25, 0.25, 1.0, 0.5, 1.0, 0.5, 0.5, 0.5, -0.25, -1.0, -0.75, -0.75, -1.0, -1.0, 0.25, -0.25, 0.5, 0.5, -0.75, -1.0, -0.25, -0.75, -1.0, -0.5, 0.75, -0.75, -0.25, 1.0, 0.5, 0.75, 1.0, -0.5, -0.25, -0.5, 0.75, 1.0, -1.0, 0.0, -0.5, -1.0, 0.5, 0.5, -0.25, -0.5, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([0.5, -0.5, -0.5, 1.0, -0.5, -0.25, -0.75, 0.0, 1.0, 0.25, -0.25, -0.25, 0.5, 0.75, 0.75, -0.5, -1.0, 0.0, 0.25, 0.75, -1.0, 0.75, -1.0, 0.75, 0.0, -1.0, 0.75, -1.0, 0.0, -1.0, 0.5, -0.25, 1.0, 0.5, -0.75, -0.5, 0.5, -0.25, 0.5, -0.75, 0.0, 0.75, -0.5, 0.25, 0.5, -0.25, 0.25, 0.75, -0.25, -0.5, 0.5, -0.75, 0.75, 0.75, 0.75, -0.5, 0.75, 0.75, 1.0, 0.5, 0.5, 1.0, -0.25, -0.25, -0.75, 0.75, -1.0, 0.75, -1.0, -0.75, 1.0, 0.0, -0.75, 1.0, 1.0, 1.0, -0.75, 0.25, -0.25, 1.0, 0.5, 0.75, 0.25, 1.0, 1.0, 0.0, -0.5, 0.0, 0.5, 0.5, 1.0, -0.25, -0.25, -0.75, 1.0, 1.0, -0.5, 0.25, 0.75, -1.0, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array2 = new Float32Array([-0.75, -0.5, 0.0, 1.0, -0.25, -0.25, 0.25, 0.25, -0.25, 0.75, -0.5, 0.0, -0.75, 1.0, 0.75, 0.0, -0.5, 1.0, 0.75, -1.0, 0.0, -0.75, 1.0, -1.0, 0.0, -0.25, 0.25, -0.25, 0.75, -0.5, 0.0, -1.0, 0.0, 0.0, -1.0, 0.25, 1.0, 0.25, -0.5, 0.75, 0.5, -0.75, 0.5, 0.25, -1.0, 0.0, 0.5, 0.25, -0.75, -0.5, 1.0, -0.75, 1.0, 1.0, 0.25, 0.5, 0.25, -1.0, 0.25, 0.0, -0.5, 0.0, 0.5, -0.5, 0.25, 1.0, 0.5, 0.75, -1.0, -0.75, 0.75, -1.0, -1.0, -1.0, -0.5, -1.0, 0.75, -1.0, -0.75, 0.25, -0.25, 0.25, -0.75, 1.0, -1.0, 0.5, -0.25, -1.0, -0.75, -0.75, 0.25, -0.25, 0.0, -0.25, 0.0, -1.0, -0.5, 0.5, -0.5, 0.25, ]);
    
    const array3 = new Float32Array([-0.75, -0.5, 1.0, -0.5, 0.75, 0.5, -0.25, 0.5, -0.5, -0.5, -1.0, 0.0, -0.75, -0.5, 0.25, -0.75, -0.5, 0.0, 0.0, 0.5, -0.25, -0.75, 1.0, 0.25, 0.0, -0.75, 0.75, 0.0, -1.0, 1.0, 0.5, -0.25, -1.0, 0.25, -0.25, 0.75, -1.0, -1.0, 0.5, 0.25, -0.75, -0.75, 0.5, -0.25, -1.0, -0.25, 0.5, -0.5, 0.25, 0.25, 0.5, -0.5, -0.25, -1.0, 0.5, 0.0, 0.25, 1.0, 0.5, 0.75, 0.25, -0.75, 1.0, 1.0, -0.75, 0.75, 0.0, -0.5, 0.0, -0.25, 1.0, -1.0, -1.0, 0.25, 1.0, -0.5, 0.5, -0.5, 0.25, 1.0, -0.75, 0.5, 0.25, 0.25, 0.25, 1.0, 1.0, 0.25, -0.25, 0.25, 0.0, 0.75, 0.0, 1.0, 0.75, -0.5, 1.0, 0.75, -0.5, -1.0, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder000.popDebugGroup()
    device10.pushErrorScope("validation");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_buffer001 = command_encoder001.finish();
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    buffer000.destroy()
    
    const array4 = new Float32Array([-0.75, 0.5, 0.5, 1.0, -0.5, 0.25, 0.0, -0.25, 0.75, -0.5, -0.25, 0.25, -0.25, 1.0, 1.0, -1.0, 0.5, -0.25, 1.0, 0.75, -0.75, -1.0, -0.75, 0.25, -0.75, -0.25, 1.0, -0.75, 0.25, -1.0, -0.75, 1.0, 0.0, 0.0, 0.25, -0.25, 0.5, 0.25, 0.75, 1.0, -0.25, 0.0, -0.75, 0.75, -0.25, 1.0, -0.5, 0.0, 1.0, 0.75, -0.5, -0.75, 0.5, -0.5, 0.75, 0.0, -0.5, -1.0, 0.5, 1.0, -0.5, -0.25, -1.0, 0.75, 0.75, 0.0, -0.25, 0.75, -0.5, 0.25, 0.75, -1.0, 0.75, 0.5, -0.75, 0.5, 0.75, 0.25, 0.25, 0.75, -1.0, -0.75, 1.0, 0.5, -1.0, 0.0, 0.5, -1.0, -0.5, -0.5, 0.25, 1.0, 0.5, 0.25, -1.0, 0.5, 0.25, 0.0, 0.0, -0.5, ]);
    const command_buffer000 = command_encoder000.finish();
    device10.pushErrorScope("validation");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array5 = new Float32Array([-1.0, -0.75, 0.5, 0.0, -1.0, -0.5, -0.25, 0.0, 1.0, 1.0, -0.5, -1.0, 1.0, -0.25, -0.5, -0.75, -0.5, 0.5, 0.0, 1.0, 0.0, -0.25, 0.5, 1.0, -0.25, -0.25, 0.25, 1.0, 0.25, -0.75, -0.25, 0.75, 0.0, -0.25, -1.0, -0.25, 0.0, 0.75, -0.5, 0.5, -0.25, 0.25, -0.25, -0.5, 0.5, 0.0, -1.0, 0.0, -0.5, 1.0, 0.75, 0.0, 0.0, 0.0, -0.5, 0.25, 0.75, 0.5, -0.5, 0.0, -1.0, -0.75, 0.0, 0.75, 0.5, -0.75, 0.25, -0.25, -0.75, -0.75, -0.5, -0.75, 1.0, 0.5, 0.75, 0.0, -1.0, -0.25, -1.0, 0.5, 1.0, 0.5, -0.5, 0.5, 0.5, 0.5, 1.0, -0.25, -0.25, -0.75, 0.75, -0.5, 0.0, 1.0, -0.5, 0.5, -0.5, -0.5, 0.0, 0.25, ]);
    
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    device10.pushErrorScope("internal");
    
    query000.destroy()
    const array6 = new Float32Array([-0.75, 0.25, -0.25, -0.5, -0.5, 0.25, -0.75, -0.75, 0.25, -1.0, -0.75, 0.75, 0.75, 0.0, -1.0, 0.75, 1.0, -0.5, 0.5, -1.0, 0.75, 0.5, -0.75, 0.25, -0.5, 0.0, -0.75, -1.0, 0.5, -0.75, -0.25, 1.0, -0.75, 0.0, -0.25, -1.0, 1.0, -0.75, -0.75, -0.75, -0.5, 0.0, 0.5, -0.5, -1.0, -0.25, 0.75, 0.25, -0.75, -1.0, -1.0, -0.25, -0.25, 0.0, 0.0, 0.75, -0.5, 0.75, 0.5, 0.5, -1.0, -0.25, -0.25, 0.5, 0.25, -0.25, 0.5, -0.25, 0.0, 0.75, -0.75, 1.0, 1.0, -1.0, 0.25, 1.0, -1.0, 0.25, 0.25, -0.25, 0.0, -1.0, -0.25, 0.5, 0.5, 0.75, 0.5, 0.5, -0.25, 0.75, -1.0, 1.0, 0.75, 0.25, 0.0, 0.5, -0.5, -0.75, -1.0, -0.5, ]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    
    
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const command_buffer100 = command_encoder100.finish();
    const array7 = new Float32Array([0.5, 1.0, 0.5, 0.0, -0.25, 0.5, 0.25, 1.0, 0.75, 0.75, -0.5, 0.25, 0.5, 0.0, 1.0, 0.25, -0.75, -0.5, -0.75, 1.0, 0.5, 0.25, 0.0, -0.25, 0.25, -1.0, 0.0, -0.75, 0.25, 0.25, 0.5, -0.75, -0.5, 1.0, 0.75, 0.75, 0.0, 0.0, -0.25, 0.5, -0.75, 1.0, -0.25, -0.5, 1.0, 0.0, 0.5, 0.0, -1.0, 0.25, 0.25, 1.0, -0.75, -0.75, -0.5, 0.5, 1.0, -0.5, 0.0, -1.0, -0.75, -0.75, 0.25, 0.0, -0.25, -0.25, -0.25, -0.5, -1.0, -0.75, 0.25, 1.0, -0.5, 0.0, 0.75, 1.0, 0.5, -0.5, 0.0, 0.25, -0.75, -0.75, 0.0, 0.75, 0.25, -0.75, -0.25, -1.0, 0.25, 1.0, 0.0, 0.25, 0.75, 0.0, 0.0, 0.5, -0.5, -1.0, 0.5, 0.0, ]);
    
    
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    query001.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query001.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    query100.destroy()
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query100.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    buffer101.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array8 = new Float32Array([0.25, 0.5, 1.0, -0.75, 0.25, 1.0, 1.0, -0.25, 0.75, 1.0, -1.0, -0.25, 0.0, -0.75, -0.75, 0.5, 0.25, 0.0, -0.25, -0.75, 0.75, 0.0, -0.25, 0.5, 1.0, -0.5, 0.0, -0.75, 0.75, -1.0, -1.0, -1.0, -1.0, 1.0, -1.0, -1.0, 0.25, -0.25, -0.5, -0.75, -0.75, 0.25, 0.75, 0.75, 0.25, 0.5, 1.0, 0.75, 0.0, -0.75, 0.75, 0.5, 1.0, -0.25, 0.0, -0.75, 0.75, -0.75, 0.25, 1.0, -0.5, -0.75, 1.0, -1.0, -0.75, 0.5, 0.5, 0.25, -0.5, -0.75, -0.25, -1.0, 1.0, -0.25, -1.0, 0.5, 0.25, 0.75, 0.75, 0.25, 0.75, -0.75, 0.25, -0.75, -0.5, -0.75, -0.25, 0.0, 0.5, 0.25, 0.5, 0.5, 1.0, 0.75, 0.75, 0.5, -0.25, -0.25, 0.5, 0.5, ]);
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    query001.destroy()
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    query001.destroy()
    query001.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    device10.pushErrorScope("out-of-memory");
    
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer003.destroy()
    buffer002.destroy()
    
    buffer001.destroy()
    const array9 = new Float32Array([-0.75, 0.75, -0.5, -0.25, -0.75, 1.0, 0.5, 0.25, 0.0, -0.75, 1.0, -0.25, -0.5, -1.0, 0.25, 0.0, -0.75, -1.0, 0.0, -0.75, 0.5, -1.0, 0.75, -0.25, 0.25, 1.0, 0.5, 0.0, -1.0, 0.5, 0.0, 0.0, -1.0, -0.5, -1.0, -1.0, -0.25, 1.0, 0.5, 0.25, 0.5, -1.0, 0.5, 1.0, -0.25, 1.0, -0.5, -0.5, -0.5, 0.75, 0.5, 1.0, -1.0, 0.75, -1.0, 1.0, -0.5, 1.0, -0.25, 0.5, -0.25, 1.0, 0.75, -1.0, -0.5, 0.25, 0.5, 0.5, -1.0, -0.75, -0.75, 0.5, 0.75, 0.0, -0.25, 0.25, -0.5, 0.5, 0.0, -0.5, 0.5, 1.0, 1.0, -0.75, 1.0, -1.0, -0.25, 0.25, 0.0, -0.75, -0.75, -1.0, -0.75, -0.5, 1.0, 0.75, 0.25, 0.75, 0.0, 0.0, ]);
    command_encoder101.insertDebugMarker("mymarker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    device10.queue.writeBuffer(buffer102, 0, array9, 0, array9.length);
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    command_encoder102.clearBuffer(buffer102);
    command_encoder101.pushDebugGroup("mygroupmarker")
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    query002.destroy()
    query002.destroy()
    
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const array10 = new Float32Array([-0.75, -0.75, -0.5, 1.0, 0.75, 0.0, -0.25, 0.25, -0.25, -1.0, -0.25, 0.75, 1.0, 0.25, 0.25, 0.25, 0.0, 0.75, -0.25, -0.75, -0.75, 0.0, 0.5, -1.0, -1.0, -0.25, 0.5, 0.25, 0.5, 1.0, -0.5, 0.75, 0.0, -0.25, 0.5, -0.75, -1.0, 0.0, -0.5, -1.0, 0.5, -1.0, -0.75, 0.5, 0.75, -0.25, -0.75, -0.5, 0.75, -0.5, 0.75, -0.25, 0.25, 1.0, -0.5, 0.0, 0.75, -0.75, -1.0, 0.25, 0.25, -0.25, 0.75, 1.0, 0.0, 0.0, -0.25, 0.75, 0.5, 0.75, 0.75, 0.75, 0.5, 0.75, -0.75, -0.5, -0.5, -0.5, 0.5, 0.75, 0.75, 0.25, 1.0, -0.5, -0.5, -0.25, -0.75, 0.0, -0.25, -1.0, -0.25, 1.0, -0.75, 0.25, -0.25, -0.75, -0.25, 0.0, 0.0, -1.0, ]);
    
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_buffer103 = command_encoder103.finish();
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
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
    device10.queue.writeBuffer(buffer103, 0, array8, 0, array8.length);
    const command_buffer002 = command_encoder002.finish();
    
    command_encoder102.clearBuffer(buffer102);
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder101.popDebugGroup()
    command_encoder102.copyBufferToBuffer(
        buffer100,
        0,
        buffer102,
        0,
        400
    );
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer103, 0, array10, 0, array10.length);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder102.copyBufferToBuffer(
        buffer100,
        0,
        buffer103,
        0,
        400
    );
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    const array11 = new Float32Array([1.0, -0.25, -0.75, 0.75, 0.5, -0.5, 0.25, -0.75, -0.5, -0.25, 0.0, 1.0, -0.75, -1.0, 0.5, 0.5, -1.0, -0.25, 0.25, 1.0, -1.0, 1.0, 0.5, 0.5, -1.0, 1.0, -0.5, -0.25, 0.75, 0.5, 0.75, -0.75, -0.5, -0.75, -1.0, -0.25, -0.5, -0.25, -0.75, 0.0, 0.75, 0.5, -0.5, 0.5, 0.75, -0.5, -1.0, -0.75, -0.75, -0.75, 0.25, 0.5, 0.75, -0.75, 0.0, -1.0, 0.75, 1.0, 0.25, 0.75, -1.0, -1.0, -1.0, 0.25, 0.0, 0.25, 1.0, 0.5, -0.5, 1.0, 1.0, 0.25, -1.0, 1.0, -1.0, -0.75, 0.75, -0.5, -0.25, -0.75, 1.0, -0.25, -0.75, -0.5, -0.25, -0.5, 1.0, 0.75, -0.25, -0.5, 0.0, 0.5, 0.0, -0.25, -0.75, 0.5, -0.75, 1.0, 0.25, 0.25, ]);
    command_encoder102.pushDebugGroup("mygroupmarker")
    query002.destroy()
    buffer100.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    command_encoder102.popDebugGroup()
    const command_buffer104 = command_encoder104.finish();
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    
    const array12 = new Float32Array([-0.5, 1.0, 1.0, -1.0, -0.5, 0.25, 0.75, 0.25, -1.0, -0.5, 0.25, -1.0, 1.0, -1.0, 0.0, 0.5, -0.5, 0.5, -0.75, -0.25, 1.0, 0.25, 0.25, -0.75, -1.0, -1.0, -1.0, 0.0, 0.25, 1.0, 0.75, -0.25, 0.0, -0.75, -0.5, -0.5, 1.0, -1.0, 0.5, -0.25, -1.0, 1.0, 0.75, -0.5, -0.5, -0.25, 0.0, 0.0, 0.5, 1.0, -1.0, 1.0, 0.5, -0.5, -0.75, 0.25, 0.5, 1.0, 0.0, -0.25, 0.5, 0.75, 0.5, 0.0, -0.5, -1.0, 0.75, 1.0, -0.25, 0.75, 0.5, -0.75, 0.75, 0.0, 1.0, -0.5, -1.0, -1.0, 1.0, -0.75, 0.75, 1.0, -0.25, 1.0, 0.5, 0.25, 0.0, -1.0, 0.0, 0.0, -1.0, -0.5, 0.0, -0.5, -0.5, 0.5, 0.75, -0.25, 0.5, 0.75, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer103, 0, array11, 0, array11.length);
    device10.queue.writeBuffer(buffer103, 0, array9, 0, array9.length);
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder102.clearBuffer(buffer100);
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    
    const command_buffer003 = command_encoder003.finish();
    
    device10.pushErrorScope("out-of-memory");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.writeBuffer(buffer103, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    
    
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder105.pushDebugGroup("mygroupmarker")
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    command_encoder101.copyBufferToBuffer(
        buffer101,
        0,
        buffer103,
        0,
        400
    );
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    command_encoder101.copyBufferToBuffer(
        buffer103,
        0,
        buffer100,
        0,
        400
    );
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    command_encoder101.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const command_buffer101 = command_encoder101.finish();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    query002.destroy()
    query100.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
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
    
    
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    device00.pushErrorScope("out-of-memory");
    device10.queue.writeBuffer(buffer102, 0, array12, 0, array12.length);
    device10.queue.writeBuffer(buffer102, 0, array12, 0, array12.length);
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    command_encoder105.clearBuffer(buffer103);
    buffer004.destroy()
    command_encoder102.clearBuffer(buffer103);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    command_encoder102.clearBuffer(buffer102);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    device10.queue.writeBuffer(buffer102, 0, array11, 0, array11.length);
    query000.destroy()
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    command_encoder102.popDebugGroup()
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    buffer001.destroy()
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    
    
    command_encoder102.insertDebugMarker("mymarker");
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    query000.destroy()
    
    
    command_encoder105.clearBuffer(buffer103);
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    query100.destroy()
    const command_buffer004 = command_encoder004.finish();
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    
    query100.destroy()
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array13 = new Float32Array([-0.75, 1.0, -0.5, -0.25, 0.5, 0.25, -1.0, 0.5, -0.5, 0.0, -0.75, 0.0, -0.5, -1.0, -0.25, 0.5, 0.0, -0.5, 0.0, 0.0, 0.5, -0.5, -0.75, 1.0, -1.0, -0.75, 0.75, 0.0, 0.75, -0.5, -0.75, 1.0, 0.75, -0.75, 0.75, -0.5, -0.5, -0.5, -0.25, 0.5, 0.0, 0.75, 1.0, -0.75, -0.75, 1.0, 1.0, 0.0, -0.25, 1.0, -0.75, -0.5, -1.0, 0.25, -0.25, -0.25, 0.0, 0.75, -1.0, 0.25, -1.0, 0.5, -0.5, 1.0, -0.25, -0.5, 1.0, 0.0, -1.0, 1.0, -1.0, 0.0, -0.5, -1.0, 0.5, 0.75, -0.75, -1.0, -0.75, 0.25, -0.75, -0.5, 0.75, -0.75, 1.0, -0.75, 0.0, -0.5, 0.25, 0.25, 0.0, 1.0, -1.0, 0.5, 0.5, -0.75, -0.75, -0.5, 0.75, 0.25, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer000, 0, array9, 0, array9.length);
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder102.copyBufferToBuffer(
        buffer103,
        0,
        buffer102,
        0,
        400
    );
    const command_buffer102 = command_encoder102.finish();
    
    device10.pushErrorScope("internal");
    buffer102.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    
    query002.destroy()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    
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
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder201.insertDebugMarker("mymarker");
    
    command_encoder201.insertDebugMarker("mymarker");
    device00.pushErrorScope("internal");
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    command_encoder200.pushDebugGroup("mygroupmarker")
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder200.insertDebugMarker("mymarker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    device20.pushErrorScope("out-of-memory");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device10.queue.writeBuffer(buffer102, 0, array13, 0, array13.length);
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_buffer201 = command_encoder201.finish();
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    query100.destroy()
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.pushErrorScope("validation");
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    device10.queue.writeBuffer(buffer103, 0, array13, 0, array13.length);
    
    
    
    
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    query002.destroy()
    
    
    buffer005.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    buffer201.destroy()
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    
    device10.queue.writeBuffer(buffer104, 0, array8, 0, array8.length);
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array13, 0, array13.length);
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    device10.pushErrorScope("out-of-memory");
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    device30.pushErrorScope("validation");
    
    device00.queue.writeBuffer(buffer005, 0, array10, 0, array10.length);
    
    const sampler0011 = device00.createSampler( { label: "sampler0011" } );
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    query004.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    const query005 = device00.createQuerySet({
        label: "query005",
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
    
    command_encoder105.insertDebugMarker("mymarker");
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.queue.writeBuffer(buffer104, 0, array8, 0, array8.length);
    
    device10.queue.writeBuffer(buffer102, 0, array13, 0, array13.length);
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    
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
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer007, 0, array11, 0, array11.length);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    buffer105.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query003.destroy()
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    render_bundle_encoder100.insertDebugMarker("marker");
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
    
    device00.queue.writeBuffer(buffer007, 0, array9, 0, array9.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    query003.destroy()
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
    
    device00.queue.writeBuffer(buffer007, 0, array6, 0, array6.length);
    query200.destroy()
    device10.queue.writeBuffer(buffer104, 0, array8, 0, array8.length);
    device50.pushErrorScope("out-of-memory");
    
    buffer104.destroy()
    query200.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
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
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    query005.destroy()
    query201.destroy()
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const sampler0012 = device00.createSampler( { label: "sampler0012" } );
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    query100.destroy()
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    query100.destroy()
    
    device00.queue.writeBuffer(buffer007, 0, array13, 0, array13.length);
    device00.queue.writeBuffer(buffer007, 0, array3, 0, array3.length);
    
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    const array14 = new Float32Array([1.0, -0.75, 0.75, 0.5, 0.0, -1.0, 0.25, -0.75, -0.25, -0.25, -0.25, 0.25, 1.0, -0.5, 0.5, 0.25, -0.75, 0.5, -0.75, -1.0, -0.75, 0.5, 0.5, -0.25, -1.0, 0.5, -0.75, -0.75, -0.75, -1.0, 0.0, -1.0, -0.5, 0.25, 0.25, 0.25, -1.0, 0.25, 0.25, 0.0, -0.25, -1.0, -0.5, 0.75, -0.75, 0.5, 0.75, -0.25, 0.75, -1.0, -0.75, -0.25, -0.25, -0.75, -1.0, 0.25, 0.5, 0.25, -1.0, -0.75, 0.0, -0.75, -1.0, -0.75, 1.0, -1.0, 0.75, -0.5, 0.0, -0.75, 0.5, 0.75, 0.0, -1.0, -0.25, 0.75, -1.0, 0.75, 0.75, -0.75, 0.75, 0.0, 0.75, -1.0, 0.0, 0.0, 0.0, 1.0, -0.25, 0.0, 0.25, -0.75, 1.0, 0.0, -0.75, 1.0, 0.0, 0.0, -0.25, 0.75, ]);
    
    query001.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer500, 0, array10, 0, array10.length);
    device00.queue.writeBuffer(buffer007, 0, array5, 0, array5.length);
    device50.queue.writeBuffer(buffer500, 0, array14, 0, array14.length);
    
    device00.queue.writeBuffer(buffer007, 0, array5, 0, array5.length);
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder105.popDebugGroup()
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
    const command_buffer105 = command_encoder105.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer400 = command_encoder400.finish();
    command_encoder200.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
}