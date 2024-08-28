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
    
    
    
    
    
    const array0 = new Float32Array([1.0, 0.0, 1.0, -1.0, 0.5, -0.25, -0.75, -0.5, -0.25, 0.5, 0.25, 0.5, 0.75, -0.75, 0.5, -0.25, -0.75, 0.0, 0.5, -0.5, -0.75, -1.0, 0.0, 1.0, 0.0, 0.0, 0.25, -0.25, -0.5, -1.0, 0.0, -0.5, -0.75, 1.0, 0.25, 0.0, 1.0, 0.5, 0.75, -1.0, 0.5, -0.5, -0.25, -0.5, -0.75, 0.0, -0.75, 0.0, -0.5, -0.5, 0.0, 0.25, 1.0, -0.5, 0.0, 0.5, -0.5, -0.5, -0.5, -0.75, 0.75, 0.25, 0.0, -0.25, -0.25, -0.75, -0.5, 0.75, 0.25, 0.5, 0.0, -0.25, -0.75, 0.75, -0.5, -0.5, 0.0, 1.0, -0.25, -0.75, -0.25, 0.25, -0.25, 0.75, 1.0, -1.0, -1.0, 1.0, 0.5, -0.75, 0.25, -0.25, -0.75, 0.5, 0.0, 0.0, -1.0, -1.0, 0.0, -0.25, ]);
    const array1 = new Float32Array([-0.25, -0.5, 0.75, -0.5, 0.0, -0.25, 0.75, 1.0, 0.25, 1.0, -0.25, 0.25, 0.5, -0.75, 0.5, -0.25, -0.25, -0.75, -0.5, 1.0, -0.25, -1.0, -0.75, 0.75, 0.25, 0.5, 0.25, 1.0, -0.25, 0.5, -0.5, -0.25, -0.25, 0.0, -1.0, 0.75, 0.25, -0.75, -1.0, 0.25, -0.75, -0.25, 1.0, -0.25, 0.0, 0.25, 0.75, 0.25, 0.25, -0.75, -1.0, 1.0, 0.75, 0.25, 0.0, 0.75, 1.0, 0.75, -1.0, 0.75, -0.75, -0.25, 0.5, 0.0, -0.25, 1.0, -0.75, 1.0, -0.5, -0.75, 0.75, -1.0, -0.5, -0.25, 0.75, 0.25, -0.5, -0.75, 0.75, -1.0, 1.0, -0.25, 0.25, -1.0, -0.5, -1.0, 1.0, -0.25, -0.25, -1.0, 0.0, 1.0, 1.0, 0.0, -0.75, 0.5, -1.0, 0.5, 0.75, 0.25, ]);
    
    const array2 = new Float32Array([0.25, -0.75, 0.5, -0.75, -0.25, 0.0, -0.5, 0.25, -0.25, 0.75, 0.75, 0.5, -0.5, 0.75, 0.5, 0.5, 1.0, 0.0, -1.0, 0.5, -0.25, 0.5, 0.0, -0.5, 0.5, -1.0, -0.75, 1.0, 0.75, 0.75, 0.25, -0.5, 0.0, -0.75, -0.25, 0.5, -1.0, 0.0, 0.5, 0.5, -0.25, -0.5, -0.5, 0.25, -1.0, 0.0, -0.5, 0.25, -1.0, 0.75, 1.0, 0.25, -0.75, 0.5, 1.0, 0.25, -0.75, -0.75, -0.5, -0.25, -0.5, 0.0, 0.5, 0.25, -0.5, 1.0, 0.0, 0.0, -0.75, -0.5, 0.5, 0.25, -0.75, -0.5, 1.0, -0.5, -0.25, 0.25, 0.0, -0.75, 0.0, -0.75, 0.0, -1.0, 0.25, -0.5, -0.5, 0.0, 0.0, 0.0, -0.25, 0.25, -0.5, 0.75, -0.75, 0.25, 0.5, 1.0, -1.0, -1.0, ]);
    const array3 = new Float32Array([1.0, -0.5, 1.0, 1.0, 1.0, -0.5, 0.5, 1.0, 1.0, 0.0, 0.0, -0.25, 1.0, -0.75, -0.75, -1.0, 1.0, 1.0, 0.25, 0.75, 0.5, 0.75, -0.75, -0.75, 0.75, 0.75, 0.5, 1.0, 1.0, 0.75, 0.0, -0.5, 0.5, 0.0, -0.75, 0.25, 0.75, 0.75, 0.0, -0.25, 0.0, -0.75, -0.25, -0.5, -1.0, 0.75, 0.0, 0.25, 0.75, 0.75, 1.0, -0.75, 0.25, 0.25, 0.75, 1.0, -1.0, 0.5, 0.0, 0.5, 0.75, 0.75, 1.0, -0.5, -0.25, 0.25, -0.5, -1.0, 0.25, 0.25, -0.5, -1.0, 0.5, -0.25, -1.0, 0.5, 0.5, -0.75, 1.0, -1.0, -0.25, 1.0, -0.5, -0.25, -0.25, 0.75, 0.5, 0.75, 0.25, -1.0, -0.25, 0.75, 0.0, -0.25, 0.5, -0.75, 0.25, 0.25, -0.25, 0.25, ]);
    const array4 = new Float32Array([0.25, 0.5, 1.0, 0.0, -0.5, -0.25, 0.0, -1.0, 0.75, -0.5, 0.75, -0.5, -0.25, 0.0, -0.75, 0.25, -1.0, 0.0, 0.0, -1.0, -0.5, 1.0, 0.0, -0.75, -0.25, 0.25, -1.0, -1.0, 0.5, -1.0, -1.0, -0.5, -0.75, -1.0, -0.5, 1.0, 0.5, -0.5, 0.0, 0.25, 0.0, 0.5, 1.0, 0.5, -0.75, 0.75, -0.75, -1.0, 0.25, 0.25, 0.5, -0.25, -1.0, -0.75, 1.0, 0.25, 0.25, 1.0, 0.0, 0.5, 0.0, 1.0, 0.0, 0.75, -0.25, -0.5, 1.0, -1.0, 1.0, -0.5, -0.75, -0.5, 0.75, 0.75, -0.25, -0.5, 0.25, -0.25, -0.75, -0.75, 0.5, -1.0, -0.75, -0.25, 1.0, 0.75, 1.0, 0.25, 0.5, -0.25, -1.0, -0.75, -0.25, -0.25, 1.0, 0.0, -0.75, -0.75, -1.0, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array5 = new Float32Array([-0.5, -0.25, 0.0, 0.0, -0.75, 0.5, -0.75, -1.0, 0.5, 0.5, -0.25, 0.5, 0.5, -1.0, -0.5, -0.75, 1.0, -0.75, -0.5, -0.5, -0.25, -1.0, -0.75, 1.0, 1.0, 0.5, -0.75, -0.75, 0.25, 0.0, -0.25, 0.5, 1.0, -0.5, 1.0, -1.0, 0.5, 0.25, 0.75, 1.0, -0.5, -0.5, 0.0, 0.0, -1.0, 0.25, 1.0, 0.75, 0.0, -1.0, -0.75, 0.0, -0.5, 0.25, 0.25, 0.75, -0.25, -1.0, 0.5, -0.75, -0.25, -0.25, 0.5, -0.75, 0.0, 0.0, 0.0, 0.25, -0.75, 0.25, -1.0, 0.75, 0.0, 0.25, 1.0, -0.5, 0.5, 0.25, 0.0, 0.75, 0.0, -0.75, 0.25, 0.75, 0.5, 0.5, -0.25, -0.25, -0.5, -0.75, 0.25, -0.5, 0.0, -0.75, -1.0, 1.0, 0.0, 0.75, -0.5, 0.0, ]);
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array6 = new Float32Array([-0.75, 0.25, 0.5, -0.25, -0.25, 0.25, -1.0, -0.5, -0.5, -0.5, 0.25, 0.0, -1.0, -1.0, -0.5, -0.25, 0.25, -0.5, -0.5, -0.75, 0.25, -0.25, 0.0, 0.5, 0.25, 0.25, 0.5, 0.25, -0.75, 0.5, 0.0, 0.75, 1.0, 0.75, 1.0, 1.0, 0.0, 0.0, -0.75, 0.25, 0.75, 0.75, -0.75, 0.0, -0.25, -1.0, 0.75, 0.75, -0.25, -1.0, 0.25, -0.75, -0.5, -0.75, 0.75, 0.25, -0.25, -0.25, 0.0, -0.5, -0.5, -0.75, -0.25, 0.0, 0.5, 0.25, -0.5, 0.75, 1.0, 1.0, -0.75, -0.75, 1.0, -0.5, 1.0, 0.0, -0.5, 0.0, 0.25, 0.5, 0.0, 0.75, 0.5, -0.5, 0.25, -0.25, 0.25, 0.25, 0.25, 0.25, -0.25, -1.0, -0.25, -0.25, 0.25, 1.0, -1.0, -1.0, -1.0, 0.75, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const array7 = new Float32Array([-0.5, 1.0, 0.0, 1.0, 0.25, -0.5, 1.0, -0.5, -1.0, -0.25, -0.25, -0.25, 0.0, 0.0, 0.75, 1.0, -0.5, -0.75, 0.75, -1.0, 0.5, 0.75, -0.5, 1.0, -0.5, 0.25, -1.0, 0.75, -0.75, -0.25, 0.75, -0.25, 0.0, 1.0, -0.75, 0.25, -0.5, -0.75, -0.5, -0.25, 0.0, -1.0, 0.5, -0.25, 0.5, -0.25, 0.75, 0.25, 0.25, -0.25, 0.5, 0.5, -0.25, 0.25, 0.5, 0.25, 0.25, -0.75, -0.25, -0.5, 0.0, 0.75, -1.0, -0.75, 1.0, 0.0, -0.5, -0.75, 0.5, -0.5, -0.25, 0.75, 1.0, 0.0, 0.0, 0.0, -0.5, -0.75, -1.0, 0.5, 0.0, 0.25, 0.0, -0.5, -0.75, 0.5, -0.5, -0.25, -0.25, 0.25, 0.75, 0.75, 0.75, -1.0, 0.5, 0.25, -1.0, 1.0, 0.5, -0.25, ]);
    const array8 = new Float32Array([-0.25, 0.5, 1.0, -0.25, 0.0, 0.0, 0.25, -0.25, -0.5, -0.5, 1.0, -0.5, 0.5, 0.75, 0.75, 0.25, 0.0, -0.25, -0.75, 0.0, -1.0, -1.0, 0.5, 0.5, -0.25, -0.25, -0.25, -0.5, 0.25, -0.25, 1.0, -0.75, 0.75, 1.0, 1.0, -0.5, -1.0, 0.5, -0.75, 1.0, -0.5, -0.25, -0.75, -1.0, -0.75, 1.0, 0.25, 0.0, 0.25, 0.75, -0.75, 1.0, 0.75, -0.5, 0.25, -0.25, -0.25, 0.0, -0.25, -0.5, -0.25, 0.0, -0.75, 0.0, -0.5, 0.0, 0.5, -0.75, -0.75, -0.75, 0.75, -0.25, 0.75, 0.25, -0.5, -0.75, 0.5, -1.0, 0.25, 0.25, 0.75, -0.75, 1.0, 0.0, -1.0, -0.5, -0.5, -0.5, -0.25, 0.0, 0.75, 0.25, -0.5, -1.0, 0.5, -1.0, 1.0, -1.0, -0.25, 0.0, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    buffer000.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device20.destroy();
    
    
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    query300.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32uint",
        dimension: "2d"
    });
    const array9 = new Float32Array([-0.75, -0.25, -0.5, -1.0, 0.5, 0.75, 1.0, 0.75, -1.0, 0.0, 0.5, -0.25, 0.0, -0.75, 0.75, -0.25, -0.5, -1.0, -0.5, 1.0, 0.5, 1.0, 1.0, 0.75, 0.75, -0.5, 1.0, -1.0, 1.0, 0.5, -0.75, 0.5, -1.0, 0.5, 0.25, 0.5, 1.0, 0.75, 0.0, 1.0, 0.5, 0.25, -0.5, 1.0, 1.0, -1.0, 1.0, 0.75, -1.0, 0.75, -0.75, -0.25, 0.5, 0.5, -0.5, 0.5, -0.25, 0.75, -0.25, -0.5, -0.75, 0.5, -1.0, 0.5, 0.0, 1.0, 0.75, 1.0, 0.5, -1.0, 0.25, -0.75, -0.5, 1.0, 0.75, 0.5, 0.75, 0.5, -1.0, -0.5, 0.5, 0.5, -1.0, 0.0, 0.0, 0.5, -0.75, 0.5, 0.5, 0.5, -1.0, 0.75, 0.0, -0.25, -1.0, 0.0, 0.5, 1.0, 1.0, 0.0, ]);
    device30.pushErrorScope("validation");
    
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    texture300.destroy();
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const command_buffer300 = command_encoder300.finish();
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const array10 = new Float32Array([-0.5, 0.75, 0.0, -0.25, -1.0, 0.5, -0.75, 0.25, -1.0, 0.5, 0.5, -0.75, 0.25, -0.75, -1.0, 0.25, 0.25, 0.0, 0.0, 1.0, -1.0, 0.25, 0.75, -0.75, -1.0, 0.5, 0.75, -0.25, 0.0, 0.5, -0.5, 0.75, -0.75, -0.25, -0.5, 0.5, 0.25, 0.75, -0.25, -1.0, -0.25, -0.25, -1.0, -1.0, 1.0, -0.5, -0.25, 0.25, -1.0, 0.25, 0.25, 0.25, 1.0, 0.25, 0.0, 0.25, -0.5, 0.5, -0.75, 0.75, -0.5, -1.0, -1.0, -1.0, -0.75, -0.25, -0.25, 1.0, 0.25, 1.0, -0.5, -0.75, -1.0, 0.5, -0.25, 0.0, -0.5, 0.25, 0.75, -0.5, -1.0, -0.75, 0.0, -0.75, -1.0, -0.25, -0.5, 0.5, -0.5, -1.0, 0.75, 1.0, -1.0, 0.0, 0.0, 0.75, 0.75, -1.0, 0.5, 0.75, ]);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
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
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const command_buffer301 = command_encoder301.finish();
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    query300.destroy()
    compute_pass_encoder4000.insertDebugMarker("marker")
    device10.destroy();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
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
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    texture400.destroy();
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture301.destroy();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer401.destroy()
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device60.destroy();
    
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const array11 = new Float32Array([0.25, -0.5, 0.0, 0.25, -1.0, -1.0, 0.0, 0.75, 0.0, -1.0, 1.0, 0.0, -0.25, -0.5, -1.0, 0.75, -0.5, -0.5, 0.5, -0.75, 0.25, 0.5, -0.5, 0.25, -1.0, 0.5, -1.0, 0.25, -1.0, 0.75, -0.75, 0.5, -0.75, 0.5, -0.75, -0.5, 0.25, -0.5, 0.5, 0.0, -0.25, -1.0, 1.0, -0.5, -0.25, -0.5, -0.5, 0.0, 0.25, 0.5, -1.0, 0.5, -1.0, -1.0, 0.25, 0.5, -0.5, -1.0, 0.5, -0.5, -0.75, 0.5, 0.75, -1.0, -0.75, -0.5, -1.0, -0.5, 1.0, -0.5, 0.25, -0.75, 0.75, -0.75, 0.75, -0.5, 0.25, 1.0, -0.25, -1.0, 0.75, 0.0, -1.0, -0.75, 0.0, 0.25, -0.5, -0.5, -0.5, -0.5, -0.25, 0.25, 0.5, 0.0, -0.75, -0.75, 0.5, 0.5, -0.25, -0.5, ]);
    compute_pass_encoder3020.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device40.queue.writeBuffer(buffer402, 0, array9, 0, array9.length);
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const command_buffer401 = command_encoder401.finish();
    
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    
    
    
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    device40.pushErrorScope("internal");
    compute_pass_encoder3020.setPipeline(compute_pipeline301);
    const array12 = new Float32Array([-0.25, -1.0, -0.25, -0.5, -1.0, 1.0, -1.0, 0.75, 0.25, 0.25, -1.0, 0.25, -0.25, -0.75, 0.75, -0.25, -0.5, -0.75, 0.0, -0.5, -0.25, -0.5, 0.25, -0.25, -0.25, -0.25, 0.5, 1.0, -0.75, -0.5, 0.75, 0.75, 0.75, 0.75, -0.75, 0.5, -1.0, -0.5, 1.0, -0.25, -0.5, 0.0, -0.25, -0.25, 0.25, 1.0, -0.75, -1.0, 0.75, -0.25, -0.5, 0.25, 0.5, 0.25, -0.25, 0.75, 0.75, 0.5, -0.25, -0.75, -1.0, 0.75, 0.25, -1.0, 0.25, -0.75, -0.75, -1.0, 0.75, 0.25, -0.25, 0.25, 1.0, -0.75, -1.0, 0.5, 0.0, 0.75, -0.25, 0.5, -0.5, 1.0, -0.75, -0.25, -0.75, -0.75, 0.25, -0.25, -0.5, -1.0, 0.75, -0.25, 0.75, 1.0, 0.0, -0.75, 1.0, 0.5, -0.25, 0.75, ]);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group300);
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    
    device40.queue.writeTexture({ texture: texture401 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture401 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    buffer400.destroy()
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const array13 = new Float32Array([0.5, 0.5, 1.0, -0.5, 1.0, -1.0, 0.25, 0.75, 0.25, 1.0, 0.25, 0.5, -0.5, -1.0, 1.0, 0.75, -1.0, 0.5, -0.25, 0.0, -0.25, -0.25, 1.0, -0.25, 0.25, -0.5, 1.0, 0.25, -0.75, -0.75, -1.0, 1.0, -0.5, 1.0, -0.25, 0.0, 0.0, 0.0, 1.0, 1.0, 0.0, -0.25, 0.75, -0.75, -0.75, -0.5, -0.25, 1.0, 0.0, 0.25, 0.5, -0.5, -0.25, -0.5, 0.25, 0.0, -0.25, 0.25, 1.0, 1.0, 1.0, -0.75, -0.75, -0.25, -1.0, -1.0, -0.75, 1.0, 0.0, 0.25, -0.75, 1.0, 0.25, -0.75, 1.0, -0.25, -0.25, -0.75, -0.75, 0.0, 0.0, -0.5, 0.0, -0.5, 0.5, 0.75, -0.5, 0.25, 0.25, -0.75, -1.0, 0.0, 0.25, 0.75, 0.5, 0.75, -0.75, -0.75, 0.0, -0.25, ]);
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device40.queue.writeTexture({ texture: texture401 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module400,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    buffer301.destroy()
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeBuffer(buffer402, 0, array10, 0, array10.length);
    
    
    buffer403.destroy()
    device40.queue.writeBuffer(buffer402, 0, array13, 0, array13.length);
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout300]
    });
    device40.queue.writeTexture({ texture: texture401 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.queue.writeBuffer(buffer405, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer405, 0, array10, 0, array10.length);
    
    device40.queue.writeBuffer(buffer402, 0, array8, 0, array8.length);
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer405, 0, array4, 0, array4.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer300, 0, array11, 0, array11.length);
    
    device40.queue.submit([command_buffer401, ]);
    device40.queue.writeBuffer(buffer405, 0, array11, 0, array11.length);
    buffer402.destroy()
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module400,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module400,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    buffer404.destroy()
    device40.queue.writeBuffer(buffer405, 0, array6, 0, array6.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4000.popDebugGroup()
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    buffer302.destroy()
    texture401.destroy();
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device40.queue.writeBuffer(buffer405, 0, array2, 0, array2.length);
    
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
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout301]
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    buffer300.destroy()
    buffer303.destroy()
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module302,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module302,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device40.queue.writeBuffer(buffer405, 0, array6, 0, array6.length);
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    {
        await buffer405.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer405.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer405.unmap();
        console.log(new Float32Array(data));
    }
    device40.queue.writeBuffer(buffer405, 0, array5, 0, array5.length);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
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
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer304, 0, array5, 0, array5.length);
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer304.destroy()
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.setStencilReference(1);
    
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module302,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module302,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device40.queue.writeBuffer(buffer405, 0, array13, 0, array13.length);
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module400,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module400,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    query300.destroy()
    
    const command_buffer303 = command_encoder303.finish();
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3020.popDebugGroup()
    device80.pushErrorScope("validation");
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout309,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    query301.destroy()
    device40.queue.writeBuffer(buffer405, 0, array1, 0, array1.length);
    device40.queue.writeBuffer(buffer405, 0, array4, 0, array4.length);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module403,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module403,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const array14 = new Float32Array([1.0, -0.25, -0.5, 0.0, 0.25, 0.0, -0.75, -0.5, 0.5, 0.5, 1.0, 0.75, 0.5, 0.25, -0.25, -0.5, 0.25, 0.0, 0.5, 0.0, -0.25, 1.0, -0.25, -0.75, -0.75, 0.5, 0.5, 0.25, 0.25, -1.0, -0.25, 0.0, -0.75, -0.75, -0.25, -0.75, -0.5, 0.5, 0.75, -0.5, -0.25, -0.25, 0.25, 1.0, -0.75, -0.75, 0.75, 0.75, 0.5, -1.0, -1.0, 0.25, -0.5, 1.0, 0.75, 0.0, 0.75, 0.0, -0.25, 0.0, 0.25, 0.25, 0.75, 0.25, 0.25, -0.5, -0.75, -0.75, 0.5, 0.25, -0.25, -0.75, -1.0, 1.0, -0.25, -1.0, -0.5, -0.5, 0.25, 0.5, -0.75, -1.0, 0.25, -0.75, -0.5, 0.75, 0.75, 1.0, -0.5, -0.25, 0.75, -0.5, 0.25, -1.0, -0.5, 0.0, -0.25, 0.75, -0.5, 0.25, ]);
    
    render_pass_encoder4020.insertDebugMarker("marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    buffer406.destroy()
    device40.queue.writeBuffer(buffer405, 0, array3, 0, array3.length);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_bundle_encoder300.setPipeline(render_pipeline301);
    render_pass_encoder4020.setPipeline(render_pipeline400);
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout302]
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder800.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout309,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.popDebugGroup();
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer405.destroy()
    render_bundle_encoder400.setPipeline(render_pipeline400);
    
    texture303.destroy();
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device70.destroy();
    render_pass_encoder4020.setStencilReference(1);
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
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout3014,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const command_buffer500 = command_encoder500.finish();
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout302]
    });
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module404,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module404,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout309,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout3015,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    device50.pushErrorScope("validation");
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module403,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module403,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout3015,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32sint",
        dimension: "2d"
    });
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout3015,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout306,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const command_buffer304 = command_encoder304.finish();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    texture402.destroy();
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
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device30.queue.writeTexture({ texture: texture302 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_pass_encoder4020.insertDebugMarker("marker");
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder801.insertDebugMarker("marker");
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout3014,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder800.popDebugGroup();
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder501.insertDebugMarker("mymarker");
    
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    query300.destroy()
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group400);
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
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
    
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder801.insertDebugMarker("marker");
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout301]
    });
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    device30.queue.writeTexture({ texture: texture302 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    
    device30.queue.writeTexture({ texture: texture302 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout3017 = device30.createPipelineLayout({ 
        label: "pipeline_layout3017",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4020.setStencilReference(1);
    render_bundle_encoder401.setPipeline(render_pipeline402);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline3045 = device30.createComputePipeline({
        label: "compute_pipeline3045",
        layout: pipeline_layout3015,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const compute_pipeline3046 = device30.createComputePipeline({
        label: "compute_pipeline3046",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
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
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer307, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer307, 0);
    device30.queue.writeBuffer(buffer307, 0, array6, 0, array6.length);
    const pipeline_layout3018 = device30.createPipelineLayout({ 
        label: "pipeline_layout3018",
        bindGroupLayouts: [bind_group_layout303]
    });
    const compute_pipeline3047 = device30.createComputePipeline({
        label: "compute_pipeline3047",
        layout: pipeline_layout3016,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3048 = device30.createComputePipeline({
        label: "compute_pipeline3048",
        layout: pipeline_layout3016,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const compute_pipeline3049 = device30.createComputePipeline({
        label: "compute_pipeline3049",
        layout: pipeline_layout3017,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3050 = device30.createComputePipeline({
        label: "compute_pipeline3050",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3051 = device30.createComputePipeline({
        label: "compute_pipeline3051",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    buffer407.destroy()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    device30.queue.writeBuffer(buffer307, 0, array1, 0, array1.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline3052 = device30.createComputePipeline({
        label: "compute_pipeline3052",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_buffer305 = command_encoder305.finish();
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    const command_buffer502 = command_encoder502.finish();
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder4020.setVertexBuffer(0, buffer406);
    compute_pass_encoder3020.end();
    device50.queue.submit([command_buffer500, command_buffer502, ]);
    compute_pass_encoder4000.popDebugGroup()
    const command_buffer501 = command_encoder501.finish();
    device50.queue.submit([command_buffer501, ]);
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder4020.drawIndirect(buffer403, 0);
    render_pass_encoder4020.end();
    const command_buffer402 = command_encoder402.finish();
    device40.queue.submit([command_buffer402, ]);
    command_encoder302.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    device30.queue.submit([command_buffer301, command_buffer302, ]);
}