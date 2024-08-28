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
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device00.pushErrorScope("validation");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer000.destroy()
    texture000.destroy();
    const array0 = new Float32Array([1.0, 0.25, -0.25, 0.75, 0.5, -0.75, 0.0, 0.25, -0.75, 0.0, 0.0, -0.5, -0.25, -0.25, 1.0, 0.25, 0.0, -1.0, 0.5, 1.0, 0.75, 0.75, 0.75, 1.0, -1.0, 0.0, 0.25, 0.5, -0.5, -0.25, 0.0, 1.0, -1.0, 0.25, -1.0, -0.5, 0.75, -0.75, -0.5, 1.0, -0.25, -1.0, 0.5, 0.25, 0.5, -1.0, -1.0, -0.75, -0.5, -0.5, -1.0, 0.75, 0.25, 0.75, 0.5, -0.75, -0.25, -0.25, 1.0, -0.25, 0.0, 0.5, 0.5, -1.0, 1.0, 0.5, 0.25, -1.0, 0.75, -0.75, 0.75, -1.0, -0.5, -0.25, 1.0, -0.75, -0.5, 0.5, 1.0, -1.0, -1.0, -0.25, -0.75, 1.0, 0.5, 1.0, -0.5, -0.25, 0.0, -0.5, 1.0, 0.0, -0.25, -0.75, 0.75, 0.75, 0.0, -0.75, -0.5, 0.0, ]);
    const array1 = new Float32Array([0.25, -0.5, -0.75, -0.25, 0.0, 0.75, 0.5, -0.25, -0.5, 0.0, 0.75, 0.25, -0.75, -0.25, 0.25, 0.5, 0.5, 0.25, -0.5, 0.0, -0.75, -0.5, 0.25, 0.0, -1.0, 0.75, -0.25, -0.75, 0.75, 1.0, -1.0, -0.25, -0.25, 0.0, 0.5, 0.5, -1.0, -0.25, -0.75, 1.0, -1.0, 0.5, 1.0, 1.0, -0.25, -0.75, -0.25, -1.0, -0.25, 1.0, 0.25, -0.75, 0.25, -0.5, 1.0, 0.25, 0.25, 0.5, 0.5, 0.0, 1.0, -0.5, -1.0, -1.0, 0.0, -0.25, -0.75, 0.0, 0.5, -0.25, -1.0, -1.0, 0.75, 1.0, 0.25, 0.0, 0.5, 0.0, -0.75, -0.5, -0.5, 0.5, 0.25, -0.5, -0.25, -0.5, 0.25, -0.5, -0.75, -0.25, 1.0, 0.0, 0.5, -0.75, 0.25, -0.75, -0.25, -0.75, -0.75, -0.5, ]);
    const array2 = new Float32Array([-0.25, 0.75, -0.5, 1.0, 1.0, -0.75, 0.25, 0.25, 0.25, -0.5, 0.5, -1.0, -0.75, -0.5, -0.5, 0.25, -0.25, 0.75, 0.75, 0.0, 0.25, 0.0, 0.75, -0.25, -0.25, 0.75, 1.0, 0.25, -0.75, -0.5, 0.0, 0.0, 1.0, -0.75, 0.75, -0.5, 0.75, 1.0, 0.75, 0.0, 0.0, 0.0, 0.75, -0.5, -0.25, 0.25, 0.5, -0.25, 0.0, -0.75, 0.75, -0.25, -0.75, -1.0, 0.25, 0.25, -0.25, -1.0, 1.0, 0.5, -0.5, 0.0, -0.25, -0.75, -0.5, 0.0, -0.75, -0.75, 0.75, -0.5, -0.25, -0.25, 0.25, 0.25, 0.25, -0.25, -1.0, -0.75, -0.5, -1.0, -0.75, 0.5, 0.75, -0.25, 0.0, -0.5, 0.25, 0.0, -0.25, 0.5, -0.25, 0.0, 0.25, 0.75, -1.0, 1.0, 0.25, -0.75, -0.25, -0.25, ]);
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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device20.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    query001.destroy()
    
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    query003.destroy()
    query004.destroy()
    
    query004.destroy()
    device00.destroy();
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    query101.destroy()
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture100.destroy();
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    texture101.destroy();
    query103.destroy()
    device10.destroy();
    const array3 = new Float32Array([0.75, 0.75, -1.0, -0.75, -0.25, -1.0, 0.0, 1.0, -0.5, -1.0, -1.0, -1.0, 0.5, -1.0, -0.25, -0.5, 0.75, 0.25, -0.25, -0.75, 0.5, 0.5, -0.75, 0.5, -0.75, -1.0, 1.0, 1.0, 0.75, -0.5, 0.0, 0.75, -0.5, -1.0, 0.75, 1.0, 0.75, -0.5, 0.75, -0.75, 0.75, 0.75, 0.25, -0.75, 0.25, -1.0, -0.75, 0.0, 1.0, 1.0, 1.0, 1.0, 1.0, -0.5, 0.75, -1.0, -0.25, -0.75, -0.25, 0.5, -0.25, 0.25, 1.0, 0.5, 0.5, -0.5, 1.0, -0.5, 1.0, 0.75, 0.5, 1.0, -0.5, 0.5, 0.0, -0.25, 0.5, 1.0, 0.25, -0.5, 1.0, 0.0, 1.0, 0.0, 1.0, 0.5, 1.0, -0.75, -0.75, 0.0, 0.0, 0.0, 1.0, 0.75, -0.75, 0.5, 0.25, 0.0, 0.25, 0.75, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array4 = new Float32Array([0.75, 0.0, -0.5, -0.75, 0.75, -1.0, -1.0, 0.75, 0.75, -0.5, -1.0, -1.0, -0.5, 1.0, -0.25, 0.5, 1.0, 0.0, -0.25, 0.0, 0.0, 0.0, -0.25, 0.5, -1.0, 1.0, -0.5, 1.0, 0.75, 0.5, 0.75, 0.0, -0.5, 0.0, 0.5, -0.5, -0.75, 0.25, -0.25, -1.0, -1.0, 0.75, 0.0, -0.25, 1.0, 0.0, 0.0, -0.5, 0.25, 0.5, 0.25, 0.25, -0.5, 0.5, -0.75, -0.75, 1.0, -0.25, 0.25, -0.5, 0.0, -0.25, -1.0, 0.75, 0.25, 0.25, -0.75, 0.75, 0.25, -0.5, 0.5, -0.5, -1.0, 1.0, 0.25, 1.0, 0.5, -1.0, 0.0, 0.0, 0.5, 0.25, -0.75, 1.0, 0.5, 0.5, -0.75, 0.0, -0.25, 1.0, 0.75, 0.25, 0.25, -0.75, -0.5, -0.5, 0.75, -0.75, 0.0, 0.75, ]);
    const array5 = new Float32Array([-0.75, 0.5, -0.25, 0.0, -0.5, -0.25, 0.5, 0.0, 0.5, -0.25, 0.25, 0.25, -0.25, -0.75, 0.25, -1.0, -0.25, 0.75, 0.0, -0.5, -1.0, -0.25, 0.0, 1.0, 0.5, 1.0, 0.25, -0.5, -0.5, 0.75, 1.0, 0.0, -0.25, 0.5, 1.0, -0.5, -0.5, 0.0, 1.0, 0.25, -0.75, -0.25, -0.75, -1.0, 0.5, -0.75, -0.5, 0.0, -0.25, 1.0, 0.0, -0.25, -1.0, 0.25, 1.0, -0.75, -0.5, -0.25, 1.0, 0.25, -0.25, 0.0, 0.25, 0.0, 1.0, 0.75, 0.0, 0.75, -0.5, 0.5, -0.75, 0.5, -0.5, 0.25, 0.75, -0.25, 0.5, 1.0, 0.0, -0.25, -0.5, 0.25, -1.0, -0.25, 0.25, -0.5, -0.25, 0.0, 0.5, -0.25, 1.0, 0.25, 1.0, -0.25, 0.75, 0.0, -0.5, -1.0, 0.25, 0.25, ]);
    
    const array6 = new Float32Array([-0.25, 0.5, 0.75, -0.5, 0.5, 0.0, -0.5, -0.5, 0.0, 0.75, 0.75, 0.5, -0.75, 1.0, -0.5, -1.0, 0.0, 0.25, -0.25, 0.75, -0.25, -0.25, 0.25, 0.25, 0.5, -0.5, -0.75, 0.75, 0.5, 0.75, 1.0, -1.0, 0.0, 0.75, 0.5, -0.25, -0.5, -1.0, -1.0, -0.75, -1.0, -0.5, 0.5, 0.0, -0.75, -1.0, -0.75, 1.0, -0.25, 0.75, -1.0, 1.0, -0.5, 1.0, 1.0, 0.0, -0.25, -0.75, 0.75, -0.75, 0.75, -0.75, 0.5, 0.25, 0.75, -0.25, 0.5, 0.0, 0.5, -0.25, -0.5, 0.0, -0.75, 0.75, 0.75, 0.0, 0.0, 0.5, 1.0, 1.0, -0.25, 0.75, 1.0, 0.75, -0.25, -1.0, 0.75, -0.25, -0.75, -0.5, 0.5, -1.0, 1.0, 0.25, 0.0, 0.75, -0.5, 0.0, -1.0, -1.0, ]);
    const array7 = new Float32Array([-0.25, 0.0, 1.0, 0.75, -0.25, 1.0, 0.75, 0.5, -1.0, 0.75, 1.0, -1.0, 1.0, 1.0, 0.75, -0.75, 0.5, 0.0, -0.25, 0.25, -0.75, -0.25, 1.0, 0.5, 1.0, -0.25, -0.75, 0.25, 0.25, -0.75, 1.0, 0.5, 0.75, 0.75, 0.5, 0.5, -0.75, -0.75, -0.25, 0.0, 0.5, 0.75, 1.0, -0.75, 0.5, -0.5, 1.0, -0.75, 1.0, 0.5, 0.25, -1.0, -1.0, 0.75, 0.0, -0.25, -0.5, 0.0, -0.75, 0.5, -0.75, 1.0, -0.5, 0.0, 0.25, -0.5, -0.25, -1.0, -0.25, -1.0, -0.5, 1.0, -0.75, -0.75, 0.5, -0.5, -0.75, 0.0, -0.25, -0.25, 1.0, -0.5, -0.75, 0.5, 0.0, 0.5, -0.5, -0.75, -0.5, -0.75, -1.0, -1.0, -0.25, -0.75, 0.75, -0.5, 1.0, -0.75, -0.5, 0.5, ]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device50.destroy();
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
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
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const array8 = new Float32Array([-0.25, 0.75, 0.75, 1.0, 0.5, 0.25, -0.75, 1.0, -0.75, -0.75, 0.5, 0.75, -0.25, 0.25, 0.0, -0.5, -0.5, -1.0, 0.5, 1.0, 0.0, -0.25, 0.25, -0.5, 0.0, 0.5, 0.0, 0.25, -0.5, 0.5, 0.75, 0.75, 0.25, 0.25, 0.25, -1.0, 0.75, 0.5, 0.0, -1.0, 0.25, -0.25, -0.25, -0.5, 0.0, -0.25, -0.5, -0.75, 0.75, -1.0, -0.25, -1.0, -0.25, 1.0, -1.0, 0.25, -0.5, -1.0, 0.0, 0.25, -0.5, -0.5, 1.0, 0.75, -1.0, 0.5, -0.5, 1.0, 0.0, 0.5, -1.0, -0.5, 0.75, 1.0, 0.5, 0.0, 0.25, -0.5, 0.75, 0.5, 0.25, 0.75, -0.25, 0.0, -0.25, -0.25, 0.25, -0.75, 0.25, -0.25, -0.75, -0.5, -0.5, -1.0, -0.75, 1.0, 1.0, -1.0, 1.0, -0.5, ]);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    device60.destroy();
    
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture700.destroy();
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    const array9 = new Float32Array([0.25, -0.75, -0.75, -0.5, -0.25, 0.5, 0.75, 0.5, 0.5, 0.25, -0.75, 0.25, 0.25, 0.5, 0.5, 0.5, -0.5, 0.75, -0.5, -0.25, 0.5, -0.75, -1.0, 1.0, 0.75, -0.25, -0.75, 0.0, 0.0, 0.0, 0.25, 0.75, -0.25, 0.75, 0.75, -0.5, -0.75, 0.5, 0.25, 0.0, 0.75, 0.5, 0.5, -1.0, 0.0, -0.5, -1.0, 0.0, 0.5, 0.5, 0.0, 0.25, -0.25, 1.0, -1.0, -0.75, 0.75, -1.0, 0.5, -1.0, 0.25, 0.25, -0.75, 0.25, 0.0, -0.75, -1.0, 0.75, 0.5, 0.0, 1.0, 0.5, 0.75, 0.75, -0.5, -0.75, 0.25, 0.75, -0.25, 0.75, -0.75, -0.25, 1.0, 0.0, 1.0, 0.5, 1.0, 0.25, -0.5, 1.0, -1.0, 0.25, -1.0, 1.0, -1.0, 0.25, -0.25, 0.25, -1.0, 1.0, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    const command_buffer700 = command_encoder700.finish();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device80.pushErrorScope("out-of-memory");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    
    device70.queue.writeTexture({ texture: texture701 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device70.queue.writeTexture({ texture: texture701 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture701 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    device70.queue.writeTexture({ texture: texture701 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    device70.queue.writeTexture({ texture: texture701 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture702 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    device70.queue.writeTexture({ texture: texture702 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture701 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture701.destroy();
    
    device70.queue.writeTexture({ texture: texture702 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array10 = new Float32Array([-0.25, -0.5, 0.25, -0.25, 0.25, 0.0, -1.0, -1.0, 0.5, 0.0, -1.0, 0.75, -1.0, -0.75, -0.75, 0.5, -0.25, 0.0, -0.5, 0.75, -0.5, 0.75, -1.0, 0.25, 0.25, 1.0, 0.75, -0.5, 0.75, -0.5, 0.25, -0.25, 0.5, 0.5, -1.0, -1.0, 1.0, 0.5, -0.5, 0.0, 0.5, 0.75, 0.25, 1.0, 0.5, 0.25, -0.5, 1.0, 0.0, 0.75, -0.25, -0.75, 0.0, 0.5, 0.75, 0.0, 0.5, -0.25, -0.5, -0.75, 0.5, 0.0, 1.0, -0.75, 0.25, 0.75, -1.0, -0.75, -0.25, 0.75, -1.0, 0.0, 1.0, -1.0, -0.5, 0.0, 0.0, -0.5, -0.75, 0.5, 0.25, -0.75, 0.5, -0.75, 0.25, 1.0, 0.75, -0.25, 1.0, -0.75, -1.0, 1.0, -0.25, -0.5, 0.0, 0.5, -0.75, -0.5, -0.5, -0.75, ]);
    device70.queue.writeTexture({ texture: texture702 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device70.queue.writeTexture({ texture: texture702 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query700.destroy()
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device70.queue.writeTexture({ texture: texture702 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture702 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture703.destroy();
    texture702.destroy();
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query701.destroy()
    
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
    
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    query701.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query700.destroy()
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    query701.destroy()
    
    
    query800.destroy()
    device40.pushErrorScope("validation");
    buffer800.destroy()
    query701.destroy()
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    device80.pushErrorScope("internal");
    
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    query702.destroy()
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
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
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    query703.destroy()
    device70.pushErrorScope("out-of-memory");
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    query700.destroy()
    texture400.destroy();
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const texture704 = device70.createTexture({
        label: "texture704",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    query800.destroy()
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    buffer401.destroy()
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    command_encoder400.pushDebugGroup("mygroupmarker")
    buffer701.destroy()
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer400.destroy()
    device30.destroy();
    command_encoder400.popDebugGroup()
    texture401.destroy();
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder800.pushDebugGroup("mygroupmarker")
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array11 = new Float32Array([-0.5, -0.75, 1.0, 0.25, 0.0, 0.0, 0.75, -1.0, -1.0, -0.75, -0.75, -0.25, 0.0, -0.75, 0.5, -0.75, -1.0, 0.0, 0.75, -0.5, -1.0, 0.75, 0.75, -1.0, 1.0, -0.75, -1.0, -0.25, 0.25, 0.75, -0.25, 0.75, -0.25, 0.0, -1.0, -0.5, -0.25, -0.25, 0.0, 0.25, -1.0, 0.25, 0.5, -0.25, -0.75, -0.5, 0.25, -0.25, 0.25, 0.0, 0.25, -0.75, -0.75, 1.0, -1.0, 0.5, -0.25, 0.5, -1.0, 0.75, 0.25, -0.75, 0.5, 0.5, 0.0, -1.0, 0.75, 0.75, -0.5, 0.5, 0.5, 0.25, 0.75, 0.25, -0.25, -0.5, 0.25, -0.75, -1.0, -0.75, -1.0, 0.25, -0.25, 0.25, 1.0, 0.5, 0.5, 0.25, 0.5, 0.0, -1.0, 0.0, -0.25, 0.75, 0.5, -1.0, 1.0, -0.25, -0.75, 1.0, ]);
    const command_buffer400 = command_encoder400.finish();
    device80.queue.writeTexture({ texture: texture801 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout803 = device80.createBindGroupLayout({ 
        label: "bind_group_layout803",
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
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    device80.queue.writeTexture({ texture: texture801 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    texture704.destroy();
    
    buffer700.destroy()
    device80.queue.writeTexture({ texture: texture801 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture705 = device70.createTexture({
        label: "texture705",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    device70.queue.submit([command_buffer700, ]);
    device80.queue.writeTexture({ texture: texture801 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query700.destroy()
    device80.queue.writeTexture({ texture: texture801 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.submit([command_buffer400, ]);
    query701.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    buffer402.destroy()
    device80.queue.writeTexture({ texture: texture801 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeTexture({ texture: texture801 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder800.popDebugGroup()
    device80.queue.writeTexture({ texture: texture801 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture801 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture801 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture801 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture801 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture801.destroy();
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    query802.destroy()
    query800.destroy()
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    query401.destroy()
    const query705 = device70.createQuerySet({
        label: "query705",
        type: "occlusion",
        count: 32,
    });
    query702.destroy()
    query701.destroy()
    query802.destroy()
    query400.destroy()
    const texture_view7050 = texture705.createView({ label: "texture_view7050" });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const bind_group_layout804 = device80.createBindGroupLayout({ 
        label: "bind_group_layout804",
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
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    texture705.destroy();
    query702.destroy()
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    const array12 = new Float32Array([0.75, 0.5, -0.25, 1.0, -0.75, -1.0, 0.25, 0.0, -0.5, 0.25, 0.75, 1.0, -1.0, -1.0, 0.5, -0.5, 0.0, 0.25, 0.75, 1.0, -1.0, 0.5, 1.0, 0.25, 1.0, -0.75, -0.5, 1.0, -1.0, -0.5, -0.75, -0.5, -0.25, 0.5, 1.0, -0.75, 0.75, -0.25, 0.5, -0.5, -0.75, -0.25, -1.0, -0.25, -0.5, -1.0, 1.0, 1.0, 0.25, 0.0, 1.0, -0.25, 0.5, -0.25, 0.0, 1.0, 0.75, 1.0, -0.25, 0.5, 0.0, 0.75, -0.75, -1.0, 0.0, -0.5, 1.0, 0.0, -0.75, 0.5, 0.75, 0.0, 1.0, 0.25, 0.5, -0.5, -0.75, -1.0, -0.25, -0.25, 1.0, -0.25, -0.25, 1.0, -0.75, 1.0, -0.5, -1.0, -0.75, 1.0, 0.5, 0.25, 0.75, 1.0, -0.25, 1.0, -1.0, -0.25, 1.0, 0.75, ]);
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder800.pushDebugGroup("mygroupmarker")
    buffer703.destroy()
    device80.queue.writeTexture({ texture: texture802 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    query705.destroy()
    device70.queue.writeBuffer(buffer704, 0, array9, 0, array9.length);
    
    query703.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const sampler804 = device80.createSampler( { label: "sampler804" } );
    {
        await buffer704.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer704.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer704.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    device80.queue.writeTexture({ texture: texture802 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    {
        await buffer704.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer704.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer704.unmap();
        console.log(new Float32Array(data));
    }
    query801.destroy()
    device80.pushErrorScope("out-of-memory");
    query702.destroy()
    texture802.destroy();
    query703.destroy()
    texture800.destroy();
    device70.queue.writeBuffer(buffer704, 0, array3, 0, array3.length);
    device70.queue.writeBuffer(buffer704, 0, array6, 0, array6.length);
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    {
        await buffer704.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer704.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer704.unmap();
        console.log(new Float32Array(data));
    }
    
    device70.queue.writeBuffer(buffer704, 0, array6, 0, array6.length);
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const render_pass_encoder7010 = command_encoder701.beginRenderPass({
        label: "render_pass_encoder7010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7050,
            },
        ],
        occlusionQuerySet: query705
    });
    render_pass_encoder7010.setViewport(0, 0, texture705.width / 2, texture705.height / 2, 0, 1);
    const array13 = new Float32Array([0.5, 0.25, 1.0, 0.25, -1.0, -1.0, -0.75, 0.5, -0.25, 0.75, 0.5, -0.25, -0.75, -0.25, -0.5, 0.0, 0.5, -0.25, -1.0, -0.25, 0.0, -0.25, 0.0, -1.0, 0.75, -0.5, -1.0, -0.75, 0.75, -0.25, -0.75, -0.25, 1.0, 0.75, -0.5, -0.25, -0.25, -0.5, 0.0, -0.25, -0.25, -0.75, 0.0, -0.5, 0.25, 0.5, 0.0, 0.25, 1.0, -0.5, 0.75, 1.0, -0.5, 0.25, -0.25, -0.75, 0.5, 0.0, 1.0, 1.0, 0.75, 0.25, -0.25, 0.0, -1.0, 0.25, -0.25, -1.0, -0.5, -0.75, 0.0, 0.75, -0.25, 1.0, -1.0, 1.0, 0.5, 0.75, -0.25, -0.5, 0.0, 0.5, 0.0, 0.5, 0.75, 0.75, -1.0, 0.5, -1.0, -0.5, -1.0, 1.0, 0.0, 0.25, -0.25, 1.0, -1.0, 1.0, 0.0, -1.0, ]);
    render_pass_encoder7010.executeBundles([])
    const command_buffer801 = command_encoder801.finish();
    
    device70.queue.writeBuffer(buffer704, 0, array7, 0, array7.length);
    query800.destroy()
    device70.queue.writeBuffer(buffer704, 0, array4, 0, array4.length);
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile(__dirname + '/shader_module804.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    device70.queue.writeBuffer(buffer704, 0, array8, 0, array8.length);
    device70.pushErrorScope("validation");
    
    query702.destroy()
    render_pass_encoder7010.setViewport(0, 0, texture705.width / 2, texture705.height / 2, 0, 1);
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture803 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture803 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query401.destroy()
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    render_pass_encoder7010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pass_encoder7020 = command_encoder702.beginRenderPass({
        label: "render_pass_encoder7020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7010,
            },
        ],
        occlusionQuerySet: query702
    });
    const sampler705 = device70.createSampler( { label: "sampler705" } );
    texture803.destroy();
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    const render_pass_encoder7030 = command_encoder703.beginRenderPass({
        label: "render_pass_encoder7030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7050,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder7020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder7010.setViewport(0, 0, texture705.width / 2, texture705.height / 2, 0, 1);
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device70.queue.writeBuffer(buffer704, 0, array11, 0, array11.length);
    render_pass_encoder7030.executeBundles([])
    query401.destroy()
    command_encoder800.popDebugGroup()
    const bind_group_layout704 = device70.createBindGroupLayout({ 
        label: "bind_group_layout704",
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
    const command_buffer803 = command_encoder803.finish();
    const bind_group_layout805 = device80.createBindGroupLayout({ 
        label: "bind_group_layout805",
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
    device70.queue.writeBuffer(buffer705, 0, array6, 0, array6.length);
    device70.queue.writeBuffer(buffer705, 0, array13, 0, array13.length);
    const command_buffer800 = command_encoder800.finish();
    render_pass_encoder7010.setStencilReference(1);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device70.queue.writeBuffer(buffer704, 0, array3, 0, array3.length);
    query702.destroy()
    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device70.queue.writeBuffer(buffer704, 0, array9, 0, array9.length);
    query702.destroy()
    device70.queue.writeBuffer(buffer704, 0, array11, 0, array11.length);
    
    device70.queue.writeBuffer(buffer704, 0, array0, 0, array0.length);
    render_pass_encoder7010.pushDebugGroup("group_marker");
    query800.destroy()
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    const render_pass_encoder7040 = command_encoder704.beginRenderPass({
        label: "render_pass_encoder7040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7010,
            },
        ],
        occlusionQuerySet: undefined
    });
    device70.queue.writeBuffer(buffer705, 0, array2, 0, array2.length);
    const bind_group_layout705 = device70.createBindGroupLayout({ 
        label: "bind_group_layout705",
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
    render_pass_encoder7010.popDebugGroup();
    device70.queue.writeBuffer(buffer705, 0, array2, 0, array2.length);
    query400.destroy()
    const command_encoder804 = device80.createCommandEncoder({ label: "command_encoder804" });
    device70.queue.writeBuffer(buffer704, 0, array5, 0, array5.length);
    device70.queue.writeBuffer(buffer705, 0, array9, 0, array9.length);
    query401.destroy()
    device70.queue.writeBuffer(buffer704, 0, array1, 0, array1.length);
    device70.queue.writeBuffer(buffer705, 0, array0, 0, array0.length);
    
    render_pass_encoder7030.setStencilReference(1);
    device70.queue.writeBuffer(buffer704, 0, array11, 0, array11.length);
    query401.destroy()
    render_pass_encoder7040.setViewport(0, 0, texture701.width / 2, texture701.height / 2, 0, 1);
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query704.destroy()
    render_pass_encoder7040.executeBundles([])
    render_pass_encoder7020.pushDebugGroup("group_marker");
    device70.queue.writeBuffer(buffer704, 0, array5, 0, array5.length);
    query401.destroy()
    query801.destroy()
    render_pass_encoder7030.pushDebugGroup("group_marker");
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer705.destroy()
    const texture804 = device80.createTexture({
        label: "texture804",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    buffer704.destroy()
    query703.destroy()
    device80.queue.submit([command_buffer803, ]);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    render_pass_encoder7040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder7020.popDebugGroup();
    render_pass_encoder7030.setStencilReference(1);
    const sampler706 = device70.createSampler( { label: "sampler706" } );
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device80.queue.writeBuffer(buffer802, 0, array9, 0, array9.length);
    query802.destroy()
    buffer706.destroy()
    
    device80.queue.writeBuffer(buffer802, 0, array9, 0, array9.length);
    command_encoder802.pushDebugGroup("mygroupmarker")
    device80.queue.writeBuffer(buffer802, 0, array4, 0, array4.length);
    
    
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder7040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query800.destroy()
    
    const sampler707 = device70.createSampler( { label: "sampler707" } );
    render_pass_encoder7040.pushDebugGroup("group_marker");
    const command_encoder805 = device80.createCommandEncoder({ label: "command_encoder805" });
    device80.queue.writeBuffer(buffer802, 0, array0, 0, array0.length);
    query704.destroy()
    query704.destroy()
    query401.destroy()
    const bind_group_layout706 = device70.createBindGroupLayout({ 
        label: "bind_group_layout706",
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
    device80.queue.writeBuffer(buffer802, 0, array9, 0, array9.length);
    device80.queue.writeBuffer(buffer802, 0, array10, 0, array10.length);
    query704.destroy()
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
    render_pass_encoder7040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query401.destroy()
    query705.destroy()
    const texture805 = device80.createTexture({
        label: "texture805",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder7030.setStencilReference(1);
    command_encoder805.clearBuffer(buffer802);
    query802.destroy()
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile(__dirname + '/shader_module805.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    render_pass_encoder7030.setStencilReference(1);
    const command_buffer401 = command_encoder401.finish();
    device80.queue.writeBuffer(buffer802, 0, array11, 0, array11.length);
    const texture806 = device80.createTexture({
        label: "texture806",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const command_buffer805 = command_encoder805.finish();
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    query700.destroy()
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    query802.destroy()
    query700.destroy()
    render_pass_encoder7030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer802.destroy()
    const command_buffer402 = command_encoder402.finish();
    
    const query804 = device80.createQuerySet({
        label: "query804",
        type: "occlusion",
        count: 32,
    });
    
    texture804.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query804.destroy()
    
    
    const command_encoder705 = device70.createCommandEncoder({ label: "command_encoder705" });
    const command_encoder806 = device80.createCommandEncoder({ label: "command_encoder806" });
    render_pass_encoder7030.executeBundles([])
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    const command_buffer403 = command_encoder403.finish();
    render_pass_encoder7030.popDebugGroup();
    command_encoder802.popDebugGroup()
    const command_buffer806 = command_encoder806.finish();
    device80.queue.submit([command_buffer800, command_buffer801, command_buffer805, ]);
    const command_buffer705 = command_encoder705.finish();
    const command_buffer802 = command_encoder802.finish();
    const command_buffer804 = command_encoder804.finish();
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder7040.popDebugGroup();
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.submit([command_buffer802, command_buffer804, ]);
    device80.queue.submit([command_buffer806, ]);
    device70.queue.submit([command_buffer705, ]);
}