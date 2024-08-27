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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const array0 = new Float32Array([1.0, -0.75, 1.0, -0.25, 1.0, 0.0, -0.75, 0.25, -0.25, -0.75, -0.75, -1.0, 0.25, 0.0, 1.0, 0.75, -1.0, -0.5, -0.25, 1.0, 0.75, 0.0, -1.0, -1.0, -0.5, 1.0, 0.5, -0.25, 0.25, 0.0, -0.25, 0.75, -0.25, -0.5, 1.0, -0.75, 0.75, -0.75, -0.25, -0.5, -1.0, 0.5, 1.0, -0.25, 0.75, 0.5, 0.5, -0.5, 0.5, 0.75, 0.75, -0.75, 0.75, -0.75, -1.0, 0.0, -0.25, -0.75, 0.25, 0.0, -0.5, 1.0, 0.75, -0.25, -0.75, -0.25, -0.5, 0.25, -0.75, -0.5, 0.25, 0.0, -0.5, -0.25, -1.0, 0.0, -0.5, -1.0, -0.75, -0.25, 1.0, -0.75, 0.5, 0.75, -1.0, 0.0, -1.0, -0.25, -0.5, 0.25, 0.25, 0.0, 0.0, -1.0, 0.0, 0.5, -1.0, 0.75, 0.75, -0.25, ]);
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    query000.destroy()
    
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    
    buffer000.destroy()
    
    texture000.destroy();
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.destroy();
    const array1 = new Float32Array([-0.75, -0.25, -0.25, -0.75, -1.0, 0.25, 0.75, -1.0, -0.5, 0.5, -0.5, 0.75, -1.0, 0.5, 0.75, 0.5, 0.0, 0.0, 0.0, -0.5, -1.0, 0.5, -0.25, -1.0, -1.0, 0.0, 1.0, -1.0, 0.0, 1.0, -0.5, -0.5, 0.75, 0.5, -0.75, -0.5, 1.0, 1.0, 0.75, -0.25, 0.25, 0.5, 0.5, 0.0, 0.75, 0.5, 0.25, -0.25, 0.75, 0.75, 0.25, 0.75, 0.25, -1.0, 0.5, -0.25, -1.0, -0.5, 0.75, -0.75, 0.25, 0.75, 0.0, -1.0, -0.25, -0.25, 0.5, 0.5, 0.0, 0.0, 1.0, -0.25, 0.25, 0.0, 0.0, 1.0, 0.0, 0.0, 1.0, -0.5, -0.75, -0.5, -0.75, 0.0, 0.0, 0.75, 1.0, -1.0, -1.0, 0.75, 0.25, 1.0, -0.5, 0.25, 0.5, -0.75, -0.5, 0.5, 0.25, -0.25, ]);
    
    
    const array2 = new Float32Array([0.0, 1.0, -0.5, -0.75, -0.75, 0.5, 0.75, 1.0, 0.25, 0.25, -1.0, 0.75, 0.75, 1.0, 0.25, 0.5, 0.0, 0.25, 0.25, -0.5, 0.5, -0.75, -0.25, 1.0, -0.5, -0.75, 1.0, 0.0, 0.75, 0.5, -1.0, -0.75, 0.75, 0.5, 0.75, -0.5, -0.5, 0.0, -0.5, 0.75, -0.25, -0.5, -1.0, -1.0, -1.0, -0.25, 0.25, 0.0, -0.75, 0.25, 0.5, 0.0, 0.5, 0.0, 0.0, 0.75, -0.75, -0.5, 0.5, 0.25, 0.5, -0.25, 0.5, -1.0, 0.75, 0.75, -0.75, 0.75, -0.5, -1.0, 0.25, 0.25, 1.0, 0.25, 1.0, 0.75, 1.0, 0.75, 1.0, -0.5, -0.75, -0.75, -1.0, -0.5, 1.0, -0.25, 0.75, 0.75, 0.0, 0.0, -0.25, 0.25, 0.0, 0.25, -0.5, 1.0, -0.25, 0.25, 0.25, 0.0, ]);
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    device20.destroy();
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    const array3 = new Float32Array([-0.75, 0.25, -1.0, -1.0, -0.25, 0.25, 0.0, 0.5, 0.5, -1.0, 1.0, -0.5, -0.5, 0.5, -0.25, 0.5, 1.0, 0.25, 0.0, -1.0, -1.0, -0.5, 0.0, 0.5, 0.0, -0.5, -1.0, -0.75, 1.0, 0.5, -0.5, 0.5, 1.0, 0.75, -0.5, 0.5, 0.75, -1.0, -1.0, -0.5, -1.0, -0.5, 0.25, -0.25, -1.0, -0.75, 0.0, -1.0, 0.75, 1.0, 0.0, -0.25, 0.25, 0.0, 0.0, 0.0, 0.5, -0.25, -0.5, 0.25, 1.0, -1.0, -0.75, -0.25, 0.25, -0.75, 1.0, 0.75, -0.25, -0.5, -1.0, 1.0, 1.0, 0.75, -0.5, -0.5, 0.75, 0.25, 1.0, 0.75, -0.75, 0.5, 0.0, 1.0, -0.25, 1.0, 0.5, -1.0, 0.0, 0.25, -1.0, -1.0, 0.5, -0.75, -0.5, -0.75, -0.25, -0.25, -1.0, 0.0, ]);
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.pushErrorScope("validation");
    
    
    
    
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
    
    
    
    const array4 = new Float32Array([1.0, -1.0, 0.0, -0.75, -0.5, 0.5, -0.75, -0.5, 0.25, 0.75, -0.5, 0.25, -0.25, -0.25, 0.25, -0.75, 0.0, -0.5, 0.0, -1.0, 1.0, 0.5, -0.75, 0.0, -0.75, 0.5, 1.0, 0.25, -0.5, 0.0, 1.0, -0.25, -0.25, 0.5, 0.0, -1.0, 0.0, -0.5, 1.0, -1.0, -0.75, -0.75, -1.0, 0.0, 0.25, -0.5, 0.0, 1.0, 1.0, -0.75, 0.75, -0.25, -0.25, 0.5, -0.75, 0.5, 0.25, 0.25, 0.0, -0.75, -0.5, 0.25, 0.25, -1.0, 0.5, 0.0, 0.75, -0.75, 0.0, -0.5, 0.0, 0.0, -0.75, 1.0, 0.75, 0.25, -0.25, 0.75, 1.0, -0.25, -0.75, 0.5, 0.25, 0.25, 0.25, -0.75, -0.25, 0.75, 1.0, -0.5, -0.75, 0.5, 0.0, -0.75, 1.0, -0.5, 1.0, -0.5, 0.0, -0.25, ]);
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.destroy();
    
    
    
    
    
    
    device10.pushErrorScope("internal");
    
    
    const array5 = new Float32Array([0.75, -0.75, 0.25, 1.0, -1.0, -0.75, 0.75, -0.5, 0.0, -1.0, 1.0, 1.0, 0.5, 0.75, -0.25, 0.5, -0.5, -0.75, -0.5, 1.0, 0.5, 0.25, -1.0, -0.75, 1.0, -1.0, -0.5, -1.0, 0.75, -0.25, 1.0, 0.0, 1.0, -1.0, 0.75, 0.25, 0.25, -0.25, 0.0, 1.0, 0.75, -1.0, -1.0, 0.75, -1.0, 1.0, 0.75, -0.5, 0.25, -1.0, 0.0, 0.0, 1.0, 0.75, 0.5, 0.5, 0.75, -0.25, 1.0, 0.75, 0.75, 0.25, -0.25, 1.0, 1.0, -1.0, -1.0, 1.0, -0.5, 0.25, -0.5, -0.5, -0.75, 0.0, 0.25, 0.25, -0.5, -0.25, -0.5, 0.25, -0.5, 0.5, -1.0, 0.75, -0.25, -0.5, -0.5, 1.0, 0.5, 0.75, 0.0, 0.75, -0.25, -0.75, -0.25, 1.0, -0.5, -0.75, 0.5, -0.75, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    device00.pushErrorScope("validation");
    
    
    device30.destroy();
    const array6 = new Float32Array([1.0, 0.5, 0.75, -0.75, 0.5, -0.5, 0.5, 1.0, 1.0, -0.5, 1.0, 0.5, 1.0, 0.0, -1.0, -0.75, 0.5, -0.75, 1.0, 0.75, 1.0, -0.75, 0.5, 1.0, 0.5, 0.25, -0.75, 0.75, 0.0, 0.75, 0.5, 1.0, 0.25, -0.75, 1.0, -0.25, 1.0, -1.0, -1.0, 0.0, 0.0, -1.0, -0.25, -0.75, 0.75, 0.0, -0.5, -0.25, 0.25, -0.75, -0.5, 0.75, -0.5, 0.75, -0.75, -1.0, 0.5, -1.0, 0.25, 0.75, -0.25, 0.5, -1.0, -0.5, -0.5, 0.25, -0.75, 0.25, 1.0, 0.0, 1.0, 1.0, -0.5, 0.0, -0.75, 1.0, -0.75, -0.75, -0.5, 0.25, 0.75, 0.75, 0.75, 1.0, 0.0, -0.5, -0.5, -0.25, 0.25, -1.0, -1.0, 0.0, 0.75, 1.0, -0.75, -0.5, -0.5, 0.0, 0.5, 0.75, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array7 = new Float32Array([-0.5, -0.5, 0.5, 0.25, 0.25, -0.75, 0.0, -0.5, 0.5, 1.0, -0.25, -1.0, -1.0, 0.25, 0.5, -0.75, -0.25, -0.25, 0.0, 0.5, 0.25, 0.0, -0.5, -0.5, -0.25, 0.5, -0.75, -0.75, 0.25, -0.25, 0.5, 0.75, 1.0, -1.0, -0.5, 1.0, 0.0, 0.5, -0.75, -0.5, 0.0, 0.25, 0.5, 0.75, 0.5, -0.25, -0.25, -0.75, -1.0, 1.0, -1.0, 1.0, 1.0, -0.75, -0.25, -0.25, 0.0, 0.25, 1.0, -1.0, 0.25, 1.0, 0.0, 0.5, -1.0, -0.25, 0.0, -0.75, 0.25, -0.25, 1.0, -0.25, -0.5, 1.0, 0.75, 0.0, -1.0, 0.25, -0.25, 0.25, -0.75, 1.0, 1.0, -0.25, -0.25, -0.25, 0.5, 0.5, 0.25, -0.5, -0.75, 0.25, 0.25, 0.0, -0.75, -1.0, 0.75, 1.0, -0.25, -1.0, ]);
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    
    const array8 = new Float32Array([-1.0, 0.75, -0.5, 0.0, -0.75, 0.5, -0.25, 0.5, -0.75, -0.5, 1.0, -0.25, 0.75, -0.75, 1.0, -0.75, -0.5, -0.75, -0.75, 0.5, 0.75, 0.75, -1.0, 1.0, 1.0, -1.0, -0.75, 0.25, 1.0, 1.0, -0.5, 0.5, 0.75, -0.75, 0.25, 0.0, 1.0, -1.0, -1.0, 0.25, -1.0, 0.75, -0.75, -0.25, 1.0, 0.5, -0.5, -0.25, -0.75, -0.75, 0.0, -0.75, 0.0, 1.0, 0.0, 0.0, 0.5, -1.0, -0.75, 0.75, 0.5, 0.0, 0.25, -1.0, -0.75, -0.5, 0.0, -0.25, -0.5, 0.25, 0.5, 0.0, -1.0, -1.0, 0.75, -1.0, 0.75, -1.0, -0.25, 0.75, 0.25, -1.0, 0.75, -0.5, 1.0, -0.75, 0.5, 0.25, 0.75, 0.5, -0.75, -0.75, 1.0, 0.5, 1.0, -0.75, 1.0, -1.0, 0.75, 0.0, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    texture400.destroy();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device50.destroy();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device60.queue.writeBuffer(buffer600, 0, array8, 0, array8.length);
    device60.destroy();
    
    
    const array9 = new Float32Array([0.5, 1.0, -0.5, 0.75, 0.75, -1.0, 0.5, -0.25, 0.0, -0.75, 0.5, 1.0, -0.5, 0.5, 1.0, -0.25, -0.75, -1.0, 0.5, 0.25, 1.0, 1.0, 0.25, 0.5, 0.75, 0.25, -0.5, -0.75, -1.0, 1.0, -0.5, 1.0, -0.25, -0.5, -0.25, 0.0, -1.0, -1.0, 0.0, 0.75, 0.75, 0.5, 0.25, 0.75, -0.5, 0.75, 0.75, -0.5, -0.25, -0.75, -0.25, 0.25, 1.0, 0.0, 1.0, 0.0, 0.25, -1.0, -0.75, -0.75, -0.25, 0.0, 0.25, -1.0, 0.0, 0.75, 0.0, 0.75, 0.5, -1.0, 0.0, -0.75, -0.5, -0.75, 1.0, 0.0, -0.75, 0.25, -0.25, -1.0, -1.0, 0.25, 0.5, 0.25, 1.0, -1.0, 1.0, 1.0, -0.75, 0.25, -0.25, -0.25, -0.5, 0.25, -0.5, 0.5, -0.25, 0.25, -0.5, -1.0, ]);
    
    
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array10 = new Float32Array([1.0, -0.5, 0.25, 0.75, 0.25, 0.0, -0.25, -0.25, -1.0, -0.25, 0.0, 0.0, 0.25, -1.0, 1.0, -0.5, 0.0, 0.25, 0.0, -0.75, -0.75, 0.0, 0.0, -0.5, 0.0, -0.5, -0.5, -0.75, 0.0, -0.75, 0.25, 1.0, 0.75, -0.5, 1.0, -0.75, 0.0, -0.25, -0.5, -0.5, 0.75, -0.25, -0.25, -0.25, 1.0, 1.0, 0.5, -1.0, 0.5, 0.5, -0.25, 0.75, 0.75, -0.75, -0.75, 1.0, 0.0, -0.25, -0.75, -0.25, 0.25, 1.0, 0.5, 1.0, -0.5, 1.0, -0.75, -0.75, 1.0, -0.75, 0.25, -0.25, -0.5, 0.5, 0.0, -0.75, 0.0, 0.75, 1.0, 0.0, -0.75, 1.0, 0.25, 0.25, 0.5, -0.5, -1.0, 1.0, -1.0, 0.0, 0.25, -0.25, 0.0, 0.0, 0.25, 0.25, 0.75, -0.75, 1.0, -0.25, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    const array11 = new Float32Array([0.75, 1.0, -0.75, -0.75, 0.5, 0.5, 0.75, 0.0, 0.75, 0.0, 0.25, -0.5, 0.0, -0.75, -0.25, -1.0, -0.5, 1.0, 0.5, -0.5, 0.5, -1.0, 0.0, -0.75, -1.0, 0.0, -0.25, -0.25, 0.75, -0.25, 1.0, -1.0, -0.75, -1.0, -1.0, -0.25, 0.25, 0.75, -0.75, 0.25, 0.25, 0.75, 0.25, -0.75, 1.0, 0.25, 0.75, -0.25, 0.5, 0.75, -1.0, 0.25, 1.0, -0.5, 0.5, 0.75, 1.0, 1.0, -0.5, 0.25, 0.25, -0.5, -1.0, 1.0, 0.0, 0.25, -1.0, 1.0, -0.25, 0.75, 0.5, 0.25, -1.0, 0.5, 0.5, -1.0, 0.25, 0.5, -0.25, 1.0, -0.25, -1.0, -1.0, 0.25, 0.75, 1.0, -0.25, -0.75, 0.0, 0.25, 0.5, 0.0, 0.5, 1.0, 0.75, 0.5, -0.75, 0.25, -0.75, 1.0, ]);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    
    
    
    
    const array12 = new Float32Array([-0.75, -0.75, -1.0, 0.0, 0.5, -0.25, -0.5, 1.0, -0.75, -0.5, 0.75, -0.25, -0.25, -0.25, 0.5, -1.0, -0.25, 0.75, -0.25, 0.75, 1.0, 0.75, 1.0, -0.25, -0.5, 0.25, -0.5, -0.25, 0.75, 0.5, 0.0, 0.25, 0.0, 0.5, -0.75, -1.0, -0.5, 0.25, -0.25, 1.0, 0.75, 0.75, 0.0, 1.0, -0.75, -0.75, 0.5, 0.25, 0.5, 0.75, 0.25, -0.5, -0.75, 0.75, -0.5, 0.5, -0.25, -0.5, -1.0, -0.25, -0.5, 0.0, 0.25, 0.5, 1.0, -0.5, -0.25, -0.25, 0.25, 0.75, -1.0, 0.25, 0.75, -0.5, 0.75, -1.0, 0.5, 0.75, -0.25, -0.5, -0.5, 1.0, -0.5, 0.25, -0.25, 0.25, 0.0, 0.75, 0.0, -1.0, -0.25, 0.75, -0.25, -0.5, 0.5, 0.0, -0.5, -0.25, 0.5, -0.75, ]);
    device40.destroy();
    
    
    
    
    
    
    
    
    device30.destroy();
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device30.destroy();
    
    
    
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
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
    const array13 = new Float32Array([-1.0, 1.0, -0.25, 0.0, -1.0, -0.75, 0.25, 0.75, 0.0, -0.75, 0.25, 0.5, 0.75, -1.0, -0.75, -0.75, -0.75, 0.25, 0.0, 0.25, -0.5, -0.75, -0.5, 0.5, -0.25, -1.0, 0.25, -1.0, -0.25, -0.5, 0.75, -0.25, 0.5, 1.0, -1.0, 0.5, -1.0, 0.25, 1.0, -0.25, -0.5, 0.5, 0.5, 0.75, -0.5, -0.25, 0.0, 0.75, 0.75, 0.25, 0.75, -0.25, 0.25, -1.0, -0.75, -1.0, -0.25, 0.25, -0.25, 0.25, 0.25, -0.5, 1.0, -0.25, -0.25, 0.75, -0.75, 0.25, -1.0, -1.0, 0.5, -0.5, 1.0, 0.0, 0.25, -0.75, 1.0, -1.0, -1.0, 1.0, 0.25, -0.25, 0.75, 0.25, 0.75, 0.5, -0.75, 0.75, 0.5, -0.25, -0.5, 0.25, 0.75, -0.5, -0.75, 0.0, 0.75, -1.0, 0.0, 0.25, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    
    
    const array14 = new Float32Array([-0.25, 0.5, 0.75, -1.0, -0.25, 0.0, 1.0, 1.0, -0.25, -1.0, 0.0, -0.5, -0.25, 1.0, 0.5, -0.75, -0.75, 0.0, 0.0, 0.5, 0.25, -0.5, -0.5, -0.25, 0.5, -0.25, -0.75, -1.0, 0.0, 0.75, -0.75, -0.25, -1.0, -0.25, 0.25, 0.5, 0.5, 0.25, -1.0, 0.0, -0.25, 0.0, 0.5, -0.5, 1.0, -0.25, -0.5, 0.5, 0.0, 0.0, 0.75, 0.25, 0.75, 0.75, -1.0, 0.25, -1.0, 0.0, 1.0, 0.25, -1.0, 0.0, -0.75, 1.0, 0.5, -1.0, -0.5, 0.25, -0.25, -0.25, -0.25, 0.25, 1.0, 0.0, -0.75, 0.0, 0.75, 0.75, -0.75, -0.5, 0.0, 0.25, -0.5, 0.75, 1.0, -1.0, -0.25, 0.25, -0.5, -0.5, 0.25, 0.5, -0.25, -0.5, 0.75, 0.25, -0.5, -0.25, -0.5, 0.25, ]);
    
    
    command_encoder700.insertDebugMarker("mymarker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    device30.destroy();
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    buffer700.destroy()
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    buffer300.destroy()
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    compute_pass_encoder7000.insertDebugMarker("marker")
    compute_pass_encoder7000.insertDebugMarker("marker")
    const array15 = new Float32Array([-0.25, 0.5, 0.75, -0.75, 0.25, -0.5, -0.25, 0.5, 0.25, -0.75, -0.5, 0.25, 0.5, -0.25, 0.5, -0.5, 0.5, 1.0, -0.5, 0.0, 1.0, -0.25, 0.75, -1.0, -0.75, -1.0, -0.25, 0.5, -0.5, 1.0, -0.25, 0.25, 0.25, -1.0, 0.75, -0.5, 1.0, 0.75, 0.5, -0.75, -0.75, -0.5, 0.75, 0.75, -0.75, 0.0, 0.75, 1.0, -0.5, 0.75, 1.0, 1.0, 0.25, 0.75, 0.75, -0.25, -0.5, 0.5, -0.5, -0.25, 0.75, -0.5, 0.0, 0.0, -0.25, -0.25, 0.0, 0.5, 0.0, -1.0, -0.25, 0.5, -0.5, -0.5, 1.0, 0.5, 1.0, 0.5, 1.0, -1.0, 0.5, -0.25, -1.0, -0.25, 0.75, -1.0, 0.0, -0.5, 0.5, -0.5, -0.5, -0.25, 0.0, 1.0, 0.5, -1.0, -0.5, 0.5, -1.0, 1.0, ]);
    
    
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
    
    
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    query701.destroy()
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
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
    const buffer701 = device70.createBuffer({
        label: "buffer701",
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
    
    
    
    buffer701.destroy()
    
    command_encoder700.insertDebugMarker("mymarker");
    compute_pass_encoder7010.insertDebugMarker("marker")
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    query700.destroy()
    compute_pass_encoder7010.insertDebugMarker("marker")
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    
    
    device70.pushErrorScope("out-of-memory");
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    device70.pushErrorScope("out-of-memory");
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    query701.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    device70.queue.writeBuffer(buffer702, 0, array14, 0, array14.length);
    
    {
        await buffer702.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer702.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer702.unmap();
        console.log(new Float32Array(data));
    }
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer100.destroy()
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    compute_pass_encoder7010.insertDebugMarker("marker")
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    buffer702.destroy()
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    command_encoder702.insertDebugMarker("mymarker");
    
    query703.destroy()
    command_encoder702.insertDebugMarker("mymarker");
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    query702.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    compute_pass_encoder7000.insertDebugMarker("marker")
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    command_encoder702.resolveQuerySet(
        query700,
        0,
        32,
        buffer702,
        0
    )
    
    
    query600.destroy()
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    command_encoder702.resolveQuerySet(
        query700,
        0,
        32,
        buffer702,
        0
    )
    const array16 = new Float32Array([0.25, 0.5, 0.5, 0.0, 0.25, 1.0, 0.5, -1.0, 0.0, -0.5, 0.5, -0.25, 0.5, 0.0, 0.25, -0.5, -1.0, 0.0, 0.0, 0.5, 0.25, 1.0, -0.75, -1.0, 1.0, -1.0, 1.0, 0.5, -0.25, -0.75, 0.75, -1.0, 0.0, 0.5, 1.0, -0.5, 0.0, 0.25, 0.5, 0.75, -0.25, -0.25, -0.5, -1.0, -1.0, -0.25, 0.75, -0.75, 0.25, 1.0, -0.75, 0.5, -1.0, 0.0, 0.0, -0.5, 1.0, -0.25, -0.25, 0.75, 0.25, 0.75, 0.0, -1.0, -1.0, -0.25, 0.0, -0.25, 0.5, -0.75, -1.0, 0.75, 0.25, 0.0, 1.0, -0.75, 0.25, 0.0, 0.5, -1.0, -0.5, 1.0, -0.75, 1.0, -1.0, 0.0, -0.25, -0.25, 0.5, 0.75, -0.75, -0.5, 0.75, -0.5, -0.5, -0.25, -0.5, -1.0, 0.75, 0.75, ]);
    
    
    compute_pass_encoder7000.popDebugGroup()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_buffer702 = command_encoder702.finish();
    device30.queue.writeBuffer(buffer300, 0, array14, 0, array14.length);
    const command_buffer800 = command_encoder800.finish();
    query700.destroy()
    
    query701.destroy()
    device80.pushErrorScope("validation");
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    device70.pushErrorScope("out-of-memory");
    
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout701]
    });
    {
        await buffer702.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer702.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer702.unmap();
        console.log(new Float32Array(data));
    }
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout700]
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const compute_pass_encoder7011 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7011" });
    
    device20.queue.writeTexture({ texture: texture200 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.submit([command_buffer800, ]);
    device70.queue.writeBuffer(buffer700, 0, array15, 0, array15.length);
    
    query801.destroy()
    query700.destroy()
    
    buffer800.destroy()
    
    
    query701.destroy()
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
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
    query800.destroy()
    compute_pass_encoder7011.insertDebugMarker("marker")
    
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    query600.destroy()
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder7011.insertDebugMarker("marker")
    query700.destroy()
    
    
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    
    compute_pass_encoder7000.insertDebugMarker("marker")
    device90.queue.writeTexture({ texture: texture900 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeBuffer(buffer702, 0, array16, 0, array16.length);
    device90.queue.writeTexture({ texture: texture900 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture900 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    query700.destroy()
    const query705 = device70.createQuerySet({
        label: "query705",
        type: "occlusion",
        count: 32,
    });
    device90.queue.writeTexture({ texture: texture900 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query800.destroy()
    
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    
    query701.destroy()
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    device90.queue.writeTexture({ texture: texture900 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device90.queue.writeTexture({ texture: texture900 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture900 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query702.destroy()
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    device90.queue.writeTexture({ texture: texture900 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.destroy();
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    const command_encoder705 = device70.createCommandEncoder({ label: "command_encoder705" });
    
    device90.queue.writeTexture({ texture: texture900 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device90.queue.writeTexture({ texture: texture900 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture900 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder0000.executeBundles([])
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32sint",
        dimension: "2d"
    });
    
    
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    
    device90.queue.writeTexture({ texture: texture900 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query800.destroy()
    
    const command_buffer705 = command_encoder705.finish();
    
    query801.destroy()
    device60.queue.writeBuffer(buffer600, 0, array14, 0, array14.length);
    
    
    device90.queue.writeTexture({ texture: texture900 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8sint",
        dimension: "2d"
    });
    device90.destroy();
    
    
    
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    
    command_encoder801.insertDebugMarker("mymarker");
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    
    buffer801.destroy()
    command_encoder802.pushDebugGroup("mygroupmarker")
    const render_pass_encoder8020 = command_encoder802.beginRenderPass({
        label: "render_pass_encoder8020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: query800
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder8020.executeBundles([])
    const render_pass_encoder8010 = command_encoder801.beginRenderPass({
        label: "render_pass_encoder8010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: query800
    });
    
    render_pass_encoder8010.setViewport(0, 0, texture800.width / 2, texture800.height / 2, 0, 1);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder8010.setScissorRect(0, 0, texture800.width / 2, texture800.height / 2);
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    buffer002.destroy()
    render_pass_encoder8010.pushDebugGroup("group_marker");
    render_pass_encoder8010.setScissorRect(0, 0, texture800.width / 2, texture800.height / 2);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    render_pass_encoder8020.setScissorRect(0, 0, texture800.width / 2, texture800.height / 2);
    
    buffer001.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder8010.beginOcclusionQuery(0)
    
    render_pass_encoder8010.setViewport(0, 0, texture800.width / 2, texture800.height / 2, 0, 1);
    device80.pushErrorScope("internal");
    device80.queue.submit([command_buffer800, ]);
    device40.pushErrorScope("internal");
    
    
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture800.destroy();
    render_pass_encoder8010.setViewport(0, 0, texture800.width / 2, texture800.height / 2, 0, 1);
    
    render_pass_encoder8020.popDebugGroup();
    const sampler804 = device80.createSampler( { label: "sampler804" } );
    
    
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    texture300.destroy();
    const sampler805 = device80.createSampler( { label: "sampler805" } );
    
    const array17 = new Float32Array([-0.25, -1.0, 0.25, -0.25, 1.0, 0.0, 1.0, -0.5, 1.0, -0.25, 0.25, -0.25, 0.5, -1.0, 1.0, 0.5, -0.25, -0.25, 0.5, 0.0, 1.0, -0.25, -1.0, -0.75, 0.25, 0.25, 0.25, 0.25, -0.75, -0.75, -1.0, -0.25, 0.5, 0.75, -0.25, 0.25, 0.5, -0.75, -0.75, 0.5, -1.0, 1.0, -1.0, 0.25, 0.25, -0.25, -0.75, 0.25, 0.5, -0.5, 0.0, 0.75, -0.5, 0.75, 0.75, 0.5, -0.25, 1.0, 0.75, 0.5, 1.0, 0.75, -0.5, 0.25, 1.0, 0.75, -0.25, 0.5, 0.0, 0.75, 0.0, 0.25, 0.5, -0.5, -0.75, 0.75, -0.25, -0.75, 0.0, 0.75, 1.0, -1.0, -1.0, -0.75, -0.25, -0.75, 0.0, 0.0, 0.25, -0.75, 0.75, -0.75, -1.0, -0.25, -0.25, 1.0, -1.0, 1.0, 0.75, -0.25, ]);
    device20.queue.writeTexture({ texture: texture200 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder8020.setViewport(0, 0, texture800.width / 2, texture800.height / 2, 0, 1);
    
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder704.insertDebugMarker("mymarker");
    
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    command_encoder200.copyTextureToTexture(
        {
            texture: texture201
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
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    render_pass_encoder0000.executeBundles([])
    
    const render_pass_encoder8030 = command_encoder803.beginRenderPass({
        label: "render_pass_encoder8030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: query801
    });
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder8030.insertDebugMarker("marker");
    render_pass_encoder8010.beginOcclusionQuery(1)
    query803.destroy()
    device80.queue.writeTexture({ texture: texture801 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    const render_pass_encoder8031 = command_encoder803.beginRenderPass({
        label: "render_pass_encoder8031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8010,
            },
        ],
        occlusionQuerySet: query803
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder8010.endOcclusionQuery()
    render_pass_encoder8010.popDebugGroup();
    render_pass_encoder8010.endOcclusionQuery()
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder8020.endOcclusionQuery()
}