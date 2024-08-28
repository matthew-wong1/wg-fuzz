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
    const array0 = new Float32Array([-0.75, -0.75, 0.0, 1.0, -0.75, 0.5, 0.75, 1.0, -0.5, 0.5, -0.25, 0.75, -0.75, -0.75, 0.0, -1.0, 0.5, 1.0, -0.25, -0.5, -0.5, 0.75, 0.25, 0.5, 0.5, 0.0, 0.0, 0.75, 0.0, -0.5, 1.0, -1.0, -0.5, 0.25, -1.0, -1.0, 0.75, 0.25, 0.0, 0.0, 0.75, 0.25, -1.0, -1.0, -0.5, 0.5, -0.5, -0.25, -1.0, -0.5, 0.0, -0.25, -0.5, -0.75, 0.25, -0.75, -1.0, -0.5, 0.75, -0.75, 0.25, -0.75, -0.75, -1.0, 0.5, 1.0, -0.75, -0.75, -0.25, -0.5, 0.5, 0.0, 0.25, -1.0, 0.5, -0.5, 0.75, 0.25, -0.75, 0.0, -0.25, 0.75, -0.5, 0.5, -1.0, -0.5, -1.0, -1.0, -0.75, -0.5, 0.75, 1.0, 0.0, 1.0, -0.75, -0.75, 0.0, 0.0, 0.0, 0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array1 = new Float32Array([0.5, 1.0, -0.5, 0.0, -0.75, 0.5, -0.5, 0.5, -0.25, -1.0, 0.0, 0.75, 1.0, 0.0, -0.75, -0.25, 0.75, 0.25, -0.25, -0.25, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, -0.25, 0.5, 1.0, -0.25, -1.0, -0.25, -0.75, -0.25, 0.75, 0.75, -0.25, 1.0, -0.75, -0.25, 1.0, 0.5, 0.25, -0.75, -1.0, 0.5, -0.25, 0.75, 0.5, 0.25, 0.5, -0.75, -1.0, 0.0, 0.5, 0.5, -0.75, 0.5, -0.5, -0.5, -1.0, -0.25, -0.25, 0.5, 1.0, -1.0, -0.25, 0.75, 0.5, 0.75, -0.75, -0.75, 1.0, 0.5, 0.0, -0.5, -0.25, -0.25, 0.0, 0.25, 0.0, 0.25, -0.75, 0.0, 0.75, 0.0, 0.25, -1.0, -0.5, -0.25, -0.5, -0.25, -0.5, -1.0, 0.25, -1.0, 0.75, -0.5, 0.0, -0.5, ]);
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.destroy();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    device40.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32float",
        dimension: "2d"
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device50.destroy();
    
    
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
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device20.destroy();
    
    const array2 = new Float32Array([-0.75, 0.25, -1.0, 1.0, -0.25, -1.0, -0.25, 0.75, 0.5, 0.0, 0.5, 1.0, 1.0, 0.0, 1.0, 0.5, -0.25, 0.5, 0.25, 0.25, -0.25, 0.75, -0.25, 0.75, 0.75, -0.25, -0.5, 0.0, 0.25, 1.0, -1.0, -1.0, 0.75, 0.25, 0.0, -1.0, 1.0, 0.5, 0.75, 0.0, 0.0, 0.5, 0.5, 0.0, -0.75, 0.25, -0.5, -0.5, -0.75, 0.75, 0.25, 1.0, -0.5, -0.5, -1.0, 0.25, -0.75, 0.0, -0.5, 1.0, 1.0, 0.75, 1.0, -0.5, -0.25, -0.25, -0.25, -0.5, 0.25, 0.5, 0.0, -0.75, -0.25, 1.0, 0.75, -0.5, 0.75, 0.25, 0.0, -0.75, 0.5, -0.25, 0.0, -0.5, -1.0, 1.0, 0.75, -0.25, -0.75, -0.25, -1.0, 1.0, 0.0, -0.5, 0.5, -0.25, 1.0, 0.75, -1.0, -1.0, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.destroy();
    
    const array3 = new Float32Array([-1.0, -0.25, 0.0, -0.25, 0.5, 0.0, -1.0, 1.0, 1.0, -0.75, -0.25, 1.0, -1.0, -0.25, 0.0, 0.75, 1.0, 0.75, -1.0, -0.25, 1.0, 0.5, 1.0, -1.0, 0.0, 0.0, -0.25, 0.25, 0.75, -0.5, -1.0, -0.75, -0.5, -0.25, 0.75, 0.0, 0.25, -0.75, 0.0, -0.75, 0.5, -0.75, 0.25, -0.25, -0.5, 0.25, -0.25, -0.25, -0.75, 0.75, -1.0, -0.5, -0.25, -0.75, 1.0, 0.5, 0.25, 0.75, 0.25, -0.25, -0.75, -0.25, -0.75, -0.75, 0.0, 1.0, 0.0, 0.75, 0.25, 1.0, -0.25, -0.5, 0.75, 0.5, -0.75, 0.5, 0.5, 0.0, 0.75, 0.25, -0.5, -0.25, -1.0, 0.0, -1.0, -0.25, -0.75, 0.0, 0.5, 0.0, -0.25, 1.0, -0.25, 0.75, -0.5, 0.75, -0.5, -1.0, -0.75, 0.25, ]);
    
    
    
    
    const array4 = new Float32Array([-0.75, -1.0, -0.5, 1.0, -0.5, -1.0, -0.25, 0.75, -0.25, 0.75, 0.0, 0.0, 0.75, 0.25, -0.25, 1.0, 0.25, -0.5, -0.5, 0.0, 0.5, 0.0, -0.75, 0.5, 0.75, -0.5, -1.0, -0.5, 1.0, 1.0, 0.5, 1.0, 0.0, -0.75, -0.75, -0.25, 0.25, 0.5, 0.75, -0.5, -1.0, -1.0, -0.5, 0.75, 0.0, 0.0, -1.0, -0.75, -0.25, -0.25, -0.5, 0.75, 0.75, -0.5, 0.75, 0.5, 0.75, 0.0, 0.5, 0.75, -0.5, -1.0, 0.5, 0.0, -0.75, 0.75, -0.75, 0.0, -0.5, 0.25, 0.25, -0.25, 0.75, 0.5, -0.5, 0.0, -1.0, 0.75, -1.0, -1.0, 0.0, 1.0, 1.0, -0.75, -0.75, 0.0, 0.25, 1.0, -0.5, -1.0, 0.5, -1.0, -0.25, -0.75, 0.5, 0.0, 0.5, 0.0, 0.25, -1.0, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    device70.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device90.destroy();
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8sint",
        dimension: "2d"
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    const array5 = new Float32Array([0.75, 0.25, 0.0, 1.0, -1.0, 0.75, -0.25, -0.25, 0.5, -1.0, -0.5, 0.0, 0.0, 1.0, 1.0, 1.0, -0.5, 0.25, 0.75, -0.75, -0.75, -1.0, 0.25, -0.75, -0.5, 0.25, 0.0, 0.25, 0.0, -0.25, 1.0, 1.0, 1.0, 0.0, -0.25, 0.25, -0.75, 0.0, -0.75, -1.0, -1.0, 0.75, -0.5, 0.25, -0.5, 0.0, 1.0, -1.0, 1.0, 0.75, -0.5, 0.75, -1.0, 0.75, -1.0, -0.25, 1.0, 0.25, -0.25, -1.0, -0.5, 0.5, 0.5, -0.5, 1.0, -0.5, 0.75, 0.75, -0.5, -0.25, 0.25, 0.75, -0.75, 0.75, 0.5, -0.5, 0.75, 1.0, 0.25, 1.0, 0.75, -0.75, 1.0, -0.5, -0.75, -1.0, 0.25, 0.25, 1.0, -1.0, 0.5, 0.75, 0.25, 1.0, -0.25, -1.0, 0.75, 1.0, 0.0, 0.5, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    query800.destroy()
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    device80.destroy();
    
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    device100.destroy();
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    query1100.destroy()
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
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device120.destroy();
    device110.queue.writeTexture({ texture: texture1100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device110.queue.writeTexture({ texture: texture1100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    device110.queue.writeTexture({ texture: texture1100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout304]
    });
    const texture_view11001 = texture1100.createView({ label: "texture_view11001" });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device110.queue.writeTexture({ texture: texture1100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    query1100.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device110.queue.writeTexture({ texture: texture1100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    query301.destroy()
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer1102 = device110.createBuffer({
        label: "buffer1102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device110.destroy();
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array6 = new Float32Array([-1.0, -0.25, 1.0, -1.0, -0.25, 0.0, 0.25, 1.0, 0.5, -0.5, 0.75, -0.25, 0.75, 0.75, -1.0, -0.25, 1.0, -0.25, 1.0, -0.5, 1.0, 0.0, -0.75, 1.0, 0.75, 1.0, 0.75, -0.25, 0.75, -0.5, 0.5, 1.0, 1.0, 0.0, 0.75, 0.75, -0.25, -0.5, 0.25, -0.75, -0.25, 0.0, 0.0, 0.5, -0.5, -0.75, 0.0, 1.0, -0.75, 0.5, -0.5, 0.75, 0.75, -0.5, 0.5, -0.25, 1.0, 0.5, 0.25, -0.5, 1.0, 0.5, 0.75, 0.75, -1.0, -0.75, 0.5, -1.0, -0.75, 0.0, -1.0, 0.25, 0.0, -0.75, 0.25, 0.25, -0.75, -0.5, -0.75, -0.75, -0.75, -0.75, -0.5, 0.5, -0.5, -0.75, -0.75, -0.25, -0.75, -0.5, -0.75, 0.5, -0.5, -0.5, 0.5, 0.5, -0.75, -1.0, 1.0, 0.0, ]);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    query300.destroy()
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    query300.destroy()
    const array7 = new Float32Array([-0.75, 0.0, -0.25, 0.75, -0.75, 0.25, 1.0, 0.5, 1.0, -0.25, -0.5, -1.0, 1.0, 1.0, -0.25, 0.5, 0.0, 0.5, 0.25, -0.25, -0.5, 0.75, 0.0, 0.25, -0.25, -0.25, 0.0, -0.25, -1.0, 1.0, 0.25, -0.75, 0.5, -1.0, -0.5, 1.0, -0.5, -0.5, 0.5, -0.5, 0.25, -1.0, -0.5, -0.25, -0.25, -0.25, 0.25, -0.25, -0.5, 0.75, -1.0, 0.5, 1.0, 0.25, -0.75, 0.5, -0.25, -0.75, 0.25, 0.25, -0.25, 0.25, 0.75, 1.0, -0.5, -0.75, -0.5, -1.0, 0.75, 0.75, -0.75, -1.0, -0.25, 1.0, -0.5, 0.75, -0.75, -1.0, 0.0, 0.25, 0.0, 0.5, -1.0, 0.25, 0.75, 0.25, 1.0, -1.0, -1.0, 1.0, 0.25, 0.75, -1.0, -0.25, 1.0, 1.0, -0.25, -1.0, -0.25, -0.75, ]);
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout304]
    });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout301]
    });
    device30.queue.writeTexture({ texture: texture302 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query301.destroy()
    
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    query301.destroy()
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout309,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout309,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const sampler1600 = device160.createSampler( { label: "sampler1600" } );
    
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile(__dirname + '/shader_module1600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout303]
    });
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const sampler1601 = device160.createSampler( { label: "sampler1601" } );
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device30.queue.writeTexture({ texture: texture302 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device160.destroy();
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
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
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const pipeline_layout1300 = device130.createPipelineLayout({ 
        label: "pipeline_layout1300",
        bindGroupLayouts: [bind_group_layout1300]
    });
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout304]
    });
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout302]
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout309,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout3015,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout303]
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const bind_group_layout1301 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1301",
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
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const bind_group_layout1302 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1302",
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
    
    
    
    const array8 = new Float32Array([0.25, -0.5, -1.0, -0.75, -0.75, 0.5, -1.0, -0.25, -0.5, 0.75, 0.25, 0.75, -1.0, 0.0, -0.25, 0.75, 0.75, 0.5, 0.25, -0.75, 1.0, -0.5, -0.25, -1.0, -1.0, 0.0, -0.75, 0.25, 0.75, 0.0, 0.5, 0.75, -0.25, -0.75, -0.25, -1.0, 0.75, -1.0, 0.0, 0.5, 1.0, 0.25, 1.0, -0.25, 0.25, 0.5, -0.25, -1.0, 0.75, 0.5, 0.25, 1.0, 1.0, 0.5, -1.0, 0.75, 0.0, 0.25, -0.25, -0.5, 0.0, -1.0, 0.25, 1.0, -0.5, 0.0, -1.0, -0.25, 0.0, 0.75, 0.75, 0.75, 0.25, 0.25, 1.0, 1.0, -0.25, -0.75, 0.75, 0.0, -1.0, 0.0, -0.75, 0.25, -0.75, 0.5, 0.75, -0.5, 0.0, 1.0, -0.25, -0.25, 0.25, 1.0, 0.0, -0.5, -0.5, 0.5, 0.75, 0.25, ]);
    const array9 = new Float32Array([-0.5, 0.5, -0.25, 1.0, 0.75, 0.5, 0.25, -0.5, -0.75, -0.5, -0.75, -0.25, -0.75, 0.75, -0.5, 1.0, -0.25, 0.0, -0.5, 0.5, 0.0, -0.25, -0.5, 0.75, 1.0, -1.0, 0.0, -1.0, 0.0, 0.75, 0.75, 0.0, 0.5, 0.0, 0.0, 0.0, -0.75, -1.0, 0.0, 0.5, -1.0, -0.5, -1.0, -0.5, -1.0, 0.5, -1.0, 0.0, 0.0, -0.5, -0.75, -0.75, -0.75, 0.25, -0.75, -0.5, -0.75, -1.0, -0.5, 0.5, -0.25, -0.25, 0.0, 0.5, -0.5, 0.25, 0.0, 0.25, 1.0, 0.0, 0.0, 0.0, -0.75, -0.75, -0.25, 0.75, 0.0, -1.0, -0.5, 0.5, 0.75, 1.0, 0.25, -0.75, -0.25, -1.0, 0.75, -0.75, 0.0, -0.25, -0.25, 0.0, -0.75, -0.25, -0.75, 0.75, 0.0, 0.25, 1.0, -0.25, ]);
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const pipeline_layout3017 = device30.createPipelineLayout({ 
        label: "pipeline_layout3017",
        bindGroupLayouts: [bind_group_layout303]
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1301 = device130.createPipelineLayout({ 
        label: "pipeline_layout1301",
        bindGroupLayouts: [bind_group_layout1302]
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
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout3018 = device30.createPipelineLayout({ 
        label: "pipeline_layout3018",
        bindGroupLayouts: [bind_group_layout307]
    });
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout3018,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout3019 = device30.createPipelineLayout({ 
        label: "pipeline_layout3019",
        bindGroupLayouts: [bind_group_layout307]
    });
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout3017,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout3020 = device30.createPipelineLayout({ 
        label: "pipeline_layout3020",
        bindGroupLayouts: [bind_group_layout303]
    });
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout3017,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3045 = device30.createComputePipeline({
        label: "compute_pipeline3045",
        layout: pipeline_layout309,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout3021 = device30.createPipelineLayout({ 
        label: "pipeline_layout3021",
        bindGroupLayouts: [bind_group_layout303]
    });
    const pipeline_layout3022 = device30.createPipelineLayout({ 
        label: "pipeline_layout3022",
        bindGroupLayouts: [bind_group_layout304]
    });
    const compute_pipeline3046 = device30.createComputePipeline({
        label: "compute_pipeline3046",
        layout: pipeline_layout309,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout3023 = device30.createPipelineLayout({ 
        label: "pipeline_layout3023",
        bindGroupLayouts: [bind_group_layout305]
    });
    const compute_pipeline3047 = device30.createComputePipeline({
        label: "compute_pipeline3047",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    query302.destroy()
    
    const compute_pipeline3048 = device30.createComputePipeline({
        label: "compute_pipeline3048",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout1302 = device130.createPipelineLayout({ 
        label: "pipeline_layout1302",
        bindGroupLayouts: [bind_group_layout1300]
    });
    const buffer1302 = device130.createBuffer({
        label: "buffer1302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const compute_pipeline3049 = device30.createComputePipeline({
        label: "compute_pipeline3049",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3050 = device30.createComputePipeline({
        label: "compute_pipeline3050",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3051 = device30.createComputePipeline({
        label: "compute_pipeline3051",
        layout: pipeline_layout3017,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    query303.destroy()
    
    const compute_pipeline3052 = device30.createComputePipeline({
        label: "compute_pipeline3052",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3053 = device30.createComputePipeline({
        label: "compute_pipeline3053",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3054 = device30.createComputePipeline({
        label: "compute_pipeline3054",
        layout: pipeline_layout3016,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const bind_group_layout1500 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1500",
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
    {
        await buffer1300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1300.unmap();
        console.log(new Float32Array(data));
    }
    
    const compute_pipeline3055 = device30.createComputePipeline({
        label: "compute_pipeline3055",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3056 = device30.createComputePipeline({
        label: "compute_pipeline3056",
        layout: pipeline_layout3017,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const compute_pipeline3057 = device30.createComputePipeline({
        label: "compute_pipeline3057",
        layout: pipeline_layout3022,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3058 = device30.createComputePipeline({
        label: "compute_pipeline3058",
        layout: pipeline_layout3016,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const pipeline_layout3024 = device30.createPipelineLayout({ 
        label: "pipeline_layout3024",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline3059 = device30.createComputePipeline({
        label: "compute_pipeline3059",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout1303 = device130.createPipelineLayout({ 
        label: "pipeline_layout1303",
        bindGroupLayouts: [bind_group_layout1302]
    });
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.destroy();
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout1500 = device150.createPipelineLayout({ 
        label: "pipeline_layout1500",
        bindGroupLayouts: [bind_group_layout1500]
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
    const compute_pipeline3060 = device30.createComputePipeline({
        label: "compute_pipeline3060",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3061 = device30.createComputePipeline({
        label: "compute_pipeline3061",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array10 = new Float32Array([0.5, -0.75, -1.0, 0.5, 0.25, -1.0, -0.5, -1.0, 0.0, -1.0, 0.25, 1.0, 0.75, -1.0, -0.25, 0.0, 0.25, 1.0, 0.0, -0.5, 0.75, 0.0, -1.0, 0.5, 0.75, 0.5, -0.5, -0.25, 1.0, -0.25, -0.75, -0.25, -0.75, -0.5, 0.5, -0.75, 0.0, 1.0, 0.25, 0.25, 0.75, -0.25, -0.5, -0.25, -0.25, -0.5, 0.25, -0.5, 0.25, -1.0, 0.0, -0.5, 0.25, -0.75, -0.25, 0.0, 0.5, -0.25, -0.75, -1.0, 0.75, -0.5, 1.0, 0.5, 0.0, -0.75, 0.75, -1.0, 0.75, 0.5, -0.5, 0.25, -1.0, 0.25, 1.0, -0.75, 1.0, 1.0, 0.0, -0.75, 0.0, 0.0, 0.0, 0.5, 0.5, 0.0, 1.0, 1.0, 0.25, -0.75, 0.5, 0.25, -0.75, -1.0, 1.0, 0.0, 0.75, -0.75, 1.0, 0.75, ]);
    const compute_pipeline3062 = device30.createComputePipeline({
        label: "compute_pipeline3062",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3063 = device30.createComputePipeline({
        label: "compute_pipeline3063",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const compute_pipeline3064 = device30.createComputePipeline({
        label: "compute_pipeline3064",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout3025 = device30.createPipelineLayout({ 
        label: "pipeline_layout3025",
        bindGroupLayouts: [bind_group_layout303]
    });
    const compute_pipeline3065 = device30.createComputePipeline({
        label: "compute_pipeline3065",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline3066 = device30.createComputePipeline({
        label: "compute_pipeline3066",
        layout: pipeline_layout3016,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3067 = device30.createComputePipeline({
        label: "compute_pipeline3067",
        layout: pipeline_layout3017,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3068 = device30.createComputePipeline({
        label: "compute_pipeline3068",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3069 = device30.createComputePipeline({
        label: "compute_pipeline3069",
        layout: pipeline_layout309,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    const compute_pipeline3070 = device30.createComputePipeline({
        label: "compute_pipeline3070",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout3026 = device30.createPipelineLayout({ 
        label: "pipeline_layout3026",
        bindGroupLayouts: [bind_group_layout305]
    });
    const compute_pipeline3071 = device30.createComputePipeline({
        label: "compute_pipeline3071",
        layout: pipeline_layout3017,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3072 = device30.createComputePipeline({
        label: "compute_pipeline3072",
        layout: pipeline_layout3018,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query301.destroy()
    
    const compute_pipeline3073 = device30.createComputePipeline({
        label: "compute_pipeline3073",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3074 = device30.createComputePipeline({
        label: "compute_pipeline3074",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3075 = device30.createComputePipeline({
        label: "compute_pipeline3075",
        layout: pipeline_layout3025,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3076 = device30.createComputePipeline({
        label: "compute_pipeline3076",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout1501 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1501",
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
    const compute_pipeline3077 = device30.createComputePipeline({
        label: "compute_pipeline3077",
        layout: pipeline_layout3015,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3078 = device30.createComputePipeline({
        label: "compute_pipeline3078",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout3027 = device30.createPipelineLayout({ 
        label: "pipeline_layout3027",
        bindGroupLayouts: [bind_group_layout301]
    });
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline3079 = device30.createComputePipeline({
        label: "compute_pipeline3079",
        layout: pipeline_layout3014,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3080 = device30.createComputePipeline({
        label: "compute_pipeline3080",
        layout: pipeline_layout3026,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3081 = device30.createComputePipeline({
        label: "compute_pipeline3081",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const texture_view3041 = texture304.createView({ label: "texture_view3041" });
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pipeline3082 = device30.createComputePipeline({
        label: "compute_pipeline3082",
        layout: pipeline_layout3019,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline3083 = device30.createComputePipeline({
        label: "compute_pipeline3083",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const bind_group_layout3010 = device30.createBindGroupLayout({ 
        label: "bind_group_layout3010",
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
    const compute_pipeline3084 = device30.createComputePipeline({
        label: "compute_pipeline3084",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query304.destroy()
    const compute_pipeline3085 = device30.createComputePipeline({
        label: "compute_pipeline3085",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3086 = device30.createComputePipeline({
        label: "compute_pipeline3086",
        layout: pipeline_layout3014,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3087 = device30.createComputePipeline({
        label: "compute_pipeline3087",
        layout: pipeline_layout3014,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3088 = device30.createComputePipeline({
        label: "compute_pipeline3088",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3089 = device30.createComputePipeline({
        label: "compute_pipeline3089",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3090 = device30.createComputePipeline({
        label: "compute_pipeline3090",
        layout: pipeline_layout3017,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3091 = device30.createComputePipeline({
        label: "compute_pipeline3091",
        layout: pipeline_layout3024,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3092 = device30.createComputePipeline({
        label: "compute_pipeline3092",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3093 = device30.createComputePipeline({
        label: "compute_pipeline3093",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3094 = device30.createComputePipeline({
        label: "compute_pipeline3094",
        layout: pipeline_layout3020,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device140.destroy();
    const compute_pipeline3095 = device30.createComputePipeline({
        label: "compute_pipeline3095",
        layout: pipeline_layout3027,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline3096 = device30.createComputePipeline({
        label: "compute_pipeline3096",
        layout: pipeline_layout3026,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3097 = device30.createComputePipeline({
        label: "compute_pipeline3097",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3098 = device30.createComputePipeline({
        label: "compute_pipeline3098",
        layout: pipeline_layout3016,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const array11 = new Float32Array([0.75, 0.0, -1.0, 1.0, -0.5, 0.0, -0.25, -0.75, 1.0, 0.25, 0.5, 0.5, 1.0, 0.75, -0.5, -0.5, 1.0, 0.25, -0.25, 1.0, 0.0, -0.25, 1.0, 0.0, -0.5, -0.75, -0.5, -0.25, 0.0, -1.0, 0.5, 0.0, 0.25, -0.75, -0.75, -1.0, -0.5, 0.0, 0.5, 0.25, -0.5, -0.5, 0.25, -0.75, 0.0, 0.25, -0.5, -1.0, 0.5, 0.5, 0.5, -0.75, -1.0, 0.75, 0.75, -0.25, -0.5, 0.5, -0.75, -1.0, -0.25, 0.25, 0.75, -0.25, 0.25, -0.5, 0.5, 0.75, 1.0, -1.0, 1.0, 0.25, 1.0, 1.0, -0.5, -1.0, -0.25, -0.5, 0.0, -1.0, 1.0, -1.0, 0.75, -0.75, 0.75, 0.75, -0.75, 0.5, 1.0, -0.25, 0.5, -0.25, 0.0, 0.0, -0.75, -0.75, 0.75, -1.0, -0.5, 0.5, ]);
    
    const compute_pipeline3099 = device30.createComputePipeline({
        label: "compute_pipeline3099",
        layout: pipeline_layout3025,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline30100 = device30.createComputePipeline({
        label: "compute_pipeline30100",
        layout: pipeline_layout3025,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline30101 = device30.createComputePipeline({
        label: "compute_pipeline30101",
        layout: pipeline_layout3017,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline30102 = device30.createComputePipeline({
        label: "compute_pipeline30102",
        layout: pipeline_layout3014,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout3028 = device30.createPipelineLayout({ 
        label: "pipeline_layout3028",
        bindGroupLayouts: [bind_group_layout3010]
    });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
}