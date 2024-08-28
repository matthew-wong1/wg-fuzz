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
    
    const array0 = new Float32Array([-1.0, 0.0, -0.75, -0.75, -1.0, 0.75, 0.5, -0.25, -0.75, 0.5, 0.0, 0.75, -0.5, 0.0, 0.75, -0.75, 0.75, 0.75, 0.0, 0.25, -0.75, 0.25, 0.5, -0.75, 0.25, 0.25, 0.25, 0.75, 0.75, 0.25, 1.0, 0.75, 1.0, -0.75, 0.25, 0.5, -0.5, 0.0, 1.0, 0.25, -1.0, 0.5, 0.0, 0.25, 0.5, 0.5, -0.5, -0.25, 1.0, 0.75, 0.5, -0.75, 0.0, 1.0, -0.5, -1.0, -0.5, -0.5, -1.0, -0.25, -0.75, -0.25, 0.25, -0.25, 0.25, -0.25, 0.0, 0.25, 0.0, 0.0, 1.0, 0.5, -0.5, -1.0, 0.5, 0.25, -0.75, -0.75, -0.25, 1.0, -0.25, -0.5, 0.5, 1.0, -1.0, 1.0, -0.75, -0.25, -0.5, 1.0, -0.5, -0.25, -1.0, -0.25, -0.75, 0.75, 0.0, 1.0, 1.0, -0.25, ]);
    
    
    
    const array1 = new Float32Array([-0.75, 0.75, -1.0, -1.0, -0.25, 1.0, -0.75, 0.0, -0.75, 0.0, -0.5, 1.0, -0.25, -0.25, -0.75, 0.5, 0.25, 0.75, -1.0, -1.0, 1.0, -0.25, 0.0, -0.5, 0.0, -0.5, 0.0, -1.0, 0.25, 0.75, -0.5, 0.5, -0.5, 0.5, -0.75, -0.75, -0.25, -0.25, 0.5, -0.75, 0.5, 1.0, -0.5, -0.5, 0.5, 0.25, 0.75, -1.0, -0.25, -0.25, -0.25, -1.0, -0.25, -1.0, 0.5, 0.25, 0.25, 0.25, 0.5, 0.75, 0.75, 1.0, 0.5, 0.5, 1.0, 0.75, 0.25, -0.25, 0.75, -0.25, 1.0, 0.25, 1.0, 0.75, -1.0, -1.0, 0.25, -0.25, -1.0, -0.25, -0.75, 0.75, -0.5, 0.5, 0.25, 0.5, 0.75, -1.0, 0.25, 0.5, 0.75, 0.5, -1.0, -0.5, 0.5, -0.75, -0.5, -0.75, -1.0, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array2 = new Float32Array([-0.75, -0.25, -0.25, -1.0, -1.0, -1.0, -0.5, -1.0, 1.0, 0.0, -0.25, -1.0, -1.0, -1.0, 0.75, 1.0, -0.5, 0.75, 0.75, 0.0, 0.5, -1.0, -0.75, 0.75, 1.0, -0.5, -0.5, -0.5, 1.0, -0.5, -0.25, -0.5, -1.0, 0.25, 0.75, -0.25, 1.0, -0.75, 0.75, -0.5, 0.75, 1.0, 1.0, 0.25, -1.0, 0.5, -1.0, -1.0, -1.0, 0.25, -0.25, -0.75, -0.75, 0.0, -0.5, -0.25, -0.5, 1.0, -1.0, -0.5, 0.75, -0.5, 1.0, -0.75, 0.5, 0.5, -0.75, -0.5, -0.5, -0.75, 0.0, -0.75, 0.5, 1.0, -0.25, 0.5, -1.0, 0.75, -1.0, 0.0, -1.0, -0.25, 0.5, -1.0, 0.75, 0.25, 0.5, -1.0, -0.25, 0.5, 0.75, 0.0, 0.5, 0.5, 1.0, 1.0, 0.5, -0.25, -1.0, -0.25, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
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
    device00.destroy();
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    device20.destroy();
    
    
    const array3 = new Float32Array([0.75, 0.75, 0.0, 0.75, 0.75, 0.0, -0.5, -0.5, 0.25, 1.0, 0.5, 0.75, -1.0, 0.75, -1.0, 0.5, 0.75, 0.0, 0.25, 0.5, 0.75, 0.25, 0.0, 0.5, 1.0, 0.25, 0.25, -0.75, 1.0, 0.75, 0.5, 1.0, -0.75, 0.5, -1.0, 1.0, 0.5, -1.0, 0.75, 0.5, -0.25, -0.25, 0.5, 0.0, 0.0, -1.0, 0.25, 0.25, 1.0, 0.0, -0.75, -0.75, 0.5, 1.0, -0.25, 0.75, 1.0, -0.5, 1.0, -0.25, 1.0, -1.0, -0.5, -0.5, -0.75, -1.0, 0.5, 0.75, -1.0, 1.0, 0.0, 0.75, -0.25, -0.5, 0.75, 0.0, 0.25, -0.5, -0.75, 0.75, -1.0, -0.75, -0.75, -0.5, -0.75, -0.75, -1.0, 0.75, -0.25, 0.75, 1.0, 0.25, -0.25, -0.5, -1.0, 1.0, 0.5, -0.75, 1.0, 0.75, ]);
    const array4 = new Float32Array([-0.25, -0.5, 1.0, 0.25, 0.75, -0.25, 0.0, 0.0, -0.25, -0.5, -0.25, -0.75, -0.75, 0.75, 0.75, -0.25, 0.0, -0.5, -0.75, -0.75, 0.0, 0.75, -0.25, 0.75, -1.0, 0.25, -0.5, -0.25, 0.75, -1.0, -0.25, 1.0, -0.25, -0.25, 1.0, -0.25, 1.0, 0.0, -1.0, 0.75, 0.5, 0.5, 1.0, 0.25, -0.75, 0.75, 1.0, 0.75, 1.0, -0.75, -0.25, -0.5, -0.25, 0.5, -1.0, -1.0, -1.0, 0.5, 0.75, -0.75, 1.0, 0.25, -0.75, -0.25, -0.5, -0.25, 0.0, 0.75, -0.25, 1.0, -0.25, -0.25, 0.5, -0.75, 0.0, 1.0, 0.0, 1.0, 0.5, -0.75, -0.25, -0.5, 0.75, 0.5, 0.75, -1.0, 0.75, 0.75, 1.0, 1.0, 1.0, 1.0, -0.5, -0.25, 0.75, -0.5, 0.75, -0.75, -0.75, 1.0, ]);
    
    const array5 = new Float32Array([1.0, 0.5, -1.0, 1.0, -0.25, 0.25, -0.5, 1.0, -0.75, -1.0, 0.75, 1.0, 1.0, -0.5, -0.75, 0.25, 0.0, 1.0, 1.0, 0.25, -0.25, 1.0, 0.0, 0.25, 1.0, 0.75, 0.75, 0.75, 0.75, -0.75, -0.5, -0.75, 0.25, 1.0, -0.25, -1.0, 0.5, 1.0, -0.75, -0.25, 0.0, -0.25, -0.5, 0.5, 0.75, 0.75, -0.25, -0.25, 0.75, 0.25, -0.5, 0.25, 0.75, 0.75, 0.0, 0.25, 0.25, -0.25, -0.5, 1.0, -0.5, 0.0, 0.25, -0.25, -0.75, -0.75, -1.0, 0.5, -0.75, 0.0, 0.75, -0.75, -0.5, -0.75, 1.0, 0.5, -0.75, 0.75, -0.25, -1.0, 1.0, 0.0, 0.75, -0.5, -0.25, -0.75, 1.0, -0.5, 0.0, 0.5, 0.0, 1.0, -0.25, 0.0, -1.0, -0.75, -0.25, -0.75, 1.0, 0.0, ]);
    const array6 = new Float32Array([-0.75, 0.75, 0.0, -0.5, 1.0, 0.5, 0.5, 0.25, -0.25, -0.25, 0.75, 0.25, -0.25, -1.0, 0.75, -0.5, 0.75, -0.25, 0.75, 1.0, 0.25, -0.25, 1.0, 1.0, -1.0, -0.5, 0.25, -0.25, 0.75, -0.5, -1.0, -0.75, 1.0, -0.25, 1.0, 0.0, 0.0, 0.75, -0.75, 1.0, -1.0, 1.0, 0.75, 0.5, 1.0, 1.0, -0.75, -0.75, -1.0, 0.25, -0.5, -0.5, -0.25, 0.75, 0.25, -1.0, -0.75, 1.0, -1.0, 0.25, 0.25, -0.25, 0.5, -0.5, 0.5, -0.75, 0.0, 0.5, -0.75, 0.5, 0.0, -0.75, -0.75, -0.75, 0.5, 1.0, -0.25, 0.0, -0.25, 0.25, 1.0, 0.5, -0.5, -0.75, 1.0, 1.0, 0.0, -0.5, -0.25, 0.25, 0.75, -1.0, -0.25, -0.25, -0.5, -0.25, -0.5, 0.0, 0.75, -0.75, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array7 = new Float32Array([0.0, 0.25, 0.25, 0.25, 0.25, -0.25, 1.0, -0.25, -0.25, -1.0, 0.0, -0.75, -1.0, 0.0, -1.0, -1.0, 0.0, 0.0, -0.5, 0.0, 0.75, 0.75, 0.75, 0.75, 0.0, 0.0, -0.75, 0.75, -0.5, 0.5, 0.25, 1.0, 0.5, 0.75, -0.25, -0.25, -1.0, -0.5, -0.75, 0.75, -0.75, 1.0, 0.0, 1.0, 0.5, 0.75, 0.75, 0.5, -1.0, -0.75, -1.0, -0.5, -1.0, -0.25, -0.5, 1.0, 1.0, 0.5, -0.75, -0.25, -0.75, 0.0, 0.75, 1.0, -0.75, 1.0, 0.5, 1.0, -1.0, -0.5, 0.25, -0.5, 0.75, -1.0, -0.5, 0.25, -0.75, -0.25, 0.0, -0.25, 0.0, -0.5, -0.25, 0.5, -0.5, 0.75, -0.25, 0.25, 0.75, 0.25, 0.25, -1.0, 1.0, 0.75, -0.75, 1.0, -1.0, -0.75, 0.25, 0.5, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    const array8 = new Float32Array([0.75, 1.0, 0.5, 1.0, -0.5, -0.25, -0.25, 1.0, -0.5, 0.25, 1.0, -0.25, 1.0, -1.0, 0.25, -0.25, 0.5, 0.25, 0.5, -0.5, -0.5, -1.0, 0.0, 1.0, -0.25, -0.5, 0.25, -0.5, -0.5, 0.25, 1.0, -0.5, 0.75, 0.75, 0.25, 0.5, -1.0, 1.0, 0.5, 1.0, -1.0, 1.0, 1.0, -0.5, 0.75, -1.0, -1.0, -1.0, -0.25, -0.25, -0.5, 1.0, -0.75, 0.5, -0.5, 1.0, 0.25, -0.75, -0.75, 0.0, -0.75, -1.0, -0.5, -0.75, 1.0, 0.5, 0.25, -0.25, 0.75, -0.5, -0.5, -1.0, -0.75, 0.0, -1.0, -1.0, 0.75, -0.25, -1.0, -1.0, -0.25, -0.25, 0.75, -0.5, -1.0, -0.25, -1.0, 0.0, 0.0, -0.75, 0.25, 0.5, -1.0, -0.75, 0.75, -0.75, 0.25, 0.25, 0.75, -1.0, ]);
    command_encoder300.popDebugGroup()
    buffer300.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const array9 = new Float32Array([0.25, 0.5, 1.0, 1.0, -0.75, 0.5, -1.0, 0.0, 0.25, 1.0, -0.5, 1.0, -0.75, 0.75, 1.0, -0.75, -1.0, -0.25, -0.25, -0.5, -0.25, -0.5, 1.0, -1.0, 0.75, -0.5, 0.0, -0.25, -0.75, 0.5, -0.5, -1.0, 0.0, 1.0, 1.0, 0.5, -0.75, 0.25, -0.25, 0.0, 0.0, -0.5, 0.5, -1.0, -0.5, -0.25, 0.75, 0.5, 0.5, -0.25, 0.0, -0.25, 0.75, 0.75, 0.25, 0.0, 1.0, 1.0, -0.75, 0.75, 0.5, -0.75, 1.0, -1.0, -0.75, -0.25, 0.5, -1.0, 0.0, -0.5, 0.0, 0.25, 1.0, 0.5, -1.0, -0.25, -0.25, -0.5, 0.5, 0.0, 0.25, 0.5, 0.0, -1.0, -0.5, 1.0, -0.75, -0.5, 0.5, -1.0, 0.5, 0.0, -0.25, 0.0, 0.25, -0.25, 0.25, -0.5, -0.25, 0.25, ]);
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer300 = command_encoder300.finish();
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    
    
    
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array10 = new Float32Array([-1.0, -0.75, 0.5, -0.5, -0.25, 0.0, -0.25, 0.0, 0.25, -1.0, -0.25, 1.0, -0.25, -0.75, 0.0, -0.25, -0.5, 0.25, -1.0, -1.0, 0.75, -0.25, -0.5, 0.25, 0.25, -1.0, 0.5, -0.25, 1.0, 1.0, -0.5, 0.25, 0.25, 1.0, -0.5, 0.25, -0.75, 1.0, -0.25, 1.0, -0.75, 0.0, 0.75, -0.5, 1.0, 1.0, 1.0, 1.0, 0.25, -0.5, -1.0, 0.5, 0.0, 0.25, -0.5, -0.75, -0.25, 1.0, -0.25, 1.0, 0.5, -1.0, -1.0, -0.75, 0.5, -0.5, -0.75, 0.5, -0.5, 0.25, -0.5, 1.0, -0.25, 0.0, 0.75, -1.0, -0.5, 0.25, 0.75, -0.5, -0.75, -0.25, -0.5, 0.5, 0.25, -1.0, 1.0, 0.75, -0.5, -0.5, 0.5, 1.0, 0.0, -1.0, 1.0, -0.25, -0.25, -0.25, -0.75, -0.25, ]);
    
    buffer400.destroy()
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
    command_encoder301.popDebugGroup()
    const array11 = new Float32Array([1.0, 0.5, 0.25, -0.5, 0.5, 0.5, -0.5, 0.0, -1.0, -0.75, 1.0, -0.75, 0.0, -1.0, -0.75, -1.0, 0.25, 0.25, 0.5, -0.5, 0.0, 1.0, -0.25, -0.75, 1.0, 1.0, 0.5, -0.75, 0.75, 0.0, 0.5, -0.25, 0.5, -0.25, 0.75, -0.75, 1.0, 1.0, 0.0, 0.5, 1.0, 0.25, 0.75, 0.25, -0.25, 0.0, -1.0, -1.0, 0.5, -0.25, -1.0, -0.25, 0.0, 0.5, -0.75, -0.5, 0.0, 0.25, 0.0, -0.5, -0.25, -0.75, -0.25, 0.25, 0.5, -0.25, -0.5, -0.5, -0.25, 0.5, 0.25, -0.5, 1.0, -0.5, -1.0, 0.0, -1.0, 0.5, 0.25, 0.25, 0.25, -1.0, 0.5, -0.25, 0.0, -0.75, 1.0, 0.0, -0.25, -0.75, 1.0, 0.5, -0.5, 0.5, -0.5, -1.0, -0.5, 0.5, -0.75, 0.75, ]);
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device40.destroy();
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_bundle_encoder300.popDebugGroup();
    command_encoder302.insertDebugMarker("mymarker");
    const array12 = new Float32Array([0.5, 1.0, 0.75, 1.0, 0.0, 0.25, -0.75, -0.75, -0.5, 0.5, -1.0, 0.0, -1.0, 0.25, 0.75, -0.25, -0.5, -0.25, 0.5, 0.75, 0.25, 0.25, 0.5, -1.0, 0.5, 1.0, 1.0, 1.0, 0.25, 0.25, 0.25, -0.25, -0.75, -0.25, -0.5, 0.0, -1.0, 0.75, -0.75, 1.0, -0.75, 0.0, 0.5, 0.75, -0.25, -1.0, -0.5, 0.75, 0.5, -0.75, 0.25, 0.0, 0.0, -0.25, 0.0, -0.25, 1.0, 0.25, 0.0, -1.0, 0.75, 0.5, 0.5, -0.5, -0.25, 0.75, 0.75, 1.0, 0.0, -0.25, -0.75, -0.75, 0.75, 0.0, 0.5, -0.75, -0.75, -0.75, -1.0, 0.75, -0.25, 1.0, 0.5, 1.0, 0.25, -0.25, 0.5, 1.0, 0.0, 0.75, 0.5, -0.25, 1.0, 0.0, -0.25, -0.5, -1.0, 0.25, -0.25, 0.5, ]);
    command_encoder302.insertDebugMarker("mymarker");
    
    
    buffer302.destroy()
    
    render_bundle_encoder301.popDebugGroup();
    const command_buffer301 = command_encoder301.finish();
    command_encoder302.insertDebugMarker("mymarker");
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    command_encoder302.insertDebugMarker("mymarker");
    command_encoder302.popDebugGroup()
    
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
    command_encoder302.insertDebugMarker("mymarker");
    const array13 = new Float32Array([-1.0, 1.0, 0.25, 0.5, 0.75, 0.5, -1.0, 0.25, 1.0, -1.0, -0.25, 0.25, -0.5, 1.0, 0.25, 0.5, -0.25, -0.5, 0.5, 0.5, 0.25, -0.25, 0.0, -0.75, 1.0, 0.0, -0.25, -0.75, 0.25, -0.25, 0.5, -0.5, -0.25, -0.5, 0.75, -0.75, 1.0, 0.25, -0.75, -0.25, -0.5, -1.0, -0.75, 1.0, 0.0, 0.75, 0.75, -1.0, -0.25, 0.25, -0.75, 0.0, 1.0, -0.75, 0.25, 0.0, -0.75, -0.5, -0.5, 0.5, -0.5, -1.0, 0.25, 0.25, 0.5, -0.75, 0.5, 0.0, -0.5, -0.25, 0.25, 0.0, 0.75, -0.25, 0.0, 0.25, 0.25, -0.75, -1.0, 0.0, 0.75, 0.25, -1.0, 0.5, 0.0, 0.5, -0.25, -1.0, 0.5, -0.25, -0.5, -0.5, -0.75, 0.5, 0.75, -0.75, 0.5, 0.25, -0.5, 0.25, ]);
    render_bundle_encoder301.popDebugGroup();
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder300.popDebugGroup();
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
    
    
    buffer301.destroy()
    const array14 = new Float32Array([0.5, 0.0, 0.5, 0.25, -0.75, -0.25, -0.75, -0.25, -1.0, -0.25, -0.75, 1.0, 0.75, -0.25, 0.0, -0.5, 1.0, -0.5, 1.0, 0.5, -0.25, -0.5, -0.75, -1.0, -0.25, 0.25, 0.75, 0.0, -0.25, -0.25, 0.5, -1.0, -0.5, -1.0, -0.25, -0.75, -0.5, 0.25, -1.0, 0.5, 1.0, 0.5, -1.0, -1.0, -0.5, 0.5, -0.75, 0.0, -0.5, -0.75, -0.25, -0.25, -0.75, -0.75, 0.25, 0.75, -0.75, -0.25, 1.0, 0.25, -0.25, 0.0, 0.0, 0.75, -0.5, 0.25, 0.0, 0.5, -0.5, 0.75, 0.75, -1.0, 0.0, -0.5, 0.0, 0.25, -0.5, 0.0, -1.0, -0.75, -0.75, 0.75, 0.0, 1.0, 0.5, -0.5, -0.75, -0.75, 0.0, 0.0, 1.0, 0.25, -0.75, 0.25, 0.5, -0.75, -0.5, -0.25, 0.5, -0.25, ]);
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder302.insertDebugMarker("mymarker");
    
    
    
    
    
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer303.destroy()
    
    const array15 = new Float32Array([-0.75, -0.5, 0.0, 0.25, -0.5, -0.25, 1.0, 0.5, 0.75, 0.5, 0.25, -0.75, 0.5, 0.5, 1.0, 0.0, 0.5, 0.25, 0.0, -0.25, -1.0, 0.25, -0.25, 0.0, 1.0, -0.5, -1.0, 0.0, 0.75, 0.75, 1.0, -0.25, 0.25, -0.75, 0.5, 0.75, -0.25, 0.25, -0.5, -0.5, 0.0, 0.5, 0.75, -0.75, -0.25, 0.75, -0.25, -0.25, 0.5, 0.0, -0.25, 0.5, 0.5, 0.75, -1.0, -1.0, -0.75, 0.25, -0.5, 0.5, -0.75, 0.0, 0.5, -0.5, -1.0, 0.0, -0.25, -0.5, -1.0, -0.25, 0.75, -0.75, 0.5, -0.5, 0.75, 0.0, -1.0, 0.75, 1.0, -0.5, -1.0, 0.75, 0.75, 1.0, 1.0, 1.0, 1.0, -0.25, -0.5, -0.75, 1.0, 0.0, -0.5, 0.25, -0.5, -0.5, 0.75, 1.0, -0.25, -0.75, ]);
    
    command_encoder303.pushDebugGroup("mygroupmarker")
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    
    const array16 = new Float32Array([1.0, 1.0, 1.0, 1.0, 1.0, -1.0, 0.5, 0.75, -0.25, -1.0, 0.0, -0.75, -0.5, -0.75, -0.5, -1.0, 0.75, -0.75, 0.5, -0.5, 0.75, 0.25, 0.0, 0.25, -0.75, -0.75, -0.5, 0.25, 0.0, -0.5, -0.5, -1.0, -0.5, -0.75, 0.25, -0.25, 0.25, -0.25, 0.5, 0.25, -1.0, -0.25, 0.75, 0.5, -0.5, 0.5, -0.75, -0.5, 0.0, -0.5, 1.0, 0.5, 0.25, -1.0, 0.0, -0.5, 0.75, -0.75, 1.0, 0.5, -1.0, -0.5, 1.0, -0.5, 0.5, 0.25, 0.0, -0.25, -1.0, 1.0, -1.0, 0.5, 1.0, 0.0, -1.0, -0.5, -0.5, 0.5, -1.0, -0.25, 0.75, -1.0, 0.75, 0.25, 0.25, -0.25, -0.25, 0.75, 0.25, 0.75, 0.25, 0.75, 0.75, 0.5, -1.0, 0.0, 1.0, 0.75, -0.5, -1.0, ]);
    render_bundle_encoder302.pushDebugGroup("group_marker");
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
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer306, 0, array3, 0, array3.length);
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder303.copyBufferToBuffer(
        buffer307,
        0,
        buffer306,
        0,
        400
    );
    device30.queue.writeBuffer(buffer306, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer306, 0, array14, 0, array14.length);
    device30.queue.writeBuffer(buffer306, 0, array13, 0, array13.length);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device30.queue.writeBuffer(buffer306, 0, array1, 0, array1.length);
    
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    command_encoder302.copyBufferToBuffer(
        buffer305,
        0,
        buffer306,
        0,
        400
    );
    command_encoder303.insertDebugMarker("mymarker");
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer304.destroy()
    command_encoder303.popDebugGroup()
    command_encoder302.insertDebugMarker("mymarker");
    
    
    command_encoder302.clearBuffer(buffer306);
    command_encoder302.copyBufferToBuffer(
        buffer307,
        0,
        buffer306,
        0,
        400
    );
    buffer305.destroy()
    command_encoder302.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer306, 0, array14, 0, array14.length);
    device30.queue.writeBuffer(buffer306, 0, array2, 0, array2.length);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    {
        await buffer306.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer306.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer306.unmap();
        console.log(new Float32Array(data));
    }
    
    
    buffer306.destroy()
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    command_encoder303.insertDebugMarker("mymarker");
    
    
    
    buffer309.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
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
    command_encoder303.pushDebugGroup("mygroupmarker")
    
    
    
    
    
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
    buffer307.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    buffer308.destroy()
    render_bundle_encoder600.popDebugGroup();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    
    buffer600.destroy()
    command_encoder302.pushDebugGroup("mygroupmarker")
    render_bundle_encoder302.popDebugGroup();
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder302.popDebugGroup()
    
    
    
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder300.popDebugGroup();
    
    
    
    const command_buffer302 = command_encoder302.finish();
    
    
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
    render_bundle_encoder301.popDebugGroup();
    
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder601.pushDebugGroup("mygroupmarker")
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device60.queue.writeBuffer(buffer601, 0, array14, 0, array14.length);
    command_encoder303.popDebugGroup()
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    command_encoder303.insertDebugMarker("mymarker");
    device60.queue.writeBuffer(buffer601, 0, array13, 0, array13.length);
    
    buffer3010.destroy()
    
    
    
    device60.queue.writeBuffer(buffer601, 0, array10, 0, array10.length);
    
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device60.queue.writeBuffer(buffer601, 0, array9, 0, array9.length);
    command_encoder601.popDebugGroup()
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
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    
    
    command_encoder601.insertDebugMarker("mymarker");
    
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    
    buffer601.destroy()
    
    
    command_encoder303.insertDebugMarker("mymarker");
    
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder600.popDebugGroup();
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    
    
    command_encoder601.insertDebugMarker("mymarker");
    
    
    
    command_encoder601.insertDebugMarker("mymarker");
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const command_buffer303 = command_encoder303.finish();
    device50.destroy();
    buffer602.destroy()
    
    render_bundle_encoder601.popDebugGroup();
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    command_encoder600.popDebugGroup()
    const bind_group_layout309 = device30.createBindGroupLayout({ 
        label: "bind_group_layout309",
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
    
    
    const command_buffer800 = command_encoder800.finish();
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    device70.destroy();
    const command_buffer600 = command_encoder600.finish();
    
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder602.popDebugGroup();
    
    
    
    
    
    
    const bind_group_layout604 = device60.createBindGroupLayout({ 
        label: "bind_group_layout604",
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
    
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeBuffer(buffer3012, 0, array3, 0, array3.length);
    render_bundle_encoder601.popDebugGroup();
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device30.queue.writeBuffer(buffer3012, 0, array15, 0, array15.length);
    
    
    const query308 = device30.createQuerySet({
        label: "query308",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeBuffer(buffer3012, 0, array4, 0, array4.length);
    
    const command_buffer601 = command_encoder601.finish();
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer3012, 0, array1, 0, array1.length);
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    
    device30.queue.writeBuffer(buffer3012, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer3012, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer3012, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer3012, 0, array8, 0, array8.length);
    
    
    device30.queue.writeBuffer(buffer3012, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer3012, 0, array14, 0, array14.length);
    device30.queue.writeBuffer(buffer3012, 0, array5, 0, array5.length);
    render_bundle_encoder301.popDebugGroup();
    
    
    
    
    
    device30.queue.writeBuffer(buffer3012, 0, array11, 0, array11.length);
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    
    
    
    const sampler308 = device30.createSampler( { label: "sampler308" } );
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    buffer3011.destroy()
    device30.queue.writeBuffer(buffer3012, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer3012, 0, array15, 0, array15.length);
    const query309 = device30.createQuerySet({
        label: "query309",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer3012, 0, array11, 0, array11.length);
    device30.queue.writeBuffer(buffer3012, 0, array14, 0, array14.length);
    
    
    
    
    
    
    
    
    
    device30.queue.writeBuffer(buffer3012, 0, array4, 0, array4.length);
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device30.queue.writeBuffer(buffer3012, 0, array5, 0, array5.length);
    
    command_encoder602.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer3012, 0, array16, 0, array16.length);
    device30.queue.writeBuffer(buffer3012, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer3012, 0, array6, 0, array6.length);
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    device30.queue.writeBuffer(buffer3012, 0, array3, 0, array3.length);
    
    const sampler309 = device30.createSampler( { label: "sampler309" } );
    render_bundle_encoder602.popDebugGroup();
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device30.queue.writeBuffer(buffer3012, 0, array6, 0, array6.length);
    
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder600.popDebugGroup();
    const sampler3010 = device30.createSampler( { label: "sampler3010" } );
    device30.queue.writeBuffer(buffer3012, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer3012, 0, array9, 0, array9.length);
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    command_encoder602.popDebugGroup()
    
    device30.queue.writeBuffer(buffer3012, 0, array7, 0, array7.length);
    
    device30.queue.writeBuffer(buffer3012, 0, array11, 0, array11.length);
    command_encoder602.pushDebugGroup("mygroupmarker")
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    buffer3012.destroy()
    const command_buffer801 = command_encoder801.finish();
    command_encoder602.popDebugGroup()
    const command_buffer602 = command_encoder602.finish();
}