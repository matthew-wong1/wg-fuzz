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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array0 = new Float32Array([1.0, -0.75, -0.5, -0.5, 0.25, -0.5, 1.0, -0.5, -1.0, -0.5, 0.0, 0.0, 1.0, 0.5, -0.75, -0.75, -0.5, 0.25, -0.75, 0.25, 1.0, -0.5, -0.5, 0.0, 0.25, -0.5, -0.25, 0.5, 0.5, 0.5, 0.25, -0.5, 1.0, 0.0, 0.25, 0.0, 0.25, 1.0, -0.25, 0.75, -0.25, -0.75, -1.0, -1.0, -0.25, 0.0, 0.75, -1.0, -1.0, 0.25, 1.0, 0.75, 0.0, 1.0, -0.75, 0.5, 0.5, -0.25, -1.0, -0.75, 0.0, 0.0, 1.0, 0.0, -0.5, -0.25, 0.25, 0.5, -0.25, 0.0, 0.0, 0.25, -0.25, 0.5, -0.5, 0.5, 1.0, 0.25, -0.5, 0.5, 0.75, -0.75, 0.25, 0.0, 0.25, 0.75, -0.75, 0.25, -0.75, -0.25, 0.5, 0.25, -0.25, 0.5, 0.5, 1.0, 0.75, -0.5, -0.75, 1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array1 = new Float32Array([1.0, 0.0, 1.0, -1.0, 0.0, -0.75, -1.0, 0.5, 0.5, 0.75, 1.0, -0.75, 0.25, 0.0, -1.0, 0.5, 1.0, -0.25, 1.0, -0.25, 0.75, -0.25, 1.0, -0.75, -1.0, -0.5, -0.5, 1.0, 1.0, 0.0, -0.5, 1.0, 0.0, 1.0, 1.0, 1.0, -1.0, 1.0, 1.0, -0.25, -0.75, -0.25, 0.0, -0.5, 0.5, -0.75, 1.0, -0.75, -0.25, 0.0, 0.75, -1.0, -0.5, 0.5, 0.0, -0.5, -0.5, 0.0, 0.0, -1.0, 0.25, 0.5, 0.75, 0.0, -1.0, -1.0, 0.5, 0.75, 0.75, -0.5, 0.0, -0.75, 0.5, -0.75, 1.0, -0.5, 0.0, -0.75, -1.0, 0.25, -0.75, 0.0, 1.0, 0.0, 0.5, 1.0, -0.25, 0.0, 1.0, 1.0, 1.0, 0.25, -1.0, 0.0, 1.0, 0.25, 0.75, -0.5, 0.25, 0.5, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture100.destroy();
    query100.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    
    const array2 = new Float32Array([-0.5, -1.0, 1.0, 1.0, -0.75, 0.0, -1.0, -0.25, -0.25, -0.75, 0.25, -1.0, 0.0, -0.75, 1.0, -0.75, -0.75, -0.75, 0.25, -0.75, -0.25, -0.75, -0.5, 0.5, -0.5, 0.5, 0.0, -0.5, 0.5, 0.5, -0.75, 0.75, 1.0, -1.0, -0.5, -0.25, 1.0, 0.0, 0.0, -1.0, 1.0, -0.5, 0.75, 1.0, -0.25, -0.75, 0.5, 0.5, 0.75, -1.0, 0.75, 0.25, -0.75, 1.0, -0.25, 0.75, 0.75, 0.75, -0.75, 0.75, -0.75, -0.75, 1.0, 0.5, 1.0, -0.5, -0.5, -0.75, 0.25, 0.25, -0.5, 1.0, 0.75, 0.25, 0.0, -0.75, -0.25, -0.5, -0.5, -0.5, 0.5, 0.5, -0.5, 0.75, -0.75, 0.5, -0.75, -0.5, -1.0, -1.0, -0.25, 1.0, -0.25, 1.0, -0.5, 0.75, -1.0, 0.5, -0.25, 1.0, ]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query100.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    buffer100.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
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
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    buffer200.destroy()
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    texture102.destroy();
    const array3 = new Float32Array([0.25, -0.75, 1.0, 0.25, -0.5, 0.0, 0.0, -1.0, -0.25, -1.0, 0.25, 0.75, 0.75, -0.5, 1.0, 0.5, -0.5, 0.0, 1.0, -0.5, -0.25, -0.25, -1.0, 0.75, -0.5, 0.5, -0.75, 1.0, -1.0, 0.25, -0.75, 0.5, -0.25, -1.0, 1.0, 1.0, -0.75, 0.75, -1.0, 0.5, 0.5, 0.25, 0.0, -0.75, 1.0, 1.0, -0.5, 0.25, 1.0, -0.75, 0.0, 0.5, 0.25, -0.75, 0.75, 0.75, -0.5, 1.0, -0.25, 0.0, 0.75, -0.75, 0.0, -0.75, -0.5, -0.75, 0.0, -0.75, -0.75, 1.0, 0.0, -0.75, -0.5, -0.5, -0.5, 0.25, -0.75, 0.5, 0.0, -0.75, -0.75, 0.0, -0.75, -0.75, -1.0, 1.0, 0.5, -0.75, 1.0, 0.5, 0.25, 0.75, -0.25, -0.25, 1.0, -0.75, 0.0, 0.25, -0.75, 0.5, ]);
    const array4 = new Float32Array([-0.25, 0.25, -0.75, -0.25, 1.0, -0.75, 1.0, 0.0, 0.5, -0.5, 0.5, -0.5, 0.5, 0.0, -0.75, 0.0, 0.75, -0.5, -0.75, -0.5, 0.0, -0.5, 0.0, 0.25, 1.0, 0.5, 0.5, 0.25, -1.0, -1.0, 0.5, -0.5, 0.0, 0.75, -0.5, -0.75, -0.25, -1.0, 0.5, -1.0, 0.75, -0.25, -0.25, 0.25, -0.25, 0.75, -1.0, -0.75, 0.75, -0.5, 0.5, -0.5, -1.0, -1.0, 0.25, -0.5, 0.5, 0.5, -0.75, -0.25, 0.5, 0.25, 1.0, -0.25, -0.25, 0.75, -1.0, 0.0, 0.5, 0.0, 0.0, 0.0, -1.0, 0.5, -0.75, 0.25, 0.0, -0.5, -0.25, 0.5, 1.0, 0.0, 1.0, -1.0, -0.5, 1.0, -1.0, 0.25, -0.75, -0.75, -0.5, -0.25, 1.0, -0.75, 0.5, 1.0, 0.5, -0.5, -0.75, 0.75, ]);
    buffer102.destroy()
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const array5 = new Float32Array([-0.25, -0.25, -0.75, -0.25, 1.0, -0.25, 0.75, 1.0, 1.0, 0.0, -0.5, 1.0, -1.0, -1.0, -0.25, 0.75, 0.25, 0.75, 0.0, 1.0, 0.75, -0.75, -1.0, -1.0, -0.5, 1.0, 0.5, -1.0, 0.25, 0.0, 0.0, 0.0, 1.0, -1.0, 1.0, -0.75, -0.25, 0.5, -0.5, 0.5, -1.0, -0.5, -0.5, -0.75, 0.5, 1.0, -0.25, 0.0, -0.25, -0.75, -0.75, 0.5, -1.0, -0.75, 0.5, 0.5, 0.25, -0.75, 0.0, 0.75, -0.25, -0.25, -0.75, 0.75, -0.5, -0.25, -0.25, 0.0, -0.5, -1.0, 0.75, -0.5, -1.0, -0.75, -1.0, 0.5, 0.0, 1.0, 0.5, -1.0, 0.0, 0.0, -1.0, 0.75, -0.5, -0.5, 0.25, 0.75, -0.75, -1.0, -0.5, 0.5, 0.5, -0.25, 0.0, 0.25, 0.5, 0.0, 1.0, 0.5, ]);
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
    
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    device20.destroy();
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    buffer101.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array6 = new Float32Array([-0.5, -0.25, 0.75, 0.5, -0.75, 0.0, 0.0, 1.0, 0.0, 0.5, 0.25, 0.5, -0.75, 0.75, 0.75, -0.25, 0.0, -0.5, 0.25, 0.75, -0.5, 0.75, 1.0, 0.25, 0.0, 0.75, -0.25, -0.75, 0.25, 0.75, -1.0, 1.0, -0.5, -1.0, 0.25, 1.0, 1.0, -1.0, 0.75, 0.25, 0.75, 0.5, -1.0, 1.0, 0.25, 0.25, 0.25, 0.25, -0.75, 1.0, -0.25, 0.0, 0.0, 1.0, 0.0, 0.5, 0.75, 0.5, -1.0, -1.0, 0.25, -0.5, -0.25, -0.25, 1.0, 0.0, 1.0, -0.5, 0.5, -0.25, 0.25, 0.75, 0.75, -0.25, 0.0, -0.75, -0.25, 0.25, 0.75, 0.5, 0.25, 0.0, 0.5, 0.25, -0.75, 0.75, -1.0, 0.75, 0.25, -1.0, 1.0, -0.75, 0.25, 1.0, 1.0, 0.5, 0.0, 0.25, 0.5, 0.0, ]);
    device10.destroy();
    
    texture300.destroy();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
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
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32uint",
        dimension: "2d"
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.destroy();
    
    
    const array7 = new Float32Array([-1.0, -0.75, 0.75, 0.0, -0.5, 0.75, 0.75, -0.5, 0.0, -0.75, 0.75, 1.0, 0.75, -0.75, 0.75, 1.0, 1.0, -0.25, -0.25, 1.0, -1.0, 0.0, 0.25, 0.25, -0.5, -0.5, -1.0, 0.0, 0.25, 0.0, 1.0, -0.5, 1.0, 0.5, -1.0, 1.0, 0.75, -0.25, -1.0, 0.5, -1.0, 0.25, -1.0, -0.25, 0.5, -0.25, 0.25, 0.0, 0.5, -0.75, 0.25, 1.0, 0.5, 0.0, 0.25, -0.75, -0.25, -1.0, -0.25, 1.0, -0.5, 0.75, 1.0, 0.0, 0.75, 0.75, 0.0, 0.0, -1.0, 1.0, -0.5, 1.0, 0.0, 0.5, 1.0, 1.0, 0.25, 1.0, 0.0, 0.25, 0.0, 0.75, -0.25, -1.0, 0.0, -1.0, -1.0, 0.0, -0.5, 1.0, 0.75, 0.5, -0.5, -0.75, -0.5, -0.5, -0.75, -1.0, -1.0, -0.5, ]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
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
    
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    device40.destroy();
    
    device50.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device70.destroy();
    const array8 = new Float32Array([1.0, 1.0, 1.0, 1.0, 0.5, 0.75, 0.0, -1.0, -0.5, 1.0, -0.75, 0.5, 1.0, -0.25, 0.0, -1.0, -0.75, -0.25, 0.0, -1.0, 1.0, -0.25, 0.0, 0.75, 0.5, -1.0, -0.75, 0.0, -1.0, 0.75, -0.75, 0.75, 1.0, -1.0, -1.0, -1.0, -0.75, 0.25, -0.5, -0.5, 0.5, -1.0, -0.25, 1.0, 0.75, -1.0, -0.5, -0.25, -0.25, -1.0, 0.25, 1.0, -1.0, -0.25, -0.5, 0.75, 0.5, 0.0, -0.75, 0.75, -0.25, 0.5, -1.0, 0.5, -0.5, 0.5, 0.0, 0.25, -0.25, -0.5, 0.0, -0.5, -0.25, -0.25, -1.0, -0.5, -0.75, 0.0, 0.25, 1.0, 0.0, -0.5, 0.25, -0.25, -0.25, 0.75, -0.5, 0.0, 0.0, 0.25, -1.0, 0.5, -0.5, -0.5, -0.75, -0.25, 0.0, -0.75, -0.5, 0.25, ]);
    
    
    
    
    
    
    
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const array9 = new Float32Array([0.75, 0.5, -1.0, -1.0, -1.0, -1.0, 0.5, 0.0, -0.25, -1.0, -0.5, -1.0, 0.75, -0.5, 0.0, 0.0, 0.5, 0.75, 0.75, -0.75, -0.25, -0.75, -0.5, 0.25, 0.0, -0.25, -0.25, 0.0, -0.5, 0.5, 0.0, 0.25, 0.0, -0.5, 0.5, -0.75, 0.25, 0.5, 0.0, 1.0, 0.5, -0.25, -0.25, 0.5, -0.25, -0.5, 1.0, 0.25, 0.75, 0.75, -0.75, 0.75, -0.25, -0.25, 0.75, 1.0, -0.25, 0.0, 0.0, 1.0, -0.5, -0.25, -0.25, 0.5, -1.0, 0.25, 0.75, 0.5, -0.25, -0.5, -1.0, 0.25, 0.0, -0.75, -0.5, 0.5, 0.5, 1.0, -0.25, 0.0, 0.75, 0.5, 0.25, -0.75, 0.25, 0.75, 1.0, -1.0, -0.75, 0.75, 0.75, 0.5, -0.5, -0.25, 0.5, 0.75, -0.75, -0.75, -0.25, 0.75, ]);
    buffer600.destroy()
    
    const array10 = new Float32Array([-0.5, -1.0, 1.0, 0.75, -0.5, -1.0, 0.5, -0.5, 0.0, -0.75, 0.5, 1.0, 0.75, -0.75, 0.0, -0.75, 0.5, -0.5, 0.75, -0.5, -1.0, -0.5, -0.25, -0.25, -0.5, 0.0, -0.5, -0.5, -0.25, -0.25, 0.25, 0.5, -0.25, 0.5, 1.0, -0.75, 0.5, -0.25, 0.75, 0.75, -0.75, 0.0, 0.5, 0.75, -1.0, 0.25, 0.75, -0.5, 0.25, -0.75, 0.75, -0.75, -0.5, 0.5, 0.25, 0.25, 1.0, -1.0, 0.75, 0.0, -0.25, 1.0, -0.75, 0.5, 1.0, 0.5, -0.25, -0.5, 0.0, 0.5, -1.0, -0.25, -0.25, 0.0, -0.5, 1.0, 1.0, -0.5, -0.5, 0.25, -0.5, 1.0, -0.5, -0.5, 0.75, 0.25, 0.75, 0.5, 0.25, -0.75, -0.5, -0.5, 0.25, 0.5, 0.0, 1.0, 0.5, 0.0, 0.25, -1.0, ]);
    
    const array11 = new Float32Array([0.5, 0.5, 1.0, 0.0, 0.5, -0.5, 0.5, 0.5, 0.25, 0.0, 0.25, 0.5, 1.0, -0.25, 0.5, -0.25, 0.75, -0.25, -0.5, -0.5, 0.0, -0.25, 1.0, -0.5, -0.5, -0.75, -0.5, -0.75, -1.0, -1.0, 0.75, 0.25, 0.0, 0.0, 0.5, -0.5, 0.5, -0.75, 1.0, 1.0, -0.5, -0.5, -0.25, -1.0, 0.0, -0.25, -0.25, -0.75, 1.0, 0.75, -0.5, -0.5, 0.75, 1.0, -0.75, 0.0, 1.0, 0.5, -0.5, 0.0, 0.0, -1.0, 0.25, -0.25, 0.75, -1.0, -0.5, -0.75, -0.75, 0.75, 0.0, -0.25, -1.0, -1.0, -0.75, -1.0, -0.5, -0.25, 0.75, -0.5, -1.0, -1.0, 0.75, 0.75, 0.75, 0.75, 0.0, -0.25, 0.25, 0.5, -0.25, 0.75, 0.0, 0.75, -1.0, -0.25, 0.0, 0.25, 0.0, -0.25, ]);
    
    const array12 = new Float32Array([0.5, 0.5, -0.75, 0.5, 0.5, 1.0, 0.75, 0.75, 1.0, 1.0, 0.25, 0.25, -0.25, -0.75, 0.0, -0.5, -0.25, 1.0, 1.0, 0.5, -1.0, -0.75, -1.0, -1.0, 0.75, 0.75, -1.0, 1.0, 0.75, -0.25, 1.0, 0.0, -0.5, -0.25, -0.75, 1.0, 0.25, 1.0, 0.0, 0.75, -0.75, -0.5, 1.0, 0.25, -0.25, -1.0, 0.25, 0.75, 0.25, -0.25, 0.75, 0.75, -0.25, 1.0, -1.0, -0.75, 0.25, 0.0, 0.0, -0.5, -0.5, 0.75, -0.5, 1.0, -1.0, -0.75, 0.75, -0.5, 0.0, 0.0, 0.75, 0.75, -1.0, 0.25, -0.25, 1.0, -0.75, -0.25, -0.25, 0.5, 0.25, 0.75, 0.0, 0.5, -0.25, 0.25, 0.75, -0.75, 0.0, 0.0, 0.75, 0.25, 0.5, 0.0, 0.5, 0.75, 0.75, 0.5, -0.75, -0.75, ]);
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query601.destroy()
    
    query600.destroy()
    const array13 = new Float32Array([-0.25, 0.25, 1.0, -0.75, 0.25, -1.0, -0.75, 0.0, -0.5, 0.5, 1.0, -0.5, 0.0, -0.5, -1.0, 1.0, -1.0, -1.0, -0.5, 0.75, 0.0, -0.25, -0.5, -1.0, -0.75, -0.25, 0.75, 1.0, -0.5, 0.75, 0.0, 1.0, -0.25, 0.75, -0.75, -0.75, -1.0, -0.25, 0.75, 1.0, 0.75, -0.25, -0.5, 0.75, -0.5, -0.75, 0.75, 0.75, 0.5, 0.25, -1.0, 0.25, -0.25, 0.75, 0.75, 0.75, 0.0, 0.25, 0.25, 0.75, 0.25, 1.0, -1.0, -1.0, 0.0, 0.0, 0.25, -1.0, -0.5, 0.0, 0.5, 0.25, 0.5, 1.0, 0.75, -0.25, 1.0, -0.75, 0.25, 1.0, -0.75, 0.75, 0.75, -0.25, 0.75, 1.0, -0.5, -0.25, -0.25, 0.25, -1.0, 1.0, 0.5, -0.75, 0.0, 0.5, -0.5, 0.0, 0.75, 0.75, ]);
    
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    buffer601.destroy()
    
    
    
    
    texture600.destroy();
    
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    buffer602.destroy()
    
    device60.queue.writeBuffer(buffer603, 0, array9, 0, array9.length);
    device60.queue.writeBuffer(buffer603, 0, array11, 0, array11.length);
    
    query800.destroy()
    
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device80.destroy();
    device60.queue.writeBuffer(buffer603, 0, array0, 0, array0.length);
    device60.queue.writeBuffer(buffer604, 0, array6, 0, array6.length);
    device60.queue.writeBuffer(buffer604, 0, array12, 0, array12.length);
    buffer604.destroy()
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture601 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array14 = new Float32Array([0.75, -0.75, -1.0, -0.75, -0.5, 0.25, 1.0, 0.5, -0.75, -0.75, -1.0, 0.25, 0.0, 0.75, -0.25, -0.75, -0.75, 0.75, 0.0, 0.25, 0.25, -1.0, 0.25, -0.25, 0.5, -0.5, -0.75, 1.0, -0.25, -0.5, 1.0, 0.0, -1.0, -0.5, -1.0, -0.75, -1.0, 1.0, -0.75, 0.5, 1.0, -0.25, -0.25, -1.0, 0.0, -1.0, 0.75, 0.0, -1.0, -0.75, 1.0, 0.75, 0.5, -1.0, -1.0, -0.5, -0.5, -0.75, 0.75, 0.5, -0.25, -0.5, 0.75, -1.0, 0.5, 0.25, -1.0, -1.0, 0.25, 0.25, 0.0, 1.0, -0.75, 0.25, 0.5, -0.75, 0.25, 0.5, -0.25, -0.75, -0.5, -0.75, 1.0, -0.5, -0.5, 0.25, -0.25, -1.0, -0.5, -0.75, 0.0, -0.5, -1.0, 0.0, 0.25, -0.5, -0.25, -0.25, 1.0, 0.0, ]);
    device60.queue.writeBuffer(buffer603, 0, array8, 0, array8.length);
    device60.queue.writeTexture({ texture: texture601 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer603, 0, array1, 0, array1.length);
    device60.queue.writeBuffer(buffer603, 0, array1, 0, array1.length);
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
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
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device60.queue.writeBuffer(buffer603, 0, array10, 0, array10.length);
    device60.queue.writeTexture({ texture: texture601 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer603, 0, array13, 0, array13.length);
    const array15 = new Float32Array([1.0, 0.5, 0.0, 0.5, -0.5, 0.25, 0.0, 0.0, 0.5, 0.75, -0.5, 1.0, 0.5, 0.0, -0.5, -0.75, -0.75, -0.25, 0.75, -0.25, 0.0, -0.75, -1.0, -0.25, -0.75, 0.25, 0.25, 1.0, -0.5, 0.5, -0.25, 0.75, -1.0, 0.5, 0.0, -1.0, 0.0, -0.75, 0.75, -0.5, -1.0, -1.0, 1.0, -0.75, 0.0, 0.0, 0.0, 1.0, -0.5, 0.5, 0.0, -0.75, 0.25, -1.0, 0.0, -0.75, -0.5, 0.0, 0.75, -1.0, -0.75, 0.25, 0.25, -0.25, 0.75, 0.75, -0.5, 0.25, 0.0, -0.75, 0.25, 0.25, 0.5, 0.25, -0.25, -0.5, -0.25, 0.5, 0.0, -0.5, 0.0, 0.75, -0.25, 0.75, -1.0, 0.75, -0.25, -0.5, -0.5, -0.25, 1.0, -0.25, 0.25, -0.25, -0.5, 0.0, 0.0, -0.5, 0.5, 0.25, ]);
    device60.queue.writeTexture({ texture: texture601 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.destroy();
    
    
    
    
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const array16 = new Float32Array([0.5, 0.0, -0.5, 0.25, 0.5, -0.75, -0.75, -0.5, -0.5, -1.0, 0.25, -0.5, -0.25, 0.5, -1.0, 0.25, -1.0, -1.0, 0.0, 0.75, 0.75, -0.5, -0.75, 1.0, 0.75, -0.25, -1.0, 0.25, -0.75, -0.5, 0.5, 1.0, -0.75, 0.25, -0.5, 1.0, 0.0, -0.75, -0.75, -0.75, -0.75, -0.5, 0.5, 1.0, 0.5, 0.25, 1.0, -1.0, -0.75, 0.25, 0.5, 0.25, 0.0, 0.5, 0.0, 0.25, 0.75, -0.5, 0.0, -1.0, -0.75, 0.0, -0.75, 0.25, 1.0, 0.75, 0.75, -0.75, 0.0, 0.75, -1.0, 0.25, 1.0, 0.75, -0.25, -0.5, -0.75, -1.0, 0.75, -0.5, 1.0, 0.0, 1.0, -0.25, -0.75, 0.5, -0.5, 0.25, 0.5, -0.5, 0.25, -1.0, 1.0, 0.75, 0.25, -1.0, 0.25, -1.0, 0.5, 0.25, ]);
    buffer900.destroy()
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const array17 = new Float32Array([0.75, -0.75, -0.25, 1.0, -0.5, 0.75, 0.5, -0.5, -0.75, -0.5, -0.25, 0.25, -0.25, -1.0, -1.0, 0.5, -0.5, 0.5, -0.25, 0.0, -1.0, -0.75, 1.0, -0.5, -1.0, 1.0, -0.5, -0.75, 0.0, 0.75, -0.75, 0.25, 0.75, 0.75, 0.75, -0.25, -0.5, -0.25, -1.0, 0.25, -0.5, -0.5, -0.75, -0.5, 0.25, 1.0, -0.5, -0.75, 0.5, 1.0, 0.25, -0.25, 0.25, 1.0, 0.75, 1.0, 1.0, 0.5, -0.25, 0.25, -0.75, 0.75, -0.75, 0.0, -1.0, 0.0, 0.75, 1.0, -1.0, 0.5, -1.0, 0.5, 0.75, 0.25, -0.5, 0.25, -0.75, -0.5, -1.0, 0.5, 0.5, 0.75, 0.25, 0.5, -1.0, 1.0, -0.5, 1.0, -1.0, -0.25, 0.25, -0.25, 0.25, -0.25, -0.25, 0.25, -0.25, 0.5, -0.75, 0.25, ]);
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    const array18 = new Float32Array([-0.75, -1.0, -0.5, -1.0, -0.5, -0.75, 1.0, -1.0, 0.25, 1.0, -0.25, 0.5, 0.5, 0.75, 0.25, 0.25, -0.25, -1.0, -0.25, 1.0, -0.5, 0.5, -0.75, -0.25, -0.75, -0.25, 0.75, 0.25, 1.0, 0.0, 0.0, -0.75, -1.0, 0.75, 0.0, -0.25, 1.0, -0.25, -0.25, 0.0, 0.25, 1.0, 1.0, 0.5, -0.25, 0.75, 0.25, -0.5, 0.75, -0.25, -0.75, -0.25, -0.75, -0.75, 0.25, 1.0, 1.0, 0.25, 0.25, 0.5, -0.25, -0.25, 0.75, -0.75, 0.5, 0.5, -0.75, 1.0, 0.25, -0.25, 0.75, -0.75, 0.5, 1.0, 0.5, -0.5, 1.0, -0.75, 0.75, 0.5, -0.25, -0.75, -0.75, -0.5, -0.5, 0.0, -0.5, 0.5, -0.5, -1.0, 1.0, 0.0, -0.25, 0.25, 0.5, 0.75, 1.0, -0.75, 0.75, 1.0, ]);
    
    query901.destroy()
    
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    query901.destroy()
    
    
    
    
    
    
    
    
    
    
    
    
    query902.destroy()
    
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    
    texture900.destroy();
    
    
    query900.destroy()
    
    
    query900.destroy()
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query902.destroy()
    
    
    
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    
    buffer901.destroy()
    
    
    query900.destroy()
    device90.destroy();
    
    
    
    
    
    
    
    const array19 = new Float32Array([-0.75, -0.5, 0.75, 0.25, 0.75, 0.75, -1.0, 0.0, 1.0, -0.75, 0.75, 1.0, -0.5, -1.0, -1.0, -0.75, -1.0, -0.25, -0.75, -0.75, -0.75, 1.0, -0.5, 0.0, 0.5, -1.0, 0.0, -1.0, 1.0, -1.0, -1.0, -0.5, 0.75, -0.75, 0.5, -0.25, -0.75, -0.25, -0.75, -0.25, 1.0, -0.5, 0.25, 1.0, -0.75, 0.25, 1.0, -1.0, -0.25, 0.5, -0.5, -0.5, -0.25, 0.25, -1.0, 0.25, 0.25, 0.5, 0.75, 0.75, 0.25, -1.0, -0.75, 0.75, 0.75, 0.25, -1.0, -0.25, -1.0, -0.5, 0.0, -0.25, 0.25, -0.5, 0.5, 0.0, -0.5, 0.5, 1.0, -1.0, -0.75, 1.0, 0.25, 0.5, 0.75, 0.0, 0.5, -1.0, 0.5, 0.5, -0.75, -0.75, 1.0, -0.75, -0.25, -0.25, -1.0, -0.5, -0.25, 0.25, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    device110.destroy();
    
    
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
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
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1200]
    });
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    
    const pipeline_layout1201 = device120.createPipelineLayout({ 
        label: "pipeline_layout1201",
        bindGroupLayouts: [bind_group_layout1201]
    });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    const compute_pipeline1200 = device120.createComputePipeline({
        label: "compute_pipeline1200",
        layout: pipeline_layout1200,
        compute: {
            module: shader_module1200,
            entryPoint: "main"
        }
    });
    
    
    
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout1202 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1202",
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
    
    const bind_group_layout1203 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1203",
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
    device130.queue.writeBuffer(buffer1300, 0, array5, 0, array5.length);
    texture1201.destroy();
    
    const compute_pipeline1201 = device120.createComputePipeline({
        label: "compute_pipeline1201",
        layout: pipeline_layout1201,
        compute: {
            module: shader_module1200,
            entryPoint: "main"
        }
    });
    const pipeline_layout1202 = device120.createPipelineLayout({ 
        label: "pipeline_layout1202",
        bindGroupLayouts: [bind_group_layout1202]
    });
    device130.queue.writeBuffer(buffer1300, 0, array4, 0, array4.length);
    device130.queue.writeBuffer(buffer1300, 0, array17, 0, array17.length);
    
    device130.queue.writeBuffer(buffer1300, 0, array12, 0, array12.length);
    device130.queue.writeBuffer(buffer1300, 0, array19, 0, array19.length);
    device130.queue.writeBuffer(buffer1300, 0, array17, 0, array17.length);
    const compute_pipeline1202 = device120.createComputePipeline({
        label: "compute_pipeline1202",
        layout: pipeline_layout1202,
        compute: {
            module: shader_module1200,
            entryPoint: "main"
        }
    });
    device130.queue.writeBuffer(buffer1300, 0, array12, 0, array12.length);
    
    const bind_group_layout1204 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1204",
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
    const compute_pipeline1203 = device120.createComputePipeline({
        label: "compute_pipeline1203",
        layout: pipeline_layout1201,
        compute: {
            module: shader_module1201,
            entryPoint: "main"
        }
    });
    
    device130.queue.writeBuffer(buffer1300, 0, array13, 0, array13.length);
    device130.queue.writeBuffer(buffer1300, 0, array14, 0, array14.length);
    
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline1204 = device120.createComputePipeline({
        label: "compute_pipeline1204",
        layout: pipeline_layout1200,
        compute: {
            module: shader_module1201,
            entryPoint: "main"
        }
    });
    buffer1301.destroy()
    device130.queue.writeBuffer(buffer1300, 0, array0, 0, array0.length);
    const compute_pipeline1205 = device120.createComputePipeline({
        label: "compute_pipeline1205",
        layout: pipeline_layout1201,
        compute: {
            module: shader_module1201,
            entryPoint: "main"
        }
    });
    const compute_pipeline1206 = device120.createComputePipeline({
        label: "compute_pipeline1206",
        layout: pipeline_layout1201,
        compute: {
            module: shader_module1200,
            entryPoint: "main"
        }
    });
    
    
    device130.queue.writeBuffer(buffer1300, 0, array12, 0, array12.length);
    
    
    const pipeline_layout1203 = device120.createPipelineLayout({ 
        label: "pipeline_layout1203",
        bindGroupLayouts: [bind_group_layout1203]
    });
    const pipeline_layout1204 = device120.createPipelineLayout({ 
        label: "pipeline_layout1204",
        bindGroupLayouts: [bind_group_layout1203]
    });
    device130.queue.writeBuffer(buffer1300, 0, array2, 0, array2.length);
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
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
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    device130.queue.writeBuffer(buffer1300, 0, array18, 0, array18.length);
    
    device130.queue.writeBuffer(buffer1300, 0, array16, 0, array16.length);
    device130.queue.writeBuffer(buffer1300, 0, array7, 0, array7.length);
    
    
    device130.queue.writeBuffer(buffer1300, 0, array16, 0, array16.length);
    
    const compute_pipeline1207 = device120.createComputePipeline({
        label: "compute_pipeline1207",
        layout: pipeline_layout1202,
        compute: {
            module: shader_module1200,
            entryPoint: "main"
        }
    });
    device130.queue.writeBuffer(buffer1300, 0, array7, 0, array7.length);
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    const pipeline_layout1205 = device120.createPipelineLayout({ 
        label: "pipeline_layout1205",
        bindGroupLayouts: [bind_group_layout1204]
    });
    const compute_pipeline1208 = device120.createComputePipeline({
        label: "compute_pipeline1208",
        layout: pipeline_layout1203,
        compute: {
            module: shader_module1200,
            entryPoint: "main"
        }
    });
    device130.queue.writeBuffer(buffer1300, 0, array0, 0, array0.length);
    
    const compute_pipeline1209 = device120.createComputePipeline({
        label: "compute_pipeline1209",
        layout: pipeline_layout1201,
        compute: {
            module: shader_module1200,
            entryPoint: "main"
        }
    });
    device130.queue.writeBuffer(buffer1300, 0, array3, 0, array3.length);
    const bind_group_layout1205 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1205",
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
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    device120.destroy();
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    
    const pipeline_layout1300 = device130.createPipelineLayout({ 
        label: "pipeline_layout1300",
        bindGroupLayouts: [bind_group_layout1300]
    });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    device130.queue.writeBuffer(buffer1300, 0, array7, 0, array7.length);
    device130.queue.writeBuffer(buffer1300, 0, array15, 0, array15.length);
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    device130.queue.writeBuffer(buffer1300, 0, array19, 0, array19.length);
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer1000.destroy()
    
    
    const array20 = new Float32Array([-0.25, 0.25, 0.5, -0.5, 0.25, 1.0, 0.5, -1.0, -1.0, -0.5, -0.75, -0.75, -0.75, 0.0, 1.0, 1.0, 0.0, 0.5, 0.25, 0.0, -0.5, 0.5, 0.0, 0.25, 0.25, 0.25, -1.0, 0.5, 1.0, 0.25, 0.75, -1.0, -0.25, -1.0, -1.0, -0.25, 0.75, -0.5, 0.0, -0.25, -1.0, -0.75, 0.25, 1.0, 0.0, 1.0, -0.5, 0.25, -0.75, -0.75, 0.0, 0.0, -0.5, -0.5, 0.5, -0.75, 1.0, -0.5, -0.5, 0.0, -0.5, 0.75, 0.0, -0.75, -1.0, 1.0, -1.0, -0.25, -0.75, -0.5, -1.0, 0.5, 0.5, -0.25, -1.0, 0.5, -0.75, -1.0, 0.5, -0.75, 0.75, 0.75, -0.25, -0.25, -1.0, -1.0, 0.5, -0.25, 0.5, 0.0, -0.25, 0.25, 0.5, -1.0, 0.25, 0.75, 1.0, 1.0, 1.0, 0.5, ]);
    const buffer1302 = device130.createBuffer({
        label: "buffer1302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const bind_group_layout1400 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1400",
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
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    device130.queue.writeBuffer(buffer1302, 0, array0, 0, array0.length);
    device130.queue.writeBuffer(buffer1302, 0, array12, 0, array12.length);
    device130.queue.writeBuffer(buffer1300, 0, array14, 0, array14.length);
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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
    
    device130.queue.writeBuffer(buffer1300, 0, array20, 0, array20.length);
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    
    
    const compute_pipeline1300 = device130.createComputePipeline({
        label: "compute_pipeline1300",
        layout: pipeline_layout1300,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    device130.queue.writeBuffer(buffer1302, 0, array14, 0, array14.length);
    
    device130.queue.writeBuffer(buffer1302, 0, array3, 0, array3.length);
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const bind_group_layout1003 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1003",
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
    device130.queue.writeBuffer(buffer1302, 0, array20, 0, array20.length);
    buffer1300.destroy()
    const bind_group_layout1301 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1301",
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
    device130.queue.writeBuffer(buffer1302, 0, array4, 0, array4.length);
    device130.queue.writeBuffer(buffer1302, 0, array2, 0, array2.length);
    device130.queue.writeBuffer(buffer1302, 0, array3, 0, array3.length);
    device140.destroy();
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device130.queue.writeBuffer(buffer1302, 0, array5, 0, array5.length);
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer1001.destroy()
    const device150 = await adapter15!.requestDevice({ label: "device150" });
}