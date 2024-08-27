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
    const array0 = new Float32Array([-0.5, 0.25, -0.75, 0.5, 0.75, 1.0, 0.0, -1.0, 0.25, -1.0, 0.75, 0.0, 0.0, 0.75, 0.75, 0.5, -0.25, -0.5, -0.75, -0.5, -0.75, 0.75, -1.0, 0.75, 0.25, 0.0, 0.25, -0.25, -0.25, 0.75, 0.75, -1.0, -0.25, -1.0, -0.75, 0.75, 0.5, -0.5, 1.0, -0.5, 0.5, 0.5, -1.0, -0.75, 0.75, 0.5, 0.75, 0.0, 0.5, 0.0, -0.75, -0.5, -0.5, -0.75, -0.75, -0.25, -0.75, 0.75, 1.0, -0.75, 0.5, -0.5, 0.25, -1.0, 0.5, -0.5, 0.75, 0.75, -0.5, 0.75, 0.25, -0.25, 1.0, 0.75, 0.0, -0.5, -0.5, 0.0, -0.25, -0.5, 1.0, 0.0, 1.0, 0.25, 0.25, 0.25, -0.5, 1.0, -0.75, 1.0, -0.25, 0.75, 0.75, -1.0, 0.5, 1.0, -0.25, 0.25, -0.5, -0.5, ]);
    const array1 = new Float32Array([0.0, 0.0, 0.25, -1.0, -1.0, -0.75, -1.0, 0.25, -1.0, 1.0, 0.0, 0.25, 0.75, -1.0, -1.0, 0.75, -0.5, 0.5, 0.5, -0.25, 1.0, -0.5, 0.25, 0.75, 0.75, 0.75, -0.25, -0.75, 0.5, -0.25, -1.0, 0.5, -1.0, 1.0, -0.5, 1.0, 0.5, -0.25, 0.5, 0.5, -1.0, -1.0, 0.75, 1.0, 0.0, -0.75, 0.5, 1.0, -0.25, 0.0, 0.25, 0.5, -0.5, -0.75, -0.5, -1.0, -0.25, 1.0, 0.75, 0.25, -0.25, 0.75, 0.0, 0.5, 0.0, 0.75, -1.0, 0.75, 1.0, 1.0, -0.75, 0.25, -0.75, -0.25, -1.0, 0.75, 0.0, -0.75, 0.0, -0.25, -0.75, -1.0, 0.5, -0.25, -0.25, 0.0, -0.5, -0.75, -1.0, 1.0, -1.0, 0.0, -0.25, -0.75, 0.25, -0.25, 0.5, -0.5, -0.75, -1.0, ]);
    const array2 = new Float32Array([-1.0, 0.75, 0.0, 1.0, -0.75, 0.75, 0.5, 0.25, 0.25, 0.75, 1.0, -0.5, -0.25, 0.75, 1.0, -0.75, 0.0, 0.25, 0.75, 0.0, 0.5, -1.0, -1.0, 1.0, 1.0, -0.25, 1.0, 0.0, 0.75, -1.0, 0.25, 0.75, -0.75, -0.5, 0.75, 0.5, 0.75, -0.75, 0.75, -0.5, 0.0, -0.5, -0.5, -0.25, 0.25, 0.25, 0.75, -1.0, -0.25, 0.25, -1.0, -0.75, -0.75, -0.75, -0.25, 0.0, -0.75, 1.0, -1.0, 0.75, 0.5, 0.0, 0.0, -0.25, 0.25, -0.25, 1.0, -1.0, 0.5, -0.25, -0.75, -1.0, 0.5, 0.25, -1.0, 0.5, -0.5, -0.5, 0.25, 1.0, 0.75, 0.75, -0.75, -0.5, 0.5, 1.0, 0.5, 0.5, 0.25, 1.0, 1.0, 0.5, -0.5, 0.25, 1.0, -0.75, 0.75, 0.5, 0.0, -0.25, ]);
    
    const array3 = new Float32Array([1.0, 0.75, 0.0, -0.5, 0.5, 0.5, 0.75, 0.0, 1.0, -0.25, 0.0, 1.0, -1.0, 0.75, -1.0, 0.25, 0.25, -0.5, -0.5, -0.5, 0.75, 0.5, -0.25, -1.0, 0.25, 0.5, 0.5, 0.25, 0.75, -0.5, 0.0, -1.0, 0.0, -1.0, 1.0, -0.5, -0.5, -0.5, 1.0, -0.75, -0.75, 0.25, 0.0, 0.0, -0.25, 0.5, 0.0, 0.25, -0.25, 0.5, -0.75, 1.0, 0.25, 1.0, 0.0, 0.0, 0.25, -1.0, 0.75, -0.25, -0.5, 0.5, 0.0, -0.75, 0.75, -0.75, -0.5, -1.0, 0.25, 0.75, 0.25, 0.5, -0.75, -0.25, 0.0, 0.75, 0.75, -0.75, 1.0, -0.75, -0.5, 0.25, 0.75, 0.5, 0.0, 1.0, 0.5, 0.5, 1.0, 0.75, 0.25, 0.0, -0.5, -0.75, 0.5, 0.25, -1.0, 1.0, 0.25, 0.5, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
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
    device00.pushErrorScope("validation");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device00.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([-0.5, 0.5, -0.75, -0.5, -0.5, -0.5, 1.0, -0.5, 0.0, -0.25, 0.75, -0.25, -0.75, -0.25, -0.5, -0.5, 1.0, 1.0, 0.0, -0.75, 0.5, -0.25, 0.0, 0.0, 0.5, 0.25, 1.0, 0.25, 1.0, -1.0, -0.75, -1.0, -0.5, 0.75, -0.5, 0.5, 0.25, -0.5, 0.0, -0.5, -0.75, 1.0, -0.5, -0.75, -1.0, -0.5, -0.5, -1.0, 0.0, -0.5, 0.25, -0.5, -1.0, -0.25, 1.0, 0.5, 0.5, 0.0, 0.5, -0.25, 1.0, 0.0, -0.75, 0.5, -0.75, 1.0, 0.25, -0.25, 0.25, -0.25, -0.75, 0.5, 0.25, 0.75, 0.5, -0.75, 0.25, 0.5, -0.5, 0.75, 0.75, -0.25, -0.75, -0.25, -1.0, -0.25, 0.25, -0.75, -1.0, 0.0, 0.75, 0.75, -1.0, -0.5, -0.75, -0.25, -0.25, -0.5, 0.0, -0.25, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    query000.destroy()
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    
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
    
    
    
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("internal");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.pushErrorScope("internal");
    
    buffer000.destroy()
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
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer001.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
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
    
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    query000.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    buffer003.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query002.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query000.destroy()
    device00.pushErrorScope("internal");
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer004.destroy()
    
    query004.destroy()
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device30.pushErrorScope("validation");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    query000.destroy()
    query004.destroy()
    
    
    
    
    query003.destroy()
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.pushErrorScope("internal");
    
    query002.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    query004.destroy()
    
    device40.pushErrorScope("out-of-memory");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
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
    
    
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    query005.destroy()
    buffer006.destroy()
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    device40.pushErrorScope("out-of-memory");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    
    buffer005.destroy()
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("internal");
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device00.pushErrorScope("validation");
    buffer100.destroy()
    
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
    
    query002.destroy()
    
    
    
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
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
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    query100.destroy()
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    
    
    
    
    
    
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    
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
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    query400.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout001]
    });
    query400.destroy()
    const array5 = new Float32Array([0.75, -0.5, 1.0, 0.75, 0.75, -1.0, 0.25, 0.25, 0.5, -0.25, 0.75, 0.25, -0.25, 0.25, -0.25, -0.25, -0.75, 1.0, -0.25, 1.0, 0.75, -0.5, 0.25, -1.0, -0.5, -1.0, 1.0, -0.75, -1.0, -0.25, 0.0, 0.5, 0.0, 1.0, 0.5, -0.5, 0.25, -0.5, -0.75, -0.5, 0.0, 0.0, -0.75, -0.75, 0.25, 0.75, -1.0, 0.0, -1.0, -0.25, 1.0, 0.0, 1.0, -0.25, 0.5, -0.5, 0.25, -1.0, 0.75, -0.5, 0.25, -1.0, 1.0, 0.5, -0.75, 0.0, -1.0, -0.75, -1.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0.75, 1.0, -0.75, 0.5, -0.5, 0.75, 0.0, 0.5, 0.0, -1.0, 0.25, 0.5, 0.75, -0.75, 0.75, 1.0, 0.5, -0.75, -0.5, -1.0, 1.0, 0.0, 1.0, 1.0, -1.0, 0.5, ]);
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    buffer002.destroy()
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout004]
    });
    query006.destroy()
    buffer301.destroy()
    buffer007.destroy()
    
    query006.destroy()
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    
    buffer302.destroy()
    
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout004]
    });
    query004.destroy()
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    query300.destroy()
    buffer300.destroy()
    
    const array6 = new Float32Array([-0.75, -0.25, -0.5, -0.25, 0.25, 0.0, 0.25, 0.0, 0.75, 0.75, 0.0, 0.0, -0.5, -0.25, 0.25, 0.5, 0.0, 0.0, 0.0, 0.5, 0.5, -1.0, 0.75, 0.75, 0.0, -1.0, -1.0, 0.25, -0.75, -0.5, -0.5, -1.0, -0.25, -0.25, -1.0, 1.0, 0.0, 0.25, -0.75, 1.0, 0.75, 0.75, 1.0, 0.5, 0.75, 0.0, -1.0, 1.0, -0.75, -0.75, -0.5, 1.0, 1.0, -1.0, 1.0, 0.25, 0.0, -0.25, 0.75, -0.25, 0.5, 0.5, 0.0, 0.75, 1.0, 0.25, -0.25, 0.75, 0.25, 0.25, -0.25, 1.0, 0.5, 0.25, 0.0, 0.75, -0.25, 1.0, -1.0, -0.25, 0.25, 1.0, 1.0, 0.25, -1.0, 0.75, -0.25, -0.25, 1.0, 1.0, -0.25, 0.5, -1.0, 0.75, 0.25, 0.25, -0.5, 1.0, 0.0, -1.0, ]);
    
    
    query002.destroy()
    
    
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    buffer401.destroy()
    query000.destroy()
    buffer102.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    query005.destroy()
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    device00.destroy();
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.destroy();
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    query401.destroy()
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
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
    query102.destroy()
    
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query402.destroy()
    device10.pushErrorScope("out-of-memory");
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    
    
    
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout105]
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout101]
    });
    query100.destroy()
    query402.destroy()
    const array7 = new Float32Array([0.5, -0.25, 0.5, 0.25, 0.5, -1.0, 0.25, -0.25, -0.25, -0.25, -0.5, 0.5, -0.25, -0.5, -1.0, 0.0, 0.25, -0.5, -1.0, -0.75, 1.0, 1.0, 0.0, -0.25, -1.0, -1.0, -0.25, 0.0, -0.5, 0.5, 0.75, -0.25, -0.25, -0.75, -0.5, -0.5, 0.5, -0.75, -0.75, 0.25, 0.25, -0.75, -0.25, -1.0, -0.5, -0.5, 0.5, 0.0, -0.25, -0.75, 1.0, 0.75, 0.25, -0.75, -0.75, -1.0, 1.0, 0.75, -0.75, -0.25, -0.5, 0.75, -0.25, 0.5, 0.5, -0.25, 0.0, -0.75, -0.5, 0.0, 0.75, -0.25, -1.0, -0.75, 1.0, 0.5, -0.25, 0.0, -0.75, 0.25, 1.0, 0.0, 0.75, -1.0, 0.0, 1.0, 0.5, -0.75, 0.25, 0.75, 0.0, 0.25, -0.5, 0.0, 0.5, 0.0, -1.0, 0.25, 0.5, -0.25, ]);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    buffer400.destroy()
    
    query402.destroy()
    query401.destroy()
    
    
    
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    device40.pushErrorScope("validation");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query101.destroy()
    query103.destroy()
    query402.destroy()
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout105]
    });
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout105]
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query101.destroy()
    query401.destroy()
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    query103.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    query403.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout100]
    });
    query101.destroy()
    
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query402.destroy()
    device40.destroy();
    
    
    query102.destroy()
    const pipeline_layout1024 = device10.createPipelineLayout({ 
        label: "pipeline_layout1024",
        bindGroupLayouts: [bind_group_layout100]
    });
    query101.destroy()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    buffer101.destroy()
    
    const pipeline_layout1025 = device10.createPipelineLayout({ 
        label: "pipeline_layout1025",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    
    
    
    
    
    query101.destroy()
    const pipeline_layout1026 = device10.createPipelineLayout({ 
        label: "pipeline_layout1026",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer103.destroy()
    const pipeline_layout1027 = device10.createPipelineLayout({ 
        label: "pipeline_layout1027",
        bindGroupLayouts: [bind_group_layout103]
    });
    query104.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([0.5, 1.0, 0.5, -0.25, 0.25, 0.75, -0.75, -1.0, -1.0, 0.0, 0.5, 0.75, 1.0, 0.25, 0.75, -0.5, -0.25, -0.25, 0.5, 0.75, -1.0, 0.25, -0.25, -0.75, 0.5, 1.0, 0.75, 0.25, -0.25, -0.5, 0.25, -1.0, -0.25, 0.5, -0.75, -1.0, 0.25, 0.25, 0.75, 0.75, -0.75, -0.75, 0.75, -0.75, -0.25, 0.25, -1.0, -0.75, 0.5, 0.75, 0.0, -0.75, 1.0, 0.25, 0.5, 0.0, -0.5, -0.75, 0.0, 0.25, -0.5, -0.25, -0.25, 0.5, 0.25, 0.75, 0.0, 0.25, 0.0, 0.25, -0.75, 0.25, 0.0, 0.0, -0.75, -0.25, -0.25, -0.25, 0.5, -0.75, 0.5, -0.25, 1.0, -0.5, -0.75, 0.75, -0.5, 0.25, -1.0, 1.0, -0.5, 0.0, 1.0, -1.0, 0.75, -0.75, -0.5, 0.0, 1.0, -0.75, ]);
    
    
    query100.destroy()
    
    const array9 = new Float32Array([-0.5, 1.0, -0.25, -0.25, 1.0, 0.5, -0.75, 0.5, 0.75, -0.75, -0.25, 0.75, 0.25, 0.5, 0.5, 0.75, 1.0, 0.25, -0.75, -0.25, -1.0, -0.75, 0.25, -0.25, 0.75, -0.5, -0.25, 0.75, 0.5, -0.25, 1.0, 0.75, 0.5, -0.5, 0.25, -0.5, 0.5, -0.25, 1.0, -0.75, 0.5, -0.5, 0.5, -0.25, -0.5, -0.5, -1.0, 0.0, -0.75, -0.75, -1.0, 1.0, -1.0, 0.75, -0.5, 1.0, -0.75, 0.0, -0.25, 0.75, 1.0, 0.75, 0.75, -0.25, 0.5, 1.0, -1.0, -0.5, -0.25, -0.75, -1.0, 0.75, 0.0, -0.25, 1.0, -0.5, 0.5, 0.0, -1.0, -1.0, -0.75, -0.75, 1.0, 1.0, -0.75, -0.5, -0.5, 0.0, 0.5, -0.25, 1.0, -0.75, 0.0, -1.0, -0.5, 0.75, -0.5, -0.5, 0.5, -1.0, ]);
    const pipeline_layout1028 = device10.createPipelineLayout({ 
        label: "pipeline_layout1028",
        bindGroupLayouts: [bind_group_layout104]
    });
    query104.destroy()
    
    
    
    
    
    
    query103.destroy()
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    query100.destroy()
    
    device50.destroy();
    
    query100.destroy()
    
    query100.destroy()
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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
    const pipeline_layout1029 = device10.createPipelineLayout({ 
        label: "pipeline_layout1029",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const pipeline_layout1030 = device10.createPipelineLayout({ 
        label: "pipeline_layout1030",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    query105.destroy()
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const pipeline_layout1031 = device10.createPipelineLayout({ 
        label: "pipeline_layout1031",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer105.destroy()
    
    
    query100.destroy()
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    buffer104.destroy()
    
    query100.destroy()
    
    const pipeline_layout1032 = device10.createPipelineLayout({ 
        label: "pipeline_layout1032",
        bindGroupLayouts: [bind_group_layout107]
    });
    const pipeline_layout1033 = device10.createPipelineLayout({ 
        label: "pipeline_layout1033",
        bindGroupLayouts: [bind_group_layout106]
    });
    
    const pipeline_layout1034 = device10.createPipelineLayout({ 
        label: "pipeline_layout1034",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    
    const bind_group_layout108 = device10.createBindGroupLayout({ 
        label: "bind_group_layout108",
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
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    
    
    
    
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query102.destroy()
    query100.destroy()
    query106.destroy()
    
    const array10 = new Float32Array([0.25, -0.75, 0.5, -0.75, 0.75, -1.0, -0.25, 0.25, 0.75, -1.0, 0.25, 0.0, 0.25, -0.25, -0.5, 0.25, -0.25, 0.25, -1.0, 0.25, -1.0, -0.5, 0.25, 0.0, -0.5, -0.5, 0.5, -0.25, -0.75, -0.5, 0.25, 0.5, 0.75, 0.25, 1.0, -1.0, -0.25, -1.0, 0.75, 0.0, 0.5, -0.25, -0.5, 0.25, -1.0, -0.25, 0.75, 1.0, -0.75, 0.5, -0.75, -0.5, 0.25, 0.25, -1.0, 1.0, 1.0, 0.5, -0.75, -0.75, -0.75, 0.0, 0.0, 0.5, 1.0, -0.25, -0.25, 1.0, -0.25, -1.0, 0.5, 1.0, 0.0, 0.75, -1.0, -0.5, 0.0, 0.5, 0.0, -0.5, -1.0, 1.0, 0.0, 0.5, -1.0, 0.25, -1.0, -0.5, -0.25, -0.5, -0.25, -0.5, 1.0, 1.0, -1.0, 0.75, 0.25, 0.25, 1.0, -0.5, ]);
    
    const pipeline_layout1035 = device10.createPipelineLayout({ 
        label: "pipeline_layout1035",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout1036 = device10.createPipelineLayout({ 
        label: "pipeline_layout1036",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    const pipeline_layout1037 = device10.createPipelineLayout({ 
        label: "pipeline_layout1037",
        bindGroupLayouts: [bind_group_layout107]
    });
    query106.destroy()
    
    const pipeline_layout1038 = device10.createPipelineLayout({ 
        label: "pipeline_layout1038",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    const pipeline_layout1039 = device10.createPipelineLayout({ 
        label: "pipeline_layout1039",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const pipeline_layout1040 = device10.createPipelineLayout({ 
        label: "pipeline_layout1040",
        bindGroupLayouts: [bind_group_layout106]
    });
    const bind_group_layout109 = device10.createBindGroupLayout({ 
        label: "bind_group_layout109",
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
    buffer106.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query103.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const array11 = new Float32Array([0.25, 0.75, 1.0, 0.0, -0.75, 1.0, -1.0, -0.75, -0.75, -0.75, 0.0, 0.75, 0.0, 0.0, 0.75, -0.5, 0.0, -1.0, 1.0, -0.5, 0.75, -0.25, 0.25, 0.25, 0.75, 0.75, -0.25, 0.0, -0.25, 1.0, -0.5, 0.25, 0.5, -0.5, 0.0, -1.0, 0.25, 0.75, 0.5, -0.75, -1.0, -0.25, 0.0, 0.0, 0.5, 0.25, -0.25, 1.0, -0.75, -0.25, -0.25, -0.75, -1.0, -0.75, 0.75, 1.0, 1.0, 0.25, 0.0, 0.75, -0.5, -0.25, -1.0, -1.0, -0.25, -0.25, 1.0, -0.5, 0.5, 0.75, 0.25, -0.25, -0.25, -0.25, -1.0, 0.75, 0.5, -1.0, 0.5, 0.5, -1.0, 0.0, -0.25, -0.5, -0.75, 1.0, 1.0, -0.75, 0.25, -0.75, -0.5, 0.75, -0.5, 0.75, -0.25, 0.5, -0.25, 0.75, 1.0, 0.25, ]);
    
    const pipeline_layout1041 = device10.createPipelineLayout({ 
        label: "pipeline_layout1041",
        bindGroupLayouts: [bind_group_layout106]
    });
    
    
    query107.destroy()
    
    const pipeline_layout1042 = device10.createPipelineLayout({ 
        label: "pipeline_layout1042",
        bindGroupLayouts: [bind_group_layout105]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const pipeline_layout1043 = device10.createPipelineLayout({ 
        label: "pipeline_layout1043",
        bindGroupLayouts: [bind_group_layout109]
    });
}