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
    const array0 = new Float32Array([0.75, 0.0, 1.0, -0.25, -0.25, -1.0, 1.0, 0.0, -0.25, -0.25, 0.75, 0.75, 0.0, 0.0, 0.75, -1.0, 0.75, 0.75, 0.25, -0.25, 1.0, 0.75, 0.75, -1.0, -0.25, -0.5, -0.25, -1.0, 0.25, 1.0, 0.25, -0.25, 1.0, 0.75, -0.25, -1.0, -0.75, 0.75, -0.75, 0.0, -0.25, 0.5, 0.5, -1.0, -0.5, -0.25, -1.0, -1.0, 1.0, -1.0, -0.75, 0.25, -0.5, -0.75, -1.0, 0.5, -0.5, 1.0, -0.75, 0.75, -0.25, -0.5, 0.75, 0.25, -1.0, 1.0, 0.5, 0.25, -1.0, -1.0, -0.75, 0.25, 0.5, -0.25, 0.0, 1.0, -0.5, 0.5, 0.0, 0.25, 1.0, -1.0, -0.5, -1.0, 1.0, -0.75, 0.5, 0.0, 0.0, 0.25, 0.5, 0.0, 0.0, -0.75, 0.0, -0.75, 0.5, 0.5, -1.0, -1.0, ]);
    
    
    const array1 = new Float32Array([-0.5, 1.0, 0.75, -0.25, 1.0, -0.5, 1.0, 0.25, 0.75, -0.75, -0.5, -0.25, 1.0, -1.0, -0.5, -0.75, -0.75, 0.75, 0.0, 0.75, -0.75, -1.0, -1.0, -0.5, 0.5, 0.5, -0.75, -0.75, 0.75, 0.25, 1.0, 0.5, 0.25, -0.25, 0.25, -0.25, -0.75, 0.25, -0.25, -0.5, 1.0, -0.25, 0.25, -0.5, -0.75, -1.0, 1.0, 0.0, 0.25, -1.0, -0.25, 0.75, -0.25, -0.5, -0.25, 0.5, -0.75, 0.75, 1.0, -1.0, -1.0, -1.0, -0.5, -0.5, -0.5, 0.5, -0.75, 0.25, 1.0, -0.5, 1.0, 0.75, 0.75, 0.5, 0.75, 0.5, 0.25, -1.0, -0.5, -0.75, 0.75, -0.75, 0.0, -1.0, 0.25, 0.75, -0.25, 0.25, 1.0, 0.5, -0.75, -0.75, 0.0, -0.75, 0.75, 0.0, 0.75, -0.5, -0.75, -0.75, ]);
    const array2 = new Float32Array([-0.5, 0.5, -0.75, -1.0, 0.5, 0.75, 0.0, -0.5, 0.25, 0.5, -0.75, 0.5, 0.25, -0.5, -1.0, 0.75, 0.25, 0.0, 0.25, -1.0, 0.0, -1.0, -0.25, -1.0, 1.0, -0.25, -1.0, -0.25, 0.25, 0.0, -0.25, 0.75, 0.5, -0.5, 0.5, -0.25, -0.5, -0.75, 1.0, -1.0, -1.0, 0.25, 1.0, 0.5, 0.25, -1.0, 0.25, 0.5, 0.75, 0.0, -0.5, 0.75, -0.75, -0.75, -0.75, 1.0, 0.25, 0.5, -1.0, 1.0, 0.25, -1.0, -0.75, -0.25, -0.75, 0.25, 1.0, -0.5, -1.0, 1.0, 0.25, 0.25, 1.0, -1.0, 0.75, 0.75, -0.5, 1.0, -0.75, 0.5, 0.5, 0.0, -1.0, 0.25, 0.5, 0.0, -0.5, -0.75, 0.75, 1.0, 1.0, -0.5, -0.5, -1.0, -0.25, -1.0, 0.0, 0.25, 1.0, -0.25, ]);
    const array3 = new Float32Array([1.0, -0.5, -0.25, 0.5, -1.0, -0.25, -0.75, -0.25, 0.0, 0.75, -0.25, -1.0, -0.25, 0.0, 0.5, -0.25, 0.5, -0.75, 0.5, -0.75, 1.0, -0.5, 0.0, 0.0, 0.5, -1.0, 1.0, 1.0, 0.75, 0.75, -1.0, 0.5, 0.75, 0.0, 0.75, -0.75, 0.5, -1.0, -1.0, -0.5, -0.25, 0.75, -1.0, 0.0, 0.5, 0.25, -0.5, -1.0, 1.0, -0.25, 0.75, -0.25, -0.5, -1.0, -0.5, -1.0, -1.0, 1.0, 0.0, -0.75, 0.5, -0.75, -0.25, 0.25, 0.5, -0.75, -0.75, 1.0, 0.5, 0.0, -0.75, 0.5, 1.0, 0.75, -0.25, 0.5, -0.5, -0.25, 0.0, 0.0, 0.75, -1.0, 0.5, 0.25, -0.25, -0.25, 0.5, 0.25, 1.0, -0.75, -0.5, 0.25, 0.25, 0.25, 0.75, 0.0, -0.75, -0.25, 0.0, 1.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8unorm",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.destroy();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    texture002.destroy();
    texture001.destroy();
    query000.destroy()
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([-0.25, 0.5, -0.25, 0.25, -0.75, 0.75, 1.0, -1.0, 0.5, 1.0, 0.25, 1.0, 0.5, -1.0, 0.75, -0.5, -0.25, -0.5, 0.25, 0.5, 1.0, 0.25, 0.75, 0.75, 0.0, 0.75, -0.75, -1.0, 0.5, 0.0, -0.25, 0.75, -0.25, -1.0, 0.25, -0.5, -0.5, 0.0, 1.0, 0.5, -0.25, 1.0, -0.5, 1.0, 0.5, 0.25, 0.5, -0.25, 0.0, 0.75, -0.5, -1.0, 0.25, 0.75, 0.0, 0.25, 0.0, 0.75, -0.5, 0.5, 0.75, 0.0, -1.0, -0.25, 0.25, 1.0, 0.0, -0.5, -0.25, -0.75, -1.0, 0.25, -1.0, -1.0, 0.0, 0.75, -0.75, -0.25, -0.25, -1.0, -0.25, 0.5, 0.5, 0.0, 0.25, -0.25, 1.0, 0.5, -0.25, 0.0, 0.5, -0.5, 0.75, 0.0, 1.0, -0.75, -0.25, 0.75, 0.0, 0.5, ]);
    
    device00.destroy();
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
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.destroy();
    
    
    
    
    
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array5 = new Float32Array([-0.5, -0.5, 0.5, -0.25, -0.5, 0.5, 0.75, 0.5, 0.0, 0.25, 1.0, 0.75, -1.0, -0.5, 0.5, 0.25, 0.5, 0.0, -1.0, 0.0, 0.5, 0.0, 0.5, 0.75, 0.0, 0.0, -1.0, 0.25, -0.25, -1.0, 0.5, 0.25, -0.75, 1.0, 0.75, 0.75, 0.5, 0.25, 1.0, 0.75, 0.25, 1.0, -0.25, -0.25, -0.25, 1.0, 0.75, 0.25, -0.5, -0.25, -0.25, 1.0, -0.75, -0.5, 0.0, -0.25, -0.75, 0.75, 0.0, 0.75, 0.75, -0.25, 0.0, 0.25, -1.0, 0.5, -0.5, -1.0, 0.25, -0.25, -0.25, -0.5, -0.25, -0.5, -0.5, 1.0, 1.0, 0.75, 0.25, 0.75, 0.5, 0.25, 0.5, 0.25, -1.0, 0.25, 0.5, 0.5, -0.5, 0.75, 0.5, -0.5, -0.25, 0.0, 1.0, 0.0, 0.25, 0.75, 0.0, -0.75, ]);
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device40.destroy();
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    
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
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.destroy();
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array6 = new Float32Array([0.25, -1.0, -0.5, 0.5, 0.25, -0.25, -0.75, 0.25, -0.75, 0.25, 0.25, 0.5, 0.25, -1.0, -0.5, -1.0, -0.75, 1.0, 0.5, 0.75, 1.0, 0.5, -0.5, -0.5, 0.75, -1.0, 0.25, 0.25, -0.5, -1.0, 0.0, 0.0, -0.75, -1.0, 0.0, 1.0, -1.0, -1.0, 1.0, -0.25, -0.5, 0.75, 0.75, 1.0, -0.25, 1.0, -0.75, 0.0, -1.0, 0.5, 0.75, 0.5, 0.5, -0.25, -1.0, -0.75, 0.75, 0.0, -1.0, 0.0, -0.25, -0.5, 0.0, 0.5, -0.5, -0.75, 0.0, 0.0, -0.25, -0.5, 0.5, -1.0, -1.0, 0.0, 0.0, -0.75, -1.0, 0.25, 0.0, 0.25, 0.25, 0.0, -0.75, -0.25, 0.0, 0.75, 1.0, 0.0, -0.5, 0.0, -0.5, 0.25, -1.0, 0.75, -0.25, 0.0, 1.0, -0.25, -1.0, -0.25, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    texture501.destroy();
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    device70.destroy();
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device60.destroy();
    const texture_view5021 = texture502.createView({ label: "texture_view5021" });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
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
    const device80 = await adapter8!.requestDevice({ label: "device80" });
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
    const texture_view5022 = texture502.createView({ label: "texture_view5022" });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    
    
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device100.destroy();
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
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
    
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    
    
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    texture1100.destroy();
    device80.destroy();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32sint",
        dimension: "2d"
    });
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder1100.insertDebugMarker("marker");
    
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const texture1102 = device110.createTexture({
        label: "texture1102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture1103 = device110.createTexture({
        label: "texture1103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    const texture_view9010 = texture901.createView({ label: "texture_view9010" });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const array7 = new Float32Array([-0.25, -0.75, 0.0, 0.25, -0.75, -0.5, 0.0, -0.75, 0.25, -0.25, 0.5, -0.75, 0.5, 0.0, -0.25, 0.75, 1.0, -0.5, -0.5, -0.5, -0.5, 0.75, -1.0, 0.5, 1.0, 0.5, -0.25, 0.0, 0.0, 0.5, 1.0, 0.75, 0.0, -1.0, -0.75, 0.0, -0.75, -0.5, 0.75, -0.5, -1.0, -0.25, -0.25, 0.5, 1.0, 0.25, -0.75, 0.75, -0.5, 0.5, -0.25, -1.0, 0.5, -1.0, 0.5, 0.5, 0.0, 0.75, -1.0, -1.0, 0.75, 0.25, -0.25, -0.25, -1.0, -0.75, -0.25, 0.75, 1.0, -0.75, -1.0, 0.0, 0.5, -0.25, -0.75, -1.0, 0.75, 0.75, 0.0, 1.0, 0.25, 0.25, 0.0, -0.5, 0.75, 0.5, 0.0, 0.5, 0.25, -0.25, -0.5, 0.25, 0.75, -1.0, -0.25, 0.75, -0.25, 0.0, 0.25, 0.75, ]);
    const texture_view9011 = texture901.createView({ label: "texture_view9011" });
    const array8 = new Float32Array([0.5, -0.25, 0.25, -1.0, 1.0, -0.5, -0.75, 0.75, 0.25, -1.0, 0.5, 0.25, 0.5, 0.25, 1.0, 0.5, 0.5, -0.75, -1.0, -0.75, 0.75, 1.0, -0.75, 0.75, 1.0, -0.75, 0.75, -0.75, 0.75, 0.25, 0.0, 0.25, -1.0, 0.25, -0.25, 0.25, -0.5, -0.25, -0.25, 0.25, 0.0, 0.75, 0.75, 1.0, -0.25, -1.0, 0.0, 0.0, 0.0, 0.0, -0.75, 0.5, 0.0, -0.5, -0.25, 0.0, 0.25, 0.75, 1.0, 0.25, -1.0, 0.75, 1.0, 0.5, -0.75, -0.5, 0.25, 0.5, -0.25, -0.25, -0.5, -0.5, -0.5, 0.5, 0.75, -0.25, 0.75, 0.0, 1.0, -0.5, -0.5, -0.75, 0.25, -0.25, 1.0, 0.5, 0.0, -0.25, -1.0, 0.75, -1.0, -0.25, -1.0, -0.25, 0.25, -0.5, -0.25, -0.75, -0.75, -0.25, ]);
    device110.queue.writeTexture({ texture: texture1103 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device90.queue.writeBuffer(buffer900, 0, array4, 0, array4.length);
    const array9 = new Float32Array([1.0, 0.0, 0.5, 0.0, 0.75, 0.25, -0.75, -1.0, 0.5, -1.0, 0.25, -0.25, -0.75, 0.0, 0.0, -1.0, -1.0, 0.5, -1.0, 0.0, 1.0, 1.0, 0.75, 0.5, -0.25, -0.75, -0.75, -0.75, 0.5, 1.0, -0.75, 0.5, -0.75, -0.5, -0.25, 0.75, 0.75, 1.0, 0.0, 0.25, -0.25, 0.0, 0.75, 0.5, 0.25, -0.25, 0.75, -0.75, -0.5, -0.75, -0.5, -0.25, 0.75, -0.75, 0.25, -0.5, -0.75, 0.75, -1.0, 1.0, 0.75, -1.0, -0.75, -0.25, -0.75, 0.75, 0.25, -0.75, 1.0, 0.0, -0.5, -1.0, -0.75, 1.0, 0.25, 0.5, 1.0, 0.0, 1.0, 0.0, 1.0, -0.25, -0.25, 0.25, -1.0, -0.25, 0.0, -0.25, -0.75, -0.25, 0.25, 0.0, 0.25, 0.75, 0.0, -0.75, 0.5, 1.0, -0.25, -0.25, ]);
    device90.queue.writeBuffer(buffer900, 0, array2, 0, array2.length);
    device90.queue.writeBuffer(buffer900, 0, array5, 0, array5.length);
    device90.queue.writeBuffer(buffer900, 0, array5, 0, array5.length);
    
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    
    
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    device110.queue.writeTexture({ texture: texture1103 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device110.queue.writeTexture({ texture: texture1103 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device110.queue.writeTexture({ texture: texture1103 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const array10 = new Float32Array([0.0, 0.5, 0.5, 1.0, 0.75, 0.0, 0.25, -1.0, 0.75, -0.5, -0.75, 1.0, 0.5, 0.0, -0.75, 0.5, -0.25, -0.5, -1.0, 0.0, 0.25, -0.25, -0.25, -1.0, 0.5, -1.0, 0.0, -0.75, 0.0, 0.25, 0.25, 0.75, 1.0, 0.75, 1.0, -0.75, -0.75, -1.0, -1.0, 0.0, -0.5, 0.75, 0.5, -1.0, 0.0, -0.75, 0.25, 0.25, 0.5, -0.5, -0.5, 0.25, 0.0, -0.75, -1.0, 0.5, 0.0, 1.0, 0.25, 0.0, -0.25, 0.75, 1.0, -0.25, -0.25, 1.0, -0.25, 0.75, 0.0, 0.0, 0.75, -1.0, 0.0, -0.25, 0.5, 0.5, -0.5, -0.25, -1.0, -0.75, 0.0, 0.25, -1.0, 0.25, -0.75, 0.0, -0.25, 1.0, 1.0, 0.0, 0.5, 1.0, -1.0, -0.25, -0.25, 0.5, 0.5, 1.0, 0.25, 0.5, ]);
    device110.queue.writeTexture({ texture: texture1103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view11020 = texture1102.createView({ label: "texture_view11020" });
    device90.destroy();
    
    device110.queue.writeTexture({ texture: texture1103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view11030 = texture1103.createView({ label: "texture_view11030" });
    device110.queue.writeTexture({ texture: texture1103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view11031 = texture1103.createView({ label: "texture_view11031" });
    
    
    const texture_view11032 = texture1103.createView({ label: "texture_view11032" });
    
    device110.queue.writeTexture({ texture: texture1103 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device110.queue.writeTexture({ texture: texture1103 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder1101.pushDebugGroup("group_marker");
    device110.queue.writeTexture({ texture: texture1103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1103 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1103 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.destroy();
    
    
    
    const array11 = new Float32Array([-0.5, -0.75, -0.75, 0.25, 1.0, 0.25, 1.0, 0.0, -1.0, 0.5, 0.75, 0.5, 0.75, 1.0, -1.0, 1.0, -0.75, -0.75, -1.0, -1.0, -1.0, -0.5, -0.75, 0.25, 1.0, -1.0, 0.75, -1.0, 0.0, 0.75, -0.75, -0.5, -1.0, 0.25, -0.5, 0.0, 0.0, 0.5, -0.75, -0.75, 0.5, 1.0, 0.25, 0.25, -0.25, -0.5, 0.0, 0.25, -0.75, -1.0, -1.0, 1.0, -0.75, -0.5, -0.25, -0.75, 0.75, -0.75, -1.0, 0.0, -0.75, -0.25, 0.0, 0.75, 0.0, -1.0, -0.5, -0.5, 0.5, -0.75, -0.25, 1.0, -0.5, -1.0, 1.0, 0.75, 0.25, 0.75, -0.5, -0.75, 0.5, -0.25, -1.0, 1.0, 0.0, 0.25, -0.75, 0.5, 0.75, 0.0, 0.0, 0.0, 0.5, 0.75, -0.75, -1.0, 0.5, -0.75, 0.75, 0.75, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view13000 = texture1300.createView({ label: "texture_view13000" });
    
    
    
    
    
    
    const texture1301 = device130.createTexture({
        label: "texture1301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    
    
    
    
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
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
    
    
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    
    const array12 = new Float32Array([-1.0, 0.5, 0.5, -0.5, 0.0, 0.0, 0.75, 0.25, 1.0, 0.25, -0.25, 1.0, 0.0, 0.5, 0.0, 1.0, 0.5, -1.0, 1.0, 0.75, -0.25, -1.0, -1.0, -0.75, 0.25, -0.5, -0.5, 0.0, 0.0, -0.5, 0.75, 0.0, -0.75, 0.0, -0.5, 0.0, 0.75, 0.5, 0.5, 0.5, -0.75, 0.25, -0.75, -1.0, -0.75, 0.0, -1.0, -1.0, -0.5, 0.25, -0.5, -0.75, 1.0, -0.25, -0.5, 1.0, -1.0, 0.5, 0.25, -0.25, 0.5, -0.5, -0.25, -0.75, -0.5, -0.25, 0.5, -0.75, 0.5, -1.0, 1.0, 0.25, 1.0, 0.5, 1.0, -0.75, -1.0, -0.25, 0.5, 0.0, -0.5, 0.5, 0.0, 0.5, 1.0, -1.0, 1.0, -0.5, 0.25, 0.75, -0.5, -0.75, 0.5, 0.75, 1.0, 0.25, 0.25, 0.5, 0.0, 0.0, ]);
    
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    
    texture1301.destroy();
    const texture1302 = device130.createTexture({
        label: "texture1302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view13020 = texture1302.createView({ label: "texture_view13020" });
    const texture_view13021 = texture1302.createView({ label: "texture_view13021" });
    
    
    
    const texture_view13001 = texture1300.createView({ label: "texture_view13001" });
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder1300.pushDebugGroup("group_marker");
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const texture_view13022 = texture1302.createView({ label: "texture_view13022" });
    
    const pipeline_layout1300 = device130.createPipelineLayout({ 
        label: "pipeline_layout1300",
        bindGroupLayouts: [bind_group_layout1300]
    });
    
    device120.destroy();
    
    device130.destroy();
    
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    
    
    
    
    device150.destroy();
    
    
    
    
    
    
    
    
    
    
    
    const array13 = new Float32Array([0.25, -0.5, 0.0, 0.5, 0.75, 0.75, 0.25, -0.5, 0.75, -0.75, 0.5, 1.0, 0.0, 0.25, -0.5, -0.75, -0.75, 0.75, -0.25, 0.0, 0.75, -0.25, -1.0, 0.0, 0.25, 0.25, -0.25, -0.25, -0.75, -0.25, 1.0, 0.5, 0.25, -0.75, 0.25, 0.5, 1.0, -0.5, -0.25, 1.0, 0.25, -1.0, 1.0, 0.75, 0.0, 0.75, 0.5, 0.0, 0.25, -1.0, -0.5, -0.5, 0.0, -0.25, 0.5, 0.5, 1.0, 0.5, 0.75, 0.5, 0.75, -0.5, -0.5, 0.5, -0.5, 0.5, 0.75, -1.0, 0.0, 0.0, -0.5, 0.75, 0.25, -0.5, -1.0, -0.75, -0.25, 1.0, 0.0, -0.25, -0.75, 1.0, 1.0, 0.0, 0.75, 1.0, -0.5, 0.5, -1.0, 0.75, 0.5, 0.75, 1.0, 0.5, -0.25, 0.5, 1.0, 0.75, 0.25, -0.5, ]);
    
    const array14 = new Float32Array([-0.5, 0.0, 0.25, 0.25, 1.0, -0.25, -0.75, -1.0, 0.75, 1.0, -0.5, -0.75, -1.0, 0.75, 0.0, -0.75, -0.75, 0.75, -1.0, 0.25, 0.5, -0.5, 0.5, -0.75, 0.75, -0.75, -1.0, 0.75, 0.5, -1.0, 1.0, -0.75, 0.5, -0.25, 0.0, 0.5, -0.75, 0.0, -0.25, 0.75, 0.0, -0.75, 0.0, 0.0, -1.0, -0.5, -0.75, 1.0, -0.75, -0.75, 0.0, -1.0, 0.5, 0.5, -0.5, 0.0, -1.0, -0.75, -0.25, 0.5, -1.0, 0.0, -0.5, -1.0, 0.0, -1.0, 1.0, -1.0, 0.5, 1.0, -0.5, 1.0, 0.75, -0.25, 0.5, -0.25, 0.25, -1.0, 0.5, -0.5, -1.0, 0.75, 0.5, 0.75, -1.0, -0.75, -0.5, 1.0, -0.5, -0.5, -0.5, 1.0, -0.75, 0.75, -0.25, 0.0, -0.25, 0.25, -0.25, 0.25, ]);
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    
    
    
    
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    
    
    
    
    
    
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    const texture_view14000 = texture1400.createView({ label: "texture_view14000" });
    const array15 = new Float32Array([0.75, -0.25, -0.75, 0.25, 0.5, 0.75, -0.5, -0.25, 0.25, 0.0, 1.0, 0.0, -0.25, -0.25, -1.0, -0.75, 0.5, -0.75, -0.75, 0.5, 1.0, 0.5, -0.5, 0.0, -0.25, -0.25, -0.75, -0.5, 0.25, 0.25, -0.5, 0.5, 0.0, -0.75, -0.75, 0.5, -0.75, -1.0, -0.25, 0.5, -0.75, 0.0, 0.0, 0.5, 1.0, 0.5, -1.0, -0.75, -0.25, -1.0, -0.5, -1.0, 0.0, 1.0, 0.75, 1.0, 0.0, 0.25, -0.5, 0.75, -0.75, -0.25, 0.75, -0.5, 0.5, 0.5, 1.0, -0.5, 0.25, -0.75, -0.75, -1.0, 0.5, 0.25, 0.0, -1.0, -1.0, 0.25, 1.0, 0.5, -0.75, 0.0, -0.75, -0.5, -0.5, 0.75, 0.75, -0.25, 0.75, 0.5, -0.75, 1.0, -0.75, -0.25, -0.75, 0.25, 1.0, 0.25, -0.25, 0.5, ]);
    const texture_view14001 = texture1400.createView({ label: "texture_view14001" });
    
    const buffer1401 = device140.createBuffer({
        label: "buffer1401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const bind_group_layout1400 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1400",
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
    
    
    
    const query1401 = device140.createQuerySet({
        label: "query1401",
        type: "occlusion",
        count: 32,
    });
    const query1402 = device140.createQuerySet({
        label: "query1402",
        type: "occlusion",
        count: 32,
    });
    query1400.destroy()
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    query1400.destroy()
    const texture1401 = device140.createTexture({
        label: "texture1401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    device140.destroy();
    
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    
}