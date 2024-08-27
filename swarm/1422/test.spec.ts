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
    const array0 = new Float32Array([-0.75, -0.5, 0.75, 1.0, 0.0, -0.5, 0.5, -0.25, 0.5, 1.0, 1.0, -1.0, -0.25, 0.5, 0.0, 0.0, 0.0, -0.75, -0.5, -0.5, -0.75, -0.25, -0.25, 0.75, 0.75, -0.5, -0.25, 1.0, -0.25, 0.75, 1.0, 0.75, -0.25, -0.75, 0.25, 0.25, 0.5, 0.5, -0.75, 1.0, 1.0, 0.25, 0.25, -0.75, -1.0, 1.0, 1.0, -0.25, 0.0, -1.0, 0.75, 0.5, 0.75, -0.5, 0.5, 0.0, -0.25, -0.75, 0.75, -1.0, 1.0, 0.0, 0.75, -1.0, -0.25, -0.5, 0.5, -1.0, 1.0, 0.0, -0.5, 0.5, -0.75, -1.0, 1.0, 0.5, -0.25, 0.5, -1.0, 0.0, -1.0, 1.0, -1.0, 0.25, 0.75, 1.0, -0.75, 0.75, 0.25, -1.0, 0.25, 0.0, 1.0, -0.25, -0.5, 0.0, 0.5, 0.25, -1.0, 0.75, ]);
    
    const array1 = new Float32Array([0.75, -0.25, 0.5, -1.0, 0.75, -0.75, 0.5, 0.75, -0.25, -1.0, 0.25, -1.0, -0.25, -0.75, -1.0, 0.25, 0.5, -0.25, -0.75, 0.5, 1.0, -0.75, -1.0, 0.25, 0.25, -0.75, -0.5, 0.75, 0.5, 1.0, 1.0, 0.0, 1.0, -1.0, -0.5, 0.5, 0.25, 0.25, 1.0, -0.25, -0.75, -0.25, 0.75, 0.0, 0.0, 1.0, 1.0, -1.0, 0.0, -0.25, 0.75, 0.0, -1.0, -1.0, 0.5, -0.5, -0.5, -0.25, 0.5, -0.75, -1.0, -0.25, 0.75, 0.75, -1.0, 0.75, -0.75, -0.25, 0.5, 1.0, 0.0, 1.0, -0.25, -0.25, 0.25, -0.5, 0.25, -0.25, 0.0, -0.25, 1.0, 1.0, 1.0, -0.25, 0.25, -0.25, -1.0, -0.5, -0.25, 0.0, 0.75, 0.75, -0.75, -0.25, 0.0, 0.75, 0.25, 0.5, -0.25, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.destroy();
    
    
    
    const array2 = new Float32Array([-0.25, -1.0, 0.0, -0.25, 1.0, 1.0, -0.5, -0.25, 0.25, -1.0, -0.75, -0.5, -0.25, 1.0, 1.0, 0.75, 0.75, -0.75, 0.75, -1.0, -1.0, -1.0, 0.0, -0.5, -1.0, -1.0, -0.25, 0.75, -1.0, 0.5, 0.25, 1.0, -0.25, 0.75, -0.75, 0.0, 0.0, -0.5, -1.0, 0.25, 0.75, 0.75, 0.25, 0.25, -0.25, -0.25, -0.75, -0.75, 0.75, -0.75, 0.75, -1.0, -0.25, 0.25, 0.25, -1.0, -0.5, 0.25, 0.25, -0.75, 0.0, 1.0, -0.75, 0.5, -0.75, -0.75, -0.25, 0.75, -1.0, 1.0, -0.75, 0.75, -0.25, -0.25, 0.5, -0.75, 0.75, 0.75, -0.5, 0.25, 0.75, 1.0, -0.25, 0.75, 1.0, -0.5, 0.0, -0.75, -0.5, -0.5, -0.75, -0.75, -0.75, 0.0, -0.75, -0.75, 0.25, -0.75, -1.0, 0.25, ]);
    const array3 = new Float32Array([0.75, 1.0, 0.75, -1.0, -0.75, 0.75, 0.0, 0.25, 1.0, 0.75, -0.75, -0.5, 0.75, 0.0, 0.0, 0.0, -0.5, 0.0, -1.0, 0.0, 0.5, 0.5, -0.5, 1.0, 0.75, 0.5, 0.75, -0.75, -1.0, -1.0, 1.0, -1.0, 0.0, 1.0, -0.5, -0.5, -1.0, -0.75, 0.25, 0.25, -0.5, 0.0, 0.25, -1.0, -0.75, -0.25, 0.75, 0.0, 0.25, 0.25, 0.75, 0.0, 0.25, -0.75, 0.75, -0.75, 0.25, 1.0, 0.75, -0.75, -1.0, -0.25, -0.5, 0.5, -0.25, 0.0, -0.25, 0.0, 0.0, -1.0, 1.0, 0.0, 0.25, 0.5, -0.75, 0.75, 1.0, 0.5, -0.5, 0.75, -0.25, 0.5, 0.75, 0.0, -0.5, 0.75, 0.75, 0.5, 1.0, 1.0, -0.25, 0.0, 0.75, -0.75, -0.75, -1.0, 1.0, -0.5, -0.5, 0.25, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    device00.destroy();
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([-1.0, 1.0, -0.75, -1.0, -0.25, -0.25, -1.0, 0.25, 0.25, 0.0, -0.5, -0.5, 0.0, 1.0, -0.75, 0.75, 0.0, 0.0, -0.75, 0.75, -0.25, -0.25, -0.25, -1.0, -0.5, 0.5, 0.5, 0.75, 0.0, 0.0, -0.25, 0.5, 0.75, 1.0, 0.75, -0.25, -0.75, -0.5, -0.5, -1.0, -0.5, 1.0, -0.25, -1.0, 0.5, 0.75, -0.25, 1.0, -0.5, 1.0, 0.0, 0.25, 0.75, 0.25, -0.5, 1.0, 0.75, 0.5, 0.0, -1.0, 0.5, 0.25, -1.0, 0.0, 0.0, 1.0, 0.75, 0.0, -1.0, 0.5, 1.0, -1.0, 0.75, -1.0, 0.0, 0.0, 0.75, -0.25, -0.5, -0.5, 0.25, -0.5, 0.75, 0.75, 0.5, -0.75, 0.5, -0.25, -0.25, 0.25, 0.5, 0.75, 0.75, -0.25, 0.0, -0.25, 1.0, -0.5, 0.25, -0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    texture100.destroy();
    
    const array5 = new Float32Array([1.0, -0.75, -0.25, -0.75, 1.0, -0.5, -0.5, -0.75, -1.0, 0.5, -1.0, -0.5, 0.25, 0.25, 1.0, -1.0, 0.75, 0.5, 0.0, -0.5, -0.5, 1.0, 0.75, 0.5, 0.75, 0.5, 0.75, -0.25, 0.0, 1.0, 0.0, 0.75, 0.5, 1.0, -0.5, -0.75, -1.0, 1.0, 0.75, 0.25, -0.25, 0.75, -0.75, 1.0, 0.75, -1.0, 0.25, -0.25, 0.75, -0.25, -0.5, 0.5, 1.0, 0.25, 0.75, 0.25, 0.0, 0.25, -0.25, -0.5, 0.0, -0.25, -0.5, -1.0, -1.0, 0.25, -0.25, -0.25, -0.5, -0.5, 0.5, -0.25, 0.5, 0.5, -0.5, 0.75, 0.25, 1.0, 0.0, -1.0, -0.25, -0.5, 0.75, -1.0, 0.5, 0.5, 0.5, -1.0, 0.75, -0.75, 0.25, 0.25, -0.75, -1.0, -1.0, 0.0, 1.0, -0.5, 0.5, -1.0, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    buffer200.destroy()
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    
    
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
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer201.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16sint",
        dimension: "2d"
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    const array6 = new Float32Array([0.75, 0.5, -0.5, 0.0, 0.75, -0.25, -0.5, 0.25, 0.5, -0.75, 0.25, -0.5, 0.0, -0.25, -1.0, -0.5, 0.25, 0.25, -0.5, 0.25, -0.5, 0.5, 1.0, -0.5, -1.0, 0.0, 0.25, 1.0, 1.0, -0.75, 0.75, 0.25, 0.0, 0.75, 0.5, 0.25, 0.25, -1.0, 0.5, -0.25, 1.0, 0.75, 0.75, 0.75, 0.0, -0.75, -0.75, 0.5, 0.0, -1.0, -0.5, 0.0, 1.0, 0.0, 0.75, -0.5, 0.75, -1.0, 0.75, -0.5, -0.75, 0.25, -0.25, -0.5, 0.25, 0.25, -0.5, 0.25, 0.0, -0.5, -0.75, 1.0, -0.25, 0.0, 0.5, 0.75, -0.75, 0.5, -0.5, -1.0, -0.75, 0.75, 0.0, 0.25, -0.5, -0.75, -0.75, 0.0, -0.5, 1.0, 0.0, -0.5, 0.0, 0.0, -0.5, -0.5, 1.0, -0.5, 0.5, 0.25, ]);
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    
    
    texture200.destroy();
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    buffer204.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.copyBufferToTexture(
        {
            buffer: buffer204
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    
    
    buffer202.destroy()
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
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
    command_encoder100.insertDebugMarker("mymarker");
    
    const command_buffer101 = command_encoder101.finish();
    
    compute_pass_encoder2000.insertDebugMarker("marker")
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
    const array7 = new Float32Array([0.25, -0.25, 0.0, 0.75, 0.25, -0.5, 0.25, -0.25, -1.0, -0.5, -1.0, -0.75, 1.0, 0.5, 1.0, 0.0, -0.5, -1.0, 0.75, -0.75, -0.5, -0.5, -1.0, -1.0, -0.75, -1.0, 1.0, -1.0, -0.75, -0.75, -0.5, 1.0, 0.25, 1.0, 0.75, 0.25, -0.75, 1.0, 0.5, 0.0, -1.0, 0.5, -0.5, -0.25, 1.0, 0.5, -0.25, 0.25, 0.25, -1.0, 0.25, -1.0, 1.0, 1.0, -0.75, 0.0, 0.25, -1.0, -0.25, 0.0, 1.0, -0.75, 0.0, 0.25, -0.5, 0.25, -0.75, 1.0, 0.75, 0.0, -0.5, 0.0, -1.0, -1.0, -0.25, -0.75, 0.0, 0.25, 0.25, -0.75, -0.25, -0.75, 1.0, 0.75, -0.5, 0.5, -0.75, 0.0, 0.75, 0.5, -1.0, -1.0, -0.75, -0.5, 0.75, 0.25, 0.0, -0.25, -0.5, 0.5, ]);
    command_encoder200.insertDebugMarker("mymarker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    command_encoder201.copyBufferToTexture(
        {
            buffer: buffer205
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device10.pushErrorScope("internal");
    
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    texture201.destroy();
    command_encoder102.clearBuffer(buffer100);
    query100.destroy()
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    buffer205.destroy()
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array8 = new Float32Array([1.0, 0.25, 1.0, 1.0, 0.5, 0.25, -0.75, -1.0, 0.75, 1.0, -0.75, -1.0, 0.75, -0.5, -0.25, 1.0, 0.25, -0.75, 0.25, 0.25, -0.25, -0.25, -0.25, 0.0, 0.5, -1.0, 1.0, 0.25, 0.75, 0.25, -0.25, -1.0, 0.5, -0.25, 0.5, 0.5, 0.0, 0.25, 0.75, 0.25, -0.5, 0.25, -1.0, 0.75, 0.0, 0.75, 0.5, -0.75, 1.0, 0.25, -1.0, 0.5, 1.0, 0.5, 0.5, 0.5, -1.0, 1.0, -0.75, -1.0, 0.25, -0.75, -0.5, -0.5, 1.0, 0.25, -0.5, 0.0, -0.75, -1.0, 0.25, -1.0, -1.0, 0.25, -0.5, 0.75, -1.0, 0.25, -0.75, 0.25, 0.25, 0.0, 0.75, -1.0, -0.5, 0.25, 0.25, 0.5, 0.5, -0.5, 0.25, 1.0, 1.0, -0.75, 1.0, 0.75, 1.0, 0.5, 0.0, -0.25, ]);
    compute_pass_encoder2010.insertDebugMarker("marker")
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device10.destroy();
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
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
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    command_encoder202.insertDebugMarker("mymarker");
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.queue.writeBuffer(buffer206, 0, array8, 0, array8.length);
    buffer101.destroy()
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.queue.writeTexture({ texture: texture202 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder202.insertDebugMarker("mymarker");
    device20.queue.writeTexture({ texture: texture202 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture202.destroy();
    texture203.destroy();
    command_encoder202.insertDebugMarker("mymarker");
    device30.pushErrorScope("internal");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
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
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    buffer206.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.queue.writeBuffer(buffer207, 0, array2, 0, array2.length);
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    device20.queue.writeBuffer(buffer207, 0, array7, 0, array7.length);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    device20.queue.writeBuffer(buffer207, 0, array4, 0, array4.length);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    device20.queue.writeBuffer(buffer207, 0, array1, 0, array1.length);
    
    
    
    device20.pushErrorScope("validation");
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder300.insertDebugMarker("mymarker");
    const command_buffer300 = command_encoder300.finish();
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder2010.insertDebugMarker("marker")
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2040.executeBundles([])
    device20.queue.writeBuffer(buffer207, 0, array2, 0, array2.length);
    device30.queue.submit([command_buffer300, ]);
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
    device40.destroy();
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    command_encoder201.clearBuffer(buffer207);
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    const array9 = new Float32Array([0.5, -0.75, 0.5, -0.5, 0.75, -0.25, -0.5, 0.25, -0.5, 0.0, 1.0, 0.0, 1.0, -0.5, 0.25, -0.5, 0.75, -0.5, -0.25, -1.0, 0.5, 0.25, 0.5, 1.0, -0.25, -1.0, 1.0, 0.75, -0.25, 0.75, 0.0, -0.75, 0.75, 0.75, -0.5, -0.5, 1.0, -1.0, 0.0, 0.25, 0.5, 0.0, -1.0, 1.0, 0.5, 0.0, -0.25, -0.25, 0.25, -1.0, -0.75, -0.5, 0.25, -0.25, 1.0, -0.25, 1.0, -0.5, 0.5, 0.5, -0.75, 0.25, 0.0, 0.25, 0.5, 1.0, -1.0, 0.0, -0.75, -0.25, 0.75, -0.5, 1.0, -1.0, -0.5, 0.25, 0.25, 0.0, 0.25, -0.25, 1.0, -0.5, -0.5, -0.75, 0.25, -0.75, -0.75, 0.0, 0.25, 0.5, 1.0, -0.5, 1.0, 0.5, -1.0, -0.5, 0.75, 0.25, 0.0, -1.0, ]);
    render_pass_encoder2040.executeBundles([])
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.writeBuffer(buffer207, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer207, 0, array9, 0, array9.length);
    command_encoder203.clearBuffer(buffer205);
    device20.queue.writeBuffer(buffer207, 0, array4, 0, array4.length);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    
    compute_pass_encoder2001.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer207, 0, array3, 0, array3.length);
    
    
    
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer207, 0, array0, 0, array0.length);
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth16unorm",
        dimension: "2d"
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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
    command_encoder203.copyTextureToBuffer(
        {
            texture: texture203
        },
        {
            buffer: buffer207
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    device20.queue.writeBuffer(buffer207, 0, array0, 0, array0.length);
    
    render_pass_encoder2040.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture204.destroy();
    device20.queue.writeTexture({ texture: texture204 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    {
        await buffer207.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer207.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer207.unmap();
        console.log(new Float32Array(data));
    }
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2050,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device50.pushErrorScope("out-of-memory");
    compute_pass_encoder2000.popDebugGroup()
    const array10 = new Float32Array([0.0, 0.75, -0.75, 0.0, -0.75, -0.25, -1.0, -0.5, -0.25, -0.5, 0.5, -1.0, -0.5, 0.25, 0.25, -0.5, -1.0, -0.5, -0.5, 0.5, 0.0, -0.5, 0.25, -0.5, -0.25, -0.75, -1.0, -1.0, -1.0, 0.0, -0.5, -0.5, -0.5, 0.0, 0.0, -0.5, 0.0, -0.75, -0.75, 0.5, -0.75, 0.5, 0.25, 0.0, -0.25, -0.25, 1.0, 0.0, 0.75, -1.0, -0.5, 0.5, 0.25, -0.5, 1.0, -0.5, 0.75, 0.5, -0.25, 0.0, -0.25, 0.0, 0.0, -1.0, -0.75, 0.75, -0.25, 0.5, -1.0, 0.25, 0.25, -0.75, -0.25, -0.75, -0.5, -1.0, -0.5, 0.0, 0.5, -0.25, 0.25, -0.5, 0.5, 0.75, 0.0, 0.75, 0.0, 0.25, -1.0, 0.75, 0.75, 0.25, 0.5, 0.25, -0.5, -0.75, -0.5, -0.25, -0.5, 0.25, ]);
    buffer203.destroy()
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    device20.queue.writeBuffer(buffer207, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer207, 0, array1, 0, array1.length);
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture205 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer207, 0, array7, 0, array7.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    buffer203.destroy()
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
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    
    
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16uint",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture206 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder2041.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2001.pushDebugGroup("group_marker")
    texture206.destroy();
    
    render_pass_encoder2030.insertDebugMarker("marker");
    
    
    device20.queue.writeBuffer(buffer207, 0, array8, 0, array8.length);
    buffer207.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device20.queue.submit([command_buffer202, ]);
    texture205.destroy();
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder2030.insertDebugMarker("marker");
    
    render_bundle_encoder200.popDebugGroup();
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query500.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture202 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer100.destroy()
    device50.pushErrorScope("validation");
    query501.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    texture500.destroy();
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    compute_pass_encoder2001.popDebugGroup()
    
    compute_pass_encoder2020.setPipeline(compute_pipeline200);
    
    render_pass_encoder2041.setStencilReference(1);
    compute_pass_encoder2000.popDebugGroup()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device20.queue.writeTexture({ texture: texture207 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2040.executeBundles([render_bundle_encoder200, ])
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device20.queue.writeTexture({ texture: texture207 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2041.setStencilReference(1);
    const texture208 = device20.createTexture({
        label: "texture208",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8uint",
        dimension: "2d"
    });
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    query501.destroy()
    compute_pass_encoder2010.popDebugGroup()
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
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.setPipeline(compute_pipeline202);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    command_encoder301.insertDebugMarker("mymarker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    device00.pushErrorScope("validation");
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query201
    });
    device20.queue.writeTexture({ texture: texture207 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    command_encoder205.copyBufferToTexture(
        {
            buffer: buffer201
        },
        {
            texture: texture207
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder205.copyTextureToBuffer(
        {
            texture: texture200
        },
        {
            buffer: buffer203
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder205.copyTextureToBuffer(
        {
            texture: texture205
        },
        {
            buffer: buffer205
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device20.queue.writeTexture({ texture: texture207 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture202 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.queue.writeBuffer(buffer208, 0, array0, 0, array0.length);
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2050,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2041.executeBundles([])
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture207 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1001.insertDebugMarker("marker")
    render_pass_encoder2050.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture201 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture207.destroy();
    command_encoder205.copyBufferToTexture(
        {
            buffer: buffer206
        },
        {
            texture: texture204
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder2001.setPipeline(compute_pipeline203);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout205]
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    query200.destroy()
    buffer207.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    render_pass_encoder2031.insertDebugMarker("marker");
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_pass_encoder2030.executeBundles([render_bundle_encoder200, ])
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2031.setStencilReference(1);
    compute_pass_encoder2001.insertDebugMarker("marker")
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer207, 0, array1, 0, array1.length);
    query600.destroy()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2010.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer000, 0, array8, 0, array8.length);
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2041.executeBundles([])
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    
    query201.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    const command_buffer201 = command_encoder201.finish();
    query202.destroy()
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group200);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder500.popDebugGroup();
    
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query201
    });
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer206,
        0
    )
    
    render_pass_encoder2041.executeBundles([])
    
    const texture_view2080 = texture208.createView({ label: "texture_view2080" });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2031.setStencilReference(1);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
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
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    buffer208.destroy()
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    texture300.destroy();
    
    render_pass_encoder2031.executeBundles([render_bundle_encoder200, ])
    texture208.destroy();
    
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group201);
    device20.queue.writeTexture({ texture: texture207 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    command_encoder203.clearBuffer(buffer2012);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    query200.destroy()
    render_pass_encoder2031.executeBundles([])
    device20.queue.writeBuffer(buffer207, 0, array6, 0, array6.length);
    const command_buffer203 = command_encoder203.finish();
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group203);
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    device20.queue.submit([command_buffer203, ]);
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer209, 0, array8, 0, array8.length);
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_pass_encoder2031.setStencilReference(1);
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device20.queue.writeTexture({ texture: texture202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder2010.popDebugGroup()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2040.setStencilReference(1);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2018, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2018, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2019, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2019, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2000.end();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder3010.setPipeline(compute_pipeline302);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2001.dispatchWorkgroups(100);
    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2021,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group204);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2023,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group205);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2025,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group206);
    compute_pass_encoder2001.popDebugGroup()
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group300);
    device30.queue.submit([]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    const command_buffer205 = command_encoder205.finish();
    device50.queue.submit([]);
    compute_pass_encoder2001.end();
    compute_pass_encoder2020.end();
    compute_pass_encoder3010.end();
    const command_buffer301 = command_encoder301.finish();
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2027,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group207);
    compute_pass_encoder2010.end();
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group301);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer308, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer308, 0);
    device20.queue.submit([command_buffer205, ]);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder2020.end();
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer201, ]);
    device50.queue.submit([]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2029,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group208);
    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2031,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group209);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2032, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2032, 0);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer309, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer309, 0);
    device30.queue.submit([command_buffer301, ]);
    device20.queue.submit([command_buffer203, ]);
    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2034,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2010);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2035, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2035, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2036, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2036, 0);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2001.popDebugGroup()
    compute_pass_encoder2001.popDebugGroup()
    device70.queue.submit([]);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder3010.end();
    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2038,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2011);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2001.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2040,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2012);
    compute_pass_encoder2001.end();
    const command_buffer200 = command_encoder200.finish();
    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2042,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2013);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3010.dispatchWorkgroups(100);
    compute_pass_encoder2001.end();
    compute_pass_encoder3010.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    const command_buffer204 = command_encoder204.finish();
    device30.queue.submit([]);
    compute_pass_encoder2010.end();
    device20.queue.submit([command_buffer200, command_buffer204, command_buffer205, ]);
    compute_pass_encoder2001.end();
    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2044,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2014);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2045, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2045, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2046, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2046, 0);
    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2048,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2015);
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
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group302);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder2010.end();
    device20.queue.submit([command_buffer200, command_buffer205, ]);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2001.popDebugGroup()
    compute_pass_encoder2001.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer205, ]);
    compute_pass_encoder2000.end();
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3010.end();
    device50.queue.submit([]);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2050,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2016);
    compute_pass_encoder2010.popDebugGroup()
}