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
    const array0 = new Float32Array([1.0, -0.75, -0.5, -0.5, 0.0, 0.25, -0.75, -0.75, 0.25, 0.75, -0.5, -0.25, 1.0, 0.5, -0.75, 0.75, -1.0, -0.75, -1.0, 0.75, 0.0, -0.75, 1.0, -0.25, 0.5, 0.0, -0.25, 0.0, -0.75, -0.5, -1.0, -0.75, -0.5, 0.5, -0.75, -0.5, 0.5, 0.5, 0.75, 0.75, 0.5, -1.0, 0.25, 1.0, 0.75, 1.0, -1.0, 0.25, 1.0, -0.5, -0.25, -0.5, -1.0, -0.25, 0.25, 0.0, 0.75, 1.0, -0.5, 1.0, 0.25, -1.0, 0.0, 0.75, -0.75, 1.0, -0.25, 0.25, -1.0, -1.0, 0.0, -1.0, -0.75, 0.5, 0.25, -0.25, -0.25, 1.0, 1.0, 0.75, 0.75, -0.25, -0.5, 0.75, -1.0, 1.0, -0.25, -0.5, 0.0, 0.25, 0.5, 0.0, -1.0, -1.0, 0.5, -1.0, -0.5, -1.0, 0.5, -0.75, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.75, 1.0, -1.0, -0.75, 1.0, -0.75, 0.5, 0.25, -0.25, 0.5, -0.5, 1.0, 0.25, -1.0, 0.25, 0.25, -0.25, 1.0, -0.75, 0.25, -0.75, 0.25, 1.0, 0.25, 0.0, 0.0, 1.0, 0.75, 0.25, -0.25, -1.0, 0.5, -0.5, -0.5, -0.75, -0.25, 0.0, -0.75, -0.5, 0.5, -1.0, -0.5, 0.75, 0.5, -0.5, 0.25, -0.75, 0.5, 0.25, 0.5, -0.25, 0.75, -0.5, -0.5, 1.0, 0.0, 0.75, 0.25, 0.0, 0.25, -0.5, 0.0, -0.75, 0.5, 0.75, -0.25, 0.5, -1.0, 0.5, 0.0, -0.25, 0.75, -0.75, 0.5, 1.0, -1.0, 0.0, -0.25, -0.75, -1.0, -0.75, -0.5, 0.5, 0.25, 0.75, 0.25, 0.5, 0.25, 1.0, -0.5, 0.0, -1.0, 0.75, 1.0, 1.0, 0.5, 0.5, -0.5, 0.0, 0.5, ]);
    
    const array2 = new Float32Array([0.0, -1.0, 0.75, -0.5, -0.5, 0.25, -1.0, -0.5, 0.5, 1.0, 1.0, 0.75, 0.25, -1.0, -0.5, 1.0, -0.5, 0.25, -0.5, 0.75, 0.0, -0.25, -1.0, 0.5, 1.0, -0.5, -0.5, -0.25, 0.25, -0.25, -0.75, -0.5, -1.0, -0.5, 1.0, -1.0, -0.5, 1.0, 0.0, 0.0, 0.75, -0.75, -0.75, -0.25, -0.75, -1.0, -0.5, -0.25, -1.0, 0.25, 0.25, -0.75, 0.75, 0.25, -0.5, -1.0, 0.25, 0.75, 0.25, -0.25, 0.5, 0.5, -1.0, 0.75, 1.0, 0.75, -0.75, -0.75, 1.0, 0.25, -1.0, -0.5, 0.25, 0.5, -0.75, 0.25, -1.0, -0.5, -0.25, -0.75, -1.0, -0.75, 0.5, 0.25, 0.5, 0.75, 1.0, -0.5, -0.5, 0.0, -1.0, 0.25, -0.25, 0.0, 0.0, 0.75, 1.0, 0.0, 1.0, 0.5, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([1.0, 0.25, -0.25, 0.75, -0.75, 1.0, -1.0, 0.0, -0.5, 0.5, 0.0, -0.25, -0.25, 0.5, 0.0, 0.25, 0.25, -1.0, -0.75, 0.75, -0.5, -0.75, -0.75, 0.5, 0.25, -0.5, -0.25, 0.75, 0.0, 1.0, 0.75, 0.5, -0.25, 0.0, -0.25, 1.0, 0.0, -1.0, -0.5, -0.75, -1.0, -0.25, 0.5, 0.0, -0.75, 1.0, -1.0, 1.0, 0.75, 0.25, 1.0, -1.0, 0.5, 0.25, 0.75, -0.5, 0.25, -0.5, 0.25, 1.0, 1.0, -0.25, 0.5, 0.5, -0.5, 0.25, -0.75, -1.0, 0.25, 1.0, -1.0, -0.5, -0.25, 0.75, -0.25, 0.0, 0.0, -0.5, -0.25, -0.75, 0.5, 0.0, 0.5, 0.5, 0.5, -0.5, 0.0, 0.25, -1.0, 1.0, 1.0, 0.5, -0.5, -0.75, 0.75, -0.25, 0.75, 0.5, -1.0, 0.5, ]);
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    
    
    const array4 = new Float32Array([-0.25, -1.0, -0.5, -1.0, 0.75, 0.0, 1.0, 0.25, -1.0, -1.0, -1.0, -0.25, 1.0, -0.25, 0.75, -0.75, 0.75, 0.75, 0.0, -0.5, -0.25, 0.25, 1.0, -0.5, 0.0, -0.25, -0.25, 0.0, 0.25, 0.75, 0.0, -0.25, 0.25, 1.0, 0.0, 0.25, 0.25, 0.5, -1.0, 0.75, 0.75, -0.25, 1.0, 0.0, -0.25, 1.0, 0.75, -0.75, 0.75, 0.0, 0.0, 1.0, -0.5, -1.0, 1.0, -1.0, -0.5, -0.25, 0.75, 1.0, -0.25, 0.5, -1.0, -1.0, -0.75, 0.25, 0.25, 0.0, -1.0, 0.0, -0.25, 0.25, -0.5, 1.0, 0.5, 0.25, 0.5, 0.25, 0.25, 0.5, -0.5, -0.25, -0.75, 0.75, -0.75, -0.75, -0.75, -1.0, -0.25, -0.25, 1.0, -0.75, 1.0, -0.25, 1.0, -0.75, 0.5, 0.25, 0.5, 0.25, ]);
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.pushErrorScope("internal");
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device20.pushErrorScope("internal");
    const command_buffer200 = command_encoder200.finish();
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    
    
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    command_encoder201.clearBuffer(buffer202);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    device20.queue.submit([command_buffer200, ]);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const command_buffer201 = command_encoder201.finish();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder300.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    device20.queue.submit([command_buffer201, ]);
    const array5 = new Float32Array([-1.0, -0.25, 0.5, -0.75, 0.75, -0.25, 0.0, -0.5, -0.25, 1.0, 0.25, 1.0, 0.25, 1.0, 1.0, 0.25, 0.5, 0.25, 1.0, 0.25, 0.75, 1.0, -1.0, 0.25, -0.75, 1.0, 0.0, 0.5, 0.75, -0.5, 0.75, 1.0, -0.5, 0.0, -0.75, -1.0, 0.0, -0.25, 0.75, 0.75, -1.0, 0.25, 0.5, 0.75, -0.5, -0.75, -1.0, 0.5, 1.0, 0.25, 0.0, -0.25, -1.0, -0.25, -1.0, 0.0, -1.0, -0.75, 0.5, -0.75, -0.75, -0.75, 0.0, -0.25, 0.75, 1.0, -1.0, 1.0, 0.25, 1.0, -0.75, -0.75, 0.25, 0.0, 0.25, -1.0, -0.5, -1.0, 0.0, -0.75, -0.25, -1.0, 0.0, 0.75, 1.0, -0.5, 0.75, -1.0, -1.0, 0.0, 0.25, 0.25, -1.0, -1.0, 0.75, 1.0, 0.25, 0.25, 0.25, -0.5, ]);
    query200.destroy()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    query300.destroy()
    
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const array6 = new Float32Array([-0.75, -0.5, 1.0, 0.5, 0.25, -0.25, -0.25, -0.5, -0.5, 0.0, 1.0, -0.75, -0.25, 0.0, 0.25, -1.0, -0.75, -1.0, 0.5, 0.5, -1.0, -0.25, 0.75, -0.25, -0.75, -0.5, 0.25, 0.25, -0.75, 1.0, 0.75, 1.0, 1.0, 0.75, 0.0, -0.5, 0.75, 0.25, -0.75, -0.5, -0.25, 0.0, 0.75, -0.25, -0.5, 0.0, -0.5, 1.0, -0.75, -0.75, -0.5, -0.25, -0.25, -0.25, -0.5, 0.75, 0.75, -0.5, 0.5, -0.25, 1.0, -0.25, 0.0, -0.75, 0.25, 0.0, -0.25, 0.5, 0.25, 0.0, 0.0, 0.25, 0.25, 0.5, -1.0, -0.5, -1.0, 0.75, -0.5, 0.75, -1.0, 0.25, 0.5, 0.5, 0.75, -0.75, 0.0, -0.5, 1.0, 1.0, 0.5, -1.0, -0.75, 0.25, -1.0, 1.0, -0.5, 1.0, -0.75, 0.25, ]);
    query200.destroy()
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device50.destroy();
    query300.destroy()
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_buffer301 = command_encoder301.finish();
    
    
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    render_bundle_encoder101.popDebugGroup();
    
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    device20.queue.submit([command_buffer200, ]);
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const command_buffer100 = command_encoder100.finish();
    render_bundle_encoder300.popDebugGroup();
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    
    
    const array7 = new Float32Array([0.25, -0.75, -0.25, -0.25, -0.75, 0.75, -0.5, 0.0, -1.0, -0.75, -0.25, -0.75, -1.0, 0.25, -1.0, 0.5, 0.5, 1.0, 0.75, -0.25, 0.75, -0.25, -0.75, -0.25, -0.25, -1.0, 0.25, 0.25, 0.25, 0.75, -0.5, -0.5, -1.0, 0.75, -1.0, 0.75, -0.25, -1.0, -0.75, -1.0, -0.5, 1.0, -1.0, 0.5, 0.75, 0.75, 0.25, -0.25, 0.0, 1.0, 1.0, -0.75, 0.0, 0.75, 1.0, 0.0, -0.75, -1.0, 0.5, 0.5, 0.0, -1.0, 0.75, -0.25, 0.25, 0.75, -0.25, -1.0, 0.0, 0.25, 0.75, -0.5, 0.75, 0.75, 0.5, 0.25, -0.5, -1.0, -0.25, -0.75, -0.75, -0.5, 0.5, -0.5, 0.25, 0.5, -0.5, -0.75, -0.5, 0.0, -0.75, -1.0, 0.0, 0.75, -0.25, 0.25, 0.25, 0.5, 0.5, 0.25, ]);
    device30.queue.writeBuffer(buffer304, 0, array7, 0, array7.length);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    
    device20.pushErrorScope("validation");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
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
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    
    render_bundle_encoder102.popDebugGroup();
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    query300.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    query200.destroy()
    
    const command_buffer203 = command_encoder203.finish();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder300.insertDebugMarker("mymarker");
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    
    
    device10.queue.submit([command_buffer100, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    
    const command_buffer401 = command_encoder401.finish();
    query300.destroy()
    
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query300.destroy()
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    device30.queue.writeBuffer(buffer303, 0, array5, 0, array5.length);
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder202.copyBufferToBuffer(
        buffer201,
        0,
        buffer202,
        0,
        400
    );
    device30.queue.writeBuffer(buffer307, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    compute_pass_encoder2020.insertDebugMarker("marker")
    const command_buffer204 = command_encoder204.finish();
    
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.pushErrorScope("validation");
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    query100.destroy()
    query300.destroy()
    device20.queue.submit([command_buffer201, command_buffer203, command_buffer204, ]);
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_bundle_encoder100.popDebugGroup();
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeBuffer(buffer306, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer205, 0, array2, 0, array2.length);
    
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    device30.queue.writeBuffer(buffer305, 0, array5, 0, array5.length);
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeBuffer(buffer205, 0, array6, 0, array6.length);
    command_encoder400.insertDebugMarker("mymarker");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer205, 0, array6, 0, array6.length);
    const command_buffer202 = command_encoder202.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    device20.queue.submit([command_buffer202, command_buffer203, command_buffer204, ]);
    
    device20.queue.writeBuffer(buffer205, 0, array7, 0, array7.length);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.pushErrorScope("validation");
    
    
    device20.queue.writeBuffer(buffer204, 0, array3, 0, array3.length);
    query200.destroy()
    
    
    command_encoder300.clearBuffer(buffer303);
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    query100.destroy()
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    
    compute_pass_encoder3000.popDebugGroup()
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer204, 0, array3, 0, array3.length);
    
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    device20.queue.writeBuffer(buffer205, 0, array7, 0, array7.length);
    device30.queue.submit([]);
    command_encoder205.copyBufferToBuffer(
        buffer203,
        0,
        buffer204,
        0,
        400
    );
    
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
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
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    device30.queue.writeBuffer(buffer307, 0, array7, 0, array7.length);
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
    device30.queue.writeBuffer(buffer305, 0, array7, 0, array7.length);
    command_encoder205.copyBufferToBuffer(
        buffer201,
        0,
        buffer205,
        0,
        400
    );
    command_encoder300.resolveQuerySet(
        query300,
        0,
        32,
        buffer302,
        0
    )
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([0.75, -0.75, 1.0, 0.75, -1.0, -1.0, -1.0, -0.5, -0.5, 0.5, -0.5, 0.25, -0.75, -1.0, -0.5, -0.5, 0.0, -0.5, 0.25, 0.5, -0.5, 0.75, -0.5, 0.25, 0.5, -0.25, 0.5, 1.0, -0.5, 0.0, 0.0, -0.25, 0.25, -1.0, 1.0, -0.25, -0.25, 1.0, -1.0, 1.0, -0.75, 0.25, -0.25, 0.5, 0.75, -0.75, 0.5, -1.0, 0.75, -0.5, 0.25, -0.25, 0.75, 0.25, -0.5, -0.75, -1.0, 0.0, 0.5, 0.75, -0.75, -0.75, -0.75, 0.75, 0.0, -1.0, 0.0, 1.0, -0.75, -0.25, 0.0, -0.75, -1.0, 0.25, 0.75, -0.25, 0.5, 0.0, 0.25, -0.25, 0.0, 0.75, -0.75, -0.25, -0.25, -0.25, 0.5, 1.0, -0.5, 1.0, -0.25, -0.5, 0.75, -1.0, 0.25, -0.25, 0.75, -0.75, 0.5, 0.0, ]);
    device30.queue.submit([command_buffer301, ]);
    device20.destroy();
    
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    query101.destroy()
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    command_encoder302.insertDebugMarker("mymarker");
    device40.pushErrorScope("internal");
    query301.destroy()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const array9 = new Float32Array([1.0, 0.0, 1.0, 0.0, -0.25, -1.0, 0.75, 0.25, -0.75, 0.0, -1.0, -0.5, -0.75, -0.25, 1.0, -0.75, -1.0, -0.5, 0.25, 1.0, -0.5, 0.0, 0.0, 1.0, 0.25, 1.0, -0.75, 1.0, -1.0, -1.0, -0.25, 0.5, 0.75, -0.5, 1.0, -0.75, 1.0, -0.75, -0.25, -0.25, 0.5, -1.0, 0.25, -0.5, -0.25, -1.0, 0.25, 0.0, 1.0, 0.25, 0.75, -0.75, 0.5, 0.0, -0.25, 0.75, -0.75, 0.75, 1.0, 0.5, -0.75, 0.0, 0.5, -0.75, -0.25, -0.5, -0.5, 0.5, -0.25, 0.0, 0.5, -0.25, -0.75, 0.75, -0.25, 0.25, -0.5, 1.0, 0.5, -1.0, -0.5, -0.25, 1.0, -0.5, -0.75, 0.0, 0.5, 0.0, 0.5, -1.0, 1.0, 0.5, 1.0, 1.0, -0.25, 0.5, 0.0, 0.75, -0.5, -0.75, ]);
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const array10 = new Float32Array([-0.5, 0.5, 0.25, -0.75, 0.25, 0.25, -0.5, 0.25, 0.0, 0.0, 1.0, -0.5, 0.5, 0.5, 1.0, -1.0, 0.25, -1.0, -0.75, -0.5, 0.5, 0.25, 0.75, 0.0, 0.0, -0.75, 1.0, 0.25, 0.5, -0.5, 1.0, 0.5, 0.0, 0.25, -0.5, -0.25, -0.25, 0.25, -0.25, 1.0, 0.75, 0.0, 0.25, -0.5, -0.25, 0.25, 0.75, 0.25, 0.25, -0.75, 0.5, 0.5, 0.25, -0.75, 0.25, -0.5, 0.75, 0.25, -0.5, 0.0, 0.0, 0.75, -0.5, -0.5, 1.0, 0.25, 0.5, -0.75, -0.25, 0.25, 0.75, -0.25, 0.0, 0.5, 0.5, -0.75, 0.0, -0.5, 0.25, -1.0, 0.75, -0.25, -0.75, 1.0, 0.5, 1.0, -1.0, -0.25, 0.25, 1.0, 0.0, 0.25, 0.25, 0.5, 0.5, 0.0, 0.75, 0.0, 0.5, 1.0, ]);
    command_encoder205.clearBuffer(buffer204);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device30.queue.writeBuffer(buffer303, 0, array8, 0, array8.length);
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    command_encoder302.copyBufferToBuffer(
        buffer304,
        0,
        buffer307,
        0,
        400
    );
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    device30.queue.writeBuffer(buffer305, 0, array10, 0, array10.length);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    query303.destroy()
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
    
    command_encoder302.resolveQuerySet(
        query303,
        0,
        32,
        buffer300,
        0
    )
    command_encoder302.resolveQuerySet(
        query302,
        0,
        32,
        buffer302,
        0
    )
    command_encoder302.resolveQuerySet(
        query302,
        0,
        32,
        buffer303,
        0
    )
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    device10.queue.submit([command_buffer100, ]);
    device10.destroy();
    device30.queue.writeBuffer(buffer304, 0, array1, 0, array1.length);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    command_encoder205.copyBufferToBuffer(
        buffer204,
        0,
        buffer205,
        0,
        400
    );
    query302.destroy()
    
    command_encoder302.resolveQuerySet(
        query301,
        0,
        32,
        buffer307,
        0
    )
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder3020.setPipeline(compute_pipeline301);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout405]
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout403]
    });
    command_encoder303.copyBufferToBuffer(
        buffer304,
        0,
        buffer307,
        0,
        400
    );
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    command_encoder303.resolveQuerySet(
        query302,
        0,
        32,
        buffer301,
        0
    )
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder205.copyBufferToBuffer(
        buffer204,
        0,
        buffer204,
        0,
        400
    );
    
    
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout403]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    device20.queue.writeBuffer(buffer204, 0, array3, 0, array3.length);
    const array11 = new Float32Array([-0.5, 0.25, -0.5, 0.5, 1.0, 0.0, -0.75, 0.5, 0.25, -0.25, -0.75, 0.5, 0.25, -0.5, 0.75, -1.0, 0.75, 0.25, -0.5, 0.0, 0.0, 0.0, -1.0, -0.75, -1.0, 1.0, 0.25, 0.0, -0.75, 0.5, 0.0, 0.0, -1.0, -0.25, -1.0, -0.75, 0.75, -0.5, -0.5, 0.0, -0.25, -0.25, -0.5, -1.0, -0.75, -0.5, -0.25, 0.0, 1.0, 1.0, 0.75, -0.5, 0.25, 0.25, 0.0, -0.75, -0.75, 0.5, 0.0, -0.5, -0.75, -0.25, -0.75, 0.0, 0.0, -0.25, -0.75, 0.0, -0.75, -0.5, -0.75, 0.0, -0.5, 0.0, -0.25, 1.0, 0.25, -0.75, 0.0, 0.0, -0.75, -0.5, 0.5, 0.75, 1.0, -1.0, -0.25, -0.75, -0.75, -0.5, 0.25, 0.25, 0.25, -1.0, -0.75, 0.5, 0.5, 0.0, 0.0, 0.25, ]);
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    command_encoder303.resolveQuerySet(
        query303,
        0,
        32,
        buffer304,
        0
    )
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
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
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
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
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group301);
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    
    command_encoder205.copyBufferToBuffer(
        buffer206,
        0,
        buffer204,
        0,
        400
    );
    
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder3020.popDebugGroup()
    command_encoder303.copyBufferToBuffer(
        buffer300,
        0,
        buffer301,
        0,
        400
    );
    device20.queue.writeBuffer(buffer205, 0, array5, 0, array5.length);
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    command_encoder303.clearBuffer(buffer308);
    
    
    device20.queue.writeBuffer(buffer206, 0, array9, 0, array9.length);
    compute_pass_encoder3000.insertDebugMarker("marker")
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout404]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    command_encoder300.insertDebugMarker("mymarker");
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout401]
    });
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
    device30.queue.writeBuffer(buffer307, 0, array6, 0, array6.length);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    query201.destroy()
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    query301.destroy()
    command_encoder402.insertDebugMarker("mymarker");
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout404]
    });
    command_encoder402.insertDebugMarker("mymarker");
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const command_buffer402 = command_encoder402.finish();
    compute_pass_encoder3000.popDebugGroup()
    device60.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    const command_buffer303 = command_encoder303.finish();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([]);
    compute_pass_encoder3000.end();
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    compute_pass_encoder3020.end();
    device40.queue.submit([command_buffer402, ]);
    const command_buffer300 = command_encoder300.finish();
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder3000.end();
    device60.queue.submit([]);
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
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
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group302);
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
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group303);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder4000.end();
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4000.end();
    const command_buffer400 = command_encoder400.finish();
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer300, ]);
    const command_buffer102 = command_encoder102.finish();
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    compute_pass_encoder4000.end();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3020.end();
    compute_pass_encoder3000.popDebugGroup()
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
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group304);
    compute_pass_encoder3020.end();
    compute_pass_encoder4000.dispatchWorkgroups(100);
}