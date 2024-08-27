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
    const array0 = new Float32Array([-0.25, 0.5, -0.25, -0.25, -0.5, 0.5, -0.75, -1.0, 1.0, 0.25, -0.75, -1.0, 1.0, 0.5, 0.0, -0.25, -0.25, 0.5, 1.0, 1.0, -0.75, -1.0, -0.5, 1.0, 0.5, 0.0, 0.0, 0.25, -1.0, 0.5, 0.0, 0.5, 0.0, -0.25, 0.0, 1.0, 0.5, 0.5, 0.0, -0.25, 0.0, 0.0, 0.25, 0.25, -0.25, -0.25, 1.0, 0.5, -0.25, -1.0, -0.25, -0.5, 1.0, 0.25, -0.25, -0.5, -0.75, 0.5, -1.0, -0.75, 0.75, -1.0, 0.75, -1.0, -0.25, 1.0, 0.75, -1.0, -0.25, 1.0, 0.25, 1.0, 0.5, -1.0, 0.25, -0.75, -0.5, 0.75, 0.5, 0.25, 0.5, -0.5, -0.25, 0.75, -1.0, 0.5, -1.0, -0.25, 1.0, -0.5, 0.0, -0.75, -0.75, 1.0, 0.5, -0.25, -1.0, 0.25, 0.0, -1.0, ]);
    
    const array1 = new Float32Array([0.0, 0.25, 0.0, 0.75, 1.0, 0.0, 0.25, -1.0, 0.0, 0.5, -0.75, -1.0, 0.5, 1.0, -0.25, 0.25, -0.75, 0.75, 0.75, -0.25, 0.25, -0.5, 0.0, 0.5, 0.0, 0.25, 0.75, -0.5, -0.5, 0.25, 0.0, -1.0, -0.25, 0.0, 0.25, 1.0, 0.0, 0.5, -1.0, 0.0, -1.0, -0.25, 0.5, -1.0, -0.25, 1.0, -0.25, 0.25, 1.0, 1.0, 0.75, 0.5, 1.0, 0.0, -1.0, 0.5, 0.5, 0.0, -0.75, -1.0, 0.75, -0.25, -0.75, 1.0, 0.75, -1.0, -0.25, 1.0, -0.5, 0.0, 0.75, 1.0, -0.75, 0.5, 0.75, -0.25, 0.25, 0.0, 1.0, -1.0, 0.5, -0.75, 1.0, 0.5, 1.0, 0.25, 0.0, 0.0, 0.25, 1.0, -1.0, 0.5, -0.5, -0.25, 1.0, -0.25, 0.0, 0.5, -1.0, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const command_buffer200 = command_encoder200.finish();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    buffer200.destroy()
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder1000.popDebugGroup()
    device30.destroy();
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    buffer000.destroy()
    
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    buffer001.destroy()
    
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device20.queue.submit([command_buffer200, ]);
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const array2 = new Float32Array([0.5, -1.0, 0.5, -0.25, 0.75, -0.5, -1.0, 0.25, -0.5, -1.0, 1.0, 0.0, -0.5, 0.5, -0.25, 1.0, -0.25, 1.0, -0.5, 1.0, 0.25, 0.25, -0.75, 0.25, 1.0, -0.25, -1.0, 0.5, 0.25, -0.5, 0.75, 0.75, -0.75, 1.0, 0.25, 0.0, 0.0, 0.5, -0.5, -0.25, 0.0, -0.25, -0.5, -0.25, 0.25, -0.75, -1.0, 0.5, 0.0, 0.25, 1.0, 0.0, 1.0, 0.0, -0.75, 0.25, -0.5, 1.0, 0.0, -1.0, 1.0, -0.5, -0.5, 0.5, -1.0, -1.0, 0.0, -0.25, 0.25, 0.75, 0.75, -0.25, -1.0, -0.25, 1.0, -0.25, 0.0, -0.75, 1.0, 0.25, -0.25, -0.25, 0.75, -0.25, 0.75, -0.75, -0.5, -0.75, -1.0, -0.5, 0.25, -0.5, 1.0, -0.25, 0.5, -1.0, -0.75, -0.75, -1.0, -1.0, ]);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    buffer100.destroy()
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device40.destroy();
    compute_pass_encoder1010.popDebugGroup()
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    
    
    
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    
    
    compute_pass_encoder1010.popDebugGroup()
    
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder202.clearBuffer(buffer202);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    buffer101.destroy()
    
    compute_pass_encoder1000.popDebugGroup()
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer201.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    buffer202.destroy()
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    buffer003.destroy()
    buffer102.destroy()
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    command_encoder102.pushDebugGroup("mygroupmarker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    const command_buffer001 = command_encoder001.finish();
    
    
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    const array3 = new Float32Array([-0.75, -0.75, -1.0, -0.75, -0.5, 0.5, 0.75, 1.0, -0.5, 0.25, 1.0, 0.25, 0.0, 0.25, 0.75, -0.75, 0.5, 0.75, -0.5, -0.75, 0.75, 1.0, -1.0, -0.5, 0.75, 0.25, 0.5, -0.5, -0.75, 0.25, -0.75, 0.25, -0.75, 1.0, 0.5, 0.75, -0.75, -1.0, 1.0, -0.25, -1.0, 1.0, 0.25, -1.0, 0.75, 0.5, -0.75, 0.5, -0.5, -0.75, -0.75, 0.0, -0.5, -0.25, 0.25, -1.0, -1.0, 0.25, -0.5, -0.5, -0.25, 0.25, 1.0, -0.5, 0.0, 0.75, -0.75, 0.5, 0.0, -0.5, 0.5, 0.75, 1.0, -0.25, 0.5, 0.5, -0.75, 1.0, 0.0, 0.25, -1.0, 0.25, 0.0, -0.75, 0.75, 0.75, 0.5, 0.0, 1.0, 0.25, 0.5, 1.0, -1.0, 0.25, 0.0, -0.75, 0.5, 0.25, -0.75, -0.5, ]);
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    compute_pass_encoder2010.popDebugGroup()
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.submit([command_buffer001, ]);
    command_encoder103.clearBuffer(buffer105);
    
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    compute_pass_encoder0000.popDebugGroup()
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    command_encoder103.popDebugGroup()
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    
    
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    
    buffer103.destroy()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    
    
    command_encoder500.popDebugGroup()
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    
    
    buffer203.destroy()
    
    
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const array4 = new Float32Array([0.5, 0.75, 0.75, -1.0, 0.0, 1.0, -1.0, -0.25, -0.75, 0.25, -0.75, -0.25, 0.0, -0.25, -0.75, 0.25, 0.25, 0.0, 0.0, 1.0, -1.0, 0.5, 0.5, -0.25, 0.25, -0.25, 0.75, -0.25, -0.25, 0.25, -1.0, 1.0, 0.5, 1.0, -0.25, -0.75, -0.75, 1.0, -0.25, -0.75, -0.25, -0.75, -1.0, 0.0, -1.0, -0.25, 0.75, -0.75, -1.0, -1.0, -1.0, 0.5, 0.25, 0.0, 0.75, -0.25, 1.0, -0.5, 0.75, 0.0, 0.5, -0.25, 0.25, -0.25, 0.0, -0.75, -0.25, -0.5, 0.5, -0.75, 0.75, 0.25, 0.25, 0.25, 0.0, 0.0, -0.75, 0.0, 0.75, -0.75, -1.0, -0.75, 0.5, -1.0, -1.0, -1.0, 0.5, 0.5, -0.5, 0.0, -0.25, -0.5, 0.5, -0.5, -0.5, 0.75, 0.0, 0.75, 0.5, -0.5, ]);
    
    
    
    buffer501.destroy()
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    compute_pass_encoder1000.popDebugGroup()
    
    
    
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    buffer105.destroy()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    
    
    
    command_encoder502.pushDebugGroup("mygroupmarker")
    
    
    
    
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    
    
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    buffer502.destroy()
    buffer002.destroy()
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder502.popDebugGroup()
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    
    
    
    
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    
    
    
    
    
    
    
    compute_pass_encoder1010.popDebugGroup()
    
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
    
    
    
    buffer004.destroy()
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    buffer104.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    command_encoder104.pushDebugGroup("mygroupmarker")
    device80.destroy();
    buffer500.destroy()
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    command_encoder106.pushDebugGroup("mygroupmarker")
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.popDebugGroup()
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    
    
    
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    compute_pass_encoder2020.popDebugGroup()
    command_encoder203.popDebugGroup()
    
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    buffer108.destroy()
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    
    
    compute_pass_encoder1020.popDebugGroup()
    
    
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    
    command_encoder106.resolveQuerySet(
        query105,
        0,
        32,
        buffer104,
        0
    )
    command_encoder203.pushDebugGroup("mygroupmarker")
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    
    command_encoder106.resolveQuerySet(
        query104,
        0,
        32,
        buffer104,
        0
    )
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    compute_pass_encoder5010.popDebugGroup()
    command_encoder103.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    const command_buffer103 = command_encoder103.finish();
    command_encoder203.popDebugGroup()
    command_encoder104.popDebugGroup()
    command_encoder106.popDebugGroup()
    compute_pass_encoder1050.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    const command_buffer104 = command_encoder104.finish();
    const command_buffer203 = command_encoder203.finish();
    const command_buffer204 = command_encoder204.finish();
    const command_buffer106 = command_encoder106.finish();
    device20.queue.submit([command_buffer203, ]);
    device10.queue.submit([command_buffer103, ]);
}