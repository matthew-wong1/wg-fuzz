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
    
    
    const array0 = new Float32Array([-0.75, 0.0, 0.75, -0.25, 0.0, 0.0, 0.25, 0.75, 0.75, -0.5, -0.5, -0.5, 1.0, 1.0, -0.5, 0.75, -0.25, 0.75, -1.0, 0.5, -0.25, 0.25, 0.5, 0.75, -0.25, 0.25, 1.0, 0.75, -0.5, 0.0, 0.5, 0.5, -0.5, 1.0, 0.5, -0.75, 0.25, 0.75, -0.5, 0.0, 1.0, 0.75, 0.75, 0.0, 0.5, 1.0, -0.25, 0.0, 0.25, 0.75, 1.0, 0.0, -0.5, 1.0, 0.25, -0.75, -0.75, 0.75, -0.75, 0.0, -0.25, 1.0, -0.25, -0.25, -1.0, -0.25, 0.5, 0.75, 0.0, 0.5, -0.25, -0.25, 1.0, -0.25, 1.0, 0.0, -0.75, 0.0, 0.25, 0.75, -0.25, 0.5, -0.25, 0.25, 0.0, 0.75, -0.75, -1.0, -1.0, -1.0, 0.75, -0.25, 0.75, 1.0, 0.25, -0.25, -0.5, -0.75, 0.0, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([-0.5, 1.0, 0.5, 0.0, -0.5, -1.0, 0.5, 1.0, -1.0, -0.25, -0.5, -0.5, -0.75, 0.25, -0.75, -0.75, -1.0, 0.0, 0.0, 0.0, -0.75, -1.0, -0.5, 1.0, -0.75, 0.0, 0.25, -0.25, -0.75, -0.5, -0.75, 0.5, -0.75, 0.75, 0.5, 1.0, 0.25, -0.5, 0.0, 0.5, 0.5, 0.25, 0.25, -1.0, -0.75, -0.25, -0.25, -0.5, 0.0, 1.0, -0.25, 0.0, 0.5, -1.0, 0.25, -0.25, 1.0, 0.5, -0.25, -0.25, -0.75, 0.75, -0.5, 0.75, 0.5, -0.75, -1.0, 1.0, -0.25, 0.75, 0.5, 0.0, -1.0, 1.0, 1.0, 0.75, -0.25, -1.0, -0.5, -0.5, -1.0, 0.5, 0.0, -0.25, 0.75, -1.0, -1.0, 1.0, 1.0, 0.5, 0.5, -1.0, 0.25, 0.0, -0.5, 0.0, -0.25, -0.25, 0.0, 1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.pushErrorScope("validation");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.pushErrorScope("internal");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device30.destroy();
    const array2 = new Float32Array([1.0, 1.0, 0.0, -0.75, 0.75, 0.0, -1.0, -0.75, 0.25, 0.25, 1.0, -0.5, 0.5, 0.0, -0.75, 0.25, 1.0, 0.5, -0.25, -0.25, -0.75, -0.75, 1.0, -0.25, -0.25, 0.5, 0.75, 0.75, -1.0, 1.0, 0.25, 0.5, 1.0, 1.0, 1.0, -0.75, -1.0, 1.0, 0.25, 0.75, 0.25, 0.5, -0.25, -1.0, 0.25, 0.75, 0.5, 0.0, 1.0, 1.0, 0.25, 0.0, 1.0, -1.0, 0.25, 0.75, 0.0, 0.75, 0.5, 0.0, -1.0, -0.5, -0.75, -0.75, 0.75, 0.25, -0.5, -0.5, 1.0, 0.0, 0.0, -1.0, 0.25, -0.5, 0.25, -0.5, 0.25, -1.0, 0.0, 0.5, 1.0, -0.75, -0.75, 0.25, -0.75, 0.0, -1.0, 1.0, -0.5, 0.75, -1.0, 0.75, 0.5, -1.0, 0.75, 1.0, 0.5, -0.5, 0.75, -0.5, ]);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer200.destroy()
    device40.destroy();
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder100.popDebugGroup()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_buffer101 = command_encoder101.finish();
    const command_buffer200 = command_encoder200.finish();
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    command_encoder100.copyBufferToBuffer(
        buffer100,
        0,
        buffer100,
        0,
        400
    );
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    buffer100.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    
    device00.destroy();
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    command_encoder201.popDebugGroup()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    command_encoder201.popDebugGroup()
    
    
    
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array3 = new Float32Array([0.75, -0.75, 0.25, 1.0, -0.75, -1.0, 0.0, -0.75, 1.0, -0.75, -0.75, 0.25, 0.25, 0.5, 1.0, 0.5, -0.25, -1.0, 1.0, -0.5, -0.5, 0.75, 0.0, -0.75, 0.0, -1.0, 0.5, -0.75, 0.0, -0.5, 1.0, 0.5, 0.0, 0.5, 1.0, 0.0, -1.0, 0.5, 1.0, -0.75, 0.25, -0.75, 0.75, 0.5, -1.0, 0.5, -0.5, -1.0, -0.75, -0.25, -1.0, -0.25, 0.0, 0.5, -0.5, 0.75, 0.25, -1.0, 1.0, 0.0, 0.5, -0.75, -0.75, 0.0, 1.0, 0.75, -0.75, 0.0, 0.25, 1.0, -0.5, 0.5, -0.75, -0.75, 1.0, -0.25, 0.25, -0.75, -0.25, -0.25, 0.5, 1.0, 0.25, -0.5, 1.0, -1.0, -0.75, 0.75, 0.25, 0.0, -1.0, 1.0, -1.0, 1.0, 0.75, -1.0, 0.0, 0.25, -0.5, -0.5, ]);
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder201.insertDebugMarker("mymarker");
    
    
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    device30.destroy();
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder201.popDebugGroup()
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    const array4 = new Float32Array([0.5, 0.25, -0.5, 0.5, 0.25, -1.0, 0.0, 1.0, 0.5, 0.25, 0.0, 0.0, 0.75, 0.25, -0.75, 1.0, 0.0, -0.5, 0.0, 0.0, 0.5, -0.75, -1.0, 0.5, -0.75, -0.25, 1.0, -0.25, -1.0, -0.25, -0.25, 0.25, 0.25, 1.0, 0.25, 0.25, -0.5, 1.0, -0.25, 0.75, 0.5, -1.0, 0.5, -0.5, -0.5, 0.5, 1.0, -0.25, 1.0, 0.5, -0.5, 0.5, -0.75, -0.5, -0.5, -0.75, -0.5, -0.75, -0.5, 0.25, -0.25, -0.25, -1.0, 0.25, 1.0, -0.25, -0.25, -0.75, 0.0, -0.25, -0.75, -0.25, -1.0, 0.0, 0.25, -0.25, -0.5, 0.25, -0.75, 0.75, 0.0, -0.25, 0.0, 0.25, -0.5, 0.75, 0.5, -1.0, -0.25, 0.5, -1.0, 0.0, 0.25, -0.25, 0.75, 0.0, 0.5, -0.75, 1.0, -1.0, ]);
    
    command_encoder201.insertDebugMarker("mymarker");
    buffer101.destroy()
    command_encoder202.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.insertDebugMarker("marker");
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_buffer202 = command_encoder202.finish();
    command_encoder201.pushDebugGroup("mygroupmarker")
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder201.popDebugGroup()
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer202.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    const command_buffer201 = command_encoder201.finish();
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    command_encoder103.insertDebugMarker("mymarker");
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer203.destroy()
    
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    
    device20.pushErrorScope("out-of-memory");
    {
        await buffer203.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer203.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer203.unmap();
        console.log(new Float32Array(data));
    }
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    device40.destroy();
    
    command_encoder102.insertDebugMarker("mymarker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_bundle_encoder102.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    const sampler109 = device10.createSampler( { label: "sampler109" } );
    const sampler1010 = device10.createSampler( { label: "sampler1010" } );
    render_bundle_encoder200.popDebugGroup();
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    command_encoder102.insertDebugMarker("mymarker");
    
    command_encoder102.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder203.clearBuffer(buffer201);
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer103.destroy()
    command_encoder203.clearBuffer(buffer201);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder103.popDebugGroup()
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    const array5 = new Float32Array([-0.75, -0.5, 0.25, 0.75, -0.25, 0.25, 0.5, 0.5, 0.0, -0.25, 1.0, 0.0, 0.5, 0.5, 0.0, 0.5, 1.0, -1.0, 0.75, -0.75, -0.25, -0.5, -1.0, -1.0, 0.5, 0.0, 1.0, -0.75, -0.75, -0.75, 0.75, -0.5, 0.25, -0.75, -1.0, -0.25, -0.75, -0.5, -1.0, 1.0, 0.75, 0.25, -0.5, -1.0, 1.0, 1.0, 1.0, -0.5, -1.0, -1.0, -0.5, 0.0, 1.0, 0.25, 0.75, -1.0, 0.25, -0.75, 0.5, -1.0, -0.25, -0.25, 0.75, 1.0, -0.25, 0.75, 1.0, -0.75, 0.75, 1.0, 1.0, 0.25, -1.0, 0.75, -0.5, 0.75, -0.75, 0.25, 0.75, 0.5, 1.0, -1.0, 1.0, -0.5, 0.25, -0.25, -0.5, 0.25, -0.75, 0.0, -0.5, -0.25, 0.25, -0.25, -1.0, -0.25, -0.5, 1.0, -0.5, -0.25, ]);
    buffer102.destroy()
    
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    compute_pass_encoder1020.popDebugGroup()
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const sampler1011 = device10.createSampler( { label: "sampler1011" } );
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    render_bundle_encoder202.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    compute_pass_encoder2000.popDebugGroup()
    render_bundle_encoder201.popDebugGroup();
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const command_buffer203 = command_encoder203.finish();
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder102.insertDebugMarker("marker");
    buffer200.destroy()
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    buffer102.destroy()
    
    buffer201.destroy()
    const sampler1012 = device10.createSampler( { label: "sampler1012" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    
    
    
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    compute_pass_encoder1000.popDebugGroup()
    device20.queue.writeBuffer(buffer204, 0, array5, 0, array5.length);
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder102.popDebugGroup();
    buffer101.destroy()
    
    device20.pushErrorScope("internal");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder202.insertDebugMarker("marker");
    compute_pass_encoder2000.popDebugGroup()
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    buffer204.destroy()
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder1001.popDebugGroup()
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    compute_pass_encoder1020.popDebugGroup()
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    device10.pushErrorScope("out-of-memory");
    command_encoder205.clearBuffer(buffer202);
    compute_pass_encoder1030.insertDebugMarker("marker")
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    const command_buffer104 = command_encoder104.finish();
    
    
    command_encoder205.copyBufferToBuffer(
        buffer204,
        0,
        buffer202,
        0,
        400
    );
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    const render_bundle_encoder104 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder104",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.destroy();
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const array6 = new Float32Array([0.5, -0.5, -0.75, 0.5, 0.75, 0.5, -1.0, -0.75, -0.75, 0.0, -1.0, -0.75, 0.5, 0.75, 0.75, -0.25, -0.75, 0.25, 0.5, 0.25, 0.5, -0.75, 0.25, -0.25, 1.0, 0.0, -0.75, -0.25, 0.75, -0.5, 1.0, 1.0, 0.25, 1.0, 0.0, 0.25, -0.25, -0.5, -0.25, 0.75, 1.0, -1.0, 0.0, -0.25, -0.25, 1.0, -1.0, 0.75, -0.25, 0.75, -0.5, -1.0, 1.0, 0.0, 1.0, 0.25, 0.0, 0.0, 0.0, 0.75, 0.25, -0.75, -1.0, -0.5, 0.25, 1.0, 0.75, 0.0, 0.5, -1.0, 0.75, 0.0, 0.75, -0.75, 0.0, 0.75, 0.0, -0.75, 1.0, -0.5, -1.0, 0.0, 0.5, 0.75, -0.25, -0.5, -0.25, -0.75, 0.0, 0.25, 0.75, 0.75, 0.25, 0.5, 1.0, 0.25, 0.0, 0.25, 0.75, 0.25, ]);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    buffer104.destroy()
    compute_pass_encoder2040.insertDebugMarker("marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder206.insertDebugMarker("mymarker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder205.clearBuffer(buffer200);
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder205.clearBuffer(buffer202);
    const command_buffer205 = command_encoder205.finish();
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder206.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    {
        await buffer600.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer600.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer600.unmap();
        console.log(new Float32Array(data));
    }
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    device60.destroy();
    compute_pass_encoder2040.popDebugGroup()
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    buffer202.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer500.destroy()
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device40.destroy();
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    render_bundle_encoder500.insertDebugMarker("marker");
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    render_bundle_encoder200.popDebugGroup();
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    compute_pass_encoder2040.insertDebugMarker("marker")
    
    
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    render_bundle_encoder500.popDebugGroup();
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device50.pushErrorScope("out-of-memory");
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    device50.pushErrorScope("internal");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    
    buffer700.destroy()
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    buffer401.destroy()
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    const array7 = new Float32Array([0.75, -0.5, 0.25, 0.0, 0.5, -0.25, 0.5, -0.25, -0.75, -0.75, -0.75, 1.0, 1.0, 0.25, -1.0, 1.0, 0.0, 0.25, -1.0, 0.0, 1.0, 0.75, 0.0, 0.5, 0.25, 1.0, -1.0, -0.5, 0.75, -0.25, 0.75, -0.25, -1.0, -0.25, 1.0, -0.5, -0.5, -0.25, -0.5, 1.0, -0.75, 0.0, -0.25, -0.25, -0.25, 0.5, 1.0, -0.25, -1.0, -0.25, 0.75, -0.5, 0.75, -1.0, 1.0, -1.0, -0.25, -0.5, 0.5, 0.5, 1.0, 1.0, -0.75, 0.0, 0.75, -1.0, -1.0, 0.75, 0.75, 0.75, 0.75, 0.5, 0.0, 0.25, -0.5, -0.25, -0.5, 0.0, 1.0, 0.75, -0.75, 1.0, 0.5, 0.75, -1.0, 0.25, -0.75, 0.5, -0.25, 0.75, 0.5, 0.5, -0.75, 0.0, 0.5, 0.75, 0.5, 1.0, -0.75, 0.75, ]);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    compute_pass_encoder8000.insertDebugMarker("marker")
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder500.popDebugGroup();
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder8000.insertDebugMarker("marker")
    
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
    
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_bundle_encoder500.popDebugGroup();
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    
    compute_pass_encoder2060.pushDebugGroup("group_marker")
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const command_buffer600 = command_encoder600.finish();
    compute_pass_encoder2060.popDebugGroup()
    const command_buffer800 = command_encoder800.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder8000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    const command_buffer206 = command_encoder206.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2060.popDebugGroup()
}