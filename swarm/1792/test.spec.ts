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
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const array0 = new Float32Array([-0.75, 0.75, -0.5, -0.25, -0.75, -0.5, 0.75, -1.0, 0.75, -0.25, 1.0, -0.5, -1.0, -1.0, 0.0, 0.25, 1.0, 0.25, -1.0, 1.0, -0.25, 0.75, 0.25, -1.0, 0.25, 0.75, 0.25, -1.0, -0.25, -0.75, -0.5, 0.25, 0.75, 0.25, -1.0, 0.0, 1.0, -0.75, 0.75, 1.0, -0.75, -1.0, 0.0, 0.75, -0.75, -1.0, 0.75, -0.25, 0.5, 0.25, 1.0, 0.25, -0.75, 0.25, 1.0, -0.25, -1.0, 1.0, 0.25, -0.75, 0.5, 0.5, -1.0, -0.25, 0.5, 0.0, 0.75, 0.25, -0.5, -1.0, -1.0, -0.25, -1.0, 0.0, 1.0, -0.5, 1.0, 0.5, -1.0, 0.0, 0.0, 0.0, -1.0, -1.0, -0.75, 0.25, 1.0, 0.25, 0.75, 0.25, -0.25, 0.5, -0.25, 0.5, 0.75, 0.5, -0.25, 0.5, -1.0, 0.75, ]);
    const array1 = new Float32Array([0.0, 0.75, -0.5, -1.0, -0.75, 0.25, -0.25, 0.25, 0.5, -0.75, -0.75, 0.25, -0.5, 1.0, -0.5, 1.0, -1.0, 0.25, -0.5, -0.5, 0.25, 0.25, 0.5, 1.0, -0.5, 0.5, 0.25, 0.0, 0.75, 0.0, 0.0, -0.25, 0.25, 0.0, 0.0, 0.0, 0.5, -0.75, -0.5, -0.75, -0.75, -0.25, 0.25, -0.25, 0.5, 0.0, 0.25, 0.25, 0.0, -0.75, 0.75, 0.5, 0.25, 0.75, -0.5, 0.25, -0.75, 0.75, 0.25, 0.25, 0.75, 0.75, 0.5, -0.25, 0.75, -1.0, -1.0, 0.25, 1.0, -0.25, 0.25, 0.75, -0.75, 0.25, 1.0, 0.5, -0.25, 1.0, 0.5, 1.0, -1.0, -0.5, 0.75, 0.0, 0.25, -1.0, 0.0, 0.5, 0.0, -0.75, -0.25, -0.5, 1.0, 0.25, 0.5, -1.0, -1.0, 0.25, -1.0, 1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([0.75, 1.0, 1.0, 0.75, 1.0, -0.75, 0.5, 0.75, 0.75, 1.0, 0.0, -0.25, 0.0, -0.5, 0.5, 0.0, -0.25, 1.0, 0.25, 0.0, 0.5, -0.25, 0.0, -1.0, -0.5, 0.0, 0.5, -1.0, -1.0, -0.75, 1.0, -1.0, 1.0, -0.75, 0.0, -0.75, -0.75, 0.75, 0.25, -0.25, -0.25, -1.0, -0.75, -0.75, -0.5, -1.0, -1.0, 0.25, 1.0, -1.0, -1.0, -0.75, 1.0, -1.0, -1.0, 0.5, 0.75, 0.5, 0.25, 1.0, 0.0, 0.75, -0.25, -1.0, 0.0, -1.0, 1.0, 0.75, -0.25, 1.0, 0.75, 0.5, 0.5, 0.0, -0.25, 0.75, -0.5, 0.0, 1.0, 0.0, -0.5, 0.0, -0.75, 0.75, 0.25, -1.0, 0.25, 1.0, 1.0, 0.25, -0.25, -0.25, -0.5, -0.75, -0.25, -0.75, 0.25, -1.0, 0.25, 0.5, ]);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    buffer001.destroy()
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    buffer000.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_buffer000 = command_encoder000.finish();
    
    const array3 = new Float32Array([-1.0, -1.0, 0.5, 0.0, 0.25, 0.0, 0.25, 0.25, 0.75, 0.25, 0.25, 1.0, -0.5, 1.0, 0.75, 1.0, -0.5, -0.5, 0.5, -0.25, 0.0, 0.25, 0.0, -0.5, -0.75, 0.25, -0.25, 0.5, -1.0, 0.0, 0.75, 0.0, -0.5, -1.0, 1.0, 0.25, -0.75, -0.25, 0.5, 0.25, 0.5, 1.0, -0.5, 1.0, -0.75, -0.75, 1.0, -0.25, 0.5, -0.25, 0.25, 0.75, -0.75, -0.25, 0.75, -0.75, 1.0, -0.25, 0.25, 0.25, -0.75, -0.75, -1.0, 1.0, 0.0, -0.75, 0.0, 0.5, 0.75, 0.0, -0.5, -0.5, 1.0, -0.75, -1.0, 1.0, 0.25, 0.25, 0.25, 1.0, -0.75, 0.5, 0.75, 1.0, -1.0, 0.5, -1.0, -0.25, 1.0, -1.0, 0.0, 0.0, 0.25, -0.5, 0.5, 1.0, 0.75, 0.5, 1.0, 0.0, ]);
    const command_buffer001 = command_encoder001.finish();
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder300.insertDebugMarker("mymarker");
    
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
    const command_buffer300 = command_encoder300.finish();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    device30.destroy();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder002.pushDebugGroup("mygroupmarker")
    device40.destroy();
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder002.popDebugGroup()
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.destroy();
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder002.insertDebugMarker("mymarker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder002.copyBufferToBuffer(
        buffer003,
        0,
        buffer000,
        0,
        400
    );
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    buffer003.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
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
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    command_encoder002.copyBufferToBuffer(
        buffer002,
        0,
        buffer003,
        0,
        400
    );
    command_encoder003.pushDebugGroup("mygroupmarker")
    buffer002.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    command_encoder003.popDebugGroup()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    command_encoder002.popDebugGroup()
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
    command_encoder002.insertDebugMarker("mymarker");
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_buffer002 = command_encoder002.finish();
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    
    
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
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    buffer004.destroy()
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
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout004]
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder003.insertDebugMarker("mymarker");
    
    command_encoder003.clearBuffer(buffer004);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    command_encoder003.clearBuffer(buffer004);
    
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    const array4 = new Float32Array([0.0, 1.0, 1.0, -0.75, 0.75, 0.75, 1.0, -0.5, -0.5, 0.25, -0.5, -0.5, 0.0, -1.0, 0.0, 0.75, -0.25, 0.5, 1.0, 1.0, 0.75, 1.0, 0.0, 1.0, -0.75, -0.5, 0.75, 0.0, -1.0, -0.25, 0.25, 0.75, 0.5, 1.0, -0.5, -0.75, 1.0, -0.75, 0.75, 0.25, 0.0, 0.0, -0.25, 0.75, -0.5, -0.75, -0.25, -0.25, -0.25, 0.0, 0.75, 0.25, 1.0, -1.0, 0.0, -0.25, 0.75, 0.75, 0.75, 0.25, 1.0, 0.5, -0.25, 0.5, -0.25, 0.75, 0.75, 0.75, 1.0, 1.0, 0.5, -1.0, -0.5, -0.25, -0.75, 0.75, -0.25, -0.25, -0.25, 0.25, -0.25, -1.0, 0.5, -0.25, 0.25, -0.5, 0.0, 1.0, 1.0, -1.0, 0.25, 0.25, 0.25, 1.0, -0.25, 1.0, -0.5, 0.5, -0.5, 0.5, ]);
    
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout004]
    });
    command_encoder100.popDebugGroup()
    
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    
    const command_buffer101 = command_encoder101.finish();
    
    const command_buffer100 = command_encoder100.finish();
    const array5 = new Float32Array([0.5, 0.25, 0.25, 0.75, -0.25, 0.75, 0.75, 0.5, 0.0, -0.5, 1.0, 0.0, -0.25, 0.25, 0.75, 1.0, 0.25, -0.25, -0.25, -0.75, 1.0, -0.75, -1.0, 0.0, 1.0, 0.5, -0.25, 0.5, 0.25, 0.0, 0.5, -1.0, 0.75, 1.0, 0.0, 0.0, 0.25, -0.75, -0.25, -0.25, 0.75, -0.5, 0.0, -0.25, 1.0, -0.5, 1.0, 1.0, -0.5, 0.0, 0.0, 0.25, 0.25, 0.0, -0.5, -0.75, 0.25, -0.75, -1.0, -0.75, -0.5, -0.25, 0.5, -1.0, -1.0, 0.5, 0.75, 0.75, -0.5, -0.25, -1.0, -0.75, -0.25, 0.25, -0.75, 0.25, -1.0, 0.75, 0.5, 0.25, 0.5, 0.0, 1.0, -0.75, -0.5, 0.5, 1.0, -0.5, 0.5, 1.0, 0.75, 1.0, -0.75, 0.0, -0.75, -1.0, -0.75, -0.75, 0.5, -0.25, ]);
    
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout005]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer002,
        0
    )
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout004]
    });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout001]
    });
    
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
    buffer100.destroy()
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    const bind_group_layout008 = device00.createBindGroupLayout({ 
        label: "bind_group_layout008",
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
    
    command_encoder003.resolveQuerySet(
        query005,
        0,
        32,
        buffer000,
        0
    )
    
    
    
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder003.popDebugGroup()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    buffer005.destroy()
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    buffer004.destroy()
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout004]
    });
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
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
    const command_buffer004 = command_encoder004.finish();
    device50.destroy();
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    const command_buffer003 = command_encoder003.finish();
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder005.resolveQuerySet(
        query005,
        0,
        32,
        buffer000,
        0
    )
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    
    
    const array6 = new Float32Array([-0.5, -0.5, -0.25, -0.75, -0.5, 0.0, 0.0, 0.0, -1.0, 0.5, 0.5, -0.5, -0.25, 0.25, -0.5, -0.25, 0.75, 0.75, -0.5, -1.0, -0.75, 1.0, -0.5, -0.5, 0.25, 1.0, 0.5, 0.75, 0.5, -1.0, -0.75, 0.5, 0.75, -1.0, 0.5, 1.0, -1.0, -0.25, 0.25, 0.5, 0.75, -0.25, 1.0, -0.25, -0.25, -0.75, -1.0, 0.5, -1.0, -0.75, 1.0, 1.0, -0.75, 0.5, 0.5, 0.25, -0.25, 0.5, -1.0, -0.25, 0.0, 0.75, 1.0, -0.25, 0.25, -0.5, -0.5, 0.0, 0.25, 0.25, 0.5, -0.25, -0.75, -0.75, 0.25, 1.0, 1.0, 1.0, -0.25, 0.75, -0.75, 0.5, -0.5, 1.0, 0.0, 1.0, -0.75, 0.75, -0.5, 1.0, 0.5, 0.5, -0.75, 0.25, 1.0, -1.0, -0.75, 0.25, 1.0, 0.75, ]);
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const array7 = new Float32Array([0.0, 0.0, -1.0, -0.25, -0.75, 0.0, 0.0, 0.0, 0.75, 0.5, 1.0, 0.0, 0.0, -1.0, 0.25, 1.0, 0.25, 0.75, 0.0, -0.25, -0.5, -0.25, 0.75, 0.0, -0.5, 0.25, -0.5, 1.0, 0.25, 1.0, -0.75, 0.0, 0.5, -0.25, -1.0, 0.25, 1.0, 1.0, 0.5, 0.5, -0.5, -0.25, 1.0, 0.75, -0.25, -0.5, -0.5, -1.0, -1.0, 1.0, 0.0, -1.0, 0.5, -0.5, 0.0, 1.0, -0.75, -0.75, 0.75, -0.25, 0.75, 1.0, 0.5, 0.0, 0.75, 0.5, -1.0, 0.25, 0.5, 0.25, 1.0, -0.25, 0.0, 0.0, -0.25, 0.25, 1.0, -0.25, 0.25, 0.25, 0.0, 0.25, -0.75, 0.75, 0.25, -0.5, -0.5, 0.0, -0.75, 1.0, -0.25, 0.0, -0.75, -0.5, -0.25, 1.0, 0.75, 0.0, -0.5, 1.0, ]);
    
    command_encoder005.insertDebugMarker("mymarker");
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout006]
    });
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder103.copyBufferToBuffer(
        buffer101,
        0,
        buffer101,
        0,
        400
    );
    command_encoder006.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    
    const command_buffer006 = command_encoder006.finish();
    const command_buffer102 = command_encoder102.finish();
    const array8 = new Float32Array([-1.0, -0.5, 0.25, 1.0, -1.0, 1.0, 0.0, 0.5, 0.75, -1.0, -0.25, 0.75, -0.25, 0.0, 0.25, 0.5, 0.75, 0.25, 0.5, -1.0, 0.25, -1.0, 0.5, 0.0, -0.75, -0.75, -0.75, 1.0, -0.25, -0.5, 0.0, 1.0, 0.25, -1.0, -0.75, 0.25, -0.75, 0.25, 0.5, -0.75, -0.25, -0.75, 0.25, -0.5, 0.75, -0.75, -0.25, 1.0, 0.75, 0.75, 0.5, 0.5, -0.75, -0.75, 0.75, -1.0, 0.75, -0.5, 0.0, 1.0, -1.0, 1.0, 0.75, 1.0, -0.5, 1.0, 0.0, -0.25, -1.0, 0.75, 0.0, 0.5, -0.25, 0.75, 0.25, -1.0, 0.75, -0.5, -0.75, -0.5, 1.0, -0.25, 0.75, -0.25, -1.0, 1.0, 0.5, -1.0, 0.0, -0.75, 1.0, 1.0, 0.5, 0.5, 0.0, 0.25, -0.25, 0.0, 0.25, 1.0, ]);
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    buffer007.destroy()
    command_encoder200.pushDebugGroup("mygroupmarker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder005.resolveQuerySet(
        query005,
        0,
        32,
        buffer000,
        0
    )
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
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const array9 = new Float32Array([0.25, 0.75, 0.5, 1.0, -0.25, -0.75, 0.0, 1.0, -0.75, -0.5, 0.25, 1.0, 1.0, -0.25, -0.25, -0.75, 1.0, -0.25, 0.25, 0.0, 1.0, 0.5, 0.0, -0.5, 0.75, -0.75, -1.0, 1.0, -0.25, -0.75, -1.0, -0.5, -0.25, 0.5, -0.5, -1.0, 1.0, -0.5, 1.0, 0.0, 1.0, 0.75, 0.5, -1.0, 1.0, 1.0, 1.0, 0.5, 1.0, 0.25, 0.0, 1.0, 0.5, 0.5, -0.75, 0.25, 0.25, -0.25, -1.0, -0.5, -0.5, 1.0, 0.25, 0.25, 0.5, -0.25, -1.0, -0.75, -1.0, 0.5, 0.75, 0.5, 1.0, -0.75, 0.0, -0.25, 0.25, 0.5, 0.75, -0.75, 1.0, 0.75, -0.25, -1.0, -0.5, -0.5, -0.25, 0.75, 0.5, 0.75, 0.5, 1.0, 0.5, -0.25, -0.25, -0.25, 0.75, 0.5, 0.5, -1.0, ]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout007]
    });
    
    
    
    const command_buffer103 = command_encoder103.finish();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
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
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const command_buffer005 = command_encoder005.finish();
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    buffer101.destroy()
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    
    buffer006.destroy()
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    device00.queue.writeBuffer(buffer007, 0, array7, 0, array7.length);
    
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout008]
    });
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout007]
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
    
    
    const command_buffer700 = command_encoder700.finish();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout008]
    });
    
    buffer102.destroy()
    
    const command_buffer301 = command_encoder301.finish();
    
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
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout002]
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
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device00.queue.writeBuffer(buffer008, 0, array3, 0, array3.length);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout0028 = device00.createPipelineLayout({ 
        label: "pipeline_layout0028",
        bindGroupLayouts: [bind_group_layout008]
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    buffer008.destroy()
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    buffer700.destroy()
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    command_encoder007.resolveQuerySet(
        query007,
        0,
        32,
        buffer003,
        0
    )
    
    
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    command_encoder007.copyBufferToBuffer(
        buffer009,
        0,
        buffer006,
        0,
        400
    );
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    command_encoder007.insertDebugMarker("mymarker");
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder007.pushDebugGroup("mygroupmarker")
    command_encoder007.resolveQuerySet(
        query008,
        0,
        32,
        buffer001,
        0
    )
    
    const pipeline_layout0029 = device00.createPipelineLayout({ 
        label: "pipeline_layout0029",
        bindGroupLayouts: [bind_group_layout005]
    });
    command_encoder007.clearBuffer(buffer008);
    
    
    command_encoder007.popDebugGroup()
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    
    command_encoder007.copyBufferToBuffer(
        buffer009,
        0,
        buffer008,
        0,
        400
    );
    const pipeline_layout0030 = device00.createPipelineLayout({ 
        label: "pipeline_layout0030",
        bindGroupLayouts: [bind_group_layout004]
    });
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    command_encoder008.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    command_encoder007.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    device70.queue.writeBuffer(buffer700, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer0010, 0, array4, 0, array4.length);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    command_encoder008.resolveQuerySet(
        query008,
        0,
        32,
        buffer009,
        0
    )
    device00.queue.writeBuffer(buffer0010, 0, array7, 0, array7.length);
    command_encoder007.resolveQuerySet(
        query003,
        0,
        32,
        buffer007,
        0
    )
    const pipeline_layout0031 = device00.createPipelineLayout({ 
        label: "pipeline_layout0031",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    command_encoder008.resolveQuerySet(
        query004,
        0,
        32,
        buffer008,
        0
    )
    const command_buffer008 = command_encoder008.finish();
    
    const pipeline_layout0032 = device00.createPipelineLayout({ 
        label: "pipeline_layout0032",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder007.resolveQuerySet(
        query007,
        0,
        32,
        buffer000,
        0
    )
    
    command_encoder007.copyBufferToBuffer(
        buffer004,
        0,
        buffer008,
        0,
        400
    );
    
    
    
    device00.queue.writeBuffer(buffer0010, 0, array1, 0, array1.length);
    
    
    
    command_encoder007.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    device00.queue.writeBuffer(buffer0010, 0, array1, 0, array1.length);
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0033 = device00.createPipelineLayout({ 
        label: "pipeline_layout0033",
        bindGroupLayouts: [bind_group_layout003]
    });
    device00.queue.writeBuffer(buffer0010, 0, array5, 0, array5.length);
    
    buffer0010.destroy()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    const pipeline_layout0034 = device00.createPipelineLayout({ 
        label: "pipeline_layout0034",
        bindGroupLayouts: [bind_group_layout007]
    });
    buffer009.destroy()
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
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    
    const pipeline_layout0035 = device00.createPipelineLayout({ 
        label: "pipeline_layout0035",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    command_encoder007.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const pipeline_layout0036 = device00.createPipelineLayout({ 
        label: "pipeline_layout0036",
        bindGroupLayouts: [bind_group_layout007]
    });
    command_encoder007.resolveQuerySet(
        query005,
        0,
        32,
        buffer000,
        0
    )
    command_encoder104.insertDebugMarker("mymarker");
    
    const pipeline_layout0037 = device00.createPipelineLayout({ 
        label: "pipeline_layout0037",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout0038 = device00.createPipelineLayout({ 
        label: "pipeline_layout0038",
        bindGroupLayouts: [bind_group_layout000]
    });
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
    
    const pipeline_layout0039 = device00.createPipelineLayout({ 
        label: "pipeline_layout0039",
        bindGroupLayouts: [bind_group_layout003]
    });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const array10 = new Float32Array([-0.5, 1.0, -0.25, 0.5, -0.75, -1.0, -0.5, 1.0, -1.0, -0.25, -0.25, 0.0, 1.0, -0.75, -0.25, -0.25, 1.0, 0.0, -0.5, -0.25, -1.0, 0.0, 0.75, 0.25, -0.25, -0.5, -0.25, -0.75, -0.25, 0.5, 0.75, 1.0, -1.0, 1.0, -0.75, -0.25, 0.5, -0.75, -0.25, -0.75, -0.75, -0.5, -0.5, -0.75, 0.5, 0.75, -0.25, 1.0, 1.0, 1.0, 0.75, -0.75, 0.5, 0.25, -0.75, 0.75, -0.25, 0.75, -0.75, 0.75, 0.0, 0.75, 0.75, -0.5, -0.5, -0.25, 0.25, 0.25, 0.75, 0.0, -0.25, 0.5, -0.5, 0.0, 0.0, 0.25, 1.0, 0.25, 0.5, -0.75, 0.25, -0.5, -0.75, -0.5, 1.0, 0.25, 0.25, 1.0, -1.0, -0.75, -0.5, 0.0, 1.0, 0.25, 0.5, -0.25, 0.5, 0.75, 0.75, -0.25, ]);
    
    
    
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0040 = device00.createPipelineLayout({ 
        label: "pipeline_layout0040",
        bindGroupLayouts: [bind_group_layout006]
    });
    device00.queue.writeBuffer(buffer0010, 0, array7, 0, array7.length);
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer008,
        0
    )
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer103.destroy()
    
    
    
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    command_encoder007.resolveQuerySet(
        query006,
        0,
        32,
        buffer007,
        0
    )
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    command_encoder007.resolveQuerySet(
        query008,
        0,
        32,
        buffer0010,
        0
    )
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    command_encoder007.resolveQuerySet(
        query008,
        0,
        32,
        buffer008,
        0
    )
    
    
    command_encoder200.popDebugGroup()
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout106]
    });
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout100]
    });
    device50.destroy();
    
    
    buffer003.destroy()
    const command_buffer701 = command_encoder701.finish();
    device00.queue.writeBuffer(buffer0010, 0, array0, 0, array0.length);
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    device00.queue.writeBuffer(buffer0010, 0, array2, 0, array2.length);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder007.pushDebugGroup("mygroupmarker")
    buffer009.destroy()
    buffer006.destroy()
    command_encoder007.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout107]
    });
    command_encoder007.resolveQuerySet(
        query009,
        0,
        32,
        buffer000,
        0
    )
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
    
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_buffer104 = command_encoder104.finish();
    command_encoder007.insertDebugMarker("mymarker");
    
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    device70.destroy();
    
    command_encoder009.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    command_encoder007.copyBufferToBuffer(
        buffer0011,
        0,
        buffer006,
        0,
        400
    );
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder009.clearBuffer(buffer005);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    command_encoder007.popDebugGroup()
    const command_buffer106 = command_encoder106.finish();
    const command_buffer105 = command_encoder105.finish();
    const command_buffer007 = command_encoder007.finish();
    const command_buffer009 = command_encoder009.finish();
}