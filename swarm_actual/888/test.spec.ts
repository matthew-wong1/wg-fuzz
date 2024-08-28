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
    device00.pushErrorScope("validation");
    const array0 = new Float32Array([1.0, -0.25, 1.0, -1.0, -1.0, -0.25, -0.25, 0.5, 0.0, -0.75, 1.0, -0.75, 1.0, -0.75, 1.0, -0.25, -0.75, -0.75, 1.0, 0.75, -0.75, 0.5, -0.75, -1.0, 0.25, -0.25, 0.75, 0.75, 0.25, 1.0, 0.25, 0.25, -0.5, 0.75, 0.0, -0.75, 0.0, -0.25, -0.75, 0.5, -0.5, 0.75, 0.25, 0.5, -0.5, 0.25, -0.5, -0.25, -1.0, 0.25, 0.0, -0.5, -1.0, 0.25, 0.0, -0.25, 0.0, -0.5, 1.0, -0.75, 0.5, 0.25, 0.5, 0.25, 0.5, 0.25, -0.75, 0.75, 0.25, 0.0, -0.5, -0.75, 0.0, -1.0, 0.5, 1.0, -1.0, 0.25, -0.25, 0.25, 0.25, -0.5, 0.0, -0.25, 0.5, 0.5, 0.75, -0.5, 0.75, -0.5, 0.75, 1.0, -0.5, -0.75, 0.25, -1.0, 0.5, 1.0, -0.5, -0.25, ]);
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
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
    const command_buffer000 = command_encoder000.finish();
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    command_encoder001.popDebugGroup()
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device00.queue.submit([command_buffer000, ]);
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    
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
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const command_buffer002 = command_encoder002.finish();
    
    
    const command_buffer003 = command_encoder003.finish();
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    command_encoder001.popDebugGroup()
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array1 = new Float32Array([-0.25, -0.75, -0.75, -0.5, -0.25, 0.75, -0.25, 1.0, 0.5, -0.75, -0.75, 0.0, -0.75, 0.25, -0.25, 0.0, 0.5, -0.5, -0.75, -0.25, -0.25, 0.0, 0.0, 0.0, 0.25, 0.75, -0.75, 0.75, 0.5, -0.5, 1.0, -0.25, 0.5, 0.75, -0.75, 1.0, 0.75, -1.0, -0.75, 0.25, 0.25, -0.5, -0.5, -0.5, -0.75, -0.75, 0.75, 1.0, -0.25, 0.5, -0.5, -0.75, -0.5, 0.0, 0.25, 0.25, 0.25, -1.0, -0.25, 0.5, -0.75, 0.0, -1.0, 0.25, 0.5, 0.75, -0.75, 0.25, -1.0, 0.5, -1.0, -0.25, -0.25, 0.0, 0.75, 1.0, -1.0, 0.0, 0.75, -0.25, -0.25, 0.75, 0.25, 0.5, 1.0, 0.0, -1.0, 0.25, 0.0, 0.25, 0.5, 0.5, -1.0, 0.25, 1.0, -0.75, -0.25, 0.25, -0.5, 0.75, ]);
    const array2 = new Float32Array([0.0, 0.25, 0.0, 0.0, 1.0, 0.25, 0.25, -0.25, 0.75, 0.75, -0.5, -0.5, 0.5, -0.25, -0.25, -0.25, -0.5, -0.75, -0.75, 0.5, 0.75, -1.0, -0.75, -1.0, 1.0, 1.0, -0.25, 1.0, 1.0, -0.25, -0.5, 0.0, -0.5, 0.25, 1.0, 0.75, -0.5, 0.25, -1.0, -0.5, -1.0, -0.75, 0.0, 0.75, 0.5, 1.0, 0.75, -0.5, -0.5, 0.0, -1.0, 0.25, -0.75, 0.25, 0.25, 1.0, -0.25, 0.75, 0.75, -1.0, -1.0, 0.75, -0.5, 1.0, -0.75, -0.75, -0.5, 1.0, -0.75, -1.0, -0.75, 0.25, -0.75, -0.5, 0.25, -0.5, 1.0, -1.0, -1.0, -0.75, 0.5, 0.75, -0.25, -1.0, 0.75, 1.0, -0.25, -1.0, -1.0, -1.0, 0.75, 0.25, 0.5, 1.0, -0.25, 0.0, -1.0, -0.25, -0.75, 0.0, ]);
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    command_encoder005.pushDebugGroup("mygroupmarker")
    command_encoder005.popDebugGroup()
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    
    command_encoder006.pushDebugGroup("mygroupmarker")
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    
    const command_buffer005 = command_encoder005.finish();
    
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout004]
    });
    const array3 = new Float32Array([-0.75, 1.0, -0.5, 1.0, 0.5, 0.5, 0.0, -0.25, 0.75, -0.75, -1.0, -0.25, 1.0, -0.75, -0.75, -0.25, 0.0, 0.25, 0.75, 1.0, -1.0, -0.25, 0.5, -0.75, -1.0, -1.0, -0.75, -0.75, 0.25, 1.0, 0.75, 0.75, -1.0, -0.5, -0.75, -0.25, 0.5, -1.0, 0.75, -1.0, 1.0, -0.75, -1.0, -1.0, -1.0, 0.75, -1.0, -1.0, 0.25, 1.0, -0.75, 0.75, -0.25, -0.75, 0.25, -1.0, 0.25, 0.75, 0.25, -0.5, 0.0, -0.25, 0.0, 1.0, -0.75, 0.75, 0.75, -0.25, -0.5, -0.25, -1.0, -0.75, -0.25, 1.0, -0.75, 0.5, 0.5, 0.75, -0.5, -0.75, -1.0, 1.0, 0.25, 0.25, -1.0, 0.0, 0.5, -0.75, -1.0, 0.0, -1.0, 0.75, 0.5, 0.25, 0.25, -0.5, -0.75, -0.75, 0.5, 1.0, ]);
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout003]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    
    const array4 = new Float32Array([0.25, -1.0, -0.75, -0.25, -0.25, -0.25, 0.0, 0.25, -0.5, 0.25, 1.0, 0.5, -0.5, -0.5, 0.5, -0.25, -0.75, 0.75, -1.0, 0.5, 0.25, -0.5, 0.25, 0.0, -0.25, -0.5, -0.5, 1.0, 1.0, -0.5, -0.75, -0.25, 0.25, -0.5, -1.0, 0.5, -0.75, -1.0, -0.25, 0.75, 1.0, 0.0, 0.25, -0.75, 0.0, 0.25, 0.0, 0.75, -1.0, -1.0, 0.0, 1.0, -1.0, 0.75, 0.75, 0.0, -0.75, -0.5, -0.75, -0.25, 0.5, 0.75, -0.25, 0.5, -0.25, 0.25, -0.25, 1.0, 0.0, 0.5, -0.75, 0.25, 1.0, 0.0, -0.5, 0.0, -0.5, 0.5, -1.0, 0.25, -1.0, 0.0, 0.0, -0.5, -1.0, -0.75, 1.0, 0.25, 0.75, -1.0, 1.0, -0.25, 1.0, -0.5, -0.75, 0.75, -1.0, -1.0, -1.0, 0.75, ]);
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout002]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    device00.queue.submit([command_buffer005, ]);
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout000]
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
    
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    command_encoder007.pushDebugGroup("mygroupmarker")
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const array5 = new Float32Array([1.0, -0.25, -0.75, 0.0, 0.75, -0.25, 1.0, -0.5, 1.0, -1.0, -0.25, 0.5, 0.25, 0.0, 0.25, -0.75, 0.0, -0.25, -0.75, -0.5, -1.0, -0.25, -0.5, 1.0, 0.0, 1.0, 0.75, 1.0, 0.25, -0.25, -0.25, -1.0, 0.75, -1.0, 1.0, 0.0, 0.25, -0.75, 1.0, -0.25, -0.5, 1.0, -0.5, -0.5, -1.0, -0.25, 0.0, 0.5, 0.75, -0.25, 1.0, -0.25, -0.25, 1.0, 0.25, 0.75, 0.5, 1.0, 0.25, 1.0, 0.0, 0.0, 0.75, 0.0, -0.5, 0.5, 0.75, 0.25, 1.0, -0.25, 1.0, 0.5, -0.25, 0.25, -0.5, 0.25, -1.0, -0.5, 1.0, -0.25, -0.75, -0.75, -0.5, 0.0, -0.75, 0.75, 0.25, -0.25, -1.0, -0.25, 0.0, 0.25, -0.75, 1.0, 0.25, 0.0, 0.25, 1.0, -0.75, -0.25, ]);
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    command_encoder009.pushDebugGroup("mygroupmarker")
    const array6 = new Float32Array([0.75, 0.0, -1.0, -0.25, 0.0, 0.0, 0.0, -0.25, -1.0, -1.0, -0.75, -0.25, 0.5, 1.0, 0.5, -0.75, -0.25, 0.75, 0.25, 0.0, -1.0, -0.25, 0.75, -0.5, -0.75, 1.0, 0.75, 0.25, 0.0, 0.0, 0.75, -1.0, 0.0, 0.25, 0.0, 1.0, -0.75, 0.5, 0.25, -0.5, -0.25, 0.75, -0.5, -0.75, 0.75, 0.25, -1.0, -0.75, 0.75, 0.0, -0.25, 0.25, -0.75, -0.25, -0.25, -0.25, -0.75, -0.5, 1.0, -1.0, -0.75, 1.0, 0.25, -1.0, 0.0, 0.75, -0.75, 1.0, 1.0, 0.25, -0.25, -0.5, -0.5, 0.0, 0.25, 0.0, 1.0, 0.5, 0.5, 1.0, -0.75, 0.25, 0.25, -1.0, -0.25, 0.25, 1.0, -1.0, -1.0, -0.5, -0.75, 1.0, 1.0, 1.0, 0.5, -0.75, 0.25, -1.0, -0.25, 0.0, ]);
    command_encoder007.popDebugGroup()
    
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
    command_encoder001.popDebugGroup()
    command_encoder300.pushDebugGroup("mygroupmarker")
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout004]
    });
    command_encoder300.popDebugGroup()
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
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.pushErrorScope("internal");
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout004]
    });
    const command_buffer001 = command_encoder001.finish();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
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
    command_encoder008.pushDebugGroup("mygroupmarker")
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout004]
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const command_buffer300 = command_encoder300.finish();
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout002]
    });
    device30.queue.submit([command_buffer300, ]);
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    command_encoder006.popDebugGroup()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_buffer301 = command_encoder301.finish();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const command_buffer100 = command_encoder100.finish();
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    device30.queue.submit([command_buffer301, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder102.pushDebugGroup("mygroupmarker")
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout005]
    });
    command_encoder0010.pushDebugGroup("mygroupmarker")
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    device00.queue.submit([command_buffer001, ]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder008.popDebugGroup()
    
    
    const command_buffer103 = command_encoder103.finish();
    
    const array7 = new Float32Array([0.25, -0.25, -0.75, -1.0, -1.0, 0.0, -1.0, 0.75, -0.5, -0.75, 1.0, -0.25, -0.5, -0.75, 0.0, -0.25, -1.0, 1.0, 0.5, 0.25, 0.0, 0.25, 0.75, 1.0, 0.0, 0.75, -0.75, -0.5, -0.75, -0.75, -0.75, 1.0, 0.75, 0.0, 0.0, -0.75, 0.0, -0.5, 1.0, 0.75, -0.5, 1.0, 0.0, 1.0, 1.0, 1.0, 0.25, 0.5, 0.5, 0.75, -0.75, -0.75, -1.0, 0.0, -0.75, -0.25, -1.0, 1.0, -0.75, 1.0, 0.75, 0.25, -0.25, 0.25, 0.5, -0.5, -0.5, 0.75, 0.75, 0.0, -0.25, 0.0, -0.25, 0.0, 0.25, 0.5, -0.5, -1.0, 1.0, 0.5, -0.25, -0.5, -1.0, 0.25, 0.75, -0.75, -0.25, 0.0, -0.25, 0.5, -0.75, -0.75, -1.0, 1.0, 0.25, -0.75, 0.25, -0.25, -1.0, -1.0, ]);
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
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
    
    device20.pushErrorScope("out-of-memory");
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_buffer006 = command_encoder006.finish();
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const command_buffer302 = command_encoder302.finish();
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout007]
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
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
    const pipeline_layout0028 = device00.createPipelineLayout({ 
        label: "pipeline_layout0028",
        bindGroupLayouts: [bind_group_layout007]
    });
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout0029 = device00.createPipelineLayout({ 
        label: "pipeline_layout0029",
        bindGroupLayouts: [bind_group_layout001]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const pipeline_layout0030 = device00.createPipelineLayout({ 
        label: "pipeline_layout0030",
        bindGroupLayouts: [bind_group_layout007]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    device10.pushErrorScope("validation");
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const sampler0011 = device00.createSampler( { label: "sampler0011" } );
    const command_buffer008 = command_encoder008.finish();
    
    command_encoder101.popDebugGroup()
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout302]
    });
    
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
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout303]
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
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
    command_encoder106.pushDebugGroup("mygroupmarker")
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const command_buffer200 = command_encoder200.finish();
    
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
    command_encoder0010.popDebugGroup()
    command_encoder501.pushDebugGroup("mygroupmarker")
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    const command_buffer007 = command_encoder007.finish();
    device00.queue.submit([command_buffer006, ]);
    command_encoder0010.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const pipeline_layout0031 = device00.createPipelineLayout({ 
        label: "pipeline_layout0031",
        bindGroupLayouts: [bind_group_layout006]
    });
    const array8 = new Float32Array([0.0, -0.25, 0.75, -0.5, -0.5, 1.0, -0.25, -0.5, -1.0, -1.0, 0.0, -0.25, -0.5, 1.0, -0.25, -0.75, 0.75, 0.0, -0.5, 0.0, 1.0, 0.5, 1.0, -1.0, 0.0, -1.0, -0.75, -1.0, -0.75, 0.25, -0.75, 0.75, -0.5, 0.0, 0.25, -1.0, -0.25, 0.75, -0.75, 0.75, 1.0, 0.0, 0.5, -0.75, 0.25, -1.0, -0.75, 1.0, -0.75, -0.5, 0.75, -0.25, 0.0, 0.25, 0.5, 0.5, 0.0, 0.25, -0.75, 1.0, 0.25, 1.0, 1.0, -0.75, -0.25, -0.75, -1.0, 0.0, 0.0, -0.5, 0.75, -0.75, 0.75, 0.75, 1.0, 0.25, 0.5, -0.25, -0.5, -0.25, 0.25, -0.25, 0.25, -0.25, 0.5, 0.75, 0.25, 1.0, -0.5, 0.5, 0.25, -0.75, 0.5, 1.0, -1.0, 0.75, -0.5, 1.0, 0.75, -0.75, ]);
    const pipeline_layout0032 = device00.createPipelineLayout({ 
        label: "pipeline_layout0032",
        bindGroupLayouts: [bind_group_layout005]
    });
    const array9 = new Float32Array([0.5, 0.75, 1.0, 1.0, 0.5, -0.5, -0.25, -0.75, 0.25, -0.5, -0.25, -1.0, 1.0, 0.0, -0.25, 0.0, -0.75, -1.0, 0.5, -0.25, 0.5, 1.0, -0.5, -0.25, -1.0, -0.5, 1.0, 1.0, 1.0, 0.75, -0.5, 0.5, -1.0, -0.5, 0.75, 0.25, 0.0, 0.75, 0.25, -0.5, -0.25, 1.0, 0.0, 0.25, -1.0, -0.75, -0.5, -1.0, -0.75, 1.0, 1.0, -0.75, 0.0, 0.0, -0.75, 0.0, 1.0, 0.75, -1.0, -0.5, -0.25, -0.75, -0.5, 0.75, -0.25, -0.5, 0.25, -0.75, -0.75, -1.0, 1.0, -0.75, 1.0, -0.75, 0.75, 0.25, -0.25, 0.75, -0.75, -0.25, 0.25, -0.25, 0.5, -1.0, -1.0, -1.0, -0.75, 0.75, -1.0, -0.25, 0.0, 0.75, 0.25, 0.0, -0.75, 0.0, -0.25, 1.0, 0.5, 0.75, ]);
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder107.pushDebugGroup("mygroupmarker")
    const pipeline_layout0033 = device00.createPipelineLayout({ 
        label: "pipeline_layout0033",
        bindGroupLayouts: [bind_group_layout004]
    });
    const command_buffer500 = command_encoder500.finish();
    const array10 = new Float32Array([-0.5, 0.75, 0.0, 1.0, 0.5, 0.25, -0.75, 1.0, -0.5, 0.25, -1.0, 1.0, 0.75, -0.5, -0.25, 0.0, 0.0, 0.75, 0.5, -0.5, -0.5, -0.5, -0.5, 0.25, -0.5, 0.75, -1.0, -0.25, 0.5, -0.75, 0.0, 0.25, 0.5, 0.75, 0.5, -0.5, 0.5, 0.5, 0.75, -0.75, 0.5, 1.0, 1.0, -1.0, 0.0, 0.0, 0.25, 0.5, 0.5, 0.5, 0.75, -0.25, 0.0, -0.25, 0.75, 0.5, 0.75, 1.0, -0.75, -0.5, 0.0, -0.5, 0.5, -0.75, 0.5, 0.5, -0.25, -0.25, 0.75, -0.25, -0.5, 1.0, -0.5, -0.5, 0.5, 0.75, -0.75, 1.0, -0.75, -1.0, -1.0, -0.5, 0.25, 0.0, -0.25, -0.75, -1.0, 1.0, 0.75, -1.0, -0.25, -0.25, -0.75, 0.5, -0.75, -0.25, -0.25, 0.75, -0.75, 0.0, ]);
    const pipeline_layout0034 = device00.createPipelineLayout({ 
        label: "pipeline_layout0034",
        bindGroupLayouts: [bind_group_layout002]
    });
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    device30.queue.submit([command_buffer302, ]);
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
    
    const pipeline_layout0035 = device00.createPipelineLayout({ 
        label: "pipeline_layout0035",
        bindGroupLayouts: [bind_group_layout005]
    });
    const pipeline_layout0036 = device00.createPipelineLayout({ 
        label: "pipeline_layout0036",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    command_encoder105.pushDebugGroup("mygroupmarker")
    const command_buffer0011 = command_encoder0011.finish();
    const pipeline_layout0037 = device00.createPipelineLayout({ 
        label: "pipeline_layout0037",
        bindGroupLayouts: [bind_group_layout006]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    command_encoder303.pushDebugGroup("mygroupmarker")
    const pipeline_layout0038 = device00.createPipelineLayout({ 
        label: "pipeline_layout0038",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const bind_group_layout009 = device00.createBindGroupLayout({ 
        label: "bind_group_layout009",
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
        bindGroupLayouts: [bind_group_layout007]
    });
    command_encoder107.popDebugGroup()
    const pipeline_layout0040 = device00.createPipelineLayout({ 
        label: "pipeline_layout0040",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout304]
    });
    const pipeline_layout0041 = device00.createPipelineLayout({ 
        label: "pipeline_layout0041",
        bindGroupLayouts: [bind_group_layout007]
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
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_buffer107 = command_encoder107.finish();
    const pipeline_layout0042 = device00.createPipelineLayout({ 
        label: "pipeline_layout0042",
        bindGroupLayouts: [bind_group_layout009]
    });
    const pipeline_layout0043 = device00.createPipelineLayout({ 
        label: "pipeline_layout0043",
        bindGroupLayouts: [bind_group_layout002]
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    const pipeline_layout3017 = device30.createPipelineLayout({ 
        label: "pipeline_layout3017",
        bindGroupLayouts: [bind_group_layout305]
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
    const bind_group_layout0010 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0010",
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
    
    
    const bind_group_layout0011 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0011",
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    const command_buffer101 = command_encoder101.finish();
    const pipeline_layout0044 = device00.createPipelineLayout({ 
        label: "pipeline_layout0044",
        bindGroupLayouts: [bind_group_layout0010]
    });
    
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
    const pipeline_layout0045 = device00.createPipelineLayout({ 
        label: "pipeline_layout0045",
        bindGroupLayouts: [bind_group_layout009]
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    command_encoder0010.popDebugGroup()
    const pipeline_layout0046 = device00.createPipelineLayout({ 
        label: "pipeline_layout0046",
        bindGroupLayouts: [bind_group_layout000]
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
    const command_encoder0012 = device00.createCommandEncoder({ label: "command_encoder0012" });
    const pipeline_layout3018 = device30.createPipelineLayout({ 
        label: "pipeline_layout3018",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    
    const pipeline_layout3019 = device30.createPipelineLayout({ 
        label: "pipeline_layout3019",
        bindGroupLayouts: [bind_group_layout300]
    });
    device10.queue.submit([command_buffer103, command_buffer107, ]);
    const array11 = new Float32Array([-0.5, 0.0, -0.5, -1.0, 1.0, 1.0, 0.5, -0.5, 1.0, -0.75, -1.0, 0.75, 0.75, 0.25, -0.5, -0.5, 0.25, 0.0, 0.0, -1.0, -0.75, -0.25, -1.0, 0.25, -1.0, -0.5, -1.0, -1.0, 0.0, 0.0, 0.25, 1.0, 0.0, 1.0, 1.0, -0.5, 0.25, 0.5, -0.75, -0.5, 0.25, -0.75, -0.25, 1.0, -0.5, -1.0, -1.0, 0.0, 0.5, 0.5, -0.75, 0.75, 1.0, -0.25, -1.0, -1.0, -0.25, 0.0, 0.0, -0.25, 0.75, 0.5, 0.75, -0.75, -0.5, -0.5, 1.0, 0.25, 0.5, -0.75, -0.75, 1.0, 0.0, -0.25, -0.5, -0.25, 1.0, -1.0, -0.25, 0.75, 0.75, 0.0, -1.0, 1.0, -0.75, 1.0, -0.25, -0.5, 1.0, 0.0, -0.25, 0.75, -1.0, 0.25, 1.0, 0.25, -0.5, 0.75, -0.5, 0.0, ]);
    const pipeline_layout3020 = device30.createPipelineLayout({ 
        label: "pipeline_layout3020",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder304.pushDebugGroup("mygroupmarker")
    device50.queue.submit([command_buffer500, ]);
    const pipeline_layout0047 = device00.createPipelineLayout({ 
        label: "pipeline_layout0047",
        bindGroupLayouts: [bind_group_layout008]
    });
    const pipeline_layout0048 = device00.createPipelineLayout({ 
        label: "pipeline_layout0048",
        bindGroupLayouts: [bind_group_layout0011]
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout3021 = device30.createPipelineLayout({ 
        label: "pipeline_layout3021",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    
    const pipeline_layout0049 = device00.createPipelineLayout({ 
        label: "pipeline_layout0049",
        bindGroupLayouts: [bind_group_layout005]
    });
    const pipeline_layout0050 = device00.createPipelineLayout({ 
        label: "pipeline_layout0050",
        bindGroupLayouts: [bind_group_layout006]
    });
    command_encoder501.popDebugGroup()
    const command_buffer104 = command_encoder104.finish();
    device20.queue.submit([command_buffer200, ]);
    
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    const pipeline_layout0051 = device00.createPipelineLayout({ 
        label: "pipeline_layout0051",
        bindGroupLayouts: [bind_group_layout0011]
    });
    command_encoder004.popDebugGroup()
    command_encoder105.popDebugGroup()
    const pipeline_layout0052 = device00.createPipelineLayout({ 
        label: "pipeline_layout0052",
        bindGroupLayouts: [bind_group_layout006]
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder105.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout0053 = device00.createPipelineLayout({ 
        label: "pipeline_layout0053",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder303.popDebugGroup()
    const pipeline_layout0054 = device00.createPipelineLayout({ 
        label: "pipeline_layout0054",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    const pipeline_layout0055 = device00.createPipelineLayout({ 
        label: "pipeline_layout0055",
        bindGroupLayouts: [bind_group_layout003]
    });
    command_encoder106.popDebugGroup()
    const pipeline_layout0056 = device00.createPipelineLayout({ 
        label: "pipeline_layout0056",
        bindGroupLayouts: [bind_group_layout006]
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const command_buffer106 = command_encoder106.finish();
    
    
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    command_encoder304.popDebugGroup()
    command_encoder0010.pushDebugGroup("mygroupmarker")
    const pipeline_layout0057 = device00.createPipelineLayout({ 
        label: "pipeline_layout0057",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const pipeline_layout0058 = device00.createPipelineLayout({ 
        label: "pipeline_layout0058",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout3022 = device30.createPipelineLayout({ 
        label: "pipeline_layout3022",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    
    command_encoder501.pushDebugGroup("mygroupmarker")
    const pipeline_layout0059 = device00.createPipelineLayout({ 
        label: "pipeline_layout0059",
        bindGroupLayouts: [bind_group_layout003]
    });
    device60.pushErrorScope("out-of-memory");
    
    command_encoder502.pushDebugGroup("mygroupmarker")
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    const pipeline_layout3023 = device30.createPipelineLayout({ 
        label: "pipeline_layout3023",
        bindGroupLayouts: [bind_group_layout304]
    });
    const pipeline_layout3024 = device30.createPipelineLayout({ 
        label: "pipeline_layout3024",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout0060 = device00.createPipelineLayout({ 
        label: "pipeline_layout0060",
        bindGroupLayouts: [bind_group_layout002]
    });
    const bind_group_layout306 = device30.createBindGroupLayout({ 
        label: "bind_group_layout306",
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
    const command_buffer303 = command_encoder303.finish();
    const array12 = new Float32Array([0.5, -0.25, -1.0, 0.25, -0.75, 0.75, -0.75, -0.25, 0.25, -0.75, -0.25, 1.0, 1.0, 0.0, -0.75, -0.75, 1.0, 0.0, -0.75, -0.5, 0.75, 0.0, -1.0, -1.0, 0.25, 0.25, 0.0, 0.0, -1.0, 0.25, 0.75, 0.75, 0.0, -0.5, 0.25, -0.75, 1.0, 0.25, 0.5, -0.75, -1.0, 0.75, -0.75, 1.0, 0.0, -0.25, 0.5, -1.0, 0.25, -0.5, -1.0, -0.25, 0.25, 0.75, 0.0, 0.5, -0.25, 0.5, -1.0, 0.25, -1.0, -0.75, 0.75, -1.0, -0.25, -1.0, 1.0, -1.0, 1.0, 0.25, 1.0, 0.25, 0.0, -0.25, 1.0, -0.5, -1.0, 0.25, -1.0, 0.5, 0.75, 0.75, 0.0, 1.0, 1.0, 0.25, 0.5, 0.25, -0.75, 0.5, -0.5, -0.5, -1.0, -0.75, 0.0, -0.75, 0.0, 0.0, 0.75, 0.25, ]);
    
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    const command_buffer304 = command_encoder304.finish();
    const bind_group_layout0012 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0012",
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
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const command_buffer0012 = command_encoder0012.finish();
    const pipeline_layout3025 = device30.createPipelineLayout({ 
        label: "pipeline_layout3025",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout0061 = device00.createPipelineLayout({ 
        label: "pipeline_layout0061",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    command_encoder105.popDebugGroup()
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    const pipeline_layout0062 = device00.createPipelineLayout({ 
        label: "pipeline_layout0062",
        bindGroupLayouts: [bind_group_layout009]
    });
    const pipeline_layout3026 = device30.createPipelineLayout({ 
        label: "pipeline_layout3026",
        bindGroupLayouts: [bind_group_layout306]
    });
    const pipeline_layout0063 = device00.createPipelineLayout({ 
        label: "pipeline_layout0063",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout601]
    });
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
    command_encoder108.pushDebugGroup("mygroupmarker")
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    device10.queue.submit([command_buffer100, ]);
    const pipeline_layout0064 = device00.createPipelineLayout({ 
        label: "pipeline_layout0064",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder502.popDebugGroup()
    const pipeline_layout0065 = device00.createPipelineLayout({ 
        label: "pipeline_layout0065",
        bindGroupLayouts: [bind_group_layout005]
    });
    const sampler0012 = device00.createSampler( { label: "sampler0012" } );
    
    const pipeline_layout0066 = device00.createPipelineLayout({ 
        label: "pipeline_layout0066",
        bindGroupLayouts: [bind_group_layout005]
    });
    const command_encoder0013 = device00.createCommandEncoder({ label: "command_encoder0013" });
    const command_buffer109 = command_encoder109.finish();
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    command_encoder0010.popDebugGroup()
    const command_buffer105 = command_encoder105.finish();
    
    const pipeline_layout0067 = device00.createPipelineLayout({ 
        label: "pipeline_layout0067",
        bindGroupLayouts: [bind_group_layout0011]
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    command_encoder108.popDebugGroup()
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder501.popDebugGroup()
    device50.pushErrorScope("validation");
    const pipeline_layout0068 = device00.createPipelineLayout({ 
        label: "pipeline_layout0068",
        bindGroupLayouts: [bind_group_layout004]
    });
    const command_buffer501 = command_encoder501.finish();
    device50.queue.submit([command_buffer501, ]);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const pipeline_layout3027 = device30.createPipelineLayout({ 
        label: "pipeline_layout3027",
        bindGroupLayouts: [bind_group_layout305]
    });
    const pipeline_layout0069 = device00.createPipelineLayout({ 
        label: "pipeline_layout0069",
        bindGroupLayouts: [bind_group_layout0012]
    });
    const command_buffer600 = command_encoder600.finish();
    device00.queue.submit([command_buffer008, command_buffer0011, ]);
    command_encoder0010.pushDebugGroup("mygroupmarker")
    const bind_group_layout0013 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0013",
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
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const pipeline_layout0070 = device00.createPipelineLayout({ 
        label: "pipeline_layout0070",
        bindGroupLayouts: [bind_group_layout008]
    });
    const sampler0013 = device00.createSampler( { label: "sampler0013" } );
    const command_buffer004 = command_encoder004.finish();
    const pipeline_layout3028 = device30.createPipelineLayout({ 
        label: "pipeline_layout3028",
        bindGroupLayouts: [bind_group_layout304]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout0071 = device00.createPipelineLayout({ 
        label: "pipeline_layout0071",
        bindGroupLayouts: [bind_group_layout009]
    });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout0072 = device00.createPipelineLayout({ 
        label: "pipeline_layout0072",
        bindGroupLayouts: [bind_group_layout0013]
    });
    const pipeline_layout3029 = device30.createPipelineLayout({ 
        label: "pipeline_layout3029",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout0073 = device00.createPipelineLayout({ 
        label: "pipeline_layout0073",
        bindGroupLayouts: [bind_group_layout009]
    });
    
    device30.queue.submit([command_buffer304, ]);
    
    const command_encoder1010 = device10.createCommandEncoder({ label: "command_encoder1010" });
    const command_buffer108 = command_encoder108.finish();
    const command_buffer502 = command_encoder502.finish();
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    device10.queue.submit([command_buffer108, command_buffer109, ]);
    device00.queue.submit([command_buffer004, command_buffer007, ]);
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
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout602]
    });
    const pipeline_layout0074 = device00.createPipelineLayout({ 
        label: "pipeline_layout0074",
        bindGroupLayouts: [bind_group_layout0012]
    });
    
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout600]
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const pipeline_layout0075 = device00.createPipelineLayout({ 
        label: "pipeline_layout0075",
        bindGroupLayouts: [bind_group_layout0012]
    });
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout600]
    });
    const pipeline_layout0076 = device00.createPipelineLayout({ 
        label: "pipeline_layout0076",
        bindGroupLayouts: [bind_group_layout002]
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const pipeline_layout0077 = device00.createPipelineLayout({ 
        label: "pipeline_layout0077",
        bindGroupLayouts: [bind_group_layout0011]
    });
    const pipeline_layout0078 = device00.createPipelineLayout({ 
        label: "pipeline_layout0078",
        bindGroupLayouts: [bind_group_layout0010]
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout3030 = device30.createPipelineLayout({ 
        label: "pipeline_layout3030",
        bindGroupLayouts: [bind_group_layout304]
    });
    const pipeline_layout3031 = device30.createPipelineLayout({ 
        label: "pipeline_layout3031",
        bindGroupLayouts: [bind_group_layout306]
    });
    const pipeline_layout3032 = device30.createPipelineLayout({ 
        label: "pipeline_layout3032",
        bindGroupLayouts: [bind_group_layout303]
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const bind_group_layout307 = device30.createBindGroupLayout({ 
        label: "bind_group_layout307",
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
    const pipeline_layout0079 = device00.createPipelineLayout({ 
        label: "pipeline_layout0079",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout0080 = device00.createPipelineLayout({ 
        label: "pipeline_layout0080",
        bindGroupLayouts: [bind_group_layout006]
    });
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout500]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const pipeline_layout0081 = device00.createPipelineLayout({ 
        label: "pipeline_layout0081",
        bindGroupLayouts: [bind_group_layout006]
    });
    const bind_group_layout308 = device30.createBindGroupLayout({ 
        label: "bind_group_layout308",
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
    const pipeline_layout0082 = device00.createPipelineLayout({ 
        label: "pipeline_layout0082",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const command_buffer201 = command_encoder201.finish();
    device30.queue.submit([command_buffer303, ]);
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const pipeline_layout0083 = device00.createPipelineLayout({ 
        label: "pipeline_layout0083",
        bindGroupLayouts: [bind_group_layout007]
    });
    
    device50.queue.submit([command_buffer502, ]);
    const command_buffer503 = command_encoder503.finish();
    device00.queue.submit([command_buffer0012, ]);
    const command_buffer1010 = command_encoder1010.finish();
    command_encoder0010.popDebugGroup()
    command_encoder009.popDebugGroup()
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    device20.queue.submit([command_buffer201, ]);
    const command_buffer202 = command_encoder202.finish();
    const command_buffer009 = command_encoder009.finish();
    const command_buffer0010 = command_encoder0010.finish();
    command_encoder102.popDebugGroup()
    const command_buffer504 = command_encoder504.finish();
    device60.queue.submit([command_buffer600, ]);
    const command_buffer305 = command_encoder305.finish();
    const command_buffer102 = command_encoder102.finish();
    device10.queue.submit([command_buffer102, command_buffer104, command_buffer106, ]);
    const command_buffer203 = command_encoder203.finish();
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    device10.queue.submit([command_buffer1010, ]);
    device30.queue.submit([command_buffer305, ]);
    device50.queue.submit([command_buffer503, ]);
    device00.queue.submit([command_buffer009, ]);
    const command_buffer0013 = command_encoder0013.finish();
}