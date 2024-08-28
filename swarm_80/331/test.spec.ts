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
    const array0 = new Float32Array([-0.75, 0.75, -0.25, -0.5, -0.75, -0.75, 1.0, -1.0, -0.75, 0.75, -0.25, 0.0, -1.0, 1.0, -0.75, 0.5, 0.25, -0.5, 0.0, 0.0, -1.0, -0.25, 1.0, -0.75, 0.75, 0.5, -0.5, 0.5, 0.25, 0.0, 0.25, -1.0, 0.0, 0.5, 1.0, -0.25, 1.0, 1.0, -0.25, -0.75, -1.0, 0.75, -0.5, 0.0, -0.25, 1.0, 0.75, -0.75, 0.25, -0.75, -1.0, 0.0, 1.0, 0.75, 0.25, 0.0, 0.25, -0.25, 0.25, -0.75, 1.0, 0.25, -1.0, -0.5, 1.0, -0.5, -0.5, 0.25, -0.5, 0.0, 1.0, -0.5, 1.0, 0.25, -0.5, -0.75, 1.0, -0.25, -0.75, -0.75, -0.25, -0.5, -0.75, -0.5, 0.25, -0.75, 0.5, -1.0, -0.5, 0.0, 0.5, 0.75, -0.5, 0.0, -0.75, -0.75, -0.5, 0.25, 0.0, -1.0, ]);
    const array1 = new Float32Array([1.0, -0.25, -0.5, -0.25, 0.5, 0.0, 0.0, 0.0, -0.25, 0.75, -0.25, 0.75, -0.5, -1.0, 0.75, 0.25, -1.0, -0.5, -0.5, 1.0, -0.5, 0.5, -0.75, 0.0, 0.75, -1.0, 0.75, 0.25, 0.5, 0.5, 0.5, -1.0, -1.0, -1.0, 0.25, -1.0, 0.5, -0.75, 0.75, -0.5, 1.0, 0.25, 1.0, 0.75, 0.75, 0.5, -0.5, 0.0, 0.5, -0.25, 0.75, -0.25, 1.0, -0.75, -1.0, 0.5, -0.75, -0.5, 1.0, -0.25, 0.75, -0.25, -0.75, 0.25, -1.0, 0.25, -0.5, -0.5, 0.75, 0.75, 0.75, 0.0, 0.0, -1.0, -0.75, -0.75, 0.5, 0.0, 0.0, 0.5, 0.0, 0.0, -0.25, 0.25, 0.0, 1.0, -0.5, 0.0, 0.0, -0.75, -0.25, -0.75, 0.5, -1.0, 1.0, -0.75, 0.0, 0.0, -0.75, 0.75, ]);
    const array2 = new Float32Array([0.0, 1.0, 0.0, -0.25, -1.0, -0.5, -0.25, -0.5, 1.0, 0.25, -0.75, 1.0, -0.75, 1.0, -0.25, 0.25, -0.75, -1.0, 0.5, 0.75, 0.0, -0.5, 0.0, -0.5, 0.5, -0.25, 0.75, 0.0, -0.5, -0.75, -1.0, 0.25, 0.75, -0.5, -0.5, 0.5, 1.0, -0.5, 0.75, -0.5, 0.75, 0.25, 0.75, 1.0, 0.5, 0.25, 0.0, 0.0, 0.0, 0.75, -0.25, 0.25, -0.75, 0.75, 0.25, 0.0, -1.0, 0.0, 0.0, 1.0, 0.0, -1.0, -1.0, -1.0, -0.25, -1.0, -0.75, -1.0, 0.5, 0.75, 0.0, 0.0, -1.0, 1.0, -0.25, -1.0, 0.0, 1.0, -0.75, -0.25, 0.0, -0.5, -1.0, 0.75, -0.25, -0.75, 0.75, -1.0, -0.5, 0.75, -0.25, 0.75, 0.25, -0.5, -0.75, 0.25, -0.75, -0.75, -0.75, 0.75, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array3 = new Float32Array([-0.5, -0.75, 0.25, 0.25, 1.0, 0.25, -0.25, -0.75, 1.0, 1.0, 0.0, -0.5, -0.25, -1.0, 1.0, 0.25, 0.0, 0.75, 0.75, -0.75, -0.75, 1.0, 0.25, 0.5, 1.0, -0.25, -0.75, 1.0, 0.75, -0.25, 0.25, -0.75, 1.0, 0.5, 0.75, 0.25, 0.25, -0.5, -1.0, 0.5, 0.5, 1.0, 0.5, 1.0, 0.25, 0.5, -0.75, -0.5, 0.75, 0.0, -1.0, -1.0, 0.0, -0.5, 0.0, -1.0, 0.0, -1.0, -1.0, -0.75, -0.5, 0.5, 0.5, 0.75, 0.25, 0.75, 0.0, -1.0, -1.0, -0.75, -0.75, 1.0, 0.0, 1.0, 0.75, 0.0, -0.25, 1.0, -0.5, 0.5, 1.0, -0.25, -1.0, 0.25, 0.0, -1.0, -0.5, -1.0, -1.0, 0.0, -0.5, 0.75, 0.5, 0.0, -1.0, 0.25, -0.75, -0.25, -0.75, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture000.destroy();
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device00.destroy();
    
    
    const array4 = new Float32Array([0.5, -0.5, 0.5, -0.75, -1.0, -0.5, 1.0, -0.5, -0.25, -1.0, -1.0, 0.75, -0.75, -1.0, -0.5, 0.25, -0.25, -0.25, -0.5, -1.0, -0.25, -0.25, 0.0, 0.25, 0.75, 0.75, 0.0, -0.75, -0.75, 0.5, 0.5, 1.0, -0.25, 0.0, 0.75, -0.5, -1.0, 0.75, 0.5, 0.75, 0.25, 0.75, -0.75, -1.0, -0.75, 0.25, -0.75, -0.75, 0.5, -0.5, 0.0, 1.0, 1.0, -0.25, 0.25, 1.0, -0.75, -0.25, 1.0, 0.25, -0.75, -0.25, -0.5, 0.75, 0.75, 0.5, 0.75, 0.5, -0.25, -0.75, -0.5, -1.0, -0.75, -0.25, 0.5, 0.5, -0.75, -1.0, -0.75, -0.5, -0.25, 0.0, 0.5, -1.0, -1.0, 0.0, 1.0, -0.75, -1.0, 0.75, -0.25, 0.0, -0.25, 0.0, -0.75, 1.0, -0.5, 0.75, -0.25, -0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([0.75, -0.75, 0.25, 0.75, 0.0, -0.25, 1.0, 0.25, -0.75, 0.5, 0.75, 0.25, -1.0, 0.5, 1.0, -0.5, -0.25, 0.25, 0.0, 0.0, 0.0, -0.25, 0.25, -0.5, -0.5, -1.0, -0.75, 1.0, -1.0, 0.5, -0.25, 0.75, 0.0, -0.75, -0.25, 1.0, 1.0, 0.0, 1.0, 0.75, -0.5, 0.0, 1.0, -0.5, 0.0, -0.5, 0.25, 0.0, 1.0, 0.75, 0.75, -1.0, -0.25, -0.25, 0.25, 0.5, -0.25, 0.75, 1.0, 0.25, -0.75, -1.0, -0.25, 0.25, 0.75, -0.25, -0.25, 0.0, -0.75, -0.5, -0.25, -1.0, 0.25, -0.5, 0.0, -0.75, 0.25, -0.75, 0.5, -0.25, 0.75, -0.5, 0.0, 0.75, -1.0, 0.0, 0.0, 0.75, 0.25, 0.5, 0.25, 0.5, -0.5, 0.25, 0.25, 0.0, 1.0, 0.75, -0.5, 0.25, ]);
    device10.destroy();
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    query200.destroy()
    device20.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
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
    const array6 = new Float32Array([1.0, 0.75, -1.0, 0.0, 0.25, 0.0, 0.25, 1.0, 0.0, 0.25, 0.25, -0.5, -0.5, 0.25, 1.0, 0.0, -0.25, 0.75, 0.75, -0.5, -0.75, 1.0, 1.0, -0.75, 0.75, -0.75, 0.25, -0.25, 0.75, 0.0, 0.5, -0.5, 1.0, -0.5, 1.0, -0.75, -0.5, 0.0, 0.0, -0.75, -1.0, 0.0, 0.75, 1.0, 0.5, -0.5, -1.0, -0.75, 0.75, 0.0, 1.0, -0.25, -0.25, 0.0, -0.5, -0.25, 0.25, 0.75, -0.25, 0.5, -0.25, 0.25, 0.0, 0.25, -0.25, 0.0, 0.0, -0.75, 0.5, -0.75, -0.25, 1.0, -0.25, 1.0, -0.75, -0.75, 0.5, 0.0, 0.5, -0.25, 0.25, 0.75, 0.0, 0.5, 1.0, -1.0, -0.25, 1.0, 0.5, 0.0, 0.0, -0.25, -0.5, 0.5, 0.5, 0.75, 1.0, -1.0, 0.25, -1.0, ]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.destroy();
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    command_encoder600.insertDebugMarker("mymarker");
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const array7 = new Float32Array([0.75, 0.5, -0.75, 0.25, -1.0, -1.0, 1.0, -0.25, 0.75, -0.5, -0.75, 0.0, 0.75, 0.75, 0.0, 0.0, 0.0, -1.0, 0.75, 0.0, -1.0, -0.75, -1.0, -0.75, 0.25, 0.75, 1.0, -0.5, -0.5, 0.75, -0.25, -0.25, -0.25, 0.5, -0.25, -0.25, 0.75, -0.75, 0.5, -0.5, 0.75, -0.75, -0.75, -0.5, 1.0, 0.0, -0.25, -0.25, 0.75, 0.0, -1.0, 0.0, 0.25, 0.75, 0.25, -0.5, -0.5, 0.25, -0.5, -0.25, -0.25, -1.0, -0.5, 0.75, 0.25, 0.0, -1.0, 0.5, 0.5, -0.25, -1.0, -0.5, 0.0, -0.75, 0.5, 0.25, 0.25, -0.75, -0.25, 0.25, 0.0, 0.75, 0.5, 0.5, 0.5, 1.0, 0.5, 0.75, -0.25, -0.5, 0.25, 0.25, 0.25, 0.25, 0.75, -0.75, 0.0, 0.25, -1.0, 1.0, ]);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device40.destroy();
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
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
    const query700 = device70.createQuerySet({
        label: "query700",
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
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
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
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    
    
    const array8 = new Float32Array([-0.5, 0.5, 1.0, 1.0, -0.25, -0.25, 0.75, 1.0, 0.0, -0.75, 1.0, 1.0, 0.5, 1.0, 0.25, 0.5, 0.25, 1.0, 0.75, -0.5, 0.5, 0.25, -0.5, 1.0, -1.0, 0.5, -0.75, 1.0, 1.0, 0.5, -0.25, 0.5, 0.0, -0.25, 0.0, -0.5, 1.0, 0.25, 0.5, -0.25, 0.0, -0.25, -1.0, 1.0, 1.0, 0.75, 0.5, 0.75, -1.0, 0.5, 0.75, -0.25, 0.5, -0.5, -0.5, -1.0, -0.75, 1.0, 0.75, -0.75, -0.25, -0.5, 0.5, -0.25, 0.25, 1.0, -1.0, -1.0, -1.0, 1.0, -0.5, -0.5, -0.25, 0.0, -0.25, 0.0, -1.0, 0.25, 0.25, 0.0, -0.5, -0.25, -0.25, 0.75, 0.0, -0.75, 0.25, 0.75, 0.25, -0.5, -0.25, 1.0, -0.75, -1.0, 1.0, 0.0, 1.0, -0.25, 0.0, 0.0, ]);
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
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    texture700.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture600.destroy();
    device50.destroy();
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    buffer601.destroy()
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device70.destroy();
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const sampler600 = device60.createSampler( { label: "sampler600" } );
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
    buffer600.destroy()
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
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
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture601.destroy();
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout604,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6020.insertDebugMarker("marker")
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout603,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture602.destroy();
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout603,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout605,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6000.popDebugGroup()
    const compute_pipeline6013 = device60.createComputePipeline({
        label: "compute_pipeline6013",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const compute_pipeline6014 = device60.createComputePipeline({
        label: "compute_pipeline6014",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const compute_pipeline6015 = device60.createComputePipeline({
        label: "compute_pipeline6015",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder6020.popDebugGroup()
    const compute_pipeline6016 = device60.createComputePipeline({
        label: "compute_pipeline6016",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const compute_pipeline6017 = device60.createComputePipeline({
        label: "compute_pipeline6017",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    command_encoder601.insertDebugMarker("mymarker");
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    const compute_pipeline6018 = device60.createComputePipeline({
        label: "compute_pipeline6018",
        layout: pipeline_layout601,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline6019 = device60.createComputePipeline({
        label: "compute_pipeline6019",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6020 = device60.createComputePipeline({
        label: "compute_pipeline6020",
        layout: pipeline_layout604,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    texture603.destroy();
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const command_buffer601 = command_encoder601.finish();
    compute_pass_encoder6000.insertDebugMarker("marker")
    const compute_pipeline6021 = device60.createComputePipeline({
        label: "compute_pipeline6021",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    query1000.destroy()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline6022 = device60.createComputePipeline({
        label: "compute_pipeline6022",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    query1000.destroy()
    query600.destroy()
    const compute_pipeline6023 = device60.createComputePipeline({
        label: "compute_pipeline6023",
        layout: pipeline_layout605,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    device100.queue.writeBuffer(buffer1000, 0, array0, 0, array0.length);
    device100.queue.writeBuffer(buffer1000, 0, array4, 0, array4.length);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
    
    
    const compute_pipeline6024 = device60.createComputePipeline({
        label: "compute_pipeline6024",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline6025 = device60.createComputePipeline({
        label: "compute_pipeline6025",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    const compute_pipeline6026 = device60.createComputePipeline({
        label: "compute_pipeline6026",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline6027 = device60.createComputePipeline({
        label: "compute_pipeline6027",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline6028 = device60.createComputePipeline({
        label: "compute_pipeline6028",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    command_encoder603.insertDebugMarker("mymarker");
    const compute_pipeline6029 = device60.createComputePipeline({
        label: "compute_pipeline6029",
        layout: pipeline_layout604,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout600]
    });
    const command_buffer603 = command_encoder603.finish();
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const compute_pipeline6030 = device60.createComputePipeline({
        label: "compute_pipeline6030",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6031 = device60.createComputePipeline({
        label: "compute_pipeline6031",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    query600.destroy()
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline6032 = device60.createComputePipeline({
        label: "compute_pipeline6032",
        layout: pipeline_layout605,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    query1000.destroy()
    const compute_pipeline6033 = device60.createComputePipeline({
        label: "compute_pipeline6033",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6034 = device60.createComputePipeline({
        label: "compute_pipeline6034",
        layout: pipeline_layout606,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6035 = device60.createComputePipeline({
        label: "compute_pipeline6035",
        layout: pipeline_layout604,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline6036 = device60.createComputePipeline({
        label: "compute_pipeline6036",
        layout: pipeline_layout606,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout601]
    });
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout601]
    });
    const pipeline_layout609 = device60.createPipelineLayout({ 
        label: "pipeline_layout609",
        bindGroupLayouts: [bind_group_layout601]
    });
    const array9 = new Float32Array([0.0, 0.0, -1.0, -0.25, -0.75, 0.5, -0.25, -0.5, 0.25, -1.0, -0.75, -0.5, -0.5, 0.75, 0.5, -0.5, 0.75, -1.0, -0.5, -0.25, -0.75, -1.0, -0.5, -0.25, 1.0, 0.75, -0.75, 0.5, 1.0, -0.5, 0.25, 0.0, -0.5, -1.0, -0.75, -0.5, 0.25, -0.75, -1.0, 0.75, 0.0, -1.0, 0.0, 1.0, -1.0, -1.0, -0.5, 0.75, -0.75, 0.0, 0.25, -0.25, -0.75, 1.0, -0.75, 1.0, 0.25, -0.25, 0.25, -0.75, 1.0, 1.0, 0.25, -0.75, 0.0, 0.5, -1.0, 0.75, 0.25, 0.5, -0.75, -0.5, 0.75, 1.0, 1.0, 0.5, -1.0, 0.75, -1.0, -1.0, 0.75, 0.75, 0.75, 0.5, 0.75, -1.0, 0.5, 0.5, 0.5, -0.75, 0.0, -0.5, 0.0, -0.25, 0.75, -0.5, -1.0, 0.0, -0.5, 1.0, ]);
    const compute_pipeline6037 = device60.createComputePipeline({
        label: "compute_pipeline6037",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    query1000.destroy()
    const compute_pipeline6038 = device60.createComputePipeline({
        label: "compute_pipeline6038",
        layout: pipeline_layout608,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    query1001.destroy()
    const compute_pipeline6039 = device60.createComputePipeline({
        label: "compute_pipeline6039",
        layout: pipeline_layout605,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline6040 = device60.createComputePipeline({
        label: "compute_pipeline6040",
        layout: pipeline_layout609,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline6041 = device60.createComputePipeline({
        label: "compute_pipeline6041",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device80.destroy();
    
    const compute_pipeline6042 = device60.createComputePipeline({
        label: "compute_pipeline6042",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6043 = device60.createComputePipeline({
        label: "compute_pipeline6043",
        layout: pipeline_layout607,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
    const compute_pipeline6044 = device60.createComputePipeline({
        label: "compute_pipeline6044",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6045 = device60.createComputePipeline({
        label: "compute_pipeline6045",
        layout: pipeline_layout605,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline6046 = device60.createComputePipeline({
        label: "compute_pipeline6046",
        layout: pipeline_layout607,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6047 = device60.createComputePipeline({
        label: "compute_pipeline6047",
        layout: pipeline_layout604,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline6048 = device60.createComputePipeline({
        label: "compute_pipeline6048",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const pipeline_layout6010 = device60.createPipelineLayout({ 
        label: "pipeline_layout6010",
        bindGroupLayouts: [bind_group_layout600]
    });
    device100.queue.writeBuffer(buffer1000, 0, array8, 0, array8.length);
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const compute_pipeline6049 = device60.createComputePipeline({
        label: "compute_pipeline6049",
        layout: pipeline_layout604,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    buffer1000.destroy()
    
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
    texture1001.destroy();
    const compute_pipeline6050 = device60.createComputePipeline({
        label: "compute_pipeline6050",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6051 = device60.createComputePipeline({
        label: "compute_pipeline6051",
        layout: pipeline_layout606,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6052 = device60.createComputePipeline({
        label: "compute_pipeline6052",
        layout: pipeline_layout605,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    buffer602.destroy()
    
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline6053 = device60.createComputePipeline({
        label: "compute_pipeline6053",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6054 = device60.createComputePipeline({
        label: "compute_pipeline6054",
        layout: pipeline_layout604,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline6055 = device60.createComputePipeline({
        label: "compute_pipeline6055",
        layout: pipeline_layout608,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    const compute_pipeline6056 = device60.createComputePipeline({
        label: "compute_pipeline6056",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline6057 = device60.createComputePipeline({
        label: "compute_pipeline6057",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    query602.destroy()
    
    
    const command_encoder1201 = device120.createCommandEncoder({ label: "command_encoder1201" });
    texture1002.destroy();
    
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
    const texture1003 = device100.createTexture({
        label: "texture1003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const compute_pipeline6058 = device60.createComputePipeline({
        label: "compute_pipeline6058",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline6059 = device60.createComputePipeline({
        label: "compute_pipeline6059",
        layout: pipeline_layout606,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6060 = device60.createComputePipeline({
        label: "compute_pipeline6060",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const compute_pass_encoder12010 = command_encoder1201.beginComputePass({ label: "compute_pass_encoder12010" });
    const compute_pipeline6061 = device60.createComputePipeline({
        label: "compute_pipeline6061",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    
    const compute_pipeline6062 = device60.createComputePipeline({
        label: "compute_pipeline6062",
        layout: pipeline_layout607,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6063 = device60.createComputePipeline({
        label: "compute_pipeline6063",
        layout: pipeline_layout606,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device60.queue.submit([command_buffer601, ]);
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const texture_view10030 = texture1003.createView({ label: "texture_view10030" });
    const compute_pipeline6064 = device60.createComputePipeline({
        label: "compute_pipeline6064",
        layout: pipeline_layout602,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    query601.destroy()
    const compute_pipeline6065 = device60.createComputePipeline({
        label: "compute_pipeline6065",
        layout: pipeline_layout603,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6066 = device60.createComputePipeline({
        label: "compute_pipeline6066",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline6067 = device60.createComputePipeline({
        label: "compute_pipeline6067",
        layout: pipeline_layout602,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline6068 = device60.createComputePipeline({
        label: "compute_pipeline6068",
        layout: pipeline_layout608,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline6069 = device60.createComputePipeline({
        label: "compute_pipeline6069",
        layout: pipeline_layout604,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6070 = device60.createComputePipeline({
        label: "compute_pipeline6070",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6071 = device60.createComputePipeline({
        label: "compute_pipeline6071",
        layout: pipeline_layout600,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline6072 = device60.createComputePipeline({
        label: "compute_pipeline6072",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6073 = device60.createComputePipeline({
        label: "compute_pipeline6073",
        layout: pipeline_layout606,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    command_encoder1200.pushDebugGroup("mygroupmarker")
    
    query1000.destroy()
    const array10 = new Float32Array([0.25, -0.25, 0.25, 0.25, 1.0, -0.5, 0.75, 0.75, 0.5, 0.5, 1.0, 0.5, 0.75, -0.75, 0.75, -0.5, 0.25, 1.0, -0.25, -1.0, 0.25, -0.5, -0.25, 0.75, 1.0, -0.5, 0.75, 1.0, 0.75, 0.75, 0.5, 0.0, -1.0, 0.0, 0.0, -1.0, 0.25, -0.5, -0.25, 0.25, 0.25, -0.5, 0.5, 0.0, 0.25, 0.25, 1.0, 0.0, 0.0, 0.75, -0.25, -0.5, 1.0, 1.0, -0.25, -0.5, -0.75, 1.0, -0.75, -0.5, 1.0, -0.5, -0.75, 0.25, -0.5, -0.75, 1.0, 0.0, -1.0, 0.5, -0.5, 0.5, 1.0, -1.0, -0.5, -0.75, -0.75, -0.25, -0.5, -0.25, 0.5, -1.0, -0.5, 0.0, -0.5, 0.5, 0.5, -0.25, 1.0, 0.5, -0.75, 0.75, -0.5, 1.0, 0.5, -1.0, -0.5, 0.75, 0.5, 0.5, ]);
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    const compute_pipeline6074 = device60.createComputePipeline({
        label: "compute_pipeline6074",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const array11 = new Float32Array([1.0, -0.5, -1.0, -0.25, -0.75, 0.75, -0.25, -0.5, 0.75, 0.25, -0.75, -0.5, 1.0, -0.25, -0.5, -0.5, 0.25, -0.75, 1.0, 0.25, -0.5, -1.0, 0.75, -0.5, -0.75, -0.25, 0.0, 0.5, 0.25, 0.75, 1.0, 0.75, 0.5, 0.5, 0.5, 0.0, -1.0, -1.0, -0.75, 0.0, 0.25, -0.25, -0.75, 1.0, -0.5, 0.25, -0.75, -1.0, 0.25, 0.75, -0.25, 0.25, 0.75, 1.0, 0.75, -0.75, 0.75, -0.75, -0.75, -1.0, 0.25, 0.0, -0.5, 0.5, 0.5, -0.25, -1.0, 1.0, 0.25, 1.0, -0.5, 0.0, -0.75, -1.0, -0.75, -0.75, 1.0, 0.25, 0.25, 0.25, 0.0, 0.25, 0.75, -0.25, 0.5, 0.75, -1.0, -0.75, -0.75, -0.25, 0.0, -0.75, 0.5, 0.25, 0.0, 1.0, -0.25, -0.75, 0.5, -0.75, ]);
    const compute_pipeline6075 = device60.createComputePipeline({
        label: "compute_pipeline6075",
        layout: pipeline_layout607,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const compute_pipeline6076 = device60.createComputePipeline({
        label: "compute_pipeline6076",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    const compute_pass_encoder12000 = command_encoder1200.beginComputePass({ label: "compute_pass_encoder12000" });
    const query1002 = device100.createQuerySet({
        label: "query1002",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline6077 = device60.createComputePipeline({
        label: "compute_pipeline6077",
        layout: pipeline_layout605,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline6078 = device60.createComputePipeline({
        label: "compute_pipeline6078",
        layout: pipeline_layout608,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline6079 = device60.createComputePipeline({
        label: "compute_pipeline6079",
        layout: pipeline_layout607,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    command_encoder1100.insertDebugMarker("mymarker");
    device120.queue.writeTexture({ texture: texture1200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder6040 = command_encoder604.beginRenderPass({
        label: "render_pass_encoder6040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: query602
    });
    const compute_pipeline6080 = device60.createComputePipeline({
        label: "compute_pipeline6080",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6081 = device60.createComputePipeline({
        label: "compute_pipeline6081",
        layout: pipeline_layout602,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline6082 = device60.createComputePipeline({
        label: "compute_pipeline6082",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline6083 = device60.createComputePipeline({
        label: "compute_pipeline6083",
        layout: pipeline_layout606,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    device120.queue.writeTexture({ texture: texture1200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    const array12 = new Float32Array([0.5, 0.0, 0.75, -0.5, 1.0, 0.75, 0.5, 0.75, 1.0, -1.0, -0.5, -0.5, 1.0, -1.0, 0.75, 0.0, -0.75, -1.0, 1.0, -0.25, -0.5, -0.25, 0.0, -0.5, -0.25, 0.0, -1.0, 0.25, 1.0, -0.25, 0.25, 0.0, -0.25, -0.25, 1.0, -0.5, 0.5, -0.75, 0.5, -1.0, 0.5, -0.5, -0.75, -1.0, -0.5, -0.5, 0.5, 1.0, 0.75, 0.5, -1.0, 0.5, 0.25, -1.0, -0.75, 0.25, 1.0, 0.5, 0.5, -0.5, 1.0, 0.5, -0.25, 0.75, 0.25, 0.0, -1.0, -0.75, 0.0, 0.5, -0.75, 0.0, 0.25, -1.0, -1.0, -0.75, -0.5, -0.5, 0.0, 0.5, 0.0, 0.5, 1.0, 0.75, -0.5, -0.5, -1.0, 0.5, 0.5, 1.0, 0.75, -0.75, 0.5, 0.25, 0.75, 0.5, -0.25, 0.75, -0.75, -1.0, ]);
    const compute_pipeline6084 = device60.createComputePipeline({
        label: "compute_pipeline6084",
        layout: pipeline_layout607,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline6085 = device60.createComputePipeline({
        label: "compute_pipeline6085",
        layout: pipeline_layout608,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    render_pass_encoder6040.executeBundles([])
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile(__dirname + '/shader_module606.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    query1000.destroy()
    device120.queue.writeTexture({ texture: texture1200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline6086 = device60.createComputePipeline({
        label: "compute_pipeline6086",
        layout: pipeline_layout609,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const query1003 = device100.createQuerySet({
        label: "query1003",
        type: "occlusion",
        count: 32,
    });
    device120.queue.writeTexture({ texture: texture1200 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1004 = device100.createTexture({
        label: "texture1004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    const compute_pipeline6087 = device60.createComputePipeline({
        label: "compute_pipeline6087",
        layout: pipeline_layout609,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    const compute_pipeline6088 = device60.createComputePipeline({
        label: "compute_pipeline6088",
        layout: pipeline_layout607,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const compute_pipeline6089 = device60.createComputePipeline({
        label: "compute_pipeline6089",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6090 = device60.createComputePipeline({
        label: "compute_pipeline6090",
        layout: pipeline_layout608,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile(__dirname + '/shader_module607.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    const compute_pipeline6091 = device60.createComputePipeline({
        label: "compute_pipeline6091",
        layout: pipeline_layout606,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder11000 = command_encoder1100.beginComputePass({ label: "compute_pass_encoder11000" });
    const command_encoder1101 = device110.createCommandEncoder({ label: "command_encoder1101" });
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
    const texture1005 = device100.createTexture({
        label: "texture1005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32sint",
        dimension: "2d"
    });
    const compute_pipeline6092 = device60.createComputePipeline({
        label: "compute_pipeline6092",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline6093 = device60.createComputePipeline({
        label: "compute_pipeline6093",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6094 = device60.createComputePipeline({
        label: "compute_pipeline6094",
        layout: pipeline_layout607,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const compute_pipeline6095 = device60.createComputePipeline({
        label: "compute_pipeline6095",
        layout: pipeline_layout608,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline6096 = device60.createComputePipeline({
        label: "compute_pipeline6096",
        layout: pipeline_layout609,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const command_encoder1102 = device110.createCommandEncoder({ label: "command_encoder1102" });
    const pipeline_layout6011 = device60.createPipelineLayout({ 
        label: "pipeline_layout6011",
        bindGroupLayouts: [bind_group_layout601]
    });
    texture1100.destroy();
    const compute_pipeline6097 = device60.createComputePipeline({
        label: "compute_pipeline6097",
        layout: pipeline_layout609,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6098 = device60.createComputePipeline({
        label: "compute_pipeline6098",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6099 = device60.createComputePipeline({
        label: "compute_pipeline6099",
        layout: pipeline_layout602,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const texture_view12000 = texture1200.createView({ label: "texture_view12000" });
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    device100.destroy();
    const compute_pipeline60100 = device60.createComputePipeline({
        label: "compute_pipeline60100",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    render_pass_encoder6040.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    const compute_pipeline60101 = device60.createComputePipeline({
        label: "compute_pipeline60101",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
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
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile(__dirname + '/shader_module608.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    
    const compute_pipeline60102 = device60.createComputePipeline({
        label: "compute_pipeline60102",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline60103 = device60.createComputePipeline({
        label: "compute_pipeline60103",
        layout: pipeline_layout607,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline60104 = device60.createComputePipeline({
        label: "compute_pipeline60104",
        layout: pipeline_layout605,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    const compute_pipeline60105 = device60.createComputePipeline({
        label: "compute_pipeline60105",
        layout: pipeline_layout602,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline60106 = device60.createComputePipeline({
        label: "compute_pipeline60106",
        layout: pipeline_layout605,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const compute_pipeline60107 = device60.createComputePipeline({
        label: "compute_pipeline60107",
        layout: pipeline_layout609,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline60108 = device60.createComputePipeline({
        label: "compute_pipeline60108",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline60109 = device60.createComputePipeline({
        label: "compute_pipeline60109",
        layout: pipeline_layout608,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    const compute_pipeline60110 = device60.createComputePipeline({
        label: "compute_pipeline60110",
        layout: pipeline_layout604,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    const compute_pipeline60111 = device60.createComputePipeline({
        label: "compute_pipeline60111",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    const compute_pipeline60112 = device60.createComputePipeline({
        label: "compute_pipeline60112",
        layout: pipeline_layout600,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline60113 = device60.createComputePipeline({
        label: "compute_pipeline60113",
        layout: pipeline_layout606,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline60114 = device60.createComputePipeline({
        label: "compute_pipeline60114",
        layout: pipeline_layout603,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    const compute_pipeline60115 = device60.createComputePipeline({
        label: "compute_pipeline60115",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    compute_pass_encoder12000.pushDebugGroup("group_marker")
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    render_pass_encoder6040.insertDebugMarker("marker");
    query601.destroy()
    const compute_pipeline60116 = device60.createComputePipeline({
        label: "compute_pipeline60116",
        layout: pipeline_layout606,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    render_pass_encoder6040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline60117 = device60.createComputePipeline({
        label: "compute_pipeline60117",
        layout: pipeline_layout606,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline60118 = device60.createComputePipeline({
        label: "compute_pipeline60118",
        layout: pipeline_layout606,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    device120.queue.writeTexture({ texture: texture1200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline60119 = device60.createComputePipeline({
        label: "compute_pipeline60119",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    const compute_pipeline60120 = device60.createComputePipeline({
        label: "compute_pipeline60120",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline60121 = device60.createComputePipeline({
        label: "compute_pipeline60121",
        layout: pipeline_layout604,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline60122 = device60.createComputePipeline({
        label: "compute_pipeline60122",
        layout: pipeline_layout602,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const compute_pipeline60123 = device60.createComputePipeline({
        label: "compute_pipeline60123",
        layout: pipeline_layout608,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline60124 = device60.createComputePipeline({
        label: "compute_pipeline60124",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline60125 = device60.createComputePipeline({
        label: "compute_pipeline60125",
        layout: pipeline_layout605,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline60126 = device60.createComputePipeline({
        label: "compute_pipeline60126",
        layout: pipeline_layout607,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline60127 = device60.createComputePipeline({
        label: "compute_pipeline60127",
        layout: pipeline_layout606,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline60128 = device60.createComputePipeline({
        label: "compute_pipeline60128",
        layout: pipeline_layout602,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    const compute_pipeline60129 = device60.createComputePipeline({
        label: "compute_pipeline60129",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device120.queue.writeTexture({ texture: texture1200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    query1200.destroy()
    
    
    const pipeline_layout1101 = device110.createPipelineLayout({ 
        label: "pipeline_layout1101",
        bindGroupLayouts: [bind_group_layout1101]
    });
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1200]
    });
    
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile(__dirname + '/shader_module1101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    const compute_pipeline60130 = device60.createComputePipeline({
        label: "compute_pipeline60130",
        layout: pipeline_layout607,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline60131 = device60.createComputePipeline({
        label: "compute_pipeline60131",
        layout: pipeline_layout605,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    
    query602.destroy()
    compute_pass_encoder6020.insertDebugMarker("marker")
    render_pass_encoder6040.executeBundles([])
    const compute_pass_encoder11010 = command_encoder1101.beginComputePass({ label: "compute_pass_encoder11010" });
    const compute_pipeline60132 = device60.createComputePipeline({
        label: "compute_pipeline60132",
        layout: pipeline_layout602,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    compute_pass_encoder11000.insertDebugMarker("marker")
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline60133 = device60.createComputePipeline({
        label: "compute_pipeline60133",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline60134 = device60.createComputePipeline({
        label: "compute_pipeline60134",
        layout: pipeline_layout603,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline60135 = device60.createComputePipeline({
        label: "compute_pipeline60135",
        layout: pipeline_layout609,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline60136 = device60.createComputePipeline({
        label: "compute_pipeline60136",
        layout: pipeline_layout606,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const compute_pipeline60137 = device60.createComputePipeline({
        label: "compute_pipeline60137",
        layout: pipeline_layout604,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    render_pass_encoder6040.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const compute_pipeline60138 = device60.createComputePipeline({
        label: "compute_pipeline60138",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    query604.destroy()
    const compute_pipeline60139 = device60.createComputePipeline({
        label: "compute_pipeline60139",
        layout: pipeline_layout603,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline60140 = device60.createComputePipeline({
        label: "compute_pipeline60140",
        layout: pipeline_layout600,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline60141 = device60.createComputePipeline({
        label: "compute_pipeline60141",
        layout: pipeline_layout605,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline60142 = device60.createComputePipeline({
        label: "compute_pipeline60142",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline60143 = device60.createComputePipeline({
        label: "compute_pipeline60143",
        layout: pipeline_layout604,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder11020 = command_encoder1102.beginRenderPass({
        label: "render_pass_encoder11020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view11000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline60144 = device60.createComputePipeline({
        label: "compute_pipeline60144",
        layout: pipeline_layout606,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const pipeline_layout6012 = device60.createPipelineLayout({ 
        label: "pipeline_layout6012",
        bindGroupLayouts: [bind_group_layout601]
    });
    const compute_pipeline60145 = device60.createComputePipeline({
        label: "compute_pipeline60145",
        layout: pipeline_layout605,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    const sampler1202 = device120.createSampler( { label: "sampler1202" } );
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline60146 = device60.createComputePipeline({
        label: "compute_pipeline60146",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    render_pass_encoder6040.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    const compute_pipeline60147 = device60.createComputePipeline({
        label: "compute_pipeline60147",
        layout: pipeline_layout600,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline60148 = device60.createComputePipeline({
        label: "compute_pipeline60148",
        layout: pipeline_layout604,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    const compute_pipeline60149 = device60.createComputePipeline({
        label: "compute_pipeline60149",
        layout: pipeline_layout608,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const texture_view12001 = texture1200.createView({ label: "texture_view12001" });
    const compute_pipeline60150 = device60.createComputePipeline({
        label: "compute_pipeline60150",
        layout: pipeline_layout607,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const compute_pipeline60151 = device60.createComputePipeline({
        label: "compute_pipeline60151",
        layout: pipeline_layout601,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    const compute_pipeline60152 = device60.createComputePipeline({
        label: "compute_pipeline60152",
        layout: pipeline_layout602,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    device130.destroy();
    compute_pass_encoder11000.pushDebugGroup("group_marker")
    const compute_pipeline60153 = device60.createComputePipeline({
        label: "compute_pipeline60153",
        layout: pipeline_layout609,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    query1200.destroy()
    const compute_pipeline60154 = device60.createComputePipeline({
        label: "compute_pipeline60154",
        layout: pipeline_layout600,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder12000.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    device60.queue.submit([command_buffer603, ]);
    compute_pass_encoder11000.popDebugGroup()
    compute_pass_encoder6020.popDebugGroup()
}