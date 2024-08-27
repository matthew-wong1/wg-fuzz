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
    const array0 = new Float32Array([0.5, -0.25, 0.5, -0.75, 0.25, -0.75, -0.5, -0.75, -0.5, 1.0, -0.75, 0.25, -0.5, 0.75, -0.5, 1.0, -0.5, 1.0, 0.5, 0.75, 0.25, 0.0, 1.0, 1.0, 0.25, -0.5, 0.5, -0.25, -0.25, 1.0, 0.75, -0.25, -1.0, -0.75, 1.0, 0.5, 0.5, -1.0, -0.5, 0.25, 1.0, 0.5, -0.25, -0.75, 1.0, 1.0, 0.5, 0.75, 0.0, 0.0, 0.0, 0.75, 0.5, 0.0, -1.0, 0.25, 0.0, 0.5, 0.5, 0.25, 1.0, 0.0, -0.75, -0.5, -0.75, 0.25, 1.0, -0.5, -0.5, 0.75, 0.5, 0.25, -0.5, -1.0, 1.0, -0.75, -1.0, 0.25, -1.0, 0.75, -1.0, 1.0, 1.0, -1.0, 0.75, -1.0, 0.5, 0.5, 0.25, 0.75, 1.0, -0.25, 0.5, -0.25, 0.5, 1.0, 1.0, -0.75, 0.25, 0.25, ]);
    
    const array1 = new Float32Array([0.75, 0.75, -0.75, 0.5, 0.5, 0.0, -0.25, -0.25, -0.25, -0.5, 1.0, -0.25, 0.25, -0.5, 1.0, -0.5, 0.5, 0.25, 0.0, -0.5, -1.0, 0.5, 1.0, -0.25, 0.25, 0.25, -0.5, 1.0, -0.5, 0.5, 0.0, 0.25, 0.75, 0.5, 1.0, 0.25, -0.75, -0.5, -0.25, -0.5, 1.0, 0.75, 1.0, -0.25, -0.75, -0.25, 0.75, -1.0, -0.75, 0.75, 0.0, -1.0, -0.75, -0.5, -1.0, 0.25, 0.25, 0.25, -0.5, 0.25, 1.0, 0.0, -0.75, -0.75, 0.25, -1.0, 0.75, 0.75, -0.75, 0.5, -1.0, -0.5, 1.0, 0.25, 0.25, 0.75, 0.0, 1.0, -0.25, 0.5, 0.0, -0.5, 0.25, 1.0, -0.75, 0.75, -0.5, 0.5, 0.0, 1.0, 0.25, -1.0, 0.0, 1.0, -0.75, 0.25, 1.0, 0.75, 0.25, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([0.75, 0.25, -0.25, 0.25, -1.0, -0.75, -0.75, 0.75, 0.25, -1.0, 0.25, -0.75, -1.0, 0.25, 0.0, 0.75, 0.5, 0.25, -0.75, -0.5, -0.25, 1.0, -0.5, -1.0, 0.0, 0.5, -0.5, 0.0, -0.25, 0.0, 0.25, 0.0, 0.5, -0.75, 0.0, -1.0, 0.75, 0.0, -0.5, -1.0, 0.5, 0.25, 0.0, -0.5, -0.25, 0.25, 0.75, -0.25, -0.5, 0.75, -0.25, -1.0, -0.75, -1.0, 0.25, -0.25, -0.5, 0.5, -0.25, -0.5, -1.0, -0.5, 0.5, -0.5, 1.0, -0.25, 1.0, -0.5, -1.0, 1.0, -0.75, -0.75, 0.0, -0.5, 1.0, -0.5, 0.25, -0.5, 1.0, -1.0, -0.25, 0.0, 0.0, 0.75, -0.75, 0.25, 0.5, 0.0, 1.0, 0.75, -0.25, -0.75, -0.25, 0.0, 0.5, -1.0, 0.0, -0.75, 0.25, -0.5, ]);
    
    
    
    
    
    
    
    const array3 = new Float32Array([-0.5, 1.0, -1.0, 0.5, 0.25, 0.75, 0.75, -0.5, 0.5, 0.75, 0.25, -1.0, 0.5, 0.0, 0.0, 0.5, 0.25, -1.0, 0.75, 0.25, 0.5, 1.0, 0.25, -0.25, 0.75, 1.0, -0.5, 0.25, 0.0, 0.0, 0.0, 1.0, 0.75, -0.25, 1.0, 0.75, -0.5, -1.0, 0.75, 0.25, -0.5, -0.75, -0.5, -0.5, 0.25, -0.25, 0.75, 0.0, 0.25, -0.5, 0.25, 0.75, -0.75, -1.0, 0.75, -0.75, 0.75, 0.5, 0.75, 0.25, 0.25, -0.25, 0.0, 1.0, 0.25, -0.5, 0.5, 0.0, -0.5, -1.0, -1.0, -0.75, 0.0, -0.25, 0.25, 1.0, -1.0, 0.5, 1.0, 0.5, -0.5, -0.5, 0.0, 0.25, -0.5, 0.25, 0.25, -1.0, 0.0, -0.75, 1.0, -1.0, -1.0, 0.0, 0.75, -0.75, -0.5, -0.75, 0.0, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array4 = new Float32Array([-0.75, -0.5, -0.25, 0.25, 0.0, 0.5, 0.25, 1.0, 1.0, 0.25, -0.5, 0.5, 0.0, -0.25, 0.5, -0.5, -0.25, -0.25, -1.0, 0.5, 0.75, 0.75, -1.0, 0.25, -0.25, 1.0, 0.75, -0.75, 0.75, -0.75, 0.5, 0.75, 1.0, -1.0, 0.25, -0.5, 1.0, 1.0, -1.0, 0.25, 0.5, 0.75, -1.0, 0.0, -0.5, 0.5, -0.25, -0.5, 0.75, 0.25, -0.5, -0.5, -1.0, 0.75, -0.25, 1.0, -1.0, 1.0, 0.75, -1.0, -0.5, -0.5, 0.25, 1.0, 0.25, 0.25, -0.5, 0.75, -0.5, 0.5, -0.25, 0.75, 0.75, 0.75, -0.25, 0.75, 0.75, 1.0, -0.5, -0.75, 0.25, -1.0, 1.0, -0.75, 0.75, 0.0, 0.5, 0.0, -1.0, 0.75, 1.0, 1.0, 0.5, 0.0, 0.25, 0.5, -1.0, -0.5, -0.5, 0.0, ]);
    const array5 = new Float32Array([0.5, -0.5, 0.25, -0.75, -0.25, 1.0, -1.0, -0.75, 0.25, 1.0, 0.5, 0.0, -0.5, 1.0, -0.5, -1.0, 0.0, -0.75, -0.25, 1.0, -0.25, 0.5, 0.75, -0.25, -1.0, 0.25, -0.25, 0.0, 0.5, 0.75, 0.5, 1.0, 0.0, 1.0, -0.75, 1.0, 0.75, 1.0, 1.0, 0.5, 0.25, -0.75, -0.75, -0.25, -0.5, 0.75, -0.25, 0.75, -0.5, -0.75, 0.75, -0.5, 1.0, -1.0, 0.0, -0.25, -1.0, 1.0, 0.25, -0.25, -0.5, -0.5, -1.0, 0.0, -0.5, -0.25, -0.5, -0.75, 0.0, -1.0, -0.75, 0.5, -0.5, -0.75, 0.25, 1.0, 1.0, -1.0, -0.25, 1.0, -1.0, -0.75, -0.5, 1.0, 1.0, 0.0, 0.0, 0.0, -1.0, 0.5, -0.25, 1.0, -0.75, 0.75, -0.75, -1.0, 0.25, -0.75, 0.75, 0.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array6 = new Float32Array([0.25, -0.75, -0.5, -0.5, -0.5, -1.0, 0.0, -0.5, -0.25, 0.25, -0.75, 1.0, -1.0, -0.75, 0.5, 0.5, 0.0, 1.0, 0.5, -0.5, 1.0, -0.5, 1.0, 0.5, 0.25, -1.0, -0.25, 0.75, 0.0, -0.5, 0.25, -0.75, 0.25, -0.75, -0.5, -0.5, 0.75, 0.75, -0.5, -0.25, -1.0, 1.0, 0.5, 0.0, -0.5, 0.75, -0.5, 0.75, -0.5, -1.0, 0.5, 1.0, -0.5, 0.0, -0.5, 0.5, -0.5, -0.25, -1.0, 0.0, 1.0, 0.25, -0.25, 0.0, 1.0, -0.75, -0.25, -0.25, -1.0, 0.5, -0.25, 0.5, 0.25, 0.75, 0.5, 0.0, -1.0, 0.5, -0.75, -0.5, 1.0, -0.25, -0.75, -1.0, 0.5, 0.0, 1.0, -1.0, 0.25, -0.5, -0.25, -0.25, 0.0, 0.75, 0.5, -0.5, -0.25, -0.5, -1.0, 0.75, ]);
    const array7 = new Float32Array([-0.25, 0.0, -1.0, 1.0, 0.5, 0.5, -0.5, 0.75, 0.25, 0.0, -1.0, -0.75, 1.0, -0.5, -0.25, 0.75, 1.0, -0.25, 1.0, 1.0, -0.25, 0.75, -0.75, -0.5, -0.5, -0.25, -0.5, -0.5, 0.75, 0.75, 0.0, -0.5, 0.5, 0.5, 0.25, 0.75, 0.25, 0.75, -0.25, -1.0, 0.0, 0.75, 1.0, 1.0, -0.25, 0.25, 1.0, 0.75, -0.25, 0.25, -0.25, -0.5, 0.0, 0.5, 0.5, -0.75, 0.0, 0.75, 1.0, 0.0, 0.0, -0.25, 0.0, 0.25, -0.75, -0.25, -0.5, 0.0, 0.75, 0.25, 1.0, -0.75, 0.25, 0.5, -0.5, 0.0, -0.25, -1.0, 1.0, -1.0, 0.25, -1.0, 0.0, 0.0, -1.0, 0.25, -0.5, 0.25, 0.5, 0.25, -0.75, -0.5, -1.0, -1.0, 1.0, 0.0, 0.75, 0.25, -0.5, -0.5, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.destroy();
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.pushErrorScope("out-of-memory");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer400.destroy()
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    
    device10.destroy();
    
    
    
    device40.destroy();
    
    
    
    
    device40.pushErrorScope("out-of-memory");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    device20.queue.submit([]);
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const array8 = new Float32Array([-0.25, -0.5, -0.5, -1.0, 0.25, 0.25, 0.75, -0.5, 0.75, 0.0, -1.0, -1.0, -0.25, 1.0, 0.75, -0.25, 0.5, 0.75, -0.25, -0.75, 1.0, -0.25, -0.5, -0.75, 0.25, 0.0, -0.5, -0.5, -0.25, -0.75, -0.75, 0.25, -0.5, 0.5, 0.5, -1.0, 1.0, 0.5, -0.75, 0.25, 0.75, -0.75, -0.75, -0.75, -0.25, 0.75, -0.75, -0.75, -1.0, 0.75, 0.5, 0.75, 0.5, 0.5, 0.5, 0.0, 0.5, 0.5, 1.0, -0.25, -0.75, -0.25, 0.75, 1.0, -0.75, -0.75, 0.75, 0.75, 0.0, 0.0, -0.5, 0.25, 0.0, -1.0, 0.0, 1.0, -0.75, -0.75, -1.0, 1.0, -0.25, 0.5, 0.75, 0.25, -0.25, -0.25, -0.5, -0.25, 0.75, -1.0, 0.5, 0.5, 0.75, -1.0, -0.5, 0.5, -0.25, -0.75, -0.5, 0.75, ]);
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device30.destroy();
    
    const array9 = new Float32Array([0.75, 1.0, 0.0, 0.75, 1.0, 0.75, -0.25, 0.25, 1.0, 0.25, -0.5, 0.25, 0.25, -0.25, -0.5, 0.25, -0.5, 0.0, -0.5, -0.25, 1.0, 0.5, -0.75, 1.0, 0.5, 0.5, -0.5, 1.0, 0.0, 0.5, -0.75, 0.25, -0.25, -0.5, 1.0, -0.25, 0.75, 0.75, 1.0, -1.0, -1.0, -0.75, -0.75, 1.0, 0.5, -0.75, -1.0, 1.0, -0.75, 0.75, 0.5, 0.0, 0.75, -0.5, 0.75, -1.0, 0.75, 0.25, 0.25, -0.25, -1.0, 0.5, -0.5, -0.5, -0.75, -0.75, 0.25, -0.5, -0.25, -0.75, -0.25, -1.0, -1.0, 0.75, -1.0, -0.5, -0.25, -1.0, 0.25, 0.75, -1.0, 0.75, -0.75, -0.75, 1.0, -0.5, -0.75, -1.0, 1.0, -0.75, -1.0, -0.25, -0.5, -0.25, -0.5, -0.75, 0.25, -1.0, -0.25, 0.25, ]);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    device50.destroy();
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    
    
    
    
    buffer000.destroy()
    
    
    
    
    
    device20.pushErrorScope("validation");
    device30.pushErrorScope("internal");
    
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const command_buffer500 = command_encoder500.finish();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder601.insertDebugMarker("marker");
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
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
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    render_bundle_encoder602.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const array10 = new Float32Array([-0.5, -0.5, 0.25, 0.0, -0.5, 0.75, -0.75, -0.25, -0.5, 1.0, 0.75, -0.25, 0.0, 1.0, 0.75, -0.25, 0.75, -1.0, -0.25, 0.0, 0.0, -0.25, -0.5, -0.75, -0.75, -0.75, 0.0, -0.25, -1.0, 0.0, -0.75, 0.25, -0.75, 1.0, 0.5, 0.0, 0.25, 1.0, 0.5, -0.25, 1.0, 0.0, 1.0, 0.75, -0.5, 0.0, -0.25, 0.5, -0.75, -0.25, 0.25, 0.5, -1.0, -0.5, -0.25, 0.5, -0.75, 0.5, -0.75, -0.75, 1.0, 0.0, 0.0, -0.5, -0.5, -0.25, -0.25, 0.75, -1.0, 0.0, -0.5, -0.75, 0.0, 0.5, -1.0, -1.0, 1.0, -0.75, 0.25, 0.0, 0.25, 0.25, 0.25, -0.75, 1.0, -0.25, -0.75, 1.0, 0.75, 0.5, -1.0, 0.5, -0.5, 1.0, 0.75, 0.25, -0.25, -0.5, -0.5, 1.0, ]);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    const array11 = new Float32Array([0.0, -1.0, -0.75, -0.25, -0.25, -0.75, 0.5, 0.5, 0.0, 1.0, 0.75, 0.0, 0.5, 1.0, -0.5, 0.75, 0.0, -0.5, -0.25, 1.0, -0.25, 0.0, 0.5, 1.0, 1.0, 1.0, 0.75, -1.0, 0.0, 0.75, 0.5, 0.25, 0.0, -0.5, 0.75, 1.0, 0.5, -0.25, 0.0, 0.75, 0.5, 0.25, 0.0, 0.0, 0.75, -0.25, -0.75, -0.25, -0.5, -0.25, 0.25, -0.75, -1.0, 0.25, 0.75, -1.0, 0.0, -0.75, 0.0, -0.75, 0.5, -0.5, -0.5, -0.5, -0.25, 1.0, -0.75, -0.75, 0.25, 1.0, -1.0, 0.25, -1.0, -0.5, -0.25, -0.5, 0.5, -1.0, 0.5, 0.5, 0.25, 0.75, 0.5, 0.0, -1.0, -0.5, 0.75, -1.0, -0.5, -1.0, -0.25, -0.75, -0.25, 0.0, 0.5, -0.25, -0.5, -1.0, -1.0, 0.75, ]);
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    device80.pushErrorScope("internal");
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    
    device60.queue.writeBuffer(buffer600, 0, array8, 0, array8.length);
    
    
    device60.pushErrorScope("out-of-memory");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder600.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16uint",
        dimension: "2d"
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    
    
    render_bundle_encoder601.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    
    command_encoder400.clearBuffer(buffer400);
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    query800.destroy()
    const command_buffer800 = command_encoder800.finish();
    texture801.destroy();
    render_bundle_encoder601.popDebugGroup();
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    render_bundle_encoder602.insertDebugMarker("marker");
    
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.popDebugGroup();
    device80.queue.writeTexture({ texture: texture800 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    
    command_encoder400.insertDebugMarker("mymarker");
    buffer600.destroy()
    device90.pushErrorScope("internal");
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout600]
    });
    query900.destroy()
    
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
    device60.queue.writeBuffer(buffer601, 0, array9, 0, array9.length);
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    
    
    
    
    const texture_view6002 = texture600.createView({ label: "texture_view6002" });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device80.queue.writeTexture({ texture: texture801 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.destroy();
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    device60.queue.writeBuffer(buffer602, 0, array5, 0, array5.length);
    device60.queue.writeBuffer(buffer601, 0, array9, 0, array9.length);
    const array12 = new Float32Array([-0.5, 0.25, 0.25, 0.25, 0.5, -0.5, 0.5, 0.75, 0.0, -0.5, -0.75, 0.5, -1.0, 1.0, 0.75, -0.25, 0.75, -0.25, -0.5, -1.0, -1.0, 0.75, -0.25, 0.75, -0.25, 0.5, 1.0, 0.5, 1.0, 0.25, -0.5, 0.25, -0.75, -1.0, 1.0, 0.75, 0.5, 0.75, -0.75, -1.0, -1.0, 0.0, -1.0, -0.25, 1.0, -0.25, 0.25, -0.5, -0.5, 0.5, -0.75, 0.0, 0.5, -0.5, 0.0, 0.0, -1.0, -1.0, -0.75, 0.0, -1.0, -0.25, 0.25, -0.5, -0.75, 1.0, -1.0, -0.75, 1.0, -0.5, 0.0, -1.0, 0.5, 0.0, 0.0, -0.25, 0.25, 0.5, 0.25, 0.5, 0.5, -1.0, 1.0, -0.5, -0.5, 0.75, -1.0, 0.5, -0.75, -0.75, 0.5, 1.0, -0.5, -0.75, 0.75, 0.5, -0.5, 0.5, 1.0, 0.0, ]);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_bundle_encoder602.insertDebugMarker("marker");
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    
    texture800.destroy();
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    command_encoder200.copyBufferToBuffer(
        buffer200,
        0,
        buffer201,
        0,
        400
    );
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    
    device80.queue.submit([command_buffer800, ]);
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder900.insertDebugMarker("marker");
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout604,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "stencil8",
        dimension: "2d"
    });
    
    
    device80.destroy();
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
    buffer601.destroy()
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout603,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    
    device10.queue.writeTexture({ texture: texture100 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout602]
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout603,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    texture600.destroy();
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer603, 0, array2, 0, array2.length);
    buffer602.destroy()
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout606,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout603]
    });
    const command_buffer600 = command_encoder600.finish();
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    command_encoder001.insertDebugMarker("mymarker");
    
    render_bundle_encoder601.insertDebugMarker("marker");
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout605,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline6013 = device60.createComputePipeline({
        label: "compute_pipeline6013",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline6014 = device60.createComputePipeline({
        label: "compute_pipeline6014",
        layout: pipeline_layout605,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    render_bundle_encoder901.pushDebugGroup("group_marker");
    
    device60.pushErrorScope("internal");
    const compute_pipeline6015 = device60.createComputePipeline({
        label: "compute_pipeline6015",
        layout: pipeline_layout604,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline6016 = device60.createComputePipeline({
        label: "compute_pipeline6016",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    buffer603.destroy()
    const compute_pipeline6017 = device60.createComputePipeline({
        label: "compute_pipeline6017",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    
    const compute_pipeline900 = device90.createComputePipeline({
        label: "compute_pipeline900",
        layout: pipeline_layout900,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    query600.destroy()
    render_bundle_encoder902.insertDebugMarker("marker");
    const compute_pipeline6018 = device60.createComputePipeline({
        label: "compute_pipeline6018",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline6019 = device60.createComputePipeline({
        label: "compute_pipeline6019",
        layout: pipeline_layout606,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout601]
    });
    const pipeline_layout609 = device60.createPipelineLayout({ 
        label: "pipeline_layout609",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline6020 = device60.createComputePipeline({
        label: "compute_pipeline6020",
        layout: pipeline_layout606,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query600.destroy()
    
    render_bundle_encoder902.pushDebugGroup("group_marker");
    
    const compute_pipeline6021 = device60.createComputePipeline({
        label: "compute_pipeline6021",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array13 = new Float32Array([-0.25, -0.25, -0.25, 1.0, -0.75, -1.0, -0.5, 0.5, -0.75, -0.25, 1.0, -1.0, 0.25, 0.0, 0.5, 0.25, 0.25, 0.0, 1.0, -0.5, 0.0, 0.0, -0.75, -0.25, 0.5, 0.25, 0.5, 0.0, -0.75, -0.25, 0.25, -0.25, 0.0, -0.25, 1.0, 0.5, 1.0, -0.25, -1.0, 0.25, -0.75, -0.75, 1.0, 0.5, 0.75, 0.25, 0.0, -1.0, 0.0, 0.25, 1.0, 0.0, 0.75, 0.0, 0.5, 0.75, -0.25, 0.75, 0.75, -0.5, -0.5, 0.5, 0.5, 0.75, -0.75, 0.0, -0.75, -0.25, 0.75, 0.75, -0.25, 0.0, 0.5, 0.25, 1.0, -0.75, 0.5, -1.0, -0.5, -1.0, -0.25, 0.75, 1.0, 0.0, -1.0, -0.75, -0.5, 0.75, 0.25, 1.0, -0.25, -1.0, 0.5, 0.0, -0.25, -0.75, 0.0, -0.75, -1.0, 0.25, ]);
    texture602.destroy();
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const compute_pipeline6022 = device60.createComputePipeline({
        label: "compute_pipeline6022",
        layout: pipeline_layout603,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    render_bundle_encoder901.popDebugGroup();
    const compute_pipeline6023 = device60.createComputePipeline({
        label: "compute_pipeline6023",
        layout: pipeline_layout608,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    render_bundle_encoder900.pushDebugGroup("group_marker");
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    
    const compute_pipeline6024 = device60.createComputePipeline({
        label: "compute_pipeline6024",
        layout: pipeline_layout605,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6025 = device60.createComputePipeline({
        label: "compute_pipeline6025",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout604 = device60.createBindGroupLayout({ 
        label: "bind_group_layout604",
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
    const compute_pipeline901 = device90.createComputePipeline({
        label: "compute_pipeline901",
        layout: pipeline_layout900,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    const compute_pipeline6026 = device60.createComputePipeline({
        label: "compute_pipeline6026",
        layout: pipeline_layout607,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    const compute_pipeline6027 = device60.createComputePipeline({
        label: "compute_pipeline6027",
        layout: pipeline_layout606,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer604, 0, array12, 0, array12.length);
    render_bundle_encoder901.pushDebugGroup("group_marker");
    
    const compute_pipeline6028 = device60.createComputePipeline({
        label: "compute_pipeline6028",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6029 = device60.createComputePipeline({
        label: "compute_pipeline6029",
        layout: pipeline_layout603,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const compute_pipeline6030 = device60.createComputePipeline({
        label: "compute_pipeline6030",
        layout: pipeline_layout602,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6031 = device60.createComputePipeline({
        label: "compute_pipeline6031",
        layout: pipeline_layout609,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    query600.destroy()
    const compute_pipeline6032 = device60.createComputePipeline({
        label: "compute_pipeline6032",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    query901.destroy()
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const pipeline_layout6010 = device60.createPipelineLayout({ 
        label: "pipeline_layout6010",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline6033 = device60.createComputePipeline({
        label: "compute_pipeline6033",
        layout: pipeline_layout605,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const pipeline_layout6011 = device60.createPipelineLayout({ 
        label: "pipeline_layout6011",
        bindGroupLayouts: [bind_group_layout604]
    });
    const compute_pipeline6034 = device60.createComputePipeline({
        label: "compute_pipeline6034",
        layout: pipeline_layout609,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    command_encoder200.insertDebugMarker("mymarker");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline6035 = device60.createComputePipeline({
        label: "compute_pipeline6035",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline6036 = device60.createComputePipeline({
        label: "compute_pipeline6036",
        layout: pipeline_layout608,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder900.popDebugGroup();
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline6037 = device60.createComputePipeline({
        label: "compute_pipeline6037",
        layout: pipeline_layout608,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout900]
    });
    const compute_pipeline902 = device90.createComputePipeline({
        label: "compute_pipeline902",
        layout: pipeline_layout900,
        compute: {
            module: shader_module902,
            entryPoint: "main"
        }
    });
    const compute_pipeline903 = device90.createComputePipeline({
        label: "compute_pipeline903",
        layout: pipeline_layout900,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    const pipeline_layout902 = device90.createPipelineLayout({ 
        label: "pipeline_layout902",
        bindGroupLayouts: [bind_group_layout900]
    });
    device90.pushErrorScope("internal");
    device60.queue.writeBuffer(buffer601, 0, array13, 0, array13.length);
    const compute_pipeline6038 = device60.createComputePipeline({
        label: "compute_pipeline6038",
        layout: pipeline_layout606,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const texture_view8020 = texture802.createView({ label: "texture_view8020" });
    const pipeline_layout6012 = device60.createPipelineLayout({ 
        label: "pipeline_layout6012",
        bindGroupLayouts: [bind_group_layout602]
    });
    const compute_pipeline6039 = device60.createComputePipeline({
        label: "compute_pipeline6039",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    const compute_pipeline6040 = device60.createComputePipeline({
        label: "compute_pipeline6040",
        layout: pipeline_layout607,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder602.setPipeline(render_pipeline600);
    render_bundle_encoder901.popDebugGroup();
    
    const compute_pipeline6041 = device60.createComputePipeline({
        label: "compute_pipeline6041",
        layout: pipeline_layout605,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline6042 = device60.createComputePipeline({
        label: "compute_pipeline6042",
        layout: pipeline_layout608,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pipeline904 = device90.createComputePipeline({
        label: "compute_pipeline904",
        layout: pipeline_layout901,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    command_encoder900.insertDebugMarker("mymarker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device100.destroy();
    const compute_pipeline6043 = device60.createComputePipeline({
        label: "compute_pipeline6043",
        layout: pipeline_layout6012,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline6044 = device60.createComputePipeline({
        label: "compute_pipeline6044",
        layout: pipeline_layout6012,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline6045 = device60.createComputePipeline({
        label: "compute_pipeline6045",
        layout: pipeline_layout6012,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer601, 0, array13, 0, array13.length);
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const compute_pipeline905 = device90.createComputePipeline({
        label: "compute_pipeline905",
        layout: pipeline_layout902,
        compute: {
            module: shader_module901,
            entryPoint: "main"
        }
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module904.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    device10.destroy();
    const compute_pipeline6046 = device60.createComputePipeline({
        label: "compute_pipeline6046",
        layout: pipeline_layout608,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline6047 = device60.createComputePipeline({
        label: "compute_pipeline6047",
        layout: pipeline_layout608,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline6048 = device60.createComputePipeline({
        label: "compute_pipeline6048",
        layout: pipeline_layout603,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline6049 = device60.createComputePipeline({
        label: "compute_pipeline6049",
        layout: pipeline_layout609,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6050 = device60.createComputePipeline({
        label: "compute_pipeline6050",
        layout: pipeline_layout609,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    command_encoder900.insertDebugMarker("mymarker");
    device100.destroy();
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    const compute_pipeline6051 = device60.createComputePipeline({
        label: "compute_pipeline6051",
        layout: pipeline_layout609,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    buffer604.destroy()
    const array14 = new Float32Array([1.0, 0.25, 0.5, 0.75, 0.75, 0.75, 0.5, 0.5, -1.0, -0.75, 0.75, 0.0, 0.75, -0.75, 0.75, -0.25, -0.25, 0.5, -0.5, 0.25, 0.5, -0.75, 1.0, -0.5, -0.25, -0.75, 0.0, 0.5, -0.5, 0.25, 0.75, -0.25, 0.75, 1.0, 0.25, -0.5, 0.0, 0.5, 0.5, -0.5, 0.25, -0.5, 0.0, 1.0, -0.75, 0.0, 0.5, -0.5, 0.0, -0.5, -0.75, 0.25, 0.0, 0.75, -0.25, -1.0, 0.0, -0.75, -0.25, -0.75, -0.75, 0.5, -0.75, 1.0, 1.0, -0.75, 0.75, 0.25, -0.5, -0.25, -0.25, 1.0, -0.5, 0.0, 0.25, 1.0, 1.0, -0.75, -1.0, 0.25, -0.25, -0.75, -0.25, 0.5, 1.0, 0.75, -0.75, -1.0, -0.75, 0.0, -1.0, -1.0, 1.0, 0.5, -0.25, 0.5, 0.75, 0.5, -0.25, 0.0, ]);
    const compute_pipeline6052 = device60.createComputePipeline({
        label: "compute_pipeline6052",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline6053 = device60.createComputePipeline({
        label: "compute_pipeline6053",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6054 = device60.createComputePipeline({
        label: "compute_pipeline6054",
        layout: pipeline_layout608,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query601.destroy()
    const pipeline_layout903 = device90.createPipelineLayout({ 
        label: "pipeline_layout903",
        bindGroupLayouts: [bind_group_layout900]
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module905_code = "";
    try {
        shader_module905_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module905 = await device90.createShaderModule({ label: "shader_module905", code: shader_module905_code })
    texture700.destroy();
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture804 = device80.createTexture({
        label: "texture804",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    device90.queue.writeBuffer(buffer900, 0, array5, 0, array5.length);
    const compute_pipeline906 = device90.createComputePipeline({
        label: "compute_pipeline906",
        layout: pipeline_layout902,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    
    const compute_pipeline907 = device90.createComputePipeline({
        label: "compute_pipeline907",
        layout: pipeline_layout903,
        compute: {
            module: shader_module904,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout6013 = device60.createPipelineLayout({ 
        label: "pipeline_layout6013",
        bindGroupLayouts: [bind_group_layout602]
    });
    const command_buffer901 = command_encoder901.finish();
    device20.queue.submit([]);
    const command_buffer900 = command_encoder900.finish();
    device50.queue.submit([]);
    device90.queue.submit([command_buffer900, ]);
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer200 = command_encoder200.finish();
    device60.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
    device40.queue.submit([]);
    device90.queue.submit([command_buffer901, ]);
    device20.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
    device20.queue.submit([command_buffer200, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}