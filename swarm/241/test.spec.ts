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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    const array0 = new Float32Array([1.0, 1.0, -0.5, -1.0, -0.75, 0.0, 1.0, 0.5, -1.0, -0.75, -0.5, -0.75, 0.5, -0.5, -0.25, 0.75, -0.75, 0.0, -0.75, 0.5, 0.5, 0.25, -0.5, 1.0, 0.75, 1.0, 0.5, -0.75, -0.75, -0.25, 0.5, 0.0, -1.0, -0.75, -1.0, -1.0, -1.0, 1.0, -0.25, 0.25, -0.25, -1.0, 0.75, 0.25, -0.25, 0.0, 0.75, 0.25, -0.75, -0.5, 0.75, -0.25, 0.25, 0.5, 0.0, -1.0, 0.5, 0.25, 0.0, 0.0, 0.0, -0.5, -0.5, 0.0, -1.0, -0.25, -1.0, -0.25, 0.25, 1.0, 1.0, -0.25, -0.5, 0.5, 0.5, 0.0, -0.75, 0.25, 0.75, 0.0, 1.0, 0.25, 0.75, 1.0, -0.5, 0.5, -1.0, 0.75, 1.0, 0.0, -0.75, 1.0, 1.0, -1.0, -1.0, 0.0, -0.5, -0.75, 0.25, 0.25, ]);
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
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
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("out-of-memory");
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    buffer000.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device30.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
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
    device10.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.pushErrorScope("validation");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device20.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    
    
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    device60.destroy();
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    
    
    
    
    
    buffer401.destroy()
    
    
    buffer400.destroy()
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture400.destroy();
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    texture401.destroy();
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    const array1 = new Float32Array([-0.5, -0.75, 0.75, 0.5, 0.25, -0.5, -1.0, -0.25, 0.5, 0.0, 0.25, 0.5, 0.5, -1.0, 1.0, 0.75, -0.5, -0.75, 1.0, -1.0, -0.25, 0.0, 1.0, -0.75, -0.75, 0.0, 0.5, -0.25, 0.0, 0.75, -1.0, -0.75, 0.75, -0.5, 0.25, 0.75, 0.0, 0.0, 0.0, 0.5, -0.5, -0.25, -0.25, 0.25, -0.25, 1.0, -0.75, 0.0, -0.75, 0.0, -1.0, 1.0, 1.0, 0.0, -0.5, 0.75, 0.75, -0.25, 1.0, 0.5, -1.0, -0.25, 0.0, 0.75, -1.0, 0.25, 0.75, -0.25, -1.0, -0.5, -1.0, -0.25, -1.0, 0.0, -0.75, 1.0, 0.0, 0.25, 0.75, -0.75, -0.25, -0.75, -0.75, -0.5, -0.25, -0.25, -0.25, 0.75, 0.25, 0.25, -0.25, -1.0, 1.0, -0.5, 0.0, -0.5, 0.75, -0.25, 0.5, 0.0, ]);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const array2 = new Float32Array([0.5, 0.75, 0.0, -0.25, -1.0, 0.75, 0.5, -0.25, 0.25, -0.5, -0.25, 1.0, -0.5, 0.0, -0.75, 0.5, -0.75, 0.5, 1.0, -0.5, 0.5, -0.75, -0.75, -0.5, -0.25, 0.25, 0.75, 0.75, 0.75, -0.75, -1.0, -0.5, 0.5, -1.0, 0.0, 1.0, 0.5, -0.25, 1.0, -0.5, -1.0, -0.5, 0.25, 0.25, -0.75, 1.0, 0.25, -0.5, -0.5, 0.0, -0.75, 0.75, -0.25, -0.5, -0.75, -0.5, 0.0, -0.25, -1.0, -0.75, 0.25, -0.25, -0.5, 0.0, 1.0, -0.25, 0.5, -0.5, 0.25, -0.75, 0.25, 1.0, -0.5, -0.75, 1.0, -1.0, 0.75, 0.25, -0.5, -1.0, 0.5, 0.25, 0.5, -0.75, -0.25, 0.75, 1.0, -0.75, 0.0, -0.25, 0.0, 0.0, 0.75, 0.75, 0.25, -0.5, 0.75, 0.75, 0.0, 0.5, ]);
    device50.destroy();
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    
    
    device80.pushErrorScope("internal");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device70.pushErrorScope("validation");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device40.destroy();
    
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    texture700.destroy();
    
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    texture800.destroy();
    
    
    
    
    
    
    
    const array3 = new Float32Array([0.0, -0.75, -0.75, -0.25, 0.75, 0.0, 1.0, -0.5, -0.75, 0.75, 0.75, -1.0, -1.0, 0.0, -0.5, 1.0, 0.75, -0.75, 0.0, 0.5, 0.0, -0.5, 0.25, -0.75, -0.5, -1.0, -0.5, 0.0, 0.0, 0.5, -1.0, 1.0, 0.5, 0.25, 1.0, -0.5, 0.25, -0.25, 0.25, 0.0, 1.0, -0.25, 0.0, -0.25, 0.25, 0.25, -0.25, -0.5, 0.0, 0.0, 0.5, 0.25, -1.0, 1.0, -0.5, -0.25, -1.0, -0.25, 0.75, 0.25, 0.5, -1.0, 0.25, 0.25, 1.0, -0.25, -1.0, -0.25, 0.0, -1.0, 0.75, 0.75, -0.25, 1.0, 0.0, 0.25, 0.25, -0.25, -0.5, 0.0, -0.75, 1.0, -0.25, 0.75, 0.0, 0.0, -1.0, 0.5, -0.75, -0.75, -0.75, 0.75, -0.25, 0.5, 0.5, -0.75, 0.75, -0.75, 0.0, -1.0, ]);
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer700.destroy()
    
    
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device80.destroy();
    
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "stencil8",
        dimension: "2d"
    });
    
    device70.destroy();
    
    
    const array4 = new Float32Array([1.0, -0.5, -0.75, 0.75, -0.5, -0.75, -0.5, 0.75, -0.75, 0.25, 1.0, -0.5, -0.5, 0.0, 0.25, -0.75, -0.5, 1.0, 0.25, 0.5, -0.25, 0.0, 0.5, -0.75, 0.25, 0.0, 0.0, -0.5, 0.5, 0.5, 0.75, -0.25, 1.0, -1.0, -0.75, 0.5, -0.5, -0.5, 0.0, -0.25, -0.25, 0.25, -0.25, 0.75, 0.5, 0.0, -0.5, 0.5, -0.5, 0.0, -0.25, -0.5, 0.75, 0.75, 0.0, -0.75, 0.25, 0.0, 1.0, -0.25, -0.25, -0.75, 0.0, -0.25, -0.25, -0.5, 0.0, -1.0, 0.0, -0.75, -0.25, -0.5, -0.5, 1.0, 0.25, -0.75, -0.5, -0.5, -0.5, -1.0, -0.5, -0.5, -0.5, 0.0, -1.0, -0.25, 0.25, -1.0, 0.5, -1.0, 0.5, 0.5, -0.25, -0.75, 0.0, 0.5, 0.5, -0.25, 0.25, -0.5, ]);
    
    
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    
    
    buffer1001.destroy()
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    device100.pushErrorScope("internal");
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
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
    
    buffer1002.destroy()
    device90.pushErrorScope("internal");
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const buffer1003 = device100.createBuffer({
        label: "buffer1003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer1004 = device100.createBuffer({
        label: "buffer1004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    buffer1000.destroy()
    buffer1200.destroy()
    
    
    
    
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2unorm",
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
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    buffer1004.destroy()
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    const query1301 = device130.createQuerySet({
        label: "query1301",
        type: "occlusion",
        count: 32,
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    device120.destroy();
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1005 = device100.createBuffer({
        label: "buffer1005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const query1002 = device100.createQuerySet({
        label: "query1002",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    const bind_group_layout1500 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1500",
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
    
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device100.pushErrorScope("out-of-memory");
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer1005.destroy()
    
    
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
    device130.pushErrorScope("internal");
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    device110.destroy();
    
    
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    
    
    const query1302 = device130.createQuerySet({
        label: "query1302",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout1500 = device150.createPipelineLayout({ 
        label: "pipeline_layout1500",
        bindGroupLayouts: [bind_group_layout1500]
    });
    const bind_group_layout903 = device90.createBindGroupLayout({ 
        label: "bind_group_layout903",
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
    device90.destroy();
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout1004 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1004",
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
    
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    device130.destroy();
    const pipeline_layout1501 = device150.createPipelineLayout({ 
        label: "pipeline_layout1501",
        bindGroupLayouts: [bind_group_layout1500]
    });
    device150.destroy();
    
    
    
    const pipeline_layout1001 = device100.createPipelineLayout({ 
        label: "pipeline_layout1001",
        bindGroupLayouts: [bind_group_layout1004]
    });
    
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const pipeline_layout1002 = device100.createPipelineLayout({ 
        label: "pipeline_layout1002",
        bindGroupLayouts: [bind_group_layout1003]
    });
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const pipeline_layout1003 = device100.createPipelineLayout({ 
        label: "pipeline_layout1003",
        bindGroupLayouts: [bind_group_layout1003]
    });
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    const compute_pipeline1000 = device100.createComputePipeline({
        label: "compute_pipeline1000",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1000,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout1005 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1005",
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
    const pipeline_layout1004 = device100.createPipelineLayout({ 
        label: "pipeline_layout1004",
        bindGroupLayouts: [bind_group_layout1005]
    });
    const pipeline_layout1005 = device100.createPipelineLayout({ 
        label: "pipeline_layout1005",
        bindGroupLayouts: [bind_group_layout1000]
    });
    device160.pushErrorScope("validation");
    
    
    const pipeline_layout1006 = device100.createPipelineLayout({ 
        label: "pipeline_layout1006",
        bindGroupLayouts: [bind_group_layout1000]
    });
    
    
    const buffer1006 = device100.createBuffer({
        label: "buffer1006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer1003.destroy()
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const bind_group_layout1006 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1006",
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
    
    
    const compute_pipeline1001 = device100.createComputePipeline({
        label: "compute_pipeline1001",
        layout: pipeline_layout1005,
        compute: {
            module: shader_module1000,
            entryPoint: "main"
        }
    });
    const bind_group_layout1007 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1007",
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
    
    
    const compute_pipeline1002 = device100.createComputePipeline({
        label: "compute_pipeline1002",
        layout: pipeline_layout1003,
        compute: {
            module: shader_module1000,
            entryPoint: "main"
        }
    });
    const adapter17 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const compute_pipeline1003 = device100.createComputePipeline({
        label: "compute_pipeline1003",
        layout: pipeline_layout1005,
        compute: {
            module: shader_module1000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1004 = device100.createComputePipeline({
        label: "compute_pipeline1004",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1000,
            entryPoint: "main"
        }
    });
    
    texture1600.destroy();
    
    device100.destroy();
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    const query1700 = device170.createQuerySet({
        label: "query1700",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device170.destroy();
    
    
    
    
    
    
    
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module1601_code = "";
    try {
        shader_module1601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1601 = await device160.createShaderModule({ label: "shader_module1601", code: shader_module1601_code })
    
    
    
    
    
    const array5 = new Float32Array([0.25, -1.0, 0.25, 0.0, 0.0, -0.25, 0.25, -0.25, -1.0, -1.0, 0.5, -0.5, 0.75, -1.0, 0.75, 0.75, 0.0, 1.0, -0.5, 0.0, 0.25, 0.5, -0.25, -1.0, 0.0, 0.0, 0.75, -0.5, -1.0, 1.0, 0.25, 0.5, -0.25, 1.0, 0.5, 0.0, 1.0, -0.75, 1.0, -0.5, -0.75, 0.25, -0.75, 0.25, 0.0, -0.75, -1.0, 0.25, -0.75, -1.0, -0.5, 0.75, 0.0, -0.25, -1.0, -1.0, -0.25, -1.0, -0.25, 0.0, 0.75, -1.0, -0.5, -0.25, -0.5, -1.0, 0.25, 1.0, 0.25, 0.25, 1.0, -0.5, -0.5, 1.0, -0.75, 0.75, 0.75, -1.0, 0.5, 0.5, -0.75, 0.25, -0.5, 0.25, 0.25, 0.5, -1.0, -0.75, 0.0, -0.25, 0.0, -0.75, -0.25, -0.5, -0.25, 0.75, -1.0, 0.75, -0.25, -0.5, ]);
    
    
    var shader_module1602_code = "";
    try {
        shader_module1602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1602 = await device160.createShaderModule({ label: "shader_module1602", code: shader_module1602_code })
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer1400.destroy()
    
    
    
    
    const array6 = new Float32Array([-0.25, -0.75, -1.0, 0.0, -0.25, 0.25, 1.0, 0.25, 0.0, 1.0, -0.25, 0.75, -1.0, 0.5, 0.25, -0.75, 0.0, 0.0, 0.25, 0.25, 0.0, 1.0, -0.75, 0.5, -0.75, -0.75, 1.0, -0.5, 0.5, 0.5, 0.75, -1.0, -0.75, -0.5, 1.0, -0.25, 1.0, 1.0, -0.25, 0.0, 0.0, 0.5, -0.75, 0.75, 0.0, -1.0, 1.0, 0.5, 0.25, -0.75, 0.0, 1.0, 0.0, 0.5, -0.25, -1.0, -0.5, 0.25, 0.25, -0.5, -1.0, 0.5, -1.0, 1.0, 1.0, 0.5, -0.5, -0.75, 0.75, 0.0, 1.0, 1.0, -0.25, -0.5, 0.5, -1.0, 0.75, -0.5, 0.25, -0.25, -0.25, -0.5, 1.0, -0.5, -0.25, 0.5, 0.25, 0.5, 0.75, -0.75, 0.0, -0.75, -0.75, 1.0, 0.0, -1.0, 1.0, -0.5, 1.0, -0.5, ]);
    
    
    
    
    
    
    
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    const query1800 = device180.createQuerySet({
        label: "query1800",
        type: "occlusion",
        count: 32,
    });
    var shader_module1800_code = "";
    try {
        shader_module1800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1800 = await device180.createShaderModule({ label: "shader_module1800", code: shader_module1800_code })
    
    const bind_group_layout1800 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1800",
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
    const query1600 = device160.createQuerySet({
        label: "query1600",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const bind_group_layout1801 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1801",
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
    const query1801 = device180.createQuerySet({
        label: "query1801",
        type: "occlusion",
        count: 32,
    });
    device140.pushErrorScope("validation");
    
    
    
    
    
    const buffer1800 = device180.createBuffer({
        label: "buffer1800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const bind_group_layout1802 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1802",
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
    
    const query1802 = device180.createQuerySet({
        label: "query1802",
        type: "occlusion",
        count: 32,
    });
    const query1803 = device180.createQuerySet({
        label: "query1803",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout1600 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1600",
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
    const texture1800 = device180.createTexture({
        label: "texture1800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query1601 = device160.createQuerySet({
        label: "query1601",
        type: "occlusion",
        count: 32,
    });
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device180.queue.writeTexture({ texture: texture1800 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const pipeline_layout1800 = device180.createPipelineLayout({ 
        label: "pipeline_layout1800",
        bindGroupLayouts: [bind_group_layout1800]
    });
    const buffer1600 = device160.createBuffer({
        label: "buffer1600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer1600.destroy()
    const buffer1601 = device160.createBuffer({
        label: "buffer1601",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device180.queue.writeTexture({ texture: texture1800 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device180.queue.writeTexture({ texture: texture1800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter19 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const texture1801 = device180.createTexture({
        label: "texture1801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout1801 = device180.createPipelineLayout({ 
        label: "pipeline_layout1801",
        bindGroupLayouts: [bind_group_layout1800]
    });
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device160.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}