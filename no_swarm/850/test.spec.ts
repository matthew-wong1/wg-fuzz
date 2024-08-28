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
    
    
    const array0 = new Float32Array([0.0, -0.5, -0.25, 0.75, 1.0, 0.0, 1.0, 0.0, 0.5, -0.5, 0.5, 0.75, 0.0, 0.5, -0.75, -0.25, -1.0, 1.0, -0.25, -0.5, 0.0, -1.0, 0.25, 0.75, -0.25, 0.5, -1.0, -1.0, 0.5, -0.25, 0.5, -1.0, 1.0, 1.0, 1.0, -0.25, 1.0, 1.0, 0.25, 0.25, 0.75, 1.0, -0.5, 1.0, 0.5, -0.75, -0.75, 0.25, 0.0, -1.0, -0.5, -0.25, -0.25, -0.25, 0.25, 0.75, 0.75, -0.25, -0.5, -1.0, -0.25, 0.25, 0.75, -0.25, 0.0, -0.5, 1.0, -1.0, -0.5, 0.0, -0.25, -0.5, 1.0, 0.0, -0.5, 0.5, 0.75, 0.25, -0.75, -0.5, 0.25, 0.25, 0.0, -0.75, 0.25, 0.0, 0.25, 0.0, -0.5, 0.5, 0.5, 0.5, -1.0, 0.0, -0.5, 0.25, 0.25, -1.0, -1.0, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array1 = new Float32Array([0.0, -0.25, 1.0, -1.0, 0.75, -0.25, -0.75, 0.5, 0.0, 0.25, 1.0, 0.5, 0.5, 0.5, -0.75, 0.75, -0.25, 0.75, -1.0, 0.0, -1.0, 0.0, 0.5, -0.5, 0.5, -1.0, -0.5, 0.0, -0.75, -1.0, 0.5, -1.0, -0.75, -0.75, 0.75, -0.25, 0.75, 0.5, 0.75, 0.25, -0.75, -0.5, 0.75, -0.75, 1.0, -0.75, -0.5, 0.5, 0.25, 0.75, -0.5, 1.0, -1.0, 0.75, 0.25, -0.75, -0.75, -0.5, -1.0, -0.5, 0.75, -0.5, 0.25, 0.0, 0.25, -0.75, -0.25, 0.0, 0.0, -1.0, -0.25, 0.0, 0.0, 0.5, -0.75, 0.75, -1.0, 1.0, 0.5, -0.25, -0.75, 0.75, -1.0, 1.0, -0.75, 0.5, 0.0, -0.5, 1.0, -1.0, 0.75, -0.5, 0.25, 0.75, 0.5, 0.5, 0.0, -0.75, 1.0, -0.5, ]);
    
    const array2 = new Float32Array([-1.0, 0.5, 0.0, 0.0, 1.0, 0.75, 0.0, -0.25, 0.75, 1.0, 0.5, 1.0, -1.0, -0.75, -0.25, 0.0, -0.5, -0.75, 1.0, 0.5, -1.0, 0.5, 1.0, 0.25, 0.5, 0.5, -0.25, 1.0, 0.0, 1.0, -1.0, 0.5, 1.0, -0.75, 1.0, -1.0, 0.0, -0.25, 0.0, 0.25, -0.5, 0.5, -0.75, 0.5, 0.25, 0.5, -0.25, -0.5, -0.75, -0.75, 0.0, 0.75, 0.5, 1.0, -1.0, 1.0, -0.75, -0.75, 1.0, 0.0, -1.0, 0.5, 0.75, 0.0, 1.0, 0.5, 0.0, -0.75, 0.0, 0.0, -1.0, -0.5, 1.0, -1.0, 0.0, 1.0, 0.0, -0.25, 0.5, -1.0, -0.25, -1.0, -0.5, -0.25, -0.25, -0.5, -0.25, -1.0, -0.5, 1.0, 1.0, -1.0, -0.25, 0.0, -0.75, 0.0, 0.75, -0.75, -0.75, -0.5, ]);
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
    device00.destroy();
    
    const array3 = new Float32Array([1.0, 0.75, 0.0, 0.5, 0.5, 0.0, -1.0, -0.5, 0.5, -0.25, 1.0, -0.25, -0.5, 0.5, 1.0, -1.0, -0.5, 0.5, -0.25, 0.75, -1.0, 1.0, 0.5, 0.25, 1.0, -0.5, -0.5, -0.75, -0.25, -0.75, -1.0, -0.5, 0.25, 0.25, 0.75, 0.0, 0.75, -1.0, 0.5, 0.0, -0.25, -0.25, -0.75, -0.5, 0.5, 1.0, 0.25, -1.0, -0.5, 0.5, 1.0, 0.0, -0.5, -0.25, 1.0, -0.5, 0.25, 0.75, 0.0, 1.0, 1.0, 0.0, -0.25, 0.5, -0.5, -0.25, 0.0, -0.5, 0.75, -0.25, 0.75, 0.75, -0.5, 0.75, -0.5, -0.5, -0.25, -0.5, 0.0, 0.75, -0.75, 0.75, -0.5, -0.25, -1.0, 0.5, 0.5, 0.0, -1.0, 0.5, -0.5, 0.75, 0.75, -0.25, 0.0, 0.5, -0.25, 0.5, -1.0, -1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array4 = new Float32Array([-1.0, 1.0, 0.5, -1.0, 0.75, -0.5, 1.0, -0.75, 0.5, -1.0, -0.5, 0.25, 0.25, 0.25, -1.0, 1.0, -0.25, 0.75, 0.0, 0.5, -0.25, 0.25, 0.0, -0.5, 0.75, -0.75, -0.25, 0.25, -1.0, -0.75, 0.0, -0.5, -0.75, -1.0, 0.75, -0.75, -0.25, -0.25, 0.5, -0.5, 1.0, -0.25, 1.0, -0.75, 0.75, 1.0, 0.5, 0.75, -1.0, 1.0, 0.0, -0.25, 1.0, 0.5, 1.0, 0.75, 0.25, -1.0, 1.0, -0.5, 0.25, 0.25, 0.25, -0.25, -0.25, 1.0, 1.0, 0.75, 1.0, 0.25, 0.0, 0.5, -0.25, -0.75, 0.5, -0.25, -0.75, -0.25, 0.25, 0.25, -1.0, 0.5, -0.25, 0.5, 0.5, 1.0, 0.5, 0.25, -0.25, 0.5, -0.5, -0.25, 0.0, -0.5, 0.5, 0.25, -1.0, -0.75, 0.75, -0.25, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array5 = new Float32Array([1.0, -0.25, 0.75, -0.75, 1.0, -0.75, 1.0, -0.25, 0.25, -0.5, -0.25, 0.0, 0.25, -0.25, 0.25, -0.75, 1.0, 0.0, 0.75, 1.0, 0.75, 1.0, 0.25, 0.25, 1.0, 0.0, 1.0, 0.0, 0.25, -0.75, 0.0, -1.0, -1.0, 1.0, -0.25, 0.25, 0.75, -0.25, -0.5, 1.0, -0.25, 0.5, -1.0, 0.5, 0.25, -0.5, 0.0, 0.0, 0.5, -1.0, 0.5, -0.75, 0.5, -0.5, -0.75, -0.25, 0.5, 0.25, 0.25, 0.25, 0.75, -1.0, 0.75, 0.25, 0.0, 0.75, -0.5, -0.5, 1.0, -0.75, -0.75, 0.0, 0.0, -0.5, 0.5, -0.5, 0.25, 0.25, 0.75, -1.0, -0.75, -0.5, 1.0, -1.0, 0.0, 0.75, -1.0, -0.25, -1.0, 0.5, -1.0, 0.0, -0.75, 0.0, -1.0, -0.5, -0.75, -1.0, -0.5, -0.75, ]);
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    buffer100.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device10.destroy();
    const array6 = new Float32Array([0.5, -0.75, 0.25, 0.5, -0.25, 0.5, -0.5, -0.5, 0.5, 0.25, -0.25, 0.75, -0.5, -0.25, 0.5, -0.5, 1.0, -0.5, 0.0, 0.5, 0.5, -0.25, -0.75, -0.25, 0.5, 1.0, -0.5, 0.25, -0.75, 0.0, 0.0, -0.25, 0.0, 0.75, -0.75, 0.25, 0.75, -0.75, 0.5, 0.25, 1.0, 0.5, -0.25, -1.0, 0.25, 0.0, 1.0, 0.25, 1.0, 0.75, 0.25, -0.25, -0.5, 0.0, -0.25, 0.5, 0.0, -0.5, -0.5, 0.25, -0.5, 1.0, 0.75, 1.0, 0.25, 0.75, 0.0, 0.25, 0.0, -0.75, 0.25, -0.75, 0.0, 0.75, -0.25, 0.0, -0.5, 0.75, -1.0, 0.75, 0.5, 0.75, 1.0, 1.0, -1.0, -0.5, -0.5, -0.25, 0.0, -1.0, -0.5, -0.75, -0.75, 0.75, 0.75, -0.25, 1.0, 1.0, -0.5, 0.5, ]);
    
    
    
    const array7 = new Float32Array([-0.25, 0.25, 1.0, -0.25, 0.0, 0.0, 0.0, -1.0, -0.5, -0.5, 0.5, -0.75, -0.75, 1.0, -0.5, -1.0, 1.0, 0.5, 0.5, 0.75, 0.25, 0.0, -0.25, 1.0, 0.75, 0.75, -0.25, -1.0, -0.5, 1.0, -1.0, 0.0, -0.25, 0.0, 0.5, -0.5, -0.5, 1.0, -0.5, -1.0, 1.0, -0.5, 0.0, -0.75, -0.25, 0.0, 0.25, -0.75, -0.5, -1.0, -0.25, -1.0, -0.5, 0.25, 0.0, 0.25, 1.0, -0.25, -1.0, 0.5, -1.0, -0.75, -0.25, -0.25, -0.25, -0.25, -0.75, 0.25, 1.0, 1.0, -0.75, -0.5, 1.0, -0.5, -0.25, -0.25, -0.75, -0.75, -0.5, 0.25, 0.0, 0.25, 0.0, -1.0, -0.25, -1.0, 0.25, 0.5, -0.25, -1.0, 0.25, -0.25, 0.0, -0.5, -1.0, -0.5, 0.75, 0.75, -0.25, 0.75, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.destroy();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device30.destroy();
    
    query401.destroy()
    const array8 = new Float32Array([-0.25, 0.5, 1.0, -1.0, -1.0, -0.25, 0.75, -0.5, -0.5, -0.25, 0.5, -0.5, -0.25, 0.25, 0.25, -0.25, 1.0, 0.5, 0.0, -0.75, -0.25, 0.25, 0.75, 0.5, -0.5, 0.0, 0.75, 0.75, 1.0, -1.0, -0.5, -1.0, 1.0, 0.0, 0.5, -0.5, -0.25, -0.25, -0.25, 0.25, -1.0, 0.0, -0.25, -1.0, 0.5, -1.0, -0.25, 0.5, 0.25, -0.25, 0.25, 0.75, 0.75, 0.0, -1.0, 0.75, 0.25, -1.0, -0.75, 0.5, -1.0, 0.25, 0.5, 1.0, -0.75, -0.5, -0.5, 0.5, 0.5, 0.75, 1.0, 0.0, -1.0, 1.0, -1.0, 1.0, 0.75, -0.5, 0.75, -0.25, -0.25, 0.0, -0.5, -0.75, -0.25, 0.0, -0.25, 0.25, 0.0, 0.0, -0.25, -0.25, 1.0, -0.25, 0.5, -0.5, 0.75, -0.25, -0.25, 0.75, ]);
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer401.destroy()
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_buffer500 = command_encoder500.finish();
    
    device50.pushErrorScope("out-of-memory");
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([1.0, -1.0, -1.0, -0.25, 0.0, -0.5, 0.5, -0.75, -0.5, -0.25, 0.75, -0.25, -1.0, 0.5, 0.5, -0.5, -0.5, -0.25, -0.5, 0.0, 1.0, -0.5, 1.0, 1.0, 0.5, 0.75, 0.5, 1.0, -0.25, 1.0, -0.5, -0.25, -0.75, 0.5, -0.75, -1.0, 0.75, 0.0, -0.25, 1.0, 0.75, -1.0, 0.0, 0.0, 0.5, -0.5, -0.75, -0.75, -0.25, -0.75, 0.5, 1.0, 0.25, 0.0, -0.25, 1.0, 0.75, 0.75, -0.25, -0.75, -1.0, 0.75, 0.0, -0.25, -0.5, 1.0, 0.5, 1.0, 0.5, 0.25, 0.25, 0.25, 0.75, 0.25, -0.25, 1.0, 0.75, 1.0, -1.0, 1.0, 0.75, -0.25, 0.75, 0.0, -0.25, 0.0, 1.0, 0.75, -1.0, -1.0, 0.25, 1.0, -0.75, 1.0, 0.25, -0.25, -0.5, -0.75, -0.75, 1.0, ]);
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16float",
        dimension: "2d"
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const array10 = new Float32Array([0.25, 0.75, -0.5, 0.25, -1.0, -1.0, -0.5, 0.0, -0.75, 0.0, -1.0, 0.0, -0.5, 0.75, 0.75, 0.0, 0.25, 1.0, 0.75, 0.25, 0.75, -0.5, 0.5, 1.0, -0.25, -0.5, 1.0, 0.5, -0.25, -0.5, -1.0, 0.5, -1.0, 0.0, -0.75, 0.5, 0.5, -0.75, 0.75, -0.75, 0.25, -1.0, 0.5, 0.75, 0.5, -0.5, 0.0, -0.25, -0.5, -0.75, 0.75, 0.5, 0.75, 0.0, 0.75, -0.25, 0.75, 0.75, -0.5, 0.75, 1.0, 0.5, -0.75, -0.25, -1.0, 1.0, 1.0, -1.0, -0.75, -0.75, -0.5, -0.75, -0.5, 0.5, -0.25, 0.25, 0.75, -1.0, -0.75, 1.0, 1.0, -0.25, -0.75, -0.75, 0.0, -1.0, -0.75, -0.5, 0.25, 1.0, 0.0, -1.0, 0.75, -1.0, -0.25, 1.0, 0.25, -0.5, -0.25, -1.0, ]);
    command_encoder401.popDebugGroup()
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    query401.destroy()
    
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.pushErrorScope("validation");
    
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device50.queue.writeTexture({ texture: texture502 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture502 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder4000.executeBundles([])
    
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture502 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4010.pushDebugGroup("group_marker");
    
    query402.destroy()
    render_pass_encoder4000.executeBundles([])
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    device50.queue.writeTexture({ texture: texture502 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture501.destroy();
    
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    device50.queue.writeTexture({ texture: texture502 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder401.setPipeline(render_pipeline401);
    device50.queue.writeTexture({ texture: texture502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query401.destroy()
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device50.queue.writeTexture({ texture: texture502 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4000.executeBundles([])
    buffer400.destroy()
    render_pass_encoder4010.executeBundles([])
    query500.destroy()
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_pass_encoder4000.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    render_pass_encoder4000.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture502 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4000.executeBundles([])
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16float",
        dimension: "2d"
    });
    
    device50.queue.writeTexture({ texture: texture502 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4010.setPipeline(render_pipeline400);
    
    device50.pushErrorScope("internal");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device50.queue.writeTexture({ texture: texture502 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder4000.executeBundles([])
    render_pass_encoder4010.insertDebugMarker("marker");
    render_bundle_encoder400.popDebugGroup();
    render_pass_encoder4000.setPipeline(render_pipeline401);
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer403.destroy()
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query400.destroy()
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group401);
    device40.queue.writeTexture({ texture: texture400 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture502 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array11 = new Float32Array([-1.0, -0.5, 0.5, -0.75, -0.25, 0.0, -0.5, 1.0, -0.25, -0.75, 0.0, -1.0, -1.0, 0.5, -1.0, -0.5, -1.0, 1.0, 0.0, -1.0, 0.25, 1.0, -1.0, 1.0, 0.5, -0.75, 0.75, -0.25, 0.25, 0.0, -0.75, 0.5, -0.5, -1.0, -0.75, 0.5, -1.0, 1.0, -1.0, -0.25, -0.5, -0.75, -1.0, 0.0, 0.75, -0.5, -1.0, 0.5, 0.0, -1.0, 1.0, 0.0, 0.5, -0.75, -0.25, -1.0, -0.75, 0.25, 0.5, 0.25, 0.5, 0.25, -0.5, -0.75, -1.0, 0.75, -0.25, 0.0, 0.25, 0.0, -0.75, 0.5, 1.0, 0.25, 0.0, -0.5, -0.5, -0.5, -0.5, -1.0, 0.0, 0.5, 0.75, 0.0, 0.25, -0.75, 0.5, 0.0, 0.5, 1.0, 1.0, 1.0, 0.75, 0.5, -0.5, 0.5, -0.25, -1.0, 0.0, 0.0, ]);
    device50.queue.writeTexture({ texture: texture502 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    query403.destroy()
    device50.queue.writeTexture({ texture: texture502 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    
    texture401.destroy();
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture500.destroy();
    
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device50.queue.writeTexture({ texture: texture502 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4012,
            },
        ],
        occlusionQuerySet: query403
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    texture502.destroy();
    render_bundle_encoder400.setPipeline(render_pipeline401);
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group402);
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer407.destroy()
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    render_pass_encoder4000.popDebugGroup();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    device40.queue.writeTexture({ texture: texture400 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4020.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    command_encoder403.insertDebugMarker("mymarker");
    render_bundle_encoder500.popDebugGroup();
    
    
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    render_bundle_encoder400.setVertexBuffer(0, buffer400);
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    query403.destroy()
    render_bundle_encoder400.draw(3);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    render_pass_encoder4020.setPipeline(render_pipeline401);
    query403.destroy()
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeTexture({ texture: texture400 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4010.pushDebugGroup("group_marker");
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    render_pass_encoder4010.popDebugGroup();
    query401.destroy()
    render_bundle_encoder401.setVertexBuffer(0, buffer400);
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query403.destroy()
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_pass_encoder4000.pushDebugGroup("group_marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.popDebugGroup();
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16sint",
        dimension: "2d"
    });
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    
    render_pass_encoder4000.setVertexBuffer(0, buffer400);
    render_pass_encoder4010.pushDebugGroup("group_marker");
    render_pass_encoder4020.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_pass_encoder4030.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    render_pass_encoder4010.popDebugGroup();
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    render_pass_encoder4020.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    render_bundle_encoder401.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    render_pass_encoder4010.insertDebugMarker("marker");
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder4030.setPipeline(render_pipeline401);
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder401.popDebugGroup();
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    render_pass_encoder4000.popDebugGroup();
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    query500.destroy()
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4020.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder4030.insertDebugMarker("marker");
    
    render_bundle_encoder401.draw(3);
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    buffer500.destroy()
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
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
    render_pass_encoder4020.pushDebugGroup("group_marker");
    
    
    buffer501.destroy()
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    query400.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
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
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.popDebugGroup();
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    texture403.destroy();
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder4010.setStencilReference(1);
    
    
    render_bundle_encoder402.setPipeline(render_pipeline406);
    render_pass_encoder4030.insertDebugMarker("marker");
    render_bundle_encoder500.setPipeline(render_pipeline500);
    texture400.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array12 = new Float32Array([-0.5, 0.25, 0.0, -0.75, 0.0, -1.0, 0.25, -1.0, 0.75, 0.25, 0.5, 0.5, 0.5, -0.75, 0.0, -0.5, -0.5, -0.5, -1.0, -1.0, -0.25, -0.25, -1.0, 0.0, -1.0, 1.0, -0.5, 0.25, 0.5, -1.0, 0.25, -0.25, -0.25, -0.75, 0.5, -0.25, 0.75, -0.5, 0.5, -1.0, -0.25, -0.5, 0.75, -1.0, 0.0, -0.75, 0.0, -0.5, 0.5, 0.25, 0.0, -1.0, 0.25, -1.0, 0.0, 0.0, 1.0, -0.5, -0.75, -1.0, -0.5, 0.0, 0.0, -0.25, -0.75, -0.5, -0.5, -0.25, -0.75, 1.0, 0.75, 0.5, -0.75, 0.75, -0.25, -0.75, 0.25, 0.5, 0.0, 0.75, -1.0, -0.25, -1.0, 0.5, -0.25, -0.5, -0.5, 0.75, 0.75, -0.5, 0.25, -0.25, -0.25, -1.0, 0.75, -1.0, -1.0, 0.0, 0.25, 0.25, ]);
    render_pass_encoder4020.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture503 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device50.queue.writeTexture({ texture: texture503 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
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
    
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    buffer404.destroy()
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder4030.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.pushErrorScope("validation");
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    query404.destroy()
    render_pass_encoder4020.setStencilReference(1);
    
    query405.destroy()
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    device50.pushErrorScope("validation");
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4000.setStencilReference(1);
    
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    render_pass_encoder4030.setBindGroup(0, bind_group403);
    render_pass_encoder4030.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    device50.queue.writeTexture({ texture: texture503 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
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
    
    buffer406.destroy()
    render_bundle_encoder402.popDebugGroup();
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    query400.destroy()
    
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    device50.queue.writeTexture({ texture: texture503 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout504,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture503 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    texture402.destroy();
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeTexture({ texture: texture503 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    device50.queue.writeTexture({ texture: texture503 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer502.destroy()
    
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device50.queue.submit([command_buffer500, ]);
    device50.queue.writeTexture({ texture: texture503 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_bundle_encoder401.popDebugGroup();
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const bind_group_layout406 = device40.createBindGroupLayout({ 
        label: "bind_group_layout406",
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
    device50.queue.writeTexture({ texture: texture503 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    buffer503.destroy()
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout405]
    });
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout505,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    query405.destroy()
    render_pass_encoder4030.insertDebugMarker("marker");
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout406,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder4030.setVertexBuffer(0, buffer400);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4030.draw(3);
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group404);
    render_pass_encoder4000.draw(3);
    render_pass_encoder4000.end();
    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4014,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group405);
    render_pass_encoder4010.setVertexBuffer(0, buffer400);
    render_pass_encoder4020.setVertexBuffer(0, buffer400);
    render_pass_encoder4020.draw(3);
    command_encoder400.popDebugGroup()
    render_pass_encoder4010.draw(3);
    render_pass_encoder4020.end();
    render_pass_encoder4030.end();
    const command_buffer402 = command_encoder402.finish();
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder4010.end();
    const command_buffer403 = command_encoder403.finish();
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer403, ]);
}