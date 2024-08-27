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
    
    const array0 = new Float32Array([-1.0, 0.25, -0.25, 0.25, 1.0, 0.75, -1.0, 0.0, -1.0, 1.0, 0.5, -1.0, 0.75, -0.5, -1.0, 0.5, 0.75, 0.75, -1.0, -1.0, -0.75, 1.0, -0.75, -0.25, -0.25, -0.75, -0.5, 0.25, 0.5, -0.5, 0.5, -0.75, -0.75, -1.0, 0.75, 0.75, -0.5, -0.25, 1.0, -0.75, 0.5, 0.75, 0.5, 0.0, -1.0, 0.75, 0.75, -1.0, 0.0, 0.0, 0.25, -0.75, 0.5, 0.5, -1.0, 0.25, 0.5, 0.5, -0.5, 0.75, -0.25, -1.0, 0.25, 1.0, 0.5, -0.25, -1.0, 0.25, 0.5, -0.25, -0.25, 0.5, 0.5, 0.75, 1.0, 0.25, 1.0, 1.0, -0.75, -0.25, -0.25, -0.25, 1.0, -0.5, 0.25, -0.25, -1.0, -0.5, 0.75, -0.5, -0.25, 0.75, 0.0, -0.5, 0.5, -0.75, -0.5, -1.0, -0.25, -1.0, ]);
    const array1 = new Float32Array([-0.75, -0.25, 0.25, -0.5, 0.5, 0.0, -0.25, 0.0, -0.25, 0.25, -0.75, -0.75, 0.0, 0.75, 1.0, 0.25, 1.0, 0.25, -0.75, -0.75, -0.25, -0.25, 0.25, 1.0, 0.5, 1.0, 1.0, 0.25, 1.0, -0.75, -0.75, -0.25, 0.0, -0.25, -1.0, 0.25, 1.0, -1.0, -0.5, 0.5, 0.75, 1.0, -1.0, 0.75, 0.0, 1.0, -0.75, 0.25, 0.25, -0.75, 0.5, 0.0, 1.0, -0.75, -0.25, 1.0, -1.0, 0.75, -1.0, 0.75, 0.5, -0.5, 0.75, 0.25, -1.0, -0.75, -0.75, -0.5, 0.5, 0.0, 0.25, 1.0, -1.0, 0.5, -1.0, 0.0, 1.0, -0.5, 0.0, 1.0, -0.75, 0.5, -1.0, -0.25, 0.75, 1.0, 1.0, -0.75, -0.75, -0.5, -1.0, -0.75, -0.25, 0.25, -0.25, 0.5, 0.0, 0.0, 1.0, 0.25, ]);
    const array2 = new Float32Array([-1.0, -0.25, -1.0, -0.5, 0.5, 0.75, 0.75, -1.0, -0.5, 0.75, -0.25, 0.5, 0.75, -1.0, 1.0, 0.75, 0.75, -0.25, 0.5, 0.25, 0.75, 1.0, 0.25, -0.75, -0.75, 0.5, -0.5, -0.75, 0.75, -0.25, 0.25, -0.25, 1.0, 0.25, 0.0, -0.5, -0.75, 0.0, 0.5, -1.0, 0.5, 0.25, 1.0, 0.0, -0.25, -0.25, -0.75, -0.25, 0.75, 0.5, -0.5, 0.5, -0.75, -0.25, 0.5, 1.0, 0.25, -0.25, -0.5, 0.0, -0.5, -1.0, -0.5, 0.25, 0.5, -0.5, 0.5, 1.0, 0.0, -0.5, 0.5, 0.75, 1.0, 0.25, 0.0, 1.0, -0.25, -1.0, 0.25, 0.25, 1.0, 0.75, -1.0, -0.75, -0.5, 1.0, -0.5, -0.25, 0.5, 0.25, 0.5, 0.0, 0.25, 1.0, 0.25, 0.25, 0.25, 1.0, 0.0, 1.0, ]);
    
    
    const array3 = new Float32Array([-1.0, 0.75, 0.0, -0.75, -0.5, 0.25, 0.75, -0.75, -0.25, -0.25, -1.0, -0.75, -0.75, 0.75, -1.0, -0.5, -0.5, -1.0, 0.75, 0.0, -0.25, 0.5, 1.0, -1.0, -0.5, 0.5, 0.5, -0.25, 0.0, -0.75, -0.25, 0.5, -0.5, 0.5, -0.5, 0.75, -0.25, -0.5, 0.0, 0.0, -1.0, -0.75, -0.5, -0.25, -0.5, -0.5, -0.5, 0.5, 0.0, -0.75, 0.25, 0.75, -0.5, 0.5, 0.75, -0.5, 1.0, 1.0, 0.75, 0.75, -0.25, 0.75, -0.5, 0.5, 0.25, -0.75, -1.0, 0.5, 0.5, -0.75, 0.5, 0.75, 0.0, -1.0, -0.75, 0.75, -0.25, -0.5, 0.5, 1.0, 0.0, 0.75, -0.5, 0.0, 0.0, 0.25, -0.25, 0.75, -0.25, 0.0, -1.0, -0.75, 0.5, -1.0, 1.0, 0.0, 0.75, -1.0, 1.0, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.pushErrorScope("validation");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const array4 = new Float32Array([-1.0, -0.5, 0.0, 0.0, 0.0, 1.0, 0.25, 0.75, 0.5, -1.0, -0.25, -1.0, -1.0, 0.25, -1.0, 1.0, 1.0, 0.0, -0.75, 0.0, 1.0, 0.25, -0.25, 0.25, -0.25, 0.25, 0.0, 0.5, -0.75, 0.25, -1.0, -0.75, -0.5, 0.5, -1.0, 1.0, -0.5, 0.25, -0.5, -1.0, -0.5, 0.25, -0.75, -1.0, -0.25, 0.5, 0.25, -0.5, -1.0, 0.5, 1.0, -1.0, -0.75, -0.25, 0.25, -1.0, -0.75, -0.75, 0.5, 0.5, 1.0, 0.0, 0.0, -0.75, 0.0, -1.0, 0.25, -0.75, -0.75, -0.5, -1.0, -0.5, -0.5, 1.0, 0.0, 1.0, -0.5, -1.0, -0.75, 0.75, -0.25, -0.5, 0.25, -0.25, 0.5, -0.75, 0.0, -0.5, 0.5, 0.5, 0.0, 0.75, 0.5, 0.75, 0.25, -1.0, -0.75, 0.75, 0.5, -1.0, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array5 = new Float32Array([0.75, 1.0, 1.0, 0.0, 1.0, -0.5, -0.25, -0.5, -0.5, -0.25, -0.75, -0.25, -0.25, -0.75, -0.5, -0.75, 0.75, -0.25, -0.75, 0.25, 0.25, 0.25, -0.75, 1.0, 1.0, 0.0, -0.5, 1.0, -1.0, 0.0, 0.75, 0.25, 0.25, -1.0, 0.25, 0.5, -0.5, -0.5, 0.5, 1.0, 1.0, 0.0, 0.5, -0.75, 0.25, -1.0, 0.0, 0.5, 0.75, 0.0, 0.25, -0.25, -1.0, 1.0, 0.25, 0.25, 0.0, 0.5, -0.75, 0.5, 0.25, -0.5, 0.25, -1.0, -0.5, -0.25, -0.75, 1.0, 0.75, 0.5, -0.75, 0.0, -1.0, 0.0, -0.75, 0.5, 0.25, -0.5, -0.75, 1.0, -1.0, 0.5, 0.75, 0.0, -0.25, -0.25, 0.25, -1.0, 0.5, 0.25, 0.0, 0.25, -0.25, -1.0, 0.25, -0.25, 0.5, 0.0, 1.0, -0.25, ]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    device10.pushErrorScope("internal");
    
    
    
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    query100.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    const array6 = new Float32Array([0.25, -1.0, -1.0, 0.75, 0.5, -0.5, 0.5, 0.25, -0.25, -1.0, 0.0, 1.0, 1.0, 1.0, 1.0, -1.0, 0.0, -1.0, -1.0, 0.5, 1.0, -0.25, -0.75, -0.25, -0.25, 0.75, -1.0, 0.5, 0.75, -0.5, -0.25, -0.25, -0.5, 0.5, 0.5, 0.75, -1.0, -0.5, 1.0, 0.5, 0.5, 0.5, 0.75, -1.0, -1.0, 0.5, 0.5, -0.75, -0.5, 0.5, -0.25, 0.25, 0.25, 0.25, 0.5, -0.75, 0.0, -0.25, 0.5, 0.5, -0.25, 1.0, -0.75, 0.5, 0.25, 1.0, 1.0, -0.5, 0.25, 1.0, 0.75, -0.25, 0.75, 0.25, -0.25, -0.5, 0.25, 0.75, -1.0, 0.25, 1.0, 0.5, -0.25, -0.75, -0.75, -0.5, 0.5, -0.5, 1.0, -0.25, 0.75, -1.0, -0.75, -0.75, 0.25, 0.5, -0.75, 0.75, -1.0, 0.5, ]);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder100.insertDebugMarker("mymarker");
    buffer100.destroy()
    query101.destroy()
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array7 = new Float32Array([1.0, 0.0, 0.75, 0.5, 0.0, -0.25, -1.0, -0.5, -1.0, 0.5, -1.0, -0.75, -0.75, -0.25, -0.25, 0.75, -0.75, -0.75, 0.75, 0.5, 0.25, -0.75, 1.0, 1.0, 1.0, 0.5, 0.0, 1.0, -1.0, 0.25, 0.5, 0.5, -1.0, 0.0, -0.75, 0.0, 0.0, 1.0, 0.75, 0.5, -0.25, 1.0, -0.5, 0.0, -1.0, 0.5, 0.25, 0.75, -0.5, -0.5, -0.5, 0.0, 1.0, -1.0, -0.25, 0.0, 1.0, 0.25, 1.0, -0.75, -0.5, -0.5, 0.75, 0.75, -0.5, -1.0, -1.0, 0.0, -1.0, -0.25, -1.0, 1.0, -0.5, -0.75, 0.25, -0.75, -0.25, 0.0, 0.5, 0.5, 0.5, 0.25, -1.0, 0.25, 1.0, 0.0, 0.5, -0.5, 0.5, 0.5, 0.25, -1.0, 0.5, -0.5, 0.5, 0.0, -0.5, -0.5, -0.25, -0.5, ]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device20.pushErrorScope("out-of-memory");
    
    query300.destroy()
    query101.destroy()
    
    buffer102.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const command_buffer300 = command_encoder300.finish();
    command_encoder100.insertDebugMarker("mymarker");
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    buffer101.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.queue.submit([command_buffer300, ]);
    const command_buffer101 = command_encoder101.finish();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder000.pushDebugGroup("mygroupmarker")
    device00.pushErrorScope("out-of-memory");
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    buffer001.destroy()
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder100.popDebugGroup()
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder000.insertDebugMarker("mymarker");
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    buffer200.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    command_encoder000.insertDebugMarker("mymarker");
    const array8 = new Float32Array([0.25, -0.75, 1.0, 0.5, -1.0, 0.75, 0.25, 0.25, 0.5, -0.25, 1.0, 0.5, -0.25, -0.5, 0.5, 1.0, 1.0, 1.0, -1.0, -0.5, -0.25, 0.5, 1.0, 0.25, 0.25, 1.0, 0.0, -0.75, -0.75, -0.25, 0.0, -0.5, 0.0, 0.5, -0.75, 1.0, -0.75, -0.25, -1.0, 1.0, 0.5, -1.0, 0.5, 0.25, 0.5, 0.0, -0.75, -0.25, -0.25, 0.75, -0.5, 1.0, -0.75, 0.75, -0.75, 1.0, -0.5, 0.75, 0.25, -0.25, 0.5, -1.0, 0.25, 0.25, 0.25, -0.5, -1.0, 0.0, -0.75, -0.5, -0.75, 0.25, 0.5, 0.0, 1.0, 0.25, 0.0, -1.0, -0.75, 1.0, 0.5, 0.0, -0.25, 0.75, 0.5, -0.5, -1.0, 0.75, -0.5, 0.5, 1.0, 0.75, -0.25, 0.0, 1.0, -0.5, 0.0, 0.75, 0.25, 0.25, ]);
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder301.popDebugGroup()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    buffer202.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    
    const command_buffer100 = command_encoder100.finish();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    buffer203.destroy()
    const command_buffer200 = command_encoder200.finish();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query302.destroy()
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    query100.destroy()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    query100.destroy()
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    buffer000.destroy()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device10.pushErrorScope("validation");
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder301.insertDebugMarker("mymarker");
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    
    
    
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    query600.destroy()
    query302.destroy()
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    query301.destroy()
    buffer300.destroy()
    
    
    
    
    command_encoder102.insertDebugMarker("mymarker");
    
    buffer301.destroy()
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    command_encoder000.insertDebugMarker("mymarker");
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    
    
    const array9 = new Float32Array([1.0, 0.25, -0.25, -0.75, 0.75, 0.75, 0.0, -0.75, 0.5, 0.5, 0.25, -0.25, 1.0, -1.0, 0.25, 0.5, 0.75, 0.5, -0.75, 1.0, -0.75, 0.75, -0.5, -0.75, 0.5, 0.75, 0.5, 0.5, -0.5, 1.0, 0.0, -1.0, 1.0, -0.75, -0.75, -1.0, 0.25, 0.0, 0.25, 0.0, -1.0, 0.5, 1.0, 0.75, 0.0, 0.0, 0.75, 0.25, -0.75, -1.0, 0.75, 0.75, -0.75, -0.75, 1.0, -0.5, 0.75, 0.5, 0.25, -0.75, 0.5, -0.25, 0.0, -0.75, -1.0, 0.0, 0.25, -0.5, 0.5, -0.75, -0.75, -1.0, 0.5, -0.5, -0.75, -0.25, 0.5, 0.5, 1.0, -1.0, -0.75, 1.0, 0.5, 1.0, -0.75, 0.25, 0.5, -1.0, 0.0, 0.75, 0.75, 1.0, -0.75, -0.5, 1.0, 0.0, -0.25, 0.75, 0.5, -1.0, ]);
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const command_buffer400 = command_encoder400.finish();
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query102.destroy()
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    
    buffer002.destroy()
    device10.pushErrorScope("out-of-memory");
    
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    device40.queue.submit([command_buffer400, ]);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder103.insertDebugMarker("mymarker");
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    command_encoder102.insertDebugMarker("mymarker");
    query302.destroy()
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    command_encoder102.insertDebugMarker("mymarker");
    
    
    command_encoder600.insertDebugMarker("mymarker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    query101.destroy()
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module1014_code = "";
    try {
        shader_module1014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1014 = await device10.createShaderModule({ label: "shader_module1014", code: shader_module1014_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device20.pushErrorScope("validation");
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    command_encoder600.insertDebugMarker("mymarker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler308 = device30.createSampler( { label: "sampler308" } );
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    query102.destroy()
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder103.insertDebugMarker("mymarker");
    
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder000.insertDebugMarker("mymarker");
    
    
    command_encoder103.copyBufferToBuffer(
        buffer103,
        0,
        buffer104,
        0,
        400
    );
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    
    device40.pushErrorScope("internal");
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array10 = new Float32Array([-0.25, 0.25, -0.5, 0.75, 0.25, -1.0, 1.0, -1.0, -0.5, 0.5, 1.0, -0.5, -0.25, 0.0, -1.0, 1.0, -0.5, 1.0, 1.0, 0.5, -0.75, 0.25, -0.5, 0.75, -0.25, 1.0, -0.25, -0.25, -1.0, 1.0, 0.0, 0.75, 0.0, -0.75, 0.5, 0.75, -1.0, 1.0, -1.0, 0.0, -1.0, 0.75, -1.0, -0.25, 1.0, -0.5, -1.0, 0.25, -0.25, -0.25, 0.5, -0.25, 0.0, 0.0, -1.0, -0.5, 1.0, -0.5, 0.75, 0.25, -0.75, -1.0, 0.0, -0.75, -0.25, 0.5, -0.25, -1.0, -0.25, -0.5, -0.5, 0.25, -0.75, 0.0, -1.0, 0.75, -1.0, 0.5, 0.0, 0.75, 0.25, 0.25, -0.25, 1.0, 1.0, 1.0, 0.75, -0.75, -0.5, 0.25, 0.5, -0.25, -0.75, 0.25, 0.0, 0.25, 0.75, 0.75, 0.5, 0.5, ]);
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder201.popDebugGroup()
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    const command_buffer103 = command_encoder103.finish();
    query300.destroy()
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    buffer201.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query302.destroy()
    query102.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module1015_code = "";
    try {
        shader_module1015_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1015 = await device10.createShaderModule({ label: "shader_module1015", code: shader_module1015_code })
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device40.pushErrorScope("internal");
    query400.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    command_encoder600.insertDebugMarker("mymarker");
    command_encoder102.insertDebugMarker("mymarker");
    command_encoder601.pushDebugGroup("mygroupmarker")
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    query600.destroy()
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    query200.destroy()
    command_encoder301.popDebugGroup()
    command_encoder600.insertDebugMarker("mymarker");
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    var shader_module1016_code = "";
    try {
        shader_module1016_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1016.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1016 = await device10.createShaderModule({ label: "shader_module1016", code: shader_module1016_code })
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    command_encoder600.insertDebugMarker("mymarker");
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    command_encoder104.insertDebugMarker("mymarker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const command_buffer104 = command_encoder104.finish();
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    query100.destroy()
    command_encoder602.insertDebugMarker("mymarker");
    const sampler309 = device30.createSampler( { label: "sampler309" } );
    
    
    const command_buffer602 = command_encoder602.finish();
    query201.destroy()
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    var shader_module1017_code = "";
    try {
        shader_module1017_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1017.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1017 = await device10.createShaderModule({ label: "shader_module1017", code: shader_module1017_code })
    buffer304.destroy()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    command_encoder302.insertDebugMarker("mymarker");
    const command_buffer201 = command_encoder201.finish();
    
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    buffer106.destroy()
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    query301.destroy()
    
    
    command_encoder601.popDebugGroup()
    device00.pushErrorScope("validation");
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    device10.pushErrorScope("out-of-memory");
    buffer204.destroy()
    
    command_encoder102.copyBufferToBuffer(
        buffer103,
        0,
        buffer104,
        0,
        400
    );
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    command_encoder000.insertDebugMarker("mymarker");
    
    var shader_module1018_code = "";
    try {
        shader_module1018_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1018.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1018 = await device10.createShaderModule({ label: "shader_module1018", code: shader_module1018_code })
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    query203.destroy()
    const array11 = new Float32Array([0.25, -0.75, 0.5, -0.75, 0.25, 0.5, 1.0, 0.25, 0.5, -0.5, 0.5, 0.0, -1.0, -0.5, -0.75, -0.5, 0.25, 0.5, 0.25, 0.25, -0.5, -0.25, 0.25, -0.75, -0.75, -0.25, 0.25, -0.25, 0.5, -0.5, -0.75, 0.5, 0.75, 1.0, -0.5, 1.0, -1.0, -1.0, -0.5, -0.75, 0.25, 0.5, -0.25, 0.0, 0.25, -0.25, -1.0, 1.0, 0.75, 0.5, -0.75, 0.75, 0.25, 0.25, 1.0, -0.5, 0.75, -0.75, -0.25, 1.0, -0.25, 0.5, 1.0, -0.75, -0.25, 0.75, 0.25, -0.5, -1.0, -1.0, 0.25, -1.0, -1.0, -0.5, 1.0, 0.0, 0.5, 0.5, 0.0, -0.5, 0.5, 1.0, 0.0, -0.75, -0.5, -0.5, -0.5, 1.0, 0.5, -1.0, 0.0, 0.75, 0.25, 0.75, 1.0, -1.0, 0.75, 0.0, 0.5, 0.5, ]);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler3010 = device30.createSampler( { label: "sampler3010" } );
    
    query302.destroy()
    const command_buffer701 = command_encoder701.finish();
    command_encoder202.pushDebugGroup("mygroupmarker")
    buffer205.destroy()
    command_encoder102.copyBufferToBuffer(
        buffer103,
        0,
        buffer104,
        0,
        400
    );
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    command_encoder102.insertDebugMarker("mymarker");
    query000.destroy()
    
    buffer302.destroy()
    device20.queue.submit([command_buffer200, ]);
    
    
    query100.destroy()
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query401.destroy()
    
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    buffer105.destroy()
    command_encoder102.copyBufferToBuffer(
        buffer103,
        0,
        buffer104,
        0,
        400
    );
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query204.destroy()
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    query203.destroy()
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device60.pushErrorScope("internal");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    command_encoder202.insertDebugMarker("mymarker");
    const command_buffer302 = command_encoder302.finish();
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const command_buffer700 = command_encoder700.finish();
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    command_encoder303.insertDebugMarker("mymarker");
    
    
    
    query101.destroy()
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    command_encoder303.pushDebugGroup("mygroupmarker")
    query300.destroy()
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    query202.destroy()
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    query202.destroy()
    
    const array12 = new Float32Array([-0.25, 0.5, -1.0, -0.25, -0.5, 0.0, 0.25, -1.0, -0.5, 0.75, 0.0, 1.0, 1.0, -0.75, 0.0, -0.25, -1.0, -0.25, 0.5, 0.5, 0.0, 0.0, -1.0, 0.5, 0.5, -1.0, 0.5, -1.0, -0.75, -1.0, -1.0, 0.0, -0.75, 0.25, -1.0, 0.75, 0.75, 0.0, 0.5, -0.5, 0.75, -0.25, 0.75, -0.75, -0.5, -1.0, -0.75, 0.75, -0.5, 1.0, -1.0, 0.75, 1.0, 1.0, 0.0, 1.0, 0.75, -0.5, 0.0, -0.5, 1.0, 0.0, 0.5, 0.75, -0.5, 1.0, -0.25, 0.25, 0.5, 0.0, -0.5, -1.0, 0.75, 0.5, 0.25, 0.5, 0.0, -0.5, 0.75, -1.0, -0.5, 0.75, -0.75, -1.0, 0.25, -1.0, 0.0, -1.0, 0.0, -0.25, -1.0, -0.25, -0.25, 1.0, -0.75, -0.75, 0.0, -0.25, -0.75, -1.0, ]);
    
    command_encoder601.insertDebugMarker("mymarker");
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    query101.destroy()
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    command_encoder102.copyBufferToBuffer(
        buffer103,
        0,
        buffer104,
        0,
        400
    );
    query201.destroy()
    query400.destroy()
    buffer003.destroy()
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    device70.pushErrorScope("out-of-memory");
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    device10.queue.submit([command_buffer103, ]);
    
    
    
    const command_buffer105 = command_encoder105.finish();
    command_encoder301.popDebugGroup()
    const command_buffer702 = command_encoder702.finish();
    device70.queue.submit([command_buffer701, ]);
    const command_buffer601 = command_encoder601.finish();
    device20.queue.submit([command_buffer201, ]);
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    command_encoder303.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder000.popDebugGroup()
    command_encoder102.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer102 = command_encoder102.finish();
    device70.queue.submit([command_buffer702, ]);
    device10.queue.submit([command_buffer100, ]);
    const command_buffer301 = command_encoder301.finish();
    const command_buffer000 = command_encoder000.finish();
    device10.queue.submit([command_buffer102, ]);
    const command_buffer303 = command_encoder303.finish();
    command_encoder600.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    device10.queue.submit([command_buffer104, ]);
    command_encoder202.popDebugGroup()
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    const command_buffer600 = command_encoder600.finish();
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer000, ]);
    const command_buffer202 = command_encoder202.finish();
    device10.queue.submit([command_buffer105, ]);
}