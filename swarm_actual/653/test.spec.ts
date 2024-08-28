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
    const array0 = new Float32Array([-0.5, 0.25, 0.25, -0.75, -0.5, 0.5, 1.0, 0.25, -1.0, -0.5, 0.25, 0.5, -0.25, -0.5, 0.25, -0.25, 0.75, 0.0, -0.25, -0.75, 0.5, 0.25, 0.0, -0.25, -0.25, 0.5, 1.0, 0.75, -0.5, -0.25, -0.25, -1.0, 0.5, -0.75, 1.0, 0.25, -1.0, -0.25, 0.0, 0.75, -1.0, 0.5, 1.0, 0.75, -0.25, -0.5, -0.5, 1.0, -0.25, -0.5, 0.25, 0.0, 0.0, 0.0, 0.0, 0.25, -0.5, 0.75, 1.0, 0.75, 0.5, 0.5, -1.0, 0.25, -0.25, 0.0, 0.75, 0.5, -1.0, -1.0, -0.5, 1.0, -0.75, 0.5, -0.75, 0.25, -0.25, -0.75, 0.5, 0.75, 0.0, 1.0, -1.0, 0.75, -1.0, 0.75, -0.75, 0.75, -1.0, -0.75, 1.0, 0.5, 0.0, 0.5, -0.75, 0.75, -0.5, -0.5, 0.75, 0.5, ]);
    
    const array1 = new Float32Array([0.0, -0.75, 0.25, -0.75, -0.75, -0.75, 0.75, -1.0, 0.25, -1.0, -1.0, 0.75, -0.5, -0.5, -0.75, -0.25, 0.75, 0.25, 0.25, -1.0, -0.5, 0.5, -0.25, 0.0, -0.75, 0.75, 0.5, -0.25, 1.0, 0.25, 0.25, -0.75, 0.75, 0.0, 0.0, -0.25, 0.75, 0.5, 0.5, -0.25, -0.5, -0.25, 0.75, -0.75, 0.75, -0.75, 0.5, -1.0, -0.75, -0.5, -0.25, -0.25, 0.25, -0.75, -0.25, 0.5, 0.0, -0.5, 0.75, 0.0, -1.0, -1.0, 0.75, -0.5, 0.5, -0.75, 0.0, 1.0, 0.75, -0.5, -0.5, -0.25, 0.75, -0.25, 1.0, -0.75, -0.5, 0.0, -0.25, -0.5, 0.0, -1.0, 0.5, -1.0, -1.0, 1.0, 0.75, 1.0, -0.5, -1.0, -1.0, -1.0, -0.5, -1.0, 0.25, 1.0, -0.5, -0.75, 0.25, 0.0, ]);
    const array2 = new Float32Array([0.25, -1.0, -0.25, -1.0, 0.25, 0.0, 0.5, -0.5, -1.0, -0.5, 0.75, -0.5, -1.0, -1.0, 0.25, -0.5, -0.5, -0.25, 0.5, 0.0, 0.25, 0.5, -0.75, 0.25, -0.25, -1.0, -0.25, -0.75, -0.5, 0.75, 1.0, 0.0, 0.75, 0.25, -1.0, 0.25, 0.5, 0.75, 0.0, 0.5, 0.5, 1.0, 0.0, -0.5, -0.25, 1.0, -0.5, 0.0, -0.5, -1.0, 1.0, 0.25, 0.75, 0.0, 0.0, 0.25, 0.75, 1.0, -0.25, -1.0, 1.0, 1.0, -0.25, 0.0, 0.0, 1.0, 0.5, 1.0, -1.0, 1.0, -0.5, 1.0, -0.75, 0.25, -0.25, -0.5, -0.5, 0.25, 0.25, 1.0, 0.75, -0.25, 0.75, 0.5, 1.0, 0.5, 0.25, -0.75, -0.75, -0.75, 0.75, 0.0, 1.0, 1.0, -0.75, -0.75, 0.5, -0.5, -1.0, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([0.75, 0.5, -1.0, 0.0, -0.75, -0.75, 0.75, 1.0, -0.25, 0.25, 0.0, -0.5, -1.0, 0.75, 1.0, -0.75, -0.5, 0.75, 1.0, -1.0, 0.0, 1.0, 0.0, -0.75, -0.5, 1.0, -0.75, -0.75, -0.75, -0.25, 1.0, 1.0, 0.25, 0.5, 1.0, -0.25, 0.5, 0.25, 0.0, -0.75, 0.5, -0.5, -0.75, 0.75, 1.0, 0.5, -1.0, 0.75, 0.0, 1.0, 0.0, -0.75, -1.0, -0.5, 0.5, -1.0, 0.75, -1.0, -0.5, -0.5, 1.0, 0.5, -0.5, -0.75, -0.75, -0.5, 0.5, 1.0, -0.75, 0.5, 0.0, 0.75, 1.0, -0.5, -0.25, 0.75, -0.75, -0.75, -0.5, 0.75, 0.25, -0.75, -1.0, -0.5, 0.75, -0.75, 0.5, -0.25, -0.75, 0.0, 0.0, 0.5, -0.25, 0.25, 0.0, -0.25, 0.75, 0.25, 0.25, 1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array4 = new Float32Array([-0.75, 0.25, -0.5, 1.0, 1.0, 0.75, 1.0, -0.25, -0.5, 0.0, 0.5, 0.5, 1.0, 0.0, 1.0, -0.25, -0.75, 0.5, 1.0, 0.5, -0.25, -0.25, 0.75, 0.25, 0.25, -1.0, -0.25, 1.0, 0.0, 0.75, -0.5, -1.0, 0.0, 1.0, -0.25, 0.0, -0.25, 0.75, -0.5, 1.0, 0.0, 0.25, -0.75, 0.25, 0.0, -1.0, 0.25, 0.25, -0.25, 0.5, 0.0, 1.0, -0.25, 0.25, -0.75, -0.5, -0.75, 1.0, 0.5, -1.0, 0.75, 1.0, -0.5, -0.25, -1.0, -0.25, -1.0, 0.0, -0.25, 0.5, 0.25, -0.5, 0.75, -1.0, 0.0, -0.75, 1.0, -1.0, 0.75, -0.75, 0.75, -0.25, 0.75, -0.25, -1.0, -0.25, 1.0, 0.5, 0.5, -0.75, 0.5, 0.0, -0.25, -0.25, 0.25, -0.5, 0.25, -0.25, -1.0, 1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    
    device00.pushErrorScope("out-of-memory");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    device10.pushErrorScope("validation");
    
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
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
    
    
    
    query000.destroy()
    
    
    
    device10.pushErrorScope("internal");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query300.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query100.destroy()
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array5 = new Float32Array([0.0, 0.25, -0.75, 0.25, 1.0, -0.25, 0.25, 0.75, -0.25, -0.25, 0.5, 0.0, 0.5, -1.0, 1.0, 1.0, -1.0, -1.0, 0.75, -1.0, 0.75, 1.0, -0.75, -1.0, -1.0, -0.5, 0.25, -0.75, 0.5, -0.75, -0.25, -0.25, 1.0, -0.25, -0.75, 0.5, 1.0, -0.75, 0.0, 0.5, -1.0, 0.0, 0.25, -1.0, -0.5, -0.5, -1.0, -0.25, 0.5, 0.25, -0.75, -1.0, -0.25, 0.75, 0.0, -0.25, 0.75, -0.25, 0.75, -0.5, 0.0, -0.25, 0.75, 0.25, 0.75, 0.5, 0.0, 1.0, -0.75, 0.25, 0.75, 0.25, -0.75, 0.5, 0.75, -0.5, 0.5, -0.5, -0.75, 0.0, 0.75, -1.0, -0.5, 0.25, -1.0, 0.0, 0.5, -0.25, 0.5, 0.75, -0.75, -0.5, -0.25, 1.0, -0.75, -0.75, 1.0, 1.0, -1.0, -0.75, ]);
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const array6 = new Float32Array([-0.25, 0.25, -0.25, -1.0, 0.5, -1.0, 0.0, -0.25, -0.25, 0.25, -0.25, 0.25, 0.25, -0.25, -1.0, 0.75, 0.75, -0.25, -0.75, 0.5, -0.75, 0.0, 0.5, 1.0, 0.75, 1.0, -0.5, -0.25, 0.5, -1.0, 0.0, -0.25, 0.75, -0.5, -0.75, 1.0, 0.5, -1.0, 0.5, -0.75, 1.0, -0.25, -0.75, 0.0, -0.75, 0.75, 0.0, 0.75, 0.75, 0.75, -0.5, 0.0, 1.0, 1.0, 0.75, -0.25, -0.25, 1.0, 0.75, -0.25, -1.0, -0.25, 0.25, -1.0, 0.0, -0.5, 0.25, 0.0, -1.0, 0.75, 0.75, 0.25, -0.5, 1.0, 0.5, -0.5, 0.5, 1.0, 0.0, -0.25, 0.0, 0.25, -0.5, 0.0, -0.75, -0.5, 1.0, 0.5, 0.25, -1.0, -1.0, 0.75, -1.0, 0.5, -0.75, -0.25, 0.0, 0.0, 0.5, -1.0, ]);
    device00.pushErrorScope("validation");
    
    const array7 = new Float32Array([-0.75, 0.25, 0.25, -0.5, -0.5, -0.25, -1.0, 1.0, 0.75, -0.25, -0.25, -1.0, 0.75, 0.0, 0.0, 0.0, -0.75, -0.75, -1.0, -0.25, 1.0, 0.75, 0.0, -1.0, 0.5, 0.5, -0.25, 0.0, 1.0, 0.75, -0.25, 0.75, 0.0, -0.5, -0.5, -0.5, 0.25, -0.5, 1.0, 1.0, -0.25, -0.75, 0.75, -0.25, -0.5, -0.75, 0.25, -0.5, -1.0, 1.0, 0.25, 0.5, 1.0, -0.5, 1.0, 0.75, 0.25, -1.0, 0.75, -0.5, -1.0, 0.5, 0.0, 0.25, -1.0, -1.0, 0.25, 0.25, 0.25, 0.0, 0.0, 0.25, -0.25, 0.75, 0.75, 1.0, 0.25, -0.25, -0.75, 0.0, 1.0, -0.75, 0.5, 1.0, 0.75, -0.25, -0.25, 0.0, 0.5, 0.5, 0.0, 0.5, 0.25, 0.5, 0.75, -0.5, 0.25, -0.75, -0.5, 0.25, ]);
    
    query301.destroy()
    
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
    
    device10.popErrorScope().then((error) => {
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
    
    query100.destroy()
    
    device10.pushErrorScope("out-of-memory");
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([-1.0, -0.75, 0.25, 0.5, -0.75, 0.0, 0.5, 0.25, -1.0, 0.75, -0.5, 1.0, 0.75, 0.75, 0.25, 0.0, -0.5, -1.0, 0.5, -1.0, 0.0, 1.0, 0.25, -0.5, 0.5, 0.75, -0.5, 1.0, 0.0, 0.0, 0.75, 1.0, 0.5, 1.0, -0.5, -0.75, 1.0, 0.5, -0.75, -0.5, 0.25, 0.75, 0.0, -0.5, 0.75, 0.5, -0.75, 1.0, 1.0, -1.0, 1.0, 0.0, -0.5, -1.0, -0.5, 1.0, -0.5, 0.5, 1.0, 0.5, -0.5, 0.75, 1.0, 0.25, 0.5, 0.0, -0.75, 1.0, 1.0, 1.0, -0.25, 0.0, -0.25, 0.75, 0.75, -0.75, 1.0, 0.0, -0.75, -0.25, -0.25, -0.5, 0.0, 0.5, 0.5, -1.0, 0.75, 0.0, -1.0, -0.25, 0.25, 1.0, 0.5, 0.5, 0.0, -0.25, -0.5, -0.5, -0.5, 0.5, ]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query200.destroy()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query302.destroy()
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    
    query100.destroy()
    query000.destroy()
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
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    query000.destroy()
    query200.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    device30.pushErrorScope("internal");
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("validation");
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    query101.destroy()
    
    query001.destroy()
    
    
    
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query301.destroy()
    device10.pushErrorScope("out-of-memory");
    query301.destroy()
    query301.destroy()
    
    
    const array9 = new Float32Array([-1.0, -1.0, 0.75, 1.0, 0.75, -0.75, 0.5, 0.5, 0.75, 0.25, -0.25, -0.25, -1.0, 0.75, -1.0, -0.75, 0.5, -0.75, 0.75, -0.75, -0.25, 0.75, 0.0, 0.75, -1.0, 0.5, 1.0, 1.0, -0.5, 0.75, 1.0, -0.5, 0.5, 1.0, 1.0, 1.0, 0.25, -0.25, 0.25, -0.5, -0.25, 1.0, 0.25, -0.5, -0.5, -0.5, 0.0, -0.75, 0.5, -0.25, 1.0, 0.25, 1.0, 0.25, -1.0, 0.75, -1.0, 0.5, 0.25, -1.0, 0.25, -0.75, 0.0, 0.25, 0.75, -0.5, -0.75, 1.0, -0.75, 0.75, -1.0, 0.5, -0.75, -0.5, -0.75, -0.25, 0.25, -0.5, -1.0, 0.75, -1.0, -1.0, 0.5, -0.75, -0.75, 1.0, -1.0, -1.0, 0.5, -1.0, -0.75, 0.25, -0.75, 0.75, -0.5, 0.0, 0.5, -0.75, 0.5, 0.5, ]);
    
    query200.destroy()
    
    query400.destroy()
    
    
    query300.destroy()
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    query301.destroy()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.pushErrorScope("internal");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const array10 = new Float32Array([0.25, 0.25, 1.0, 0.75, 0.25, 0.25, -0.25, 0.0, -0.25, 0.25, 0.0, 0.25, -0.75, 0.0, -0.75, -1.0, 0.25, -0.75, -0.25, 0.5, -1.0, -1.0, 0.75, 0.5, -1.0, -0.5, 0.25, 0.25, 0.5, 1.0, 1.0, 0.75, -0.25, 0.75, -0.25, 0.25, -1.0, -1.0, 0.0, 1.0, 0.75, 0.0, -0.25, 1.0, 0.5, 0.25, -0.25, 0.25, 0.5, 0.25, -1.0, -1.0, 0.5, 0.5, 0.0, -1.0, -0.5, -1.0, -1.0, 0.5, -0.75, -1.0, -0.5, 0.75, 0.25, 0.0, 0.5, 0.25, -0.5, 0.25, 0.0, -1.0, -1.0, 0.75, -0.5, 0.75, 1.0, -0.5, -0.25, 0.75, 0.5, -0.25, 0.75, 1.0, 0.25, -0.5, 1.0, -0.25, 0.0, 1.0, -0.5, -0.5, 0.75, -0.25, -0.25, -0.5, -0.25, 0.5, 0.75, 0.75, ]);
    
    query100.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array11 = new Float32Array([-0.75, -0.25, -0.25, -1.0, 0.5, -0.75, -0.5, 0.0, 0.5, -0.75, -1.0, 0.0, -0.75, 0.25, 1.0, -0.75, -0.75, -0.25, -1.0, -0.5, 0.5, -0.25, -0.75, 0.25, 0.0, -0.25, 0.75, -0.25, 0.5, -0.75, -0.75, 0.75, -0.25, -0.75, -0.75, -0.75, -0.25, 0.25, -0.5, 0.5, 0.0, 0.25, 0.5, -0.75, 0.0, -0.5, 0.75, -0.75, 0.0, 0.75, -0.25, 0.25, -1.0, 0.75, 1.0, -1.0, -0.25, -0.5, 0.75, -0.25, 0.5, 0.5, -0.75, 0.5, 0.0, 0.0, 0.75, 0.25, 0.25, 0.5, 0.5, 0.0, 1.0, 0.25, -1.0, 0.5, -0.75, 0.0, 0.25, -0.75, 1.0, 1.0, -1.0, 0.0, -1.0, 0.0, 0.0, 0.5, 0.5, 1.0, 1.0, 0.25, 1.0, -1.0, -0.5, -1.0, 0.25, -1.0, 0.25, -0.25, ]);
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
    
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("out-of-memory");
    
    
    
    
    
    query101.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const array12 = new Float32Array([-0.75, -0.25, -1.0, 0.0, 0.25, -0.25, 1.0, 1.0, 0.0, 0.75, -0.5, -0.25, 0.0, -1.0, 0.5, 0.75, -0.75, -0.75, -0.75, -0.5, 0.25, -0.75, -0.5, -1.0, 0.0, -0.75, -0.75, -1.0, 0.25, -1.0, 0.5, -0.5, 0.75, 1.0, -0.5, -0.75, 0.25, -1.0, 0.5, 1.0, 0.5, -0.75, -0.5, -0.5, 0.5, 0.0, 0.5, -0.5, 1.0, 0.0, 1.0, -1.0, 0.75, -0.75, 1.0, -0.75, 1.0, 1.0, -0.75, -0.5, 1.0, 0.75, -0.75, 1.0, -0.75, -0.5, 0.0, -0.75, -0.5, -0.75, 0.0, 1.0, 0.0, 1.0, 0.0, -0.5, 0.75, -1.0, 0.0, -0.25, 0.25, -1.0, 0.0, 0.25, 0.0, -0.25, 0.5, -1.0, 1.0, -0.5, 0.5, -0.5, -0.25, -1.0, 0.0, -0.75, -0.5, 0.5, -0.75, -0.25, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query001.destroy()
    
    
    query400.destroy()
    
    
    
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query200.destroy()
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
    
    query301.destroy()
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    query101.destroy()
    query103.destroy()
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
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    device10.pushErrorScope("validation");
    
    
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    
    
    
    
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
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
    
    
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const array13 = new Float32Array([-0.5, 0.75, -0.75, -1.0, -0.75, -0.25, -0.5, 0.75, 0.5, -0.75, 0.5, 0.25, -1.0, 0.75, 0.5, -1.0, -0.5, 0.25, -0.25, -0.5, -0.75, 0.25, -0.75, 0.5, -0.25, 0.5, -1.0, 0.0, 1.0, -0.5, 0.0, -1.0, 1.0, 0.0, 0.0, -0.75, 0.0, 1.0, -0.25, 0.5, 0.25, 1.0, 0.0, 0.5, 0.5, 0.75, 0.75, 1.0, 0.75, -1.0, -0.25, -1.0, 0.5, 0.5, -0.5, -0.5, 0.5, 0.5, -0.5, 0.75, -1.0, 0.25, -0.75, 0.75, -1.0, -0.5, 0.25, -0.75, 0.25, -0.25, 0.0, -1.0, -0.75, 0.5, 0.25, -0.75, -1.0, 0.0, 1.0, 1.0, 1.0, 1.0, -0.25, 0.5, 0.5, 1.0, 0.25, -1.0, -0.5, 0.0, -0.25, -0.5, 0.75, -1.0, 0.25, -0.5, -0.25, 0.5, -1.0, 1.0, ]);
    query100.destroy()
    
    
    query401.destroy()
    
    query401.destroy()
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
    query001.destroy()
    
    
    
    query302.destroy()
    
    
    
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
    device20.pushErrorScope("out-of-memory");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device40.pushErrorScope("out-of-memory");
    device20.pushErrorScope("validation");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    
    
    
    
    
    
    query303.destroy()
    query102.destroy()
    
    
    
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    
    query105.destroy()
    query304.destroy()
    
    
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
    
    query000.destroy()
    
    query106.destroy()
    
    query102.destroy()
    query103.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    
    
    
    query200.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    query400.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
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
    query101.destroy()
    query201.destroy()
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query001.destroy()
    
    
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
    
    query201.destroy()
    
    query306.destroy()
    query105.destroy()
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query302.destroy()
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    
    
    device20.pushErrorScope("internal");
    
    
    query200.destroy()
    query303.destroy()
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    
    device30.pushErrorScope("out-of-memory");
    
    
    
    
    query302.destroy()
    query105.destroy()
    
    
    query101.destroy()
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query402.destroy()
    
    
    
    
    
    query101.destroy()
    
    query104.destroy()
    
    query305.destroy()
    
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array14 = new Float32Array([0.25, 0.5, 0.5, -0.5, 0.5, -0.5, -0.5, 1.0, -0.75, 0.0, 0.75, 0.0, 0.0, 0.75, 0.0, 0.25, 0.5, -0.5, -0.75, -0.5, -0.25, -0.5, 0.5, 1.0, 1.0, 0.0, -0.75, 0.75, -0.5, 1.0, 0.0, 0.75, 1.0, -1.0, 0.75, -0.75, 1.0, 0.0, 0.0, -0.5, 0.5, 0.5, -0.75, 1.0, -0.25, 0.0, -0.75, 0.5, 0.0, -1.0, 0.0, -1.0, 1.0, -1.0, 0.25, -0.75, -0.5, 0.75, 0.25, -0.25, 0.5, 0.5, -0.75, -0.75, 0.5, -0.75, -0.75, -0.25, 0.5, 0.5, 1.0, 0.25, -0.25, -1.0, -0.5, -0.25, 0.5, 1.0, 1.0, 0.5, -1.0, -0.25, -0.75, 0.25, -0.25, -1.0, 0.0, -0.25, 0.75, -1.0, -1.0, -1.0, 0.25, -0.75, 0.25, 1.0, 0.0, -0.5, 1.0, 0.5, ]);
    query001.destroy()
    const query1010 = device10.createQuerySet({
        label: "query1010",
        type: "occlusion",
        count: 32,
    });
    query403.destroy()
    
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    query403.destroy()
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    
    
    
    
    
    
    query109.destroy()
    query300.destroy()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
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
    
    
    query303.destroy()
    query000.destroy()
    
    
    
    query1010.destroy()
    query402.destroy()
    
    
    query000.destroy()
    query101.destroy()
    query301.destroy()
    const query1011 = device10.createQuerySet({
        label: "query1011",
        type: "occlusion",
        count: 32,
    });
    
    const query1012 = device10.createQuerySet({
        label: "query1012",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    
    query102.destroy()
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query104.destroy()
    
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
    
    
    query000.destroy()
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
    query201.destroy()
    
    const query1013 = device10.createQuerySet({
        label: "query1013",
        type: "occlusion",
        count: 32,
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
    
    query104.destroy()
    query1013.destroy()
    
    query304.destroy()
    
    query403.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    query003.destroy()
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query002.destroy()
    
    query201.destroy()
    
    query004.destroy()
    
    
    query100.destroy()
    query101.destroy()
    query306.destroy()
    
    
    
    
    query001.destroy()
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}