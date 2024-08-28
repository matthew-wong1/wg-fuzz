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
    const array0 = new Float32Array([0.25, -0.25, 0.5, 0.0, -0.5, -0.5, 1.0, 0.0, -1.0, -0.75, 1.0, -1.0, -0.75, 1.0, -0.75, 0.0, -0.75, -0.5, 0.0, -1.0, -0.5, -1.0, -1.0, -0.5, 0.0, 0.75, -0.5, -1.0, -0.5, -0.75, 0.5, 0.5, -0.75, 0.5, -1.0, -0.75, 0.5, 0.5, 1.0, 0.75, 0.0, -0.25, 1.0, 0.25, -1.0, 0.25, -0.25, 0.25, 0.0, -0.25, -1.0, -0.5, 0.5, -0.5, -0.75, 0.0, -0.5, -0.25, -0.75, -0.25, -0.5, 1.0, -0.75, -0.25, 0.25, -0.5, 0.5, 0.75, -1.0, -0.5, -0.25, 0.0, 1.0, -0.25, 1.0, 0.25, 0.5, -0.5, 0.75, -0.5, 0.75, -0.25, -1.0, 0.0, 0.0, 0.0, -0.75, -0.75, -0.5, -1.0, 0.75, 0.75, 1.0, -0.75, -0.25, 0.75, 1.0, 0.25, -1.0, 0.5, ]);
    const array1 = new Float32Array([0.0, 1.0, -1.0, -0.5, 0.5, 0.5, 0.75, 0.75, 0.25, 0.25, 0.5, 1.0, -1.0, 0.25, 0.75, 1.0, 1.0, 0.0, 0.25, 0.75, 0.0, -1.0, 0.25, 1.0, 0.75, 0.0, -0.5, -0.75, -0.75, -0.5, 0.75, 0.75, 0.25, 0.25, 0.0, -1.0, 0.0, -0.5, -0.75, 0.5, -0.25, -0.25, 0.25, -0.5, 0.25, -0.25, 0.25, 0.5, -0.5, -0.5, -0.75, 0.25, 1.0, -0.75, 0.75, -0.75, -0.5, -1.0, 0.0, 0.75, 0.0, 0.0, 0.25, -1.0, -0.25, 1.0, -1.0, -1.0, 0.25, 0.75, -0.75, -0.75, -0.5, -0.5, 1.0, -0.75, 0.75, -0.25, -0.25, 0.75, 0.5, 1.0, -0.25, 0.5, 0.0, 0.25, 0.25, 0.25, -0.75, -0.75, -0.25, 1.0, 0.25, 0.5, 0.0, -0.25, -1.0, 0.5, -0.75, 0.0, ]);
    const array2 = new Float32Array([-1.0, -1.0, -0.5, -0.75, -0.25, -0.75, -0.25, -0.5, -1.0, 1.0, 0.5, 1.0, 0.0, 1.0, -0.75, -0.5, -1.0, -0.25, -0.25, -0.25, 0.25, -0.75, 1.0, 0.75, -0.75, 0.25, -0.5, 0.0, 0.5, 0.25, -1.0, -0.25, -0.25, 0.75, 0.75, 0.0, 0.0, -0.75, 0.0, -0.75, 0.5, 0.0, 1.0, 0.0, 0.0, -1.0, 0.0, 0.75, -0.75, 0.0, -0.5, -1.0, -0.75, -0.25, -0.75, 0.25, -0.5, -0.25, -1.0, -1.0, 0.5, 0.25, 0.25, 0.0, 0.5, 0.5, 0.75, -0.5, 0.5, -0.25, -1.0, -0.75, -0.25, 0.75, 0.5, 0.0, 0.75, -0.75, 0.75, 0.25, -0.75, 0.25, 0.25, 0.0, -0.5, -0.75, 1.0, -0.25, -0.75, 0.75, 0.5, -1.0, 1.0, -0.75, 0.75, 0.25, 0.0, -1.0, -0.5, 1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    buffer100.destroy()
    device00.destroy();
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([0.75, -0.5, -0.5, -0.75, -1.0, -1.0, 0.25, 0.75, 1.0, 1.0, 1.0, -0.25, 0.75, 0.25, -0.75, 0.75, -0.25, -0.5, 0.5, 0.0, 0.0, 0.5, 0.25, 0.75, 0.0, 0.25, 0.25, -1.0, -0.5, 0.5, 0.75, 0.5, -0.5, -0.5, 0.5, -1.0, 0.25, 0.25, -0.75, 1.0, -0.25, 1.0, 0.0, -0.25, -0.75, 0.5, -0.5, -0.75, -0.25, 0.25, 1.0, 0.25, 0.75, -0.5, 0.5, -0.5, 0.25, -1.0, -0.5, 0.0, 1.0, 0.25, -0.5, 1.0, 1.0, -1.0, 0.75, -0.75, -0.25, 0.5, -1.0, 0.25, 0.25, 0.0, 0.5, -0.25, 1.0, 0.75, -0.75, 1.0, -1.0, 0.0, -0.25, 0.5, 1.0, 0.0, -0.5, 0.0, 0.0, 0.0, -0.25, 0.75, -0.25, 0.25, 0.75, 0.25, 0.5, -0.25, -1.0, -0.25, ]);
    const array4 = new Float32Array([-0.25, -0.75, 0.5, 1.0, 0.75, -1.0, -1.0, 0.5, -1.0, 1.0, -0.5, 0.5, -0.75, 0.75, -0.5, -0.25, -0.5, 0.75, -0.75, 1.0, 0.5, 1.0, -0.5, -0.5, 0.25, 0.0, -0.75, -0.25, 1.0, 0.0, -0.75, 0.0, -0.25, -0.5, 0.5, -0.75, 1.0, 1.0, -0.75, 0.75, 0.25, -1.0, 0.0, 0.75, 0.0, 0.0, 0.75, -1.0, -0.75, -0.25, 0.0, 1.0, 0.5, 0.25, -0.5, -0.75, 0.5, 1.0, 0.25, -1.0, 1.0, 0.25, -0.5, -0.75, -0.25, 0.5, 1.0, 0.75, 1.0, -0.25, -1.0, -0.75, -1.0, -0.25, -0.75, 0.5, -1.0, 1.0, -0.75, 0.75, -0.25, 0.75, 0.0, 1.0, 0.5, 0.75, 0.25, 0.25, 0.25, -1.0, -0.25, 0.75, -0.75, -1.0, 0.0, -0.75, 0.75, 0.0, 0.5, 1.0, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array5 = new Float32Array([0.5, 0.25, 0.0, 0.0, 0.25, -0.75, -0.25, 0.0, 0.25, -0.5, 0.0, 0.25, -0.5, -1.0, 1.0, -0.5, -0.5, -0.75, 0.25, -0.5, 0.0, -1.0, -0.25, 0.25, 1.0, -1.0, 1.0, 1.0, -0.75, 0.75, -0.5, -0.25, -0.75, 0.25, -0.75, -0.5, 0.0, 0.75, 0.0, 0.5, -1.0, -0.25, -1.0, 0.25, 0.5, 0.5, -1.0, -0.5, -1.0, 0.25, 0.0, 0.75, -0.75, 0.5, -0.5, 0.25, 1.0, -1.0, -0.25, 0.75, -0.75, 0.5, -0.25, 1.0, -0.75, -0.25, 0.75, -0.5, 0.75, 0.5, -1.0, 0.5, -0.25, 1.0, 1.0, -0.75, 0.75, 0.0, 0.75, -1.0, -0.75, -0.75, -0.25, -0.5, 1.0, -1.0, 1.0, 0.25, -0.75, 0.75, 0.25, -1.0, -1.0, -0.5, 0.25, 1.0, -0.75, 0.25, 1.0, -0.25, ]);
    const array6 = new Float32Array([-1.0, -0.25, 0.25, 0.0, 0.75, -0.75, -0.25, -0.75, -0.25, 0.0, -0.75, 0.5, 0.25, 0.25, 0.0, -0.5, -0.75, -0.75, 0.5, 0.75, 0.5, 0.5, -0.75, -0.5, 0.75, -1.0, 0.0, 1.0, 0.5, 0.25, 1.0, 0.75, -0.75, 1.0, -0.5, 0.5, -0.75, -0.25, -0.25, -0.5, 0.0, 0.75, -1.0, 0.5, 0.25, -0.25, 0.25, 0.0, -0.25, -0.5, -0.5, 1.0, -0.25, 0.5, -0.5, -0.25, 0.5, -0.5, 0.0, -0.25, -0.5, 1.0, 1.0, 0.25, 0.0, -0.5, 0.25, 0.25, 0.25, -0.5, -0.75, -0.75, 0.75, 1.0, 1.0, -0.5, -0.5, -0.25, 0.75, -0.25, 0.75, 0.25, -0.5, -1.0, -0.75, 1.0, 0.0, -1.0, -0.25, 0.75, -0.25, 0.25, 0.25, 0.25, 0.5, 0.0, -0.25, -1.0, -0.5, 0.5, ]);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const array7 = new Float32Array([1.0, -0.75, 1.0, 0.0, 1.0, 0.0, 0.5, 0.25, -0.75, 0.5, -1.0, -1.0, 0.75, 0.0, -0.75, 0.25, 0.5, 0.0, 0.5, 0.0, -0.25, 1.0, 0.5, -1.0, -1.0, 0.0, -1.0, 0.25, -0.5, 0.75, 0.0, -0.75, -0.25, -0.5, 0.75, 1.0, 0.75, -1.0, -1.0, -0.75, 0.5, 0.75, 0.75, -1.0, 0.5, 0.25, 1.0, 1.0, 0.25, -0.75, -0.75, -0.5, 0.0, -1.0, 0.5, 0.5, 0.0, -0.5, -1.0, -1.0, 0.0, 0.75, 0.5, -0.5, 0.5, -0.25, 1.0, -0.75, -1.0, -0.25, -0.75, 0.75, -0.25, -0.75, -0.5, 0.75, 1.0, -1.0, 1.0, 0.75, 0.5, 0.25, -1.0, -0.25, -1.0, -0.25, 0.25, 1.0, 0.5, 0.25, 0.5, -0.75, -0.5, 0.75, -0.25, 0.0, 0.75, -0.75, -0.5, -1.0, ]);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    buffer300.destroy()
    const array8 = new Float32Array([0.25, 1.0, -0.75, 0.0, 0.5, 0.5, 0.0, -0.25, 1.0, 0.75, -0.75, 0.0, 0.5, -0.25, 1.0, -0.25, 0.75, -0.75, -0.25, -0.25, 0.75, -0.25, 0.5, 0.75, -1.0, 0.5, 0.0, 0.25, -0.75, -0.25, 0.25, 0.5, 0.75, 1.0, 0.5, 1.0, -0.25, -1.0, -0.25, 0.75, -0.75, 0.5, 1.0, 0.25, -1.0, 0.75, 0.0, 1.0, -0.75, 0.0, -0.25, -1.0, 0.25, -0.5, -0.5, 0.0, 1.0, 0.25, -1.0, -1.0, 0.25, 0.0, 1.0, 0.5, -0.75, 1.0, 1.0, -0.25, -0.5, 0.25, -0.25, -1.0, 0.25, 0.5, 0.5, -0.5, 0.0, -0.75, -0.75, 0.75, 0.75, -1.0, 0.25, -1.0, -1.0, -1.0, 0.0, 0.75, -0.5, -0.75, -0.5, -1.0, -0.5, -1.0, 1.0, 0.25, 0.5, -1.0, -1.0, 0.5, ]);
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer303, 0, array5, 0, array5.length);
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
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device30.queue.writeBuffer(buffer303, 0, array6, 0, array6.length);
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
    
    const array9 = new Float32Array([0.5, 0.25, -0.5, -0.5, -0.75, -0.5, 0.0, -1.0, 0.5, -0.75, -0.5, 0.0, -0.25, -0.25, 1.0, -1.0, -1.0, 0.5, 0.5, -0.25, 0.25, 0.5, 0.25, 0.0, 0.25, 0.25, -0.75, 1.0, 0.0, -0.75, -0.5, -0.25, -1.0, 0.25, 0.25, 1.0, 0.5, 0.25, -0.25, 0.25, -1.0, 1.0, 0.75, 0.75, 0.0, -0.75, -0.75, -0.25, -1.0, 0.75, 0.25, 0.0, 0.0, -1.0, -1.0, -0.25, -0.5, -1.0, -0.5, 1.0, -1.0, -0.75, 1.0, 0.5, -1.0, 0.25, -0.25, -0.75, -0.75, -0.25, 0.75, -0.75, -0.75, 1.0, 1.0, 0.75, 0.75, -0.5, 0.0, -0.75, -0.75, -0.25, 0.25, -0.75, -0.25, -0.5, 0.5, -1.0, -1.0, 0.25, -0.75, 1.0, 0.0, 0.75, -0.5, -0.25, 0.5, 0.0, -1.0, 0.0, ]);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder300.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    device30.queue.writeBuffer(buffer303, 0, array7, 0, array7.length);
    
    device30.queue.writeBuffer(buffer303, 0, array8, 0, array8.length);
    buffer302.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    
    buffer304.destroy()
    device30.queue.writeBuffer(buffer303, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer303, 0, array9, 0, array9.length);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device30.queue.writeBuffer(buffer303, 0, array6, 0, array6.length);
    buffer200.destroy()
    device30.queue.writeBuffer(buffer303, 0, array5, 0, array5.length);
    
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
    const array10 = new Float32Array([0.5, -0.25, 1.0, -0.25, -1.0, 1.0, -0.5, 0.0, -0.75, 0.25, 0.0, 0.25, 1.0, 0.0, -0.75, 0.5, 0.25, -0.25, -0.25, 0.0, -0.5, -0.5, -0.75, 0.5, 0.0, 0.75, 1.0, 0.25, 0.25, -0.25, 0.5, -0.25, 0.25, -0.75, -0.25, -0.5, -0.25, 0.25, -1.0, 1.0, 0.75, -0.25, 1.0, 0.25, 0.5, 1.0, 0.5, 0.25, 0.5, 0.0, -0.25, 0.25, -1.0, 0.75, -0.25, -1.0, 0.5, -1.0, 1.0, 0.75, 0.75, 1.0, -1.0, -0.75, 0.5, 0.5, -0.75, -1.0, -0.75, 0.0, -0.75, 0.75, 1.0, 0.5, -0.25, -1.0, 0.5, 0.75, 1.0, -0.75, -0.5, 0.25, -0.5, 0.5, -0.75, 0.75, -0.5, -1.0, -0.75, 0.25, -1.0, 0.75, 0.0, 1.0, 0.25, 0.25, 0.0, -0.75, 0.25, 0.75, ]);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    command_encoder301.copyBufferToBuffer(
        buffer306,
        0,
        buffer305,
        0,
        400
    );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    device30.queue.writeBuffer(buffer305, 0, array9, 0, array9.length);
    {
        await buffer303.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer303.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer303.unmap();
        console.log(new Float32Array(data));
    }
    
    device30.queue.writeBuffer(buffer303, 0, array4, 0, array4.length);
    
    
    device30.queue.writeBuffer(buffer303, 0, array6, 0, array6.length);
    
    
    const command_buffer301 = command_encoder301.finish();
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    buffer305.destroy()
    
    
    
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    buffer301.destroy()
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    buffer303.destroy()
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
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
    
    
    buffer307.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const array11 = new Float32Array([1.0, -1.0, 0.75, 1.0, 0.0, 0.25, 0.25, -1.0, 0.75, 0.25, -0.25, -0.75, 0.75, 0.5, 1.0, -0.75, 0.75, 1.0, -1.0, -0.75, -0.5, -1.0, -0.75, 0.25, -1.0, 0.25, 0.0, 0.0, 0.25, -0.5, -0.5, -0.5, -0.5, 0.75, 0.5, 1.0, -0.75, -1.0, -1.0, 0.75, -0.25, -0.5, -1.0, -1.0, -1.0, 0.25, -0.25, 0.0, 1.0, 0.0, 1.0, 0.0, -0.25, -0.25, 0.25, -0.25, 0.5, -0.75, 0.5, -0.5, -0.25, -1.0, 0.0, -0.75, -0.25, 0.5, 0.5, 0.75, -0.25, -0.25, -0.75, -0.75, -0.25, 0.0, -0.5, 0.5, 0.25, 0.5, 0.5, 0.5, 0.25, -1.0, -0.25, -0.25, -0.5, 0.5, -1.0, -0.25, -0.75, -0.25, 0.75, 0.25, 1.0, 0.25, 1.0, 1.0, 0.75, 0.0, 0.0, 0.5, ]);
    query301.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    const query302 = device30.createQuerySet({
        label: "query302",
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
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    
    
    
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder200.popDebugGroup()
    query302.destroy()
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder303.resolveQuerySet(
        query302,
        0,
        32,
        buffer300,
        0
    )
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    command_encoder200.popDebugGroup()
    query300.destroy()
    buffer202.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    
    query301.destroy()
    
    compute_pass_encoder3000.popDebugGroup()
    
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer308.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    buffer201.destroy()
    query300.destroy()
    query302.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    command_encoder200.popDebugGroup()
    
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
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    compute_pass_encoder3000.popDebugGroup()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder3020.popDebugGroup()
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    query200.destroy()
    compute_pass_encoder2000.popDebugGroup()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    query301.destroy()
    buffer306.destroy()
    query302.destroy()
    compute_pass_encoder3030.popDebugGroup()
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
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    
    command_encoder203.popDebugGroup()
    query302.destroy()
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    query303.destroy()
    query303.destroy()
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const command_buffer202 = command_encoder202.finish();
    
    buffer309.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const sampler308 = device30.createSampler( { label: "sampler308" } );
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const array12 = new Float32Array([-0.25, 0.5, -0.75, 0.0, 0.0, 0.5, -0.5, -1.0, 0.75, -1.0, -0.25, -0.25, -0.5, -0.5, 0.5, -0.5, 0.0, 0.0, -0.25, -0.5, -0.75, 0.5, -0.25, 0.25, 0.0, 1.0, -0.25, 1.0, -1.0, -0.75, -0.75, -0.25, 0.5, -0.25, 0.25, 0.0, 0.25, 0.25, 0.25, -0.25, 0.5, -0.25, 0.25, 0.25, 0.5, -0.25, 0.5, -1.0, -0.25, -0.75, -0.5, 0.25, 0.25, -0.25, -1.0, -0.5, 0.75, 1.0, -1.0, -1.0, -0.5, -0.25, 0.0, 0.0, -0.5, -0.75, -0.75, 0.25, -0.25, 1.0, 0.25, 0.25, 0.0, 0.0, 1.0, -0.75, 0.0, -0.75, -1.0, -0.25, 0.0, 1.0, 0.75, -1.0, 0.0, -0.25, 0.25, 0.0, 0.0, 0.5, 0.5, -1.0, 0.25, -1.0, 1.0, -0.5, 0.5, -0.75, 1.0, 0.25, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    const array13 = new Float32Array([0.0, 0.25, 0.75, -1.0, 0.75, -1.0, 0.25, -0.25, 0.25, 0.0, 0.25, 0.25, 0.75, 0.0, -0.25, 1.0, -0.5, 0.25, -0.25, 0.5, 0.75, 0.5, 0.75, 0.0, 0.5, 1.0, 1.0, 0.25, 0.0, 0.0, 0.25, 0.5, 1.0, -0.75, 0.75, 0.75, -0.25, -0.25, 0.5, -0.75, 0.0, 1.0, -0.25, -0.5, 0.5, 0.25, 0.25, -0.25, -0.25, -0.5, 0.75, -0.5, 1.0, 0.5, 0.25, 0.5, 0.25, -0.5, -0.75, -0.25, -0.5, 1.0, -0.75, 0.0, -1.0, -0.75, -0.25, -0.5, -1.0, -1.0, -1.0, -0.5, -0.75, 0.5, -0.5, 0.25, 0.75, -0.25, -0.25, -0.5, -1.0, -0.75, -0.75, -1.0, 1.0, 0.25, -0.75, -0.75, -1.0, 0.5, -0.25, 0.75, 0.5, -1.0, -1.0, 1.0, -0.25, 1.0, 1.0, 0.25, ]);
    
    
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    buffer203.destroy()
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    command_encoder204.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    compute_pass_encoder2010.popDebugGroup()
    query301.destroy()
    const sampler309 = device30.createSampler( { label: "sampler309" } );
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
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
    query300.destroy()
    compute_pass_encoder3020.popDebugGroup()
    
    
    compute_pass_encoder2000.popDebugGroup()
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder205.pushDebugGroup("mygroupmarker")
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    
    query300.destroy()
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
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device60.destroy();
    query304.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer203,
        0
    )
    command_encoder204.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query200.destroy()
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
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
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    const command_buffer204 = command_encoder204.finish();
    device50.queue.writeBuffer(buffer501, 0, array10, 0, array10.length);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    
    
    
    
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
    buffer400.destroy()
    compute_pass_encoder2030.popDebugGroup()
    query202.destroy()
    query201.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device50.queue.writeBuffer(buffer501, 0, array10, 0, array10.length);
    
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query201.destroy()
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    buffer3011.destroy()
    device50.queue.writeBuffer(buffer501, 0, array11, 0, array11.length);
    const array14 = new Float32Array([0.0, 0.0, 1.0, -1.0, 0.75, -1.0, 0.5, -0.5, -0.75, 1.0, -0.75, -0.25, 0.5, -0.25, -0.25, -0.5, 0.0, 1.0, -0.75, -0.5, -0.25, 1.0, -0.25, -0.25, 0.0, 0.0, 0.25, -0.75, 0.25, -0.5, -0.5, -1.0, 0.25, 0.5, -1.0, 0.5, 1.0, 0.0, 1.0, 0.25, 0.75, -1.0, 0.5, 0.0, 0.5, -0.25, 0.5, 0.5, -0.75, -0.5, 0.0, 0.25, 1.0, 0.5, 1.0, 0.25, 0.25, 1.0, 0.0, 0.5, 0.75, -0.25, 0.0, -1.0, -0.25, 0.25, 0.75, 1.0, 0.75, 0.75, 0.5, 0.0, -0.5, 0.25, 0.25, 0.75, -0.25, -1.0, -0.75, 0.5, -0.5, 0.75, 1.0, 0.5, -0.5, 1.0, 0.25, -0.25, -0.25, -0.5, 0.0, -0.5, 0.5, -0.75, 0.0, -0.75, 0.75, -0.5, -1.0, -0.75, ]);
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    query500.destroy()
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    
    
    
    device50.queue.writeBuffer(buffer501, 0, array14, 0, array14.length);
    
    query201.destroy()
    compute_pass_encoder2060.pushDebugGroup("group_marker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    query303.destroy()
    buffer401.destroy()
    command_encoder400.pushDebugGroup("mygroupmarker")
    query300.destroy()
    query500.destroy()
    device50.destroy();
    
    
    
    
    
    
    query301.destroy()
    query302.destroy()
    query200.destroy()
    query301.destroy()
    const array15 = new Float32Array([-1.0, 0.0, -0.75, 1.0, 0.25, 0.25, -1.0, -1.0, -0.75, 0.75, -1.0, -0.25, -0.75, 0.5, -0.25, -0.5, 0.25, 1.0, -0.25, 0.25, 0.5, -0.5, -0.25, -0.25, 0.5, -0.75, 0.25, 0.25, -0.25, 0.25, 0.25, 0.0, 0.75, -1.0, -1.0, -0.25, -0.25, -1.0, 0.0, -1.0, 1.0, 0.75, 0.75, 1.0, 0.25, 0.25, 1.0, -1.0, 0.25, 1.0, -0.75, 0.0, 0.75, -0.5, -0.5, -0.5, -0.25, -0.5, 0.25, 0.0, -0.25, 0.75, 0.5, -0.5, 0.25, 0.5, 0.25, 0.75, -1.0, -0.5, 0.5, 0.5, 0.0, 0.25, 0.0, 0.5, 0.5, 0.25, -1.0, -0.5, -0.25, -0.25, -0.75, 0.25, -0.25, 1.0, 0.5, -0.5, 0.5, 0.25, 0.5, -0.75, -0.75, -1.0, -1.0, -0.5, -0.5, 1.0, 0.0, 0.5, ]);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3030.popDebugGroup()
    const bind_group_layout207 = device20.createBindGroupLayout({ 
        label: "bind_group_layout207",
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
    compute_pass_encoder2050.popDebugGroup()
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    command_encoder400.popDebugGroup()
    buffer3010.destroy()
    command_encoder304.resolveQuerySet(
        query302,
        0,
        32,
        buffer300,
        0
    )
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const command_buffer304 = command_encoder304.finish();
    command_encoder400.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    query202.destroy()
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    query303.destroy()
    query202.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder2030.popDebugGroup()
    
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    query205.destroy()
    
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const bind_group_layout208 = device20.createBindGroupLayout({ 
        label: "bind_group_layout208",
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
    query302.destroy()
    const sampler209 = device20.createSampler( { label: "sampler209" } );
    compute_pass_encoder3020.popDebugGroup()
    
    
    const array16 = new Float32Array([-0.75, 0.25, 0.5, 0.75, 0.75, 0.75, -1.0, -0.25, 0.5, -1.0, -0.5, -1.0, -0.25, -0.25, 0.75, -0.25, 0.5, -1.0, 0.25, -1.0, -0.25, 0.0, -1.0, -0.75, -1.0, -0.75, 1.0, 0.5, -0.5, -0.75, 0.25, -0.75, -0.25, 0.25, 1.0, 0.5, 0.25, 0.25, -0.25, 0.5, 0.0, -0.25, 0.0, 1.0, 0.75, -0.75, 0.25, 0.5, 0.5, -0.25, -0.5, -0.75, 0.5, -0.75, -0.25, 1.0, 0.0, 0.0, -0.25, 0.0, 0.0, -0.5, 0.25, 0.5, 0.5, 0.5, -0.75, 1.0, 1.0, 0.0, 0.0, -0.5, -0.5, 1.0, 0.0, 1.0, 0.25, 0.25, 0.0, 0.5, -0.75, -0.75, -0.5, 0.0, -1.0, -1.0, 1.0, 0.75, 0.75, -1.0, -0.25, 0.0, 0.5, -1.0, 1.0, 0.25, 0.5, 0.0, -0.5, 0.75, ]);
    query304.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer402,
        0
    )
    query304.destroy()
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    
    
    command_encoder207.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    compute_pass_encoder2000.popDebugGroup()
    
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    query203.destroy()
    query202.destroy()
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    const array17 = new Float32Array([1.0, -0.25, 0.5, 0.0, 0.75, 0.75, -1.0, 0.0, 0.25, -0.25, -0.25, -1.0, 0.5, 0.0, 0.0, 0.75, -0.5, -0.5, 0.0, 0.75, 0.25, -0.5, 1.0, -0.5, 0.75, 0.5, -0.75, -0.75, 1.0, 0.75, 0.25, 0.0, 1.0, -0.5, 0.25, 0.25, -0.25, -1.0, -0.25, -0.75, -1.0, -1.0, -1.0, -0.75, -0.25, 0.0, 1.0, 1.0, -0.75, -0.75, 0.25, 1.0, 0.25, 1.0, -1.0, 0.5, 1.0, -0.25, -0.5, 1.0, 1.0, 0.5, -0.75, -0.75, 1.0, 0.75, 0.0, 0.0, 1.0, 0.75, 0.75, 1.0, -1.0, 0.5, 0.5, 0.5, 1.0, 0.25, 0.0, -0.5, -0.75, -0.25, 1.0, 0.0, -0.75, 0.75, -1.0, 0.25, 1.0, -1.0, 0.0, 0.25, 0.75, 0.75, -1.0, 1.0, -0.5, 0.25, 0.25, 0.25, ]);
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    query204.destroy()
    command_encoder207.resolveQuerySet(
        query205,
        0,
        32,
        buffer203,
        0
    )
    query303.destroy()
    
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    command_encoder400.popDebugGroup()
    
    query205.destroy()
    query201.destroy()
    
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    command_encoder207.resolveQuerySet(
        query207,
        0,
        32,
        buffer203,
        0
    )
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    
    
    query200.destroy()
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer403, 0, array12, 0, array12.length);
    query305.destroy()
    device40.queue.writeBuffer(buffer403, 0, array12, 0, array12.length);
    query205.destroy()
    device40.queue.writeBuffer(buffer403, 0, array13, 0, array13.length);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer402,
        0
    )
    buffer402.destroy()
    query206.destroy()
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder207.pushDebugGroup("mygroupmarker")
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    const command_encoder209 = device20.createCommandEncoder({ label: "command_encoder209" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    command_encoder208.resolveQuerySet(
        query207,
        0,
        32,
        buffer203,
        0
    )
    const bind_group_layout209 = device20.createBindGroupLayout({ 
        label: "bind_group_layout209",
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
    compute_pass_encoder2060.popDebugGroup()
    device40.queue.writeBuffer(buffer403, 0, array1, 0, array1.length);
    
    
    
    query207.destroy()
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder209.resolveQuerySet(
        query203,
        0,
        32,
        buffer203,
        0
    )
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer403, 0, array1, 0, array1.length);
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    device40.queue.writeBuffer(buffer403, 0, array14, 0, array14.length);
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    device40.queue.writeBuffer(buffer403, 0, array5, 0, array5.length);
    const command_encoder2010 = device20.createCommandEncoder({ label: "command_encoder2010" });
    command_encoder2010.pushDebugGroup("mygroupmarker")
    
    command_encoder208.resolveQuerySet(
        query207,
        0,
        32,
        buffer203,
        0
    )
    
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder3020.popDebugGroup()
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    device40.queue.writeBuffer(buffer403, 0, array14, 0, array14.length);
    compute_pass_encoder3030.popDebugGroup()
    
    
    query202.destroy()
    device40.queue.writeBuffer(buffer403, 0, array2, 0, array2.length);
    query203.destroy()
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    buffer204.destroy()
    command_encoder209.resolveQuerySet(
        query204,
        0,
        32,
        buffer203,
        0
    )
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    compute_pass_encoder2050.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    const command_buffer208 = command_encoder208.finish();
    const command_buffer209 = command_encoder209.finish();
    command_encoder207.popDebugGroup()
    command_encoder2010.popDebugGroup()
    const command_buffer207 = command_encoder207.finish();
    const command_buffer2010 = command_encoder2010.finish();
    compute_pass_encoder2030.popDebugGroup()
}