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
    
    const array0 = new Float32Array([-0.25, 0.25, 0.0, 0.75, -1.0, -0.25, 0.0, 0.0, 0.75, -1.0, 0.25, 0.0, -0.25, 0.5, -0.5, 0.75, 0.0, -1.0, 0.0, 0.75, -0.5, 0.25, 1.0, -0.25, -0.5, -0.5, -0.75, -0.5, 1.0, 0.0, 1.0, 1.0, -0.5, -0.75, 0.25, 0.0, 0.0, -0.75, 0.75, -1.0, -1.0, 0.25, 1.0, -0.5, 0.25, -0.75, 0.0, 0.25, -0.5, -1.0, -0.25, 0.5, 0.25, -0.5, 0.5, 0.0, 1.0, 0.5, -0.25, -1.0, 0.75, 0.75, 1.0, -1.0, 0.0, 1.0, 0.0, -0.25, 1.0, -0.5, 0.25, -0.25, -0.5, -0.25, 0.0, 0.75, -1.0, -0.25, -0.5, -0.5, 0.0, -0.75, 0.0, 1.0, -0.25, 0.5, -1.0, 0.5, 0.25, -0.25, -0.5, 1.0, -0.5, 0.75, 1.0, 0.5, 0.5, -1.0, 1.0, 0.25, ]);
    
    
    
    
    const array1 = new Float32Array([0.75, -0.75, 0.5, 0.5, 0.5, -0.75, 0.25, 0.25, -0.75, 0.25, -0.5, -1.0, -0.75, 0.0, 0.5, -0.75, 1.0, 0.5, 0.75, -0.5, 1.0, -0.75, -0.5, -1.0, 1.0, 0.0, 0.0, 0.5, -0.25, -0.75, -0.25, 0.25, -0.75, 0.25, 0.25, 0.0, 0.5, -0.25, -0.5, 0.25, 0.5, 0.75, -0.75, 0.25, 0.75, -1.0, 0.5, 0.0, 0.5, 0.25, -1.0, -0.5, -1.0, -0.5, -0.25, 0.25, 0.0, -0.25, 0.5, -1.0, 0.0, 0.0, 0.0, 0.5, 0.75, -0.75, 0.5, 0.25, -1.0, 0.5, -0.25, 0.0, 0.25, 0.25, -0.75, 0.75, 0.5, -0.5, 0.0, 0.75, -1.0, -0.25, -0.25, -0.5, -0.5, -1.0, -1.0, -0.5, 0.5, 0.5, -0.25, 0.25, -0.75, 0.5, 0.75, 0.0, -0.25, 0.25, 0.5, 0.5, ]);
    
    
    const array2 = new Float32Array([-0.25, -0.25, 1.0, 0.5, -0.25, 0.0, -0.75, 0.25, -0.25, 1.0, -1.0, 1.0, 0.25, 0.75, 0.75, 0.25, 0.0, -0.25, 0.75, -0.75, -0.25, 1.0, 1.0, -0.5, -0.5, -1.0, -1.0, -1.0, 0.25, 0.75, 0.25, 0.75, 1.0, 0.25, 1.0, 0.75, -0.75, -0.25, 1.0, -0.5, -0.75, 0.0, 0.5, -1.0, -0.25, -0.5, -1.0, -0.5, -0.25, 0.0, -0.5, 0.5, 0.0, 0.0, -1.0, -0.75, 1.0, 1.0, 0.25, -0.75, 0.75, 0.0, -0.5, -0.75, -0.75, 0.75, -1.0, -0.75, -0.5, 0.25, 1.0, 0.5, -1.0, 0.25, 0.5, -0.5, 0.25, -0.75, -0.75, -0.75, 0.5, -0.75, 1.0, -1.0, 1.0, 0.25, -0.5, -0.25, 0.75, -0.25, 0.5, -0.5, -0.5, 1.0, 0.0, -0.5, -0.75, -1.0, -0.25, 0.5, ]);
    
    
    
    const array3 = new Float32Array([0.75, -1.0, 0.75, 0.25, 0.0, 0.25, 1.0, 0.0, 1.0, 1.0, -0.5, -0.5, 0.75, -0.5, 0.0, 0.25, -1.0, 0.25, 0.75, 0.0, 0.25, 0.0, -0.5, -0.5, 0.25, -0.25, 0.0, -0.75, 0.25, -1.0, -0.75, 0.5, -0.25, 0.75, 0.75, 0.25, -1.0, 0.5, 0.25, 0.5, 1.0, 0.5, 0.0, 1.0, 0.25, 1.0, 1.0, 0.5, -0.75, 1.0, 0.0, -0.5, -0.75, 0.25, -0.5, 0.25, -1.0, -0.75, -0.75, 1.0, 0.0, 0.25, 0.5, 0.25, -0.75, -0.5, -0.5, 0.5, 1.0, 0.0, 0.75, 0.5, 0.75, -1.0, 0.0, 0.5, 0.75, -1.0, 0.75, 0.0, 0.75, 0.25, -0.5, 0.75, 0.75, 0.75, -0.75, -0.5, -0.5, 0.5, 0.25, 1.0, -1.0, -0.75, 0.25, -0.75, -1.0, -1.0, 0.75, -0.25, ]);
    
    const array4 = new Float32Array([-0.75, -0.25, 0.5, -1.0, 0.5, 0.25, 0.25, 0.5, 0.5, 0.5, -1.0, 0.75, -1.0, 0.75, 0.75, 1.0, -1.0, -1.0, -0.25, -0.5, 0.0, 0.25, -1.0, -1.0, 0.25, -0.25, -0.25, 0.25, 0.0, 1.0, 0.75, -0.5, 0.0, 0.25, 0.75, -0.5, -0.25, 1.0, -0.5, 1.0, 0.0, -0.75, 0.25, 0.25, 0.25, 0.75, 0.25, 0.75, -1.0, 0.0, -1.0, -1.0, -1.0, -0.75, 0.25, -0.25, -0.75, 0.25, 0.5, 0.25, -0.25, 0.0, 0.75, 0.5, -0.75, -0.25, -1.0, 0.0, 0.75, 0.0, 0.25, -1.0, -1.0, 0.75, -0.5, 0.5, 0.75, -1.0, 0.25, -0.5, 0.75, 0.5, 1.0, 0.75, -0.75, 0.0, 0.5, -1.0, 0.25, -0.5, 1.0, -0.5, 1.0, 0.25, 0.25, 0.5, -0.25, 0.25, -0.75, 0.5, ]);
    const array5 = new Float32Array([-1.0, 0.0, 0.5, -0.75, 1.0, 1.0, -0.5, 0.0, -1.0, 0.5, -1.0, -0.5, -0.25, 0.0, 1.0, -0.25, 1.0, -0.5, 0.25, 0.25, 1.0, 0.0, 1.0, 0.25, -0.75, 0.25, 0.5, -0.5, -1.0, 0.25, 1.0, 1.0, 0.5, 0.5, 0.5, -1.0, 0.0, 0.0, -0.5, 0.75, 0.25, 0.5, 0.5, 0.75, 0.75, 0.0, -0.5, 0.5, 0.25, 0.5, -0.75, 0.25, -0.75, -0.25, 0.5, 0.5, -0.5, -0.5, -0.75, 0.25, -0.75, -0.75, 0.75, 1.0, -1.0, -0.75, 0.25, -0.25, 0.25, -0.25, 0.25, 0.5, -0.75, 0.25, 1.0, 0.25, 0.5, 0.5, -0.25, 0.25, 0.75, -0.75, -0.75, 1.0, 0.5, -0.25, 0.5, 0.75, 0.25, 1.0, 1.0, 0.25, 0.0, -1.0, 0.25, -0.5, 1.0, 0.75, -1.0, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array6 = new Float32Array([-0.75, -0.25, -0.75, 1.0, -0.25, -0.75, 0.0, 0.0, 0.0, -0.5, 0.75, 0.5, -0.75, -1.0, 0.25, 0.0, 0.75, -0.25, 0.0, -1.0, 0.0, -1.0, -0.5, 1.0, -0.5, -0.5, -0.25, 0.0, -1.0, -1.0, 0.25, 0.25, 0.5, -1.0, 0.25, 0.25, 0.0, 0.75, 0.0, -0.25, 0.75, 0.25, 0.5, -0.25, -0.5, 0.25, 0.0, 1.0, -1.0, 0.75, 0.5, -0.75, -0.75, 0.5, 1.0, 0.0, 0.5, 0.0, -0.5, 1.0, -0.5, -0.5, -0.75, -0.5, 0.75, -0.25, 0.75, -0.75, 0.0, 0.5, -1.0, -0.75, 0.0, 0.75, 0.25, 0.5, 0.25, -0.5, 0.0, 0.75, 0.5, 0.75, -0.5, -0.75, -0.75, -0.75, 0.5, -0.75, 1.0, -0.75, -1.0, -0.5, -0.5, -0.5, 0.75, 0.75, 0.0, 0.25, 0.25, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    query100.destroy()
    device10.pushErrorScope("validation");
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const array7 = new Float32Array([0.5, -0.5, 0.0, 0.0, 0.5, -0.5, -0.75, -0.75, 0.5, -1.0, 1.0, 1.0, -0.75, 0.0, 0.75, 0.25, 0.0, 1.0, 0.0, 1.0, 1.0, 0.0, 0.5, -0.25, -1.0, -1.0, -0.5, 1.0, 0.5, 1.0, 0.75, 0.25, -0.75, 0.5, 1.0, 0.75, -0.25, 0.0, -1.0, 0.0, 0.25, 0.75, 0.75, -0.5, -0.5, 0.25, -0.25, 0.0, -0.75, 0.25, 0.75, 0.25, 0.75, -0.75, 0.5, 0.0, -1.0, -0.75, 0.25, 1.0, 0.75, -0.5, -0.75, 0.25, 0.75, -0.75, 1.0, -0.25, -0.25, -0.5, 1.0, -0.25, 1.0, 0.75, -0.75, 0.0, 0.0, -0.75, 0.25, -0.25, 0.5, -1.0, 0.5, 0.5, -1.0, -0.5, 0.25, 0.25, 1.0, 0.75, -0.5, -0.5, -0.75, 0.25, -1.0, 1.0, -1.0, 1.0, -0.25, -0.25, ]);
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query103.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_buffer100 = command_encoder100.finish();
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32uint",
        dimension: "2d"
    });
    
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    query100.destroy()
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query101.destroy()
    
    
    
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
    
    query103.destroy()
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query102.destroy()
    
    query102.destroy()
    
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
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    
    
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query101.destroy()
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
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout103]
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.queue.submit([command_buffer100, ]);
    const array8 = new Float32Array([-1.0, 1.0, 1.0, -0.75, -0.5, -0.25, 0.5, -1.0, -0.5, -0.5, -0.25, -0.5, 0.75, 0.75, 1.0, -1.0, 0.5, -0.75, -0.5, -0.5, -1.0, 0.5, -0.25, 0.5, -0.75, 0.75, -0.25, 0.25, 0.0, -0.25, 0.0, 1.0, 0.25, -1.0, -0.75, -0.75, 0.0, 0.75, -1.0, 0.75, -0.75, -0.5, 0.75, 0.5, 0.0, -0.5, -1.0, 1.0, 0.5, -0.5, -0.5, 0.75, 0.5, 0.75, 0.0, 1.0, -1.0, 0.25, -0.25, 0.5, -0.5, -1.0, 0.75, -0.75, 0.25, -0.5, -0.5, 0.5, 1.0, 0.0, -1.0, -0.75, -1.0, 0.0, 0.25, -0.25, -0.5, 0.25, 1.0, -0.25, -0.75, 0.25, -0.25, 0.25, 0.25, -1.0, -1.0, 1.0, -0.25, 0.0, 0.25, 0.5, -1.0, 0.25, 0.75, -0.25, -0.75, -1.0, -0.75, 0.25, ]);
    
    render_bundle_encoder101.popDebugGroup();
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout104]
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder100.popDebugGroup();
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    query100.destroy()
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder100.popDebugGroup();
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout106]
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query105.destroy()
    query104.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    query105.destroy()
    query100.destroy()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    query105.destroy()
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const array9 = new Float32Array([-0.5, 0.25, 0.75, 0.75, 0.5, -1.0, -0.5, -0.25, -0.75, 0.0, 0.5, 1.0, -0.5, -0.25, 0.25, 0.0, 0.5, 0.75, 0.5, -0.25, 0.75, 0.25, 0.0, -0.25, -1.0, -0.75, 0.25, 0.5, -0.5, -0.5, 0.0, -0.25, -0.25, 0.25, 0.75, -0.5, -0.5, 0.5, 0.0, 0.5, 0.75, -0.75, 1.0, 1.0, 0.0, -0.5, -0.25, 0.5, 0.75, 0.75, -0.5, -0.5, -0.75, 1.0, -0.75, 0.75, 0.5, 1.0, 0.25, 0.75, 0.25, 0.75, 0.75, 0.5, 0.75, 0.5, -1.0, 0.75, 0.0, 0.5, 1.0, 0.0, 0.25, 0.25, -0.5, 0.75, 0.25, 0.0, 0.25, -1.0, 0.5, 0.75, -1.0, -0.25, -0.25, -0.75, -0.25, 1.0, -1.0, -1.0, 1.0, -0.25, 0.25, 1.0, 1.0, -0.75, -0.5, -0.25, 0.25, -0.25, ]);
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout103]
    });
    query102.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    query100.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query102.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query104.destroy()
    const texture109 = device10.createTexture({
        label: "texture109",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout106]
    });
    
    query103.destroy()
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_buffer103 = command_encoder103.finish();
    device10.queue.writeTexture({ texture: texture100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query103.destroy()
    
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query107.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    device20.destroy();
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const texture1010 = device10.createTexture({
        label: "texture1010",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1010 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.queue.writeTexture({ texture: texture1010 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device10.queue.writeTexture({ texture: texture100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1010 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture1010 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1010 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1010 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeTexture({ texture: texture1010 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1010.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture1010 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1010 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1020.insertDebugMarker("marker")
    query100.destroy()
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder101.popDebugGroup();
    query105.destroy()
    query108.destroy()
    
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query102.destroy()
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query106.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture1010 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query102.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query101.destroy()
    query104.destroy()
    command_encoder104.pushDebugGroup("mygroupmarker")
    query108.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture1011 = device10.createTexture({
        label: "texture1011",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeTexture({ texture: texture1011 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    
    query104.destroy()
    
    query100.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1010 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.queue.writeTexture({ texture: texture1011 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.popDebugGroup();
    device10.queue.writeTexture({ texture: texture1010 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout103]
    });
    device10.queue.writeTexture({ texture: texture1010 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    const pipeline_layout1024 = device10.createPipelineLayout({ 
        label: "pipeline_layout1024",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout1025 = device10.createPipelineLayout({ 
        label: "pipeline_layout1025",
        bindGroupLayouts: [bind_group_layout105]
    });
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    compute_pass_encoder1020.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture1011 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query101.destroy()
    device10.queue.writeTexture({ texture: texture1011 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1026 = device10.createPipelineLayout({ 
        label: "pipeline_layout1026",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    device10.queue.writeTexture({ texture: texture1010 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1010 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device10.queue.writeTexture({ texture: texture1010 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.destroy();
    
    device10.queue.writeTexture({ texture: texture1010 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1011 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const pipeline_layout1027 = device10.createPipelineLayout({ 
        label: "pipeline_layout1027",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    device10.queue.writeTexture({ texture: texture1011 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1028 = device10.createPipelineLayout({ 
        label: "pipeline_layout1028",
        bindGroupLayouts: [bind_group_layout105]
    });
    device10.queue.writeTexture({ texture: texture1010 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1029 = device10.createPipelineLayout({ 
        label: "pipeline_layout1029",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1010 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    device10.queue.writeTexture({ texture: texture1011 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1010 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout1030 = device10.createPipelineLayout({ 
        label: "pipeline_layout1030",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.queue.writeTexture({ texture: texture1011 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1011 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query106.destroy()
    device10.queue.writeTexture({ texture: texture1010 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    
    query102.destroy()
    const sampler109 = device10.createSampler( { label: "sampler109" } );
    device10.queue.writeTexture({ texture: texture1011 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    query108.destroy()
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.writeTexture({ texture: texture1010 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.pushErrorScope("out-of-memory");
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder100.popDebugGroup();
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query1010 = device10.createQuerySet({
        label: "query1010",
        type: "occlusion",
        count: 32,
    });
    const array10 = new Float32Array([-1.0, 0.75, 0.5, 0.25, 0.0, 0.5, -1.0, 0.75, -0.75, -0.5, 0.0, -0.5, 1.0, 0.25, 0.0, 0.5, -0.75, -0.25, -0.5, 0.0, 0.5, 0.25, -0.75, 1.0, -0.5, 0.25, 1.0, -0.25, 0.25, 0.0, -1.0, 0.25, -0.25, -0.25, 0.75, 1.0, 0.5, -0.5, 0.25, -0.5, 0.5, -0.25, -0.25, 1.0, 1.0, -0.25, 0.75, 0.5, -0.25, -0.75, -0.5, 0.0, -1.0, 0.25, -1.0, 0.5, 0.5, 0.75, 1.0, 1.0, -0.75, 0.75, -0.75, 0.75, 0.75, -0.5, -0.5, -0.25, -0.25, 0.75, 0.5, 0.25, 0.25, 0.75, -1.0, 0.5, 0.25, 0.75, -0.25, 0.0, 0.0, -0.25, 0.75, 0.5, 0.5, 1.0, 0.0, -1.0, 1.0, -0.5, 0.75, 0.25, 0.25, 1.0, -0.5, -1.0, -0.5, -0.25, -0.75, 0.75, ]);
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1011 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query108.destroy()
    
    
    const array11 = new Float32Array([-0.5, 0.75, -0.5, -1.0, -0.5, -0.75, 0.25, 0.0, 0.0, 0.5, -0.5, 0.25, -1.0, 0.75, -0.75, 0.75, 0.25, -0.75, 0.5, -1.0, 0.25, 0.25, -1.0, 0.75, 0.25, -0.25, -0.25, -1.0, 0.25, 1.0, 0.5, -0.5, -1.0, -1.0, -0.25, 0.25, 0.75, 1.0, -1.0, -0.75, -0.75, -0.75, -0.25, -0.25, 1.0, -1.0, -1.0, -0.75, -1.0, -1.0, -0.25, 0.25, 1.0, -0.75, -1.0, -0.25, 0.5, 0.25, 0.5, -0.25, 0.25, -1.0, 0.75, 0.5, -0.25, 0.25, -0.75, 0.5, -0.5, 0.75, -0.75, 0.5, 0.25, -1.0, 1.0, -1.0, -0.75, -0.75, 0.0, -1.0, 0.75, 0.75, 0.75, 0.5, -0.75, 0.75, 1.0, 0.25, 0.25, 1.0, 0.25, 0.75, 0.25, 0.75, 0.5, 1.0, -0.5, 0.5, -0.75, 0.75, ]);
    device10.queue.writeTexture({ texture: texture100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1011 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device10.queue.writeTexture({ texture: texture1010 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1011 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1010 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device10.queue.writeTexture({ texture: texture1010 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query109.destroy()
    device10.queue.writeTexture({ texture: texture1011 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1010 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1010 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query104.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query400.destroy()
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    query108.destroy()
    device10.queue.writeTexture({ texture: texture1011 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    query102.destroy()
    device10.queue.writeTexture({ texture: texture1010 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1011 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device10.queue.writeTexture({ texture: texture1011 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query106.destroy()
    device10.queue.writeTexture({ texture: texture1011 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    query101.destroy()
    
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1011 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.submit([command_buffer103, ]);
    const command_buffer600 = command_encoder600.finish();
    device60.queue.submit([command_buffer600, ]);
    const command_buffer400 = command_encoder400.finish();
    device40.queue.submit([command_buffer400, ]);
}