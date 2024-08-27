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
    const array0 = new Float32Array([0.5, -0.25, 0.25, -0.5, 0.75, -0.5, 0.0, 0.0, -0.25, 0.5, 0.25, -1.0, 0.75, -0.5, 1.0, 0.75, -0.25, 0.75, 0.5, -0.5, 0.5, 1.0, 1.0, 0.5, -0.5, 0.5, -1.0, 0.75, -0.75, 0.25, 0.5, 1.0, -0.75, 0.25, 0.0, 0.75, 0.5, 0.5, -0.5, 0.25, -1.0, 0.0, 0.25, 0.0, 0.75, -0.25, 0.75, -1.0, 0.25, 0.75, 0.75, -0.75, 0.5, 0.75, -0.5, -0.5, 0.5, 1.0, 0.25, 0.0, 0.0, 1.0, 0.25, -0.5, -0.75, 0.0, -0.25, 0.75, -0.5, -0.5, 1.0, -0.25, -0.5, -0.5, 1.0, 0.75, 1.0, 0.25, -0.25, -0.75, -0.25, -0.5, -0.25, 0.75, 0.5, 0.25, -0.25, -0.25, 0.0, -1.0, 0.0, 0.0, 0.5, -0.25, 0.25, -0.75, -0.75, 0.75, 0.5, 0.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const array1 = new Float32Array([-0.75, 0.5, -1.0, 0.0, -0.25, -0.25, -1.0, -0.25, -1.0, -0.5, 0.5, 0.0, 1.0, 0.5, -1.0, 0.25, 0.0, 0.0, 0.5, -0.25, -1.0, 0.25, -1.0, 0.5, -0.25, -0.5, -1.0, -0.25, 0.25, -0.25, 0.25, 0.75, 0.0, 0.25, 0.75, -0.75, 0.75, -0.75, -0.5, -0.5, -0.25, 1.0, -1.0, -0.5, 0.25, -1.0, -0.25, -1.0, 0.25, -0.75, 0.0, 0.0, -0.75, -0.5, 0.25, -0.5, -0.25, -0.75, 0.75, -1.0, -0.25, 0.75, -0.25, 0.25, -0.25, -1.0, 1.0, 1.0, 0.0, -0.5, 0.0, -0.25, -0.75, -0.5, -1.0, -1.0, 0.75, -1.0, 1.0, 0.0, -0.5, -0.5, 0.25, 0.5, -0.5, 0.25, 1.0, 0.25, 0.25, 0.25, 0.75, -0.75, -0.25, -0.25, -1.0, 0.25, -1.0, -0.5, 0.25, 0.75, ]);
    
    
    
    
    
    
    
    const array2 = new Float32Array([0.0, -1.0, -1.0, -0.5, -0.5, -0.75, -1.0, -0.75, -0.5, -0.75, -0.5, 1.0, 0.0, 0.25, 1.0, 0.0, 0.5, 1.0, 0.75, 0.25, 0.75, 0.25, 1.0, 0.0, -0.5, -0.75, 0.75, 0.5, -0.25, -0.5, 0.25, -0.25, 0.75, 0.75, 0.0, 0.25, -1.0, -1.0, 0.0, 0.25, 0.5, 0.75, -0.75, -0.25, -1.0, -1.0, -1.0, 0.75, -1.0, 0.25, -0.25, -0.5, 1.0, 0.75, -1.0, 0.5, 0.5, -0.5, 1.0, -0.75, -0.25, -1.0, -0.25, 0.75, -1.0, -0.75, -0.75, -1.0, 0.25, -1.0, -1.0, 0.0, 0.5, -1.0, 1.0, -0.25, -1.0, 0.0, 0.0, -1.0, 0.5, -1.0, -0.75, -0.5, 0.0, -1.0, 0.25, -0.25, -1.0, 0.25, 0.0, 0.25, -0.25, -0.5, 0.0, 0.5, -1.0, 0.75, -0.5, 0.75, ]);
    const array3 = new Float32Array([-0.25, 0.75, 0.75, -1.0, -1.0, 0.5, 1.0, 0.75, 1.0, 0.25, -0.5, 1.0, 0.0, 0.25, -0.75, -0.25, 0.25, -0.25, 0.5, -0.5, -0.25, 1.0, -0.25, 0.0, 0.5, -1.0, -0.25, -0.5, 0.25, 0.25, -0.25, 0.75, 0.5, -0.75, 1.0, -0.25, 0.0, 1.0, 0.0, 1.0, -1.0, -0.25, 0.75, -0.75, -0.25, 0.5, 0.0, -1.0, -1.0, 1.0, 0.0, 0.75, -1.0, -1.0, -0.25, 1.0, 0.75, -0.75, -0.75, 0.75, 0.25, 0.5, 0.0, 0.25, 0.0, 0.5, 0.25, 0.5, -0.25, 0.75, 1.0, -0.25, -0.5, 0.75, -0.75, 0.0, 1.0, -0.25, 1.0, -0.75, -0.5, -0.75, -0.75, -0.75, 0.5, 0.25, 0.25, -0.75, 0.75, 0.75, 0.0, 0.75, -1.0, 0.25, 1.0, 0.75, -0.5, -0.25, 1.0, 0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const array4 = new Float32Array([-0.75, -0.25, -0.25, -0.5, -0.75, 0.25, 0.25, -0.5, 1.0, -0.75, 1.0, 0.5, 0.5, -0.75, -0.5, -0.75, -0.75, -1.0, -1.0, 0.5, 0.25, 0.75, -0.5, 0.25, 0.0, -0.75, 0.25, -0.5, -0.25, 0.0, 0.0, -0.25, 0.25, 0.5, 0.5, 0.25, -0.25, -0.5, 0.0, 0.0, -0.25, 0.5, -0.5, -0.25, 0.75, -0.5, 0.0, 1.0, 0.0, 0.5, 0.0, 0.25, 0.5, 0.0, 0.0, -0.75, 0.0, 0.75, 0.5, 0.75, -0.75, -0.25, 0.0, 0.25, 0.75, -0.75, -0.25, 0.25, -0.75, 1.0, -0.25, 1.0, -0.5, 0.75, -0.75, 0.5, -0.75, 0.25, -0.75, 0.5, -0.25, -0.25, 0.5, 0.25, -0.25, -0.75, -0.5, 0.75, 0.25, 1.0, 0.25, 0.0, 0.75, -1.0, 1.0, 0.25, 0.5, -0.75, -1.0, 0.75, ]);
    device10.pushErrorScope("internal");
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const array5 = new Float32Array([0.5, -1.0, -0.25, -1.0, 0.25, -1.0, -0.25, 0.75, 0.5, 0.75, -1.0, -0.75, 0.0, 1.0, -0.5, 1.0, 0.5, -0.25, 0.75, 1.0, -1.0, -0.5, 0.75, 0.75, -0.5, 1.0, 0.25, -0.25, 0.25, -0.75, -0.25, -0.75, 0.75, 0.25, 1.0, -0.75, -0.5, 0.25, -0.25, 0.5, 0.5, -0.5, 0.75, -0.25, 0.5, -1.0, 0.5, -0.75, 0.75, -0.5, 0.5, 0.75, 0.0, -1.0, -0.75, 0.0, 1.0, -0.25, -0.25, -0.5, -0.25, 0.0, -0.25, -0.75, 0.25, -0.5, 0.0, -0.5, 1.0, 0.5, 1.0, 0.5, -0.75, -1.0, 1.0, 1.0, -0.25, -1.0, 1.0, -0.5, -0.25, 0.5, 1.0, 0.5, -0.5, -1.0, 0.5, 0.5, -0.5, 1.0, 0.75, -1.0, -1.0, 0.25, 0.75, -1.0, -0.25, -1.0, 0.25, 0.5, ]);
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.pushErrorScope("out-of-memory");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array6 = new Float32Array([1.0, 0.25, 0.5, -0.75, 0.25, 0.5, 0.5, 0.0, 0.5, -0.75, -0.25, -0.25, 0.75, -0.5, -0.25, -0.75, 0.25, -0.75, -0.5, 0.0, -0.75, -0.75, -0.5, -1.0, -0.5, 0.75, -1.0, -0.75, -0.75, -1.0, -0.75, -0.75, 0.5, 0.75, 0.25, 0.75, 1.0, 0.25, 0.5, -0.5, -1.0, 0.0, 0.0, 1.0, 0.5, -1.0, 0.75, -0.5, -0.75, -0.75, 0.75, 0.5, 1.0, 0.5, 0.5, 0.25, -0.25, -0.75, -1.0, 0.75, -1.0, -0.5, 1.0, -1.0, 0.25, 1.0, -1.0, -0.75, 1.0, 0.25, 0.75, -0.25, 0.0, 0.75, 0.25, -1.0, 1.0, -0.25, -0.75, 1.0, -1.0, 0.25, -0.5, -0.5, -0.5, 0.0, 0.25, 1.0, -1.0, -0.75, 0.0, 0.0, 0.5, 0.0, 0.25, -0.25, 0.5, -0.25, 0.25, 0.25, ]);
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder103.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.pushErrorScope("validation");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder103.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    command_encoder102.clearBuffer(buffer100);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    command_encoder103.copyBufferToBuffer(
        buffer102,
        0,
        buffer100,
        0,
        400
    );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const array7 = new Float32Array([1.0, 0.75, 1.0, 0.75, -0.25, 0.25, 1.0, 1.0, -0.25, -1.0, -0.25, 1.0, -0.5, -0.5, -1.0, -1.0, 0.25, 1.0, 0.5, 0.0, 0.5, 0.0, -0.25, 1.0, 0.25, 1.0, -0.5, 0.75, -0.5, 1.0, 0.5, -0.5, -0.75, -0.5, 0.75, 0.75, 0.0, -0.5, 1.0, -0.25, 0.75, 0.0, -0.5, 1.0, -1.0, 0.0, -1.0, 0.0, 0.25, 0.25, 0.0, 0.25, -1.0, -0.75, 0.75, 0.75, 0.0, -1.0, 0.0, 0.25, -0.5, 0.0, -1.0, 0.0, 0.25, -0.5, -0.5, 1.0, 1.0, -0.5, -0.5, 1.0, -0.25, -1.0, 0.25, 0.25, 0.5, 0.0, -1.0, -0.5, 0.0, -0.25, 1.0, 0.0, -1.0, -1.0, 0.0, -0.75, -0.75, -0.5, -0.75, 0.25, 0.25, 0.0, 0.75, -0.75, 0.0, 1.0, -0.75, -0.75, ]);
    
    device20.destroy();
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    command_encoder101.clearBuffer(buffer100);
    
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    command_encoder103.clearBuffer(buffer100);
    command_encoder103.copyBufferToBuffer(
        buffer102,
        0,
        buffer100,
        0,
        400
    );
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    command_encoder102.pushDebugGroup("mygroupmarker")
    command_encoder103.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.popDebugGroup();
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    command_encoder101.popDebugGroup()
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    command_encoder102.copyBufferToBuffer(
        buffer102,
        0,
        buffer100,
        0,
        400
    );
    command_encoder103.popDebugGroup()
    command_encoder102.insertDebugMarker("mymarker");
    command_encoder102.clearBuffer(buffer100);
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder103.pushDebugGroup("mygroupmarker")
    command_encoder103.popDebugGroup()
    
    command_encoder103.clearBuffer(buffer100);
    command_encoder101.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    command_encoder101.popDebugGroup()
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    command_encoder104.copyBufferToBuffer(
        buffer100,
        0,
        buffer100,
        0,
        400
    );
    
    command_encoder101.copyBufferToBuffer(
        buffer102,
        0,
        buffer100,
        0,
        400
    );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder104.copyBufferToBuffer(
        buffer102,
        0,
        buffer102,
        0,
        400
    );
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    command_encoder101.clearBuffer(buffer102);
    
    const array8 = new Float32Array([0.75, -0.75, -0.5, 0.75, 0.5, -0.25, -0.25, 0.5, 0.25, 0.75, 0.25, 0.0, 1.0, -0.5, 0.5, 1.0, 0.25, 1.0, -0.5, 0.25, -0.25, 0.25, -1.0, -0.75, 0.75, 1.0, 0.25, 1.0, -0.75, -0.25, -1.0, 0.0, -0.25, 0.5, -0.75, -0.5, -1.0, -1.0, 0.75, 0.0, 0.25, 0.75, -0.25, 0.75, 0.75, 0.5, -0.5, -0.25, 0.5, 0.5, 0.5, -0.75, 1.0, -0.25, -0.75, 0.75, -0.25, 1.0, 0.5, 0.25, 0.0, -1.0, 0.5, 0.25, -0.75, 0.75, -0.5, 0.25, -0.25, 0.25, -0.75, -0.5, -0.25, -0.75, 0.25, 0.25, 0.25, -0.25, -1.0, 0.75, -0.25, 0.5, 0.75, -0.75, -0.25, 0.25, -0.25, -0.25, -0.75, -0.5, 0.75, -0.5, -0.75, -1.0, 0.5, 0.75, 1.0, -0.5, -0.25, -0.25, ]);
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    
    
    
    const array9 = new Float32Array([-0.5, -0.5, 0.25, 0.0, -1.0, -0.5, -0.75, -0.75, -0.75, 0.25, 1.0, 1.0, 1.0, 0.5, -0.75, -0.25, 1.0, 0.25, -0.75, 0.0, 1.0, 0.0, -1.0, -1.0, 0.75, 1.0, -0.25, 1.0, -0.75, 0.75, 0.25, -0.5, -0.25, -0.5, 0.25, 1.0, -0.25, 0.25, -0.5, -0.5, -0.75, -0.5, 1.0, 0.0, 0.5, -0.5, 0.75, 0.0, -1.0, 0.25, 0.5, 0.25, 0.5, 0.0, -1.0, -0.5, -0.75, 0.0, -0.75, 1.0, -0.25, -0.5, 1.0, -0.75, -0.75, -0.5, -0.25, 1.0, 1.0, -0.25, -0.75, 0.5, 0.5, 1.0, 0.75, -1.0, 0.75, -0.5, -1.0, -1.0, -0.25, 0.75, 1.0, 0.25, 0.5, 0.25, -0.5, 0.5, -0.5, 1.0, 0.75, -0.5, -1.0, -0.25, 0.0, 1.0, -0.5, 0.0, -0.5, 0.75, ]);
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const array10 = new Float32Array([-0.75, -0.75, 1.0, -0.25, -1.0, 0.75, 0.75, 1.0, 0.0, -1.0, 0.75, 1.0, 0.25, 0.25, 0.25, 0.5, 0.75, -0.75, 1.0, -1.0, 0.75, 0.0, 0.25, -1.0, -0.75, -0.5, -0.5, -1.0, -0.25, 1.0, 0.75, -0.5, -0.5, 0.75, -1.0, -0.25, 1.0, -0.5, -0.25, 0.5, 0.0, 0.25, 0.25, -0.25, -0.25, 0.5, -0.75, 0.0, -1.0, 1.0, 0.5, -0.5, -0.25, -0.25, -0.5, 0.75, 0.75, -0.75, 0.25, -0.25, 1.0, -0.5, 0.5, -0.75, -1.0, -1.0, 0.75, -0.5, 0.0, -0.25, -0.25, -0.5, 1.0, 0.25, -0.5, 1.0, -1.0, -1.0, -1.0, -0.5, 0.25, 1.0, -0.75, -1.0, -0.5, 0.25, 0.75, 0.25, -0.5, -0.25, 0.5, 1.0, -1.0, 0.0, -0.75, 0.5, 0.75, 0.5, -0.5, -0.75, ]);
    
    command_encoder103.clearBuffer(buffer100);
    command_encoder100.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device10.queue.writeBuffer(buffer104, 0, array10, 0, array10.length);
    command_encoder103.clearBuffer(buffer100);
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    device30.pushErrorScope("validation");
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder103.copyBufferToBuffer(
        buffer105,
        0,
        buffer100,
        0,
        400
    );
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    
    
    device30.pushErrorScope("internal");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.destroy();
    const array11 = new Float32Array([-0.5, 0.25, -0.75, -1.0, -0.5, 0.0, 0.75, 0.5, -1.0, 0.25, 0.0, 1.0, -0.5, -0.25, -0.5, -0.5, -0.75, 0.25, 0.0, -0.25, 0.5, 0.5, 0.0, -0.75, -0.75, 0.0, 0.75, 0.5, -1.0, -0.5, 1.0, -1.0, -0.5, 0.5, 1.0, 0.75, 0.0, 0.0, 0.75, 1.0, 0.0, 0.25, 0.75, -0.25, -1.0, 0.75, -0.25, -1.0, 0.5, 0.75, 0.75, -1.0, 0.75, 0.5, 0.25, 0.75, 0.75, -0.75, 0.75, 0.25, -0.25, -0.75, 0.0, -0.75, -0.25, 0.5, -0.25, 0.0, 1.0, 0.0, 0.0, -0.25, -0.5, -0.75, 0.75, 0.25, -0.75, -0.75, -0.5, -0.5, -0.75, -0.75, -0.5, 0.5, 0.75, -0.75, 0.5, -1.0, 0.5, 0.25, 0.0, 0.0, 0.75, -0.5, -1.0, -1.0, -1.0, 0.25, -0.25, -1.0, ]);
    
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    
    device10.queue.writeBuffer(buffer105, 0, array9, 0, array9.length);
    
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device10.pushErrorScope("internal");
    
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer105, 0, array8, 0, array8.length);
    
    
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    command_encoder101.insertDebugMarker("mymarker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    command_encoder104.clearBuffer(buffer104);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    
    render_bundle_encoder100.popDebugGroup();
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer100, 0, array11, 0, array11.length);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const array12 = new Float32Array([1.0, -0.5, -0.25, -1.0, -0.25, 0.75, -0.75, 0.0, 0.25, -1.0, 0.75, -0.75, 0.75, -0.5, -0.75, -1.0, -0.75, 0.25, -1.0, 0.5, 0.75, -0.75, -0.75, -0.75, 0.0, 0.0, 1.0, -0.75, 1.0, 0.75, -1.0, -0.75, -1.0, -0.75, -0.5, -0.25, -0.75, -0.75, 0.25, -0.75, -1.0, 1.0, 0.5, 0.0, -0.5, 1.0, 0.0, -0.25, -0.75, 0.25, 0.25, 0.75, -0.5, 1.0, -0.75, -0.75, 0.5, -0.75, -1.0, 0.75, 1.0, 1.0, 0.75, 1.0, 0.25, -0.5, -0.75, -1.0, -0.25, -0.25, -0.25, -1.0, -0.75, -0.25, -1.0, 1.0, 0.0, -0.25, -0.25, -0.5, -0.5, 1.0, -0.75, -0.5, 0.0, -1.0, -1.0, 0.0, 0.25, -0.25, 0.5, 0.5, -0.75, 0.5, 0.0, 0.25, 1.0, 0.25, 0.0, 0.5, ]);
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    command_encoder100.clearBuffer(buffer100);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    render_bundle_encoder102.setPipeline(render_pipeline100);
    render_bundle_encoder100.setPipeline(render_pipeline101);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    render_bundle_encoder101.setPipeline(render_pipeline102);
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    
    
    
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer100,
        0,
        400
    );
    
    device10.queue.writeBuffer(buffer100, 0, array11, 0, array11.length);
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer100, 0, array12, 0, array12.length);
    device10.queue.writeBuffer(buffer100, 0, array12, 0, array12.length);
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device10.queue.writeBuffer(buffer105, 0, array7, 0, array7.length);
    
    device10.queue.writeBuffer(buffer104, 0, array10, 0, array10.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module1010,
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
            module: shader_module1010,
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
    device10.queue.writeBuffer(buffer100, 0, array11, 0, array11.length);
    command_encoder104.insertDebugMarker("mymarker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder101.popDebugGroup();
    device10.queue.writeBuffer(buffer100, 0, array11, 0, array11.length);
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    
    
    
    
    device10.queue.writeBuffer(buffer104, 0, array8, 0, array8.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder102.popDebugGroup()
    
    device10.queue.writeBuffer(buffer103, 0, array10, 0, array10.length);
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder300.popDebugGroup();
    device50.destroy();
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    device10.queue.writeBuffer(buffer100, 0, array11, 0, array11.length);
    
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    
    render_bundle_encoder100.popDebugGroup();
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    command_encoder104.clearBuffer(buffer100);
    device10.queue.writeBuffer(buffer104, 0, array9, 0, array9.length);
    device10.pushErrorScope("out-of-memory");
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer107, 0, array9, 0, array9.length);
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer101, 0, array12, 0, array12.length);
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    device20.queue.writeBuffer(buffer200, 0, array11, 0, array11.length);
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    
    command_encoder100.copyBufferToBuffer(
        buffer108,
        0,
        buffer101,
        0,
        400
    );
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device10.queue.writeBuffer(buffer103, 0, array9, 0, array9.length);
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    
    device10.pushErrorScope("validation");
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    
    
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const compute_pass_encoder1011 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1011" });
    
    
    device10.queue.writeBuffer(buffer104, 0, array12, 0, array12.length);
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    
    device10.queue.writeBuffer(buffer104, 0, array6, 0, array6.length);
    render_bundle_encoder100.popDebugGroup();
    
    
    device10.queue.writeBuffer(buffer105, 0, array10, 0, array10.length);
    
    
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    
    device10.queue.submit([]);
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    command_encoder101.copyBufferToBuffer(
        buffer108,
        0,
        buffer100,
        0,
        400
    );
    command_encoder104.clearBuffer(buffer100);
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    
    
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    
    command_encoder102.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    device10.queue.writeBuffer(buffer105, 0, array10, 0, array10.length);
    device10.queue.writeBuffer(buffer100, 0, array12, 0, array12.length);
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    
    device10.queue.writeBuffer(buffer108, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    compute_pass_encoder1011.pushDebugGroup("group_marker")
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer001, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    
    
    render_bundle_encoder101.popDebugGroup();
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer101, 0, array10, 0, array10.length);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    
    
    
    
    compute_pass_encoder1011.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer1010, 0, array1, 0, array1.length);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.queue.submit([]);
}