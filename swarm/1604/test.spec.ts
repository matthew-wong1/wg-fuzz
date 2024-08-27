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
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    const array0 = new Float32Array([-1.0, 1.0, 0.25, 0.0, 0.5, -0.75, 0.75, -0.25, 1.0, 0.0, -0.5, -1.0, -1.0, -0.5, -0.5, -0.75, 1.0, 0.25, -1.0, 1.0, 0.25, -0.5, -1.0, -0.25, 1.0, 1.0, 0.75, -0.75, 0.75, 0.75, 0.5, 0.0, 0.0, -1.0, -0.25, 0.5, -0.5, 1.0, -0.25, -0.75, 1.0, 0.75, -0.75, 1.0, 0.75, 0.5, -0.5, -0.25, 0.25, 0.0, -1.0, -0.75, 0.5, -0.75, -0.75, -1.0, 0.0, -0.25, 0.75, 0.25, 0.0, -1.0, 0.0, 0.25, 0.5, 1.0, -0.75, -0.75, 0.5, 1.0, 0.0, -0.5, -1.0, -0.75, 1.0, 1.0, -0.25, 0.5, -0.25, -1.0, -0.75, -1.0, -1.0, 0.25, 0.0, -0.75, 1.0, -0.25, -1.0, 0.25, 0.25, 0.5, -0.25, 0.75, -0.75, 0.25, -0.5, -0.5, -0.5, -0.25, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.pushErrorScope("validation");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const array1 = new Float32Array([0.25, -0.5, -0.75, -0.25, -1.0, -0.5, 0.75, 0.25, 0.75, -1.0, -0.5, 1.0, 0.25, 1.0, 0.25, 1.0, -0.75, 0.25, 0.0, -1.0, 0.5, -0.5, -0.5, 0.75, 0.25, -0.25, 0.0, 0.25, 1.0, 0.75, 0.25, 0.0, 0.0, -0.25, -1.0, -0.25, 0.5, 0.5, 0.75, 0.25, 0.75, 0.25, -0.75, -0.5, 0.0, -1.0, 0.0, -1.0, -0.25, -0.5, 0.5, -0.5, 0.5, -0.75, 0.5, 0.25, 1.0, 1.0, -0.75, -1.0, 1.0, 0.25, 1.0, 0.25, 0.75, 0.0, 0.5, -0.75, -1.0, -0.75, 0.5, 1.0, 1.0, 0.75, -0.5, -0.75, 1.0, 0.5, 1.0, 0.0, -0.5, 0.75, 0.75, -0.5, 0.75, -0.25, -0.75, 1.0, 0.0, 1.0, -0.75, 0.0, 0.0, 1.0, 1.0, 0.0, -1.0, 0.5, 1.0, 0.25, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device00.pushErrorScope("out-of-memory");
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array2 = new Float32Array([0.5, -0.75, 1.0, -0.75, 0.5, -1.0, 0.5, -0.75, -0.25, -0.25, 0.0, 0.75, 0.0, -0.75, 0.0, 1.0, -0.5, -0.25, 0.0, 0.0, 0.5, 0.0, -0.5, 0.25, 0.75, 0.5, 0.25, -0.5, -0.5, -0.5, 1.0, 0.0, -0.5, -1.0, 1.0, -0.25, 0.25, 0.25, -1.0, -0.5, 0.5, -0.25, 1.0, 0.5, -0.75, 0.25, 1.0, -0.5, 0.75, -0.75, 0.75, 0.5, -0.5, 0.5, -0.25, 1.0, -0.5, 0.0, 0.25, 0.25, -0.5, 1.0, 0.0, 0.25, 1.0, -0.5, 0.5, 0.25, -0.25, 0.25, -0.75, 0.5, 0.75, -0.25, 0.0, 0.25, -1.0, 0.75, -1.0, 0.25, -0.5, 0.0, 0.25, 0.5, 1.0, 1.0, -0.25, 0.25, -0.25, -0.75, -0.75, 0.5, 0.75, -0.25, 0.75, -0.25, -1.0, 0.25, -1.0, -1.0, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.destroy();
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    const array3 = new Float32Array([0.25, 0.0, 0.0, -0.25, -1.0, -0.5, -0.75, 0.75, -0.5, -0.25, 0.75, 0.75, -0.75, -0.75, -0.75, 0.5, 0.5, 0.25, -0.75, -0.25, -1.0, -0.5, -0.25, -1.0, 0.5, -0.25, 1.0, 0.0, -0.5, -0.75, 0.0, -1.0, -0.75, 0.25, 0.5, 0.0, 0.25, -0.25, 1.0, -0.75, -0.75, 0.5, 0.5, -0.25, 1.0, 0.25, 0.5, 0.0, 0.25, -0.5, -0.5, 0.0, -1.0, 1.0, 0.25, -1.0, 0.5, 0.75, -0.75, 0.75, -1.0, -0.25, -1.0, 1.0, -1.0, 1.0, -1.0, -0.75, 0.75, -0.75, 0.0, 0.5, 0.25, 0.5, -1.0, 1.0, 0.0, -0.25, -0.75, 0.5, -0.75, -0.75, 0.75, -0.5, -1.0, 0.5, -1.0, -0.5, -0.5, -0.25, 0.0, 0.5, 0.0, -0.5, -0.75, 0.75, 0.25, -1.0, 0.5, -0.25, ]);
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    device70.destroy();
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const array4 = new Float32Array([-0.75, -0.25, -0.5, 0.0, 0.0, 0.75, 0.5, 0.0, -1.0, 0.25, 0.75, -0.5, 1.0, -1.0, 0.0, -1.0, 0.25, -0.75, 0.5, 1.0, 0.0, -0.75, 0.75, 1.0, -0.25, -0.25, 0.75, -0.5, 1.0, -0.75, -1.0, 1.0, -0.75, 0.0, -0.5, -1.0, 1.0, 0.75, -0.75, -0.25, -0.25, 0.75, -0.5, -0.25, -0.75, 0.75, -1.0, 1.0, 0.25, 0.0, -0.75, -0.5, -0.75, 0.25, -0.25, 0.0, 1.0, -1.0, -0.25, 0.0, -1.0, 0.0, 1.0, -0.25, 0.25, -0.25, -1.0, 1.0, 0.75, 0.5, 1.0, 0.0, 0.75, 0.25, 0.25, 1.0, 0.0, -0.5, 0.75, -0.5, -0.75, -0.75, 0.25, -0.75, 0.0, 0.75, 0.0, -1.0, 0.25, 0.25, 0.75, 0.25, 0.75, 0.5, -0.25, 0.0, 0.25, 0.0, 0.75, 0.0, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder001.clearBuffer(buffer000);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder000.copyBufferToBuffer(
        buffer001,
        0,
        buffer000,
        0,
        400
    );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    command_encoder003.clearBuffer(buffer000);
    command_encoder003.clearBuffer(buffer000);
    command_encoder000.copyBufferToBuffer(
        buffer001,
        0,
        buffer000,
        0,
        400
    );
    command_encoder002.copyBufferToBuffer(
        buffer001,
        0,
        buffer000,
        0,
        400
    );
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    
    command_encoder002.clearBuffer(buffer000);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device50.destroy();
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    command_encoder001.clearBuffer(buffer000);
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const array5 = new Float32Array([0.25, 0.0, 0.5, 0.5, 0.0, -0.5, 0.0, 0.0, 0.25, -0.5, -0.75, 0.5, 0.75, 0.5, 0.75, 1.0, -0.75, 1.0, 0.5, 0.0, 0.5, -0.25, 0.75, 0.5, -0.75, 1.0, -1.0, 0.0, -0.25, -0.5, 0.25, 0.5, -0.5, -0.5, 0.25, -0.25, -0.5, 0.25, 0.75, 0.5, 0.5, -0.5, 0.5, 0.0, 1.0, -0.5, 0.0, 1.0, -0.5, 0.25, 0.25, 0.0, -1.0, -1.0, 0.75, -1.0, -1.0, -0.75, 0.75, -0.25, -0.5, -0.75, 0.25, -0.5, -0.25, 0.75, 0.5, -1.0, 0.25, 0.0, -0.25, 1.0, 0.25, 0.75, -0.5, -0.75, -1.0, 0.0, 0.5, -0.75, -1.0, 0.25, 0.25, -0.25, 0.25, 0.0, 1.0, 1.0, 0.25, -0.75, 1.0, 0.25, -0.25, 0.75, 0.25, 0.25, -1.0, 0.5, 1.0, -0.25, ]);
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    command_encoder002.copyBufferToBuffer(
        buffer000,
        0,
        buffer000,
        0,
        400
    );
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder000.clearBuffer(buffer001);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder302.clearBuffer(buffer300);
    command_encoder000.clearBuffer(buffer000);
    
    command_encoder004.clearBuffer(buffer000);
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    command_encoder004.clearBuffer(buffer000);
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    device30.pushErrorScope("internal");
    device80.destroy();
    command_encoder000.copyBufferToBuffer(
        buffer001,
        0,
        buffer000,
        0,
        400
    );
    command_encoder001.popDebugGroup()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    command_encoder004.copyBufferToBuffer(
        buffer001,
        0,
        buffer001,
        0,
        400
    );
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    command_encoder001.clearBuffer(buffer000);
    buffer001.destroy()
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pass_encoder3011 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3011" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.pushErrorScope("out-of-memory");
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    device90.pushErrorScope("validation");
    command_encoder300.copyBufferToBuffer(
        buffer300,
        0,
        buffer300,
        0,
        400
    );
    buffer002.destroy()
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    device90.queue.submit([]);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    command_encoder004.clearBuffer(buffer003);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    command_encoder005.copyBufferToBuffer(
        buffer003,
        0,
        buffer000,
        0,
        400
    );
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    command_encoder005.copyBufferToBuffer(
        buffer002,
        0,
        buffer000,
        0,
        400
    );
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    command_encoder001.clearBuffer(buffer003);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    
    command_encoder004.clearBuffer(buffer000);
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    compute_pass_encoder0000.popDebugGroup()
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    command_encoder303.pushDebugGroup("mygroupmarker")
    
    
    buffer000.destroy()
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder001.clearBuffer(buffer000);
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    device70.pushErrorScope("validation");
    command_encoder004.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer900.destroy()
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    device90.queue.writeBuffer(buffer901, 0, array3, 0, array3.length);
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    command_encoder007.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    command_encoder006.pushDebugGroup("mygroupmarker")
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    command_encoder004.popDebugGroup()
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    device30.pushErrorScope("internal");
    
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder900.resolveQuerySet(
        query900,
        0,
        32,
        buffer900,
        0
    )
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    command_encoder006.pushDebugGroup("mygroupmarker")
    
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    compute_pass_encoder3020.insertDebugMarker("marker")
    command_encoder008.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    buffer003.destroy()
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const compute_pass_encoder0051 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0051" });
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    compute_pass_encoder3011.insertDebugMarker("marker")
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    compute_pass_encoder0050.insertDebugMarker("marker")
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    device90.queue.submit([]);
    command_encoder900.pushDebugGroup("mygroupmarker")
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    command_encoder005.copyBufferToBuffer(
        buffer001,
        0,
        buffer000,
        0,
        400
    );
    
    
    command_encoder008.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    const compute_pass_encoder3001 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3001" });
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    
    
    buffer600.destroy()
    const array6 = new Float32Array([0.75, 0.25, 0.5, -0.25, -0.5, -0.75, -0.25, 0.0, -0.25, -0.5, 0.25, -0.75, -0.25, -0.5, 0.25, 0.75, 0.25, 0.25, 0.75, -0.75, 0.5, 1.0, -0.5, -0.25, 1.0, 1.0, -1.0, -0.75, -0.5, -0.25, 1.0, 1.0, 0.25, 1.0, -0.75, -0.5, -0.75, 0.25, -0.25, -0.75, 0.25, -0.25, 0.5, -0.75, -0.75, 0.25, -0.75, -1.0, -0.5, -0.75, 0.25, 0.75, -0.75, -0.75, 0.25, -1.0, -0.5, 0.25, 0.5, 0.5, -0.75, -0.5, -0.25, -1.0, -0.75, -1.0, 0.0, -0.25, 1.0, -0.5, -0.75, -0.5, 0.0, -0.5, 0.5, -0.5, 0.75, 0.75, 0.0, 0.75, 0.0, 1.0, -0.5, -0.75, 0.0, -0.25, 1.0, -1.0, 0.0, -0.75, -0.5, 0.75, 0.5, 0.0, -0.5, 0.75, 1.0, -1.0, -1.0, -0.5, ]);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder008.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    command_encoder900.popDebugGroup()
    command_encoder008.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder008.clearBuffer(buffer000);
    command_encoder901.resolveQuerySet(
        query900,
        0,
        32,
        buffer900,
        0
    )
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    command_encoder007.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    command_encoder300.copyBufferToBuffer(
        buffer300,
        0,
        buffer301,
        0,
        400
    );
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0050.popDebugGroup()
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    command_encoder900.resolveQuerySet(
        query901,
        0,
        32,
        buffer900,
        0
    )
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    buffer004.destroy()
    const array7 = new Float32Array([-0.25, 0.75, -1.0, 0.25, 0.5, 0.0, -0.75, -1.0, 1.0, 0.0, 0.25, 1.0, 0.75, 0.75, 0.5, -0.5, 1.0, 0.75, 0.5, 0.25, -1.0, 0.25, 0.5, 0.0, 0.75, -0.25, 0.75, 0.0, 0.0, 0.25, -0.5, -0.5, -0.5, 0.0, -0.25, 0.5, 0.75, -0.5, 0.5, -1.0, 0.0, -0.5, 0.0, -0.25, -0.5, -0.75, -1.0, -1.0, 0.75, -0.75, -0.5, 1.0, 0.75, -1.0, -0.75, 0.25, 0.25, 0.5, 1.0, -0.25, 0.75, 0.75, -1.0, 0.75, 0.75, 0.75, 0.0, 0.0, 0.25, 0.5, -0.25, 1.0, 1.0, -0.5, 0.5, -0.75, 1.0, -0.25, -0.25, -1.0, -0.5, -1.0, 0.0, -0.75, -1.0, -0.5, 0.0, -1.0, 0.0, 0.5, -1.0, 1.0, 0.25, 0.5, -0.25, -0.5, 1.0, 0.75, 0.25, -0.5, ]);
    
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    compute_pass_encoder0020.popDebugGroup()
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    command_encoder008.resolveQuerySet(
        query004,
        0,
        32,
        buffer000,
        0
    )
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder3020.insertDebugMarker("marker")
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    compute_pass_encoder0060.insertDebugMarker("marker")
    
    command_encoder008.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    command_encoder008.clearBuffer(buffer001);
    
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    buffer300.destroy()
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const sampler1102 = device110.createSampler( { label: "sampler1102" } );
    
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    compute_pass_encoder0070.insertDebugMarker("marker")
    
    device90.queue.writeBuffer(buffer900, 0, array4, 0, array4.length);
    command_encoder900.resolveQuerySet(
        query900,
        0,
        32,
        buffer900,
        0
    )
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    command_encoder901.resolveQuerySet(
        query901,
        0,
        32,
        buffer900,
        0
    )
    compute_pass_encoder0050.insertDebugMarker("marker")
    command_encoder001.resolveQuerySet(
        query004,
        0,
        32,
        buffer002,
        0
    )
    const sampler1103 = device110.createSampler( { label: "sampler1103" } );
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    command_encoder001.clearBuffer(buffer004);
    
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    
    device120.destroy();
    buffer001.destroy()
    
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    command_encoder900.pushDebugGroup("mygroupmarker")
    device60.pushErrorScope("internal");
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer301.destroy()
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    compute_pass_encoder3020.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0051.insertDebugMarker("marker")
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder902 = device90.createCommandEncoder({ label: "command_encoder902" });
    const array8 = new Float32Array([-0.75, -0.75, -0.25, 1.0, -1.0, -0.5, 0.25, 0.75, 1.0, 0.0, -1.0, -1.0, 0.5, -0.25, -0.75, 0.75, 0.5, 0.25, 0.0, 0.25, 0.0, 0.25, 0.0, -0.75, 0.75, 1.0, 0.5, 0.75, 0.25, 0.25, 0.75, 1.0, 0.25, -0.75, -1.0, -0.25, -0.25, 0.75, -0.75, 0.75, -0.75, -0.75, 0.75, -0.25, 1.0, -1.0, 0.0, 0.75, -1.0, 0.5, -0.5, 0.0, -0.75, 1.0, -0.25, 0.5, 0.25, 1.0, 0.75, 1.0, -0.25, 0.75, -1.0, 0.0, 0.75, 0.25, -0.75, 0.5, -0.75, -0.75, 1.0, 0.5, -1.0, -1.0, 1.0, 0.75, -0.25, -0.25, -1.0, 0.5, -0.75, -0.25, 0.25, 0.0, -0.75, 0.5, -0.75, -0.75, 0.25, -0.75, -0.5, -0.25, -0.5, 1.0, -0.5, 0.25, 0.25, 0.0, -0.25, 1.0, ]);
    command_encoder001.clearBuffer(buffer001);
    command_encoder902.resolveQuerySet(
        query900,
        0,
        32,
        buffer900,
        0
    )
    buffer700.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0040.insertDebugMarker("marker")
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device110.pushErrorScope("validation");
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    command_encoder900.resolveQuerySet(
        query901,
        0,
        32,
        buffer900,
        0
    )
    
    compute_pass_encoder0050.insertDebugMarker("marker")
    buffer901.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const compute_pass_encoder0080 = command_encoder008.beginComputePass({ label: "compute_pass_encoder0080" });
    compute_pass_encoder0040.insertDebugMarker("marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    compute_pass_encoder3001.insertDebugMarker("marker")
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    command_encoder901.resolveQuerySet(
        query901,
        0,
        32,
        buffer900,
        0
    )
    
    
    const array9 = new Float32Array([-1.0, 0.75, -0.25, 0.0, 0.5, 0.25, 0.25, -1.0, -0.5, -1.0, -0.25, -0.25, 0.5, 0.5, 0.25, -0.75, -0.25, 0.25, 1.0, 0.25, 0.25, -1.0, -0.75, -0.5, -0.5, 0.5, 0.0, 0.75, 0.75, 0.0, -0.75, 0.0, -1.0, 0.75, 1.0, -0.75, -0.5, 0.75, -0.5, -1.0, 0.75, 1.0, 0.75, 0.75, -1.0, -1.0, 1.0, 0.5, 0.25, -1.0, -1.0, -0.75, 0.0, -0.25, -0.75, 0.25, -1.0, 0.0, 0.25, 0.5, -0.25, 0.0, 0.0, -0.75, 0.75, -0.75, 0.5, 0.25, -0.75, 0.5, 0.75, 0.5, -1.0, 0.25, 0.5, 0.5, -0.75, -0.75, -0.5, -0.75, -0.5, 1.0, -0.5, -0.75, 0.75, 0.0, 1.0, 0.75, -1.0, -0.75, 0.0, -0.75, 0.5, -1.0, 1.0, -1.0, -0.5, 1.0, 0.75, -0.75, ]);
    
    compute_pass_encoder0051.insertDebugMarker("marker")
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    command_encoder0010.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    command_encoder008.pushDebugGroup("mygroupmarker")
    
    command_encoder009.pushDebugGroup("mygroupmarker")
    command_encoder009.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    command_encoder0010.copyBufferToBuffer(
        buffer003,
        0,
        buffer004,
        0,
        400
    );
    
    
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder0010.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    command_encoder009.copyBufferToBuffer(
        buffer001,
        0,
        buffer004,
        0,
        400
    );
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const command_encoder903 = device90.createCommandEncoder({ label: "command_encoder903" });
    command_encoder008.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder0080.insertDebugMarker("marker")
    compute_pass_encoder3040.insertDebugMarker("marker")
    device00.queue.submit([]);
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    command_encoder0010.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    compute_pass_encoder3030.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    buffer900.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    command_encoder903.resolveQuerySet(
        query901,
        0,
        32,
        buffer900,
        0
    )
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    compute_pass_encoder0050.insertDebugMarker("marker")
    command_encoder002.popDebugGroup()
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    command_encoder009.clearBuffer(buffer004);
    compute_pass_encoder0080.pushDebugGroup("group_marker")
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    command_encoder009.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    
    const sampler1104 = device110.createSampler( { label: "sampler1104" } );
    
    command_encoder903.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder6000.insertDebugMarker("marker")
    const command_encoder904 = device90.createCommandEncoder({ label: "command_encoder904" });
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    command_encoder904.resolveQuerySet(
        query902,
        0,
        32,
        buffer901,
        0
    )
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder901.resolveQuerySet(
        query902,
        0,
        32,
        buffer901,
        0
    )
    compute_pass_encoder0080.pushDebugGroup("group_marker")
    const compute_pass_encoder0090 = command_encoder009.beginComputePass({ label: "compute_pass_encoder0090" });
    command_encoder009.resolveQuerySet(
        query004,
        0,
        32,
        buffer004,
        0
    )
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    buffer601.destroy()
    command_encoder0010.copyBufferToBuffer(
        buffer001,
        0,
        buffer004,
        0,
        400
    );
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0080.popDebugGroup()
    device110.queue.submit([]);
    device110.queue.submit([]);
    compute_pass_encoder0070.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    device60.queue.submit([]);
    command_encoder001.popDebugGroup()
    compute_pass_encoder0060.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    command_encoder900.popDebugGroup()
    command_encoder903.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder3001.popDebugGroup()
    compute_pass_encoder0051.popDebugGroup()
    compute_pass_encoder0051.popDebugGroup()
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder3030.popDebugGroup()
    device110.queue.submit([]);
    compute_pass_encoder0040.popDebugGroup()
    device30.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    device00.queue.submit([]);
    device30.queue.submit([]);
    compute_pass_encoder0050.popDebugGroup()
    device30.queue.submit([]);
    command_encoder008.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0080.popDebugGroup()
    compute_pass_encoder3030.popDebugGroup()
    command_encoder006.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    device60.queue.submit([]);
    compute_pass_encoder3001.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
    command_encoder009.popDebugGroup()
    device60.queue.submit([]);
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder0051.popDebugGroup()
    compute_pass_encoder0070.popDebugGroup()
    command_encoder000.popDebugGroup()
    device110.queue.submit([]);
    compute_pass_encoder3001.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
}