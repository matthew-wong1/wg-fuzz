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
    const array0 = new Float32Array([-0.75, -0.25, 1.0, -1.0, -0.25, 0.5, -0.75, 0.0, -0.5, 1.0, -0.5, -0.75, -0.5, -1.0, -0.75, 1.0, -0.5, 0.0, 0.5, 0.0, 0.5, -1.0, -1.0, -0.25, 0.5, 1.0, -0.25, -0.5, -0.75, 1.0, -0.75, -1.0, 0.75, 0.75, -1.0, -0.75, 0.0, -0.75, 0.0, -0.5, 0.0, 0.75, -0.5, 0.75, -0.5, 1.0, -0.25, 1.0, 0.0, -0.5, 0.75, 0.0, -0.5, 0.25, 1.0, -0.25, 0.5, 0.75, 0.25, 0.25, -0.75, 0.0, -0.25, 0.75, 0.25, -0.5, 0.0, -0.25, -0.75, -0.25, -1.0, 0.25, -0.5, -0.5, 1.0, 1.0, 0.75, -1.0, -1.0, 1.0, 1.0, 0.75, 0.75, -1.0, 0.75, 0.0, 0.75, -0.25, 0.0, -0.5, 1.0, -0.25, 0.25, 0.75, 0.5, -0.5, 1.0, 0.75, -0.5, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.75, -1.0, -0.5, 0.5, 0.75, -0.75, -0.25, 0.25, 0.5, 0.5, -1.0, -0.75, -0.75, -1.0, -0.25, -0.5, 0.25, 0.75, -0.75, 0.25, -0.25, 0.0, -0.25, 0.25, -1.0, 0.75, -1.0, -0.75, 0.25, 0.5, 0.25, -1.0, -0.75, 0.0, -1.0, -1.0, -0.5, 1.0, -0.25, -0.5, -0.25, 0.0, 0.0, 1.0, 1.0, 0.25, -0.75, -1.0, -0.5, -1.0, -1.0, -0.75, -0.25, 0.75, -0.75, -0.25, 0.25, 1.0, -0.75, -0.75, -0.5, 0.75, -1.0, 0.0, 0.0, -0.25, -0.25, 1.0, -0.75, 0.75, -0.75, 0.0, 0.0, 0.75, 0.0, 0.0, -0.75, 1.0, 0.0, 0.0, -0.5, 0.5, 0.25, 0.75, -1.0, 0.5, -0.5, -0.5, -0.25, -0.75, 0.0, -1.0, -0.25, -0.25, 0.25, -0.25, -0.25, 0.0, -0.5, 0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([1.0, -1.0, 1.0, -1.0, -0.5, 0.75, 0.25, -0.25, -0.75, -0.25, -0.5, -0.75, 1.0, -0.75, 0.5, -0.5, -1.0, -0.5, -0.5, -0.25, 0.0, 1.0, 0.5, 0.75, 0.5, -0.5, -0.5, 1.0, 1.0, -0.75, 0.25, 0.75, 1.0, 1.0, 0.25, -0.5, -0.25, -1.0, 0.5, -0.75, 0.0, 0.75, -0.25, -1.0, 1.0, -0.25, -0.75, 0.5, 1.0, 0.75, 0.5, 0.75, 0.0, 0.75, 0.25, -0.5, 1.0, 1.0, -1.0, 1.0, 1.0, -0.75, 0.25, -1.0, 1.0, -1.0, 0.0, 0.75, -1.0, -0.5, -0.25, 1.0, 0.5, -0.75, 0.0, -0.5, 0.75, 0.5, 0.0, -0.5, -1.0, 0.75, 1.0, 0.75, -1.0, -1.0, -0.25, 0.5, 0.5, 0.0, -0.5, 0.0, -0.75, -0.75, 0.5, 0.25, 0.0, -0.5, -0.5, 0.25, ]);
    const array3 = new Float32Array([-1.0, -1.0, 1.0, -0.5, -0.5, 0.0, -1.0, 0.5, -0.25, -0.25, 0.25, 0.25, 0.25, 0.5, 0.0, -0.75, 0.5, -0.75, 0.75, -0.5, -0.25, 0.75, 1.0, 0.5, 0.5, -1.0, 0.75, 0.0, 0.75, 0.0, 0.5, -0.75, -0.25, 0.5, -1.0, 1.0, -1.0, 0.25, 0.25, 0.25, 0.25, 1.0, -1.0, 0.5, -0.75, -0.25, 0.75, 0.5, -0.75, 0.75, -0.75, -0.5, 0.5, -0.25, -0.5, 0.0, -0.25, -0.25, 0.75, -0.5, -0.5, -0.25, 0.5, 1.0, 1.0, 1.0, 0.25, -0.75, -0.25, -0.25, 0.5, 1.0, 0.75, 0.25, 0.0, 1.0, 0.75, 1.0, -0.75, 1.0, 0.75, 0.0, 0.25, 0.25, -0.25, 0.0, -0.5, -0.25, 0.5, -1.0, 0.75, -1.0, -0.5, -1.0, -0.75, -1.0, 0.75, 0.0, 0.0, 0.75, ]);
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("out-of-memory");
    const array4 = new Float32Array([0.75, 0.75, 0.0, 0.75, -0.25, -0.5, 0.5, 0.5, 0.5, -0.5, -1.0, -0.75, -0.25, -1.0, -1.0, -0.5, 0.75, -0.5, 0.5, -1.0, 0.75, 0.75, 0.75, 0.75, -0.5, -0.25, -0.5, 0.0, -0.25, -0.75, 0.5, -0.5, 0.75, 0.75, 0.5, -0.75, -1.0, 0.0, 1.0, -0.25, -0.25, -1.0, 0.0, 0.75, -0.25, 0.25, 0.25, 0.75, 0.5, 1.0, 1.0, 0.25, -0.25, 0.75, -0.25, -0.25, 0.75, 0.75, -1.0, 0.25, 0.5, 0.0, 1.0, -1.0, 0.5, -0.75, 0.75, 0.5, -0.5, -0.25, -0.5, 0.0, 0.75, 0.75, 0.25, -1.0, -0.25, -0.25, -1.0, 0.25, -1.0, 0.75, 0.25, 0.0, -1.0, 1.0, 0.75, -1.0, 0.75, 0.5, 1.0, -1.0, -1.0, -0.25, 0.75, -1.0, 1.0, -0.75, 0.75, 0.5, ]);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const array5 = new Float32Array([-0.75, 1.0, 0.25, 0.5, -0.5, -0.5, 1.0, 0.25, 0.75, 1.0, 0.75, 0.25, 0.25, 0.5, -0.25, -0.75, 1.0, 0.0, 0.25, 0.0, 0.5, -0.5, -1.0, 0.0, 0.5, 0.25, 1.0, 1.0, -0.5, 0.5, 0.25, 0.5, 0.75, 0.0, 1.0, -1.0, -1.0, 0.0, 1.0, -0.5, 0.75, 0.0, -1.0, 0.5, -0.75, -1.0, -0.75, -0.5, -0.25, 0.5, -0.25, -1.0, -0.75, -1.0, 0.5, -0.25, 0.5, 0.0, -0.25, 0.25, -0.75, -0.25, 0.25, 0.25, 0.25, 0.5, 0.25, -0.75, -0.25, -1.0, 0.0, -1.0, -0.5, 0.75, -1.0, -1.0, -0.75, -0.75, -1.0, 1.0, 1.0, 1.0, -0.5, 0.0, -1.0, 0.5, -0.75, 0.5, 0.75, -0.75, 1.0, -0.25, -0.75, 1.0, -0.75, 0.25, -1.0, 0.75, 0.5, 0.25, ]);
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device50.pushErrorScope("internal");
    query300.destroy()
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
    const array6 = new Float32Array([0.75, -0.5, 1.0, -0.75, -0.75, 0.0, 0.0, -0.5, -0.5, -1.0, 0.5, 0.25, 0.0, 0.75, -0.75, -0.5, 0.25, 0.75, 0.75, -1.0, -0.25, -0.75, 0.25, -0.5, -0.5, 0.5, -1.0, -0.5, 0.0, -0.5, 0.25, 0.5, 0.25, -1.0, -0.5, 0.0, 0.75, 0.25, 0.0, -1.0, 0.25, -0.75, -0.75, 1.0, -1.0, -0.25, 0.0, -1.0, -1.0, 1.0, 0.75, 0.75, 1.0, 0.0, -0.25, 0.0, 0.25, -1.0, 0.5, 1.0, -1.0, 1.0, 0.5, -0.5, -0.25, 1.0, 1.0, -0.75, 0.75, 0.5, -0.75, -0.25, -1.0, 1.0, -1.0, 0.75, -0.75, -0.5, 1.0, -0.25, 0.75, 0.0, -0.25, -1.0, -0.25, 0.5, 0.0, -1.0, 0.0, -0.5, -0.5, -0.25, 0.5, 1.0, -1.0, -0.75, 0.5, 0.5, 0.25, -1.0, ]);
    query300.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.submit([]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.destroy();
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer400 = command_encoder400.finish();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    buffer500.destroy()
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16uint",
        dimension: "2d"
    });
    texture400.destroy();
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    query400.destroy()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    const array7 = new Float32Array([0.75, 0.75, -0.75, 1.0, 0.0, 0.0, 0.5, -1.0, 0.25, -0.75, 1.0, 0.75, -0.25, 0.25, 0.75, 1.0, -0.5, -0.5, -0.75, -0.5, -1.0, -0.75, 0.75, 0.75, 0.25, -1.0, 0.5, -1.0, 1.0, -0.75, 0.5, 0.75, -0.5, 0.0, -0.75, 0.0, 1.0, 1.0, -0.75, 0.25, 0.0, 0.25, 1.0, -1.0, -1.0, 0.75, -0.25, 0.0, -0.75, -1.0, -1.0, -1.0, 0.25, -0.5, -1.0, 0.75, 0.5, -0.5, 0.75, 0.25, 1.0, 0.25, 0.5, 0.5, -1.0, -0.75, 0.75, -0.75, 1.0, -1.0, 1.0, -0.5, 0.0, 1.0, -0.5, -0.75, -1.0, -1.0, 0.25, -0.75, 0.5, -0.5, 0.25, 0.25, 1.0, 0.5, -0.5, 0.25, 0.5, 1.0, -0.25, 0.5, -1.0, -1.0, 0.75, -0.25, -0.5, -1.0, 0.5, 0.5, ]);
    query400.destroy()
    
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query301
    });
    buffer100.destroy()
    texture401.destroy();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder500.popDebugGroup();
    device50.pushErrorScope("validation");
    device10.pushErrorScope("validation");
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
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
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    query100.destroy()
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3003,
            },
        ],
        occlusionQuerySet: query301
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("validation");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    query400.destroy()
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
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    texture500.destroy();
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    
    const array8 = new Float32Array([-0.75, -0.5, 0.25, 1.0, 0.5, -0.75, 0.75, 0.5, 0.25, 0.0, -0.25, 0.5, 0.5, -1.0, 0.75, 0.5, -0.5, 0.0, -1.0, -0.75, -0.5, 0.75, -1.0, 0.5, 0.5, 0.25, 1.0, -0.25, 1.0, 0.5, 0.5, -0.5, 0.0, 0.0, 0.0, 0.25, 0.5, -0.75, -0.75, -0.5, 0.25, 0.75, 0.75, 1.0, 0.0, 0.5, 1.0, -0.25, -1.0, 0.75, -0.5, 1.0, -1.0, -0.5, 0.5, 0.5, 0.25, -1.0, 0.5, 0.75, 0.5, -0.75, 0.5, 0.5, 0.5, -0.75, 1.0, 0.0, -0.25, 0.5, -0.75, -1.0, 0.0, -0.5, -0.25, 1.0, 0.5, -1.0, -0.5, -0.75, 1.0, -0.25, 0.0, -0.75, 0.75, -0.25, 0.75, 0.0, 0.5, 0.5, 0.5, -0.5, -0.75, -0.75, -0.25, -0.5, 1.0, -0.25, 0.5, 1.0, ]);
    render_bundle_encoder500.popDebugGroup();
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder500.pushDebugGroup("group_marker");
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
    const array9 = new Float32Array([0.25, -0.25, -1.0, -1.0, -0.25, 0.75, -0.75, 1.0, -0.5, 0.75, 0.25, -0.5, 1.0, -0.25, -1.0, 1.0, 0.0, 0.25, -0.5, 0.25, 0.0, -0.75, -0.25, 0.25, 0.0, -1.0, -0.75, -1.0, 0.0, -0.75, 0.5, -0.25, 0.5, 0.25, 0.5, 0.25, 0.5, -1.0, 0.25, 0.25, -0.25, -0.75, -1.0, 0.0, -0.25, -0.25, -1.0, 0.75, -0.75, 1.0, 0.25, -0.25, 1.0, 0.25, 0.75, 0.25, 1.0, 0.5, -0.75, 1.0, 1.0, -0.25, 0.0, -0.5, 0.25, 0.25, -0.25, 1.0, 0.75, -0.25, 1.0, -1.0, -1.0, -0.25, -0.75, 0.5, -0.75, -0.75, 1.0, 0.25, 0.0, -1.0, -0.5, -0.25, -0.5, 0.5, -1.0, -0.25, -0.5, -0.5, 0.5, 0.25, 1.0, -0.25, 1.0, 1.0, -0.25, -0.25, -1.0, -0.5, ]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture100.destroy();
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    query302.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    query400.destroy()
    command_encoder500.clearBuffer(buffer500);
    query401.destroy()
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
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
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.setPipeline(render_pipeline101);
    command_encoder500.pushDebugGroup("mygroupmarker")
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view3004 = texture300.createView({ label: "texture_view3004" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
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
    render_bundle_encoder100.setVertexBuffer(0, buffer100);
    device00.pushErrorScope("validation");
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    texture403.destroy();
    
    
    command_encoder500.insertDebugMarker("mymarker");
    render_pass_encoder3000.insertDebugMarker("marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device40.queue.writeTexture({ texture: texture402 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query301.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device10.pushErrorScope("out-of-memory");
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    query502.destroy()
    
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    
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
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    
    
    
    query303.destroy()
    render_bundle_encoder100.popDebugGroup();
    query302.destroy()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder100.setIndexBuffer(buffer101, "uint16");
    render_bundle_encoder102.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query100.destroy()
    buffer301.destroy()
    query400.destroy()
    render_pass_encoder3010.popDebugGroup();
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.setPipeline(render_pipeline101);
    render_pass_encoder3010.insertDebugMarker("marker");
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3003,
            },
        ],
        occlusionQuerySet: query300
    });
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_pass_encoder3000.setStencilReference(1);
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
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query403.destroy()
    render_bundle_encoder301.popDebugGroup();
    buffer300.destroy()
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device40.queue.writeTexture({ texture: texture404 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query403.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    texture302.destroy();
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.submit([command_buffer400, ]);
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    render_bundle_encoder101.setVertexBuffer(0, buffer100);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder100.drawIndirect(buffer104, 0);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.draw(3);
    query400.destroy()
    query300.destroy()
    texture402.destroy();
    
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder3001.insertDebugMarker("marker");
    const texture_view3005 = texture300.createView({ label: "texture_view3005" });
    
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("out-of-memory");
    query502.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query401.destroy()
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder500.resolveQuerySet(
        query501,
        0,
        32,
        buffer501,
        0
    )
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    device40.queue.writeTexture({ texture: texture404 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        occlusionQuerySet: query403
    });
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
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_bundle_encoder501.insertDebugMarker("marker");
    
    buffer501.destroy()
    command_encoder500.resolveQuerySet(
        query502,
        0,
        32,
        buffer501,
        0
    )
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder501.setPipeline(render_pipeline500);
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture301.destroy();
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder3010.executeBundles([])
    
    render_bundle_encoder500.setPipeline(render_pipeline501);
    device40.queue.writeTexture({ texture: texture404 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device10.destroy();
    
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    device40.queue.writeTexture({ texture: texture404 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_pass_encoder3000.executeBundles([])
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture404 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query402.destroy()
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view4050 = texture405.createView({ label: "texture_view4050" });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    query302.destroy()
    buffer302.destroy()
    
    device40.queue.writeTexture({ texture: texture405 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const render_pass_encoder4011 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query403
    });
    device40.queue.writeTexture({ texture: texture404 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture405 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4051 = texture405.createView({ label: "texture_view4051" });
    command_encoder500.popDebugGroup()
    render_pass_encoder3001.insertDebugMarker("marker");
    render_pass_encoder3010.insertDebugMarker("marker");
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    texture300.destroy();
    
    command_encoder500.resolveQuerySet(
        query503,
        0,
        32,
        buffer501,
        0
    )
    render_pass_encoder4011.executeBundles([])
    device50.pushErrorScope("internal");
    render_pass_encoder4010.popDebugGroup();
    
    command_encoder501.resolveQuerySet(
        query501,
        0,
        32,
        buffer501,
        0
    )
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder3000.setStencilReference(1);
    command_encoder500.insertDebugMarker("mymarker");
    render_pass_encoder4011.setPipeline(render_pipeline401);
    device40.queue.writeTexture({ texture: texture405 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array10 = new Float32Array([0.75, 0.75, 0.5, 0.75, 0.75, -0.25, 0.75, 0.5, 0.25, 0.25, 0.25, 1.0, 0.75, 0.5, 0.25, 0.75, -0.25, -0.5, -0.25, 0.5, 0.5, -0.5, -0.75, -1.0, -0.75, -0.5, 0.75, -0.5, -1.0, -0.75, -0.5, 0.0, 1.0, -0.75, 0.75, -1.0, 0.0, 0.25, -0.75, 1.0, 0.25, 0.75, -0.5, 0.25, -1.0, -1.0, 0.25, 1.0, -0.25, 0.75, 0.5, 0.0, 0.25, -0.5, 1.0, -0.5, -1.0, -1.0, -0.25, -0.25, -0.25, 0.0, -0.75, -0.75, -1.0, 0.25, 0.75, -1.0, 0.75, 0.25, -0.25, -0.25, 0.5, 0.5, -0.5, 1.0, -0.75, 0.5, 0.5, 0.75, 1.0, 0.25, 0.25, 0.25, 0.5, -1.0, 0.5, -0.25, -0.25, -0.5, 0.25, 0.0, 0.5, 0.5, 0.0, -0.5, -0.5, 0.5, 0.75, -1.0, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4011.setStencilReference(1);
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    texture400.destroy();
    const array11 = new Float32Array([0.25, -0.5, 0.75, 0.0, 0.75, -0.5, -0.25, 0.0, -1.0, 0.25, 0.75, 0.25, -0.25, 0.5, 1.0, 1.0, -0.5, -0.5, -0.25, -1.0, 1.0, 0.5, -1.0, 0.0, -0.75, -0.75, 0.25, -0.25, 0.5, 0.75, -1.0, 0.75, -0.5, -0.25, 0.25, -1.0, 0.25, 0.75, -0.5, 0.5, 0.25, 0.75, -0.5, -0.25, 0.0, 1.0, -0.5, -1.0, -1.0, 1.0, 0.75, -0.25, -0.25, 0.5, 0.75, 0.25, -0.75, -0.25, -0.25, 0.0, -0.5, -1.0, -0.75, 1.0, 0.25, -0.25, 1.0, -0.5, 0.5, 0.25, 0.75, -0.5, 0.75, 0.25, 0.25, -1.0, -0.25, -0.75, 1.0, 0.5, -1.0, 0.0, 0.75, 0.25, 0.0, 0.75, 0.5, 0.25, -0.25, 0.25, -1.0, 0.75, -0.5, 0.75, 0.0, 0.25, 0.0, -0.25, -0.25, -0.75, ]);
    
    
    render_pass_encoder3010.executeBundles([render_bundle_encoder300, ])
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3003,
            },
        ],
        occlusionQuerySet: query303
    });
    
    render_pass_encoder3000.executeBundles([])
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture404 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array12 = new Float32Array([-0.75, -0.25, -1.0, -0.25, 0.75, -0.75, 0.25, -0.75, -0.5, -0.25, -0.75, -1.0, -1.0, -0.5, 0.25, 1.0, -0.25, -0.25, 0.75, 0.0, 1.0, 0.0, -0.5, -1.0, -0.25, -0.75, -1.0, -0.5, 1.0, -0.75, -0.5, 0.75, -0.25, 1.0, 0.5, -1.0, -1.0, -0.75, 1.0, 0.75, -0.5, 0.75, 0.5, 0.5, 0.75, 0.5, 0.25, 0.25, 0.75, -0.75, -0.75, 0.0, 1.0, 0.75, 0.5, -1.0, -1.0, 0.25, -0.5, 0.25, -1.0, 0.25, 0.0, -0.5, 1.0, 0.75, -0.5, -1.0, 1.0, 0.0, -0.25, -0.75, 0.25, 0.25, 0.0, -0.5, -0.75, 0.5, -0.25, -0.25, 0.25, 0.25, 0.5, -0.75, -0.5, -0.75, -1.0, 0.0, 1.0, 0.5, 0.0, -1.0, -0.25, -0.25, 0.75, 0.75, -0.75, 0.25, 0.75, -0.25, ]);
    render_bundle_encoder400.insertDebugMarker("marker");
    query402.destroy()
    device40.queue.writeTexture({ texture: texture404 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query302.destroy()
    command_encoder501.pushDebugGroup("mygroupmarker")
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder4010.insertDebugMarker("marker");
    render_pass_encoder3001.executeBundles([])
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    render_pass_encoder3001.executeBundles([])
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder4010.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture404.destroy();
    command_encoder500.resolveQuerySet(
        query502,
        0,
        32,
        buffer500,
        0
    )
    query403.destroy()
    
    
    render_pass_encoder3011.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder4011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder3001.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture404 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.executeBundles([render_bundle_encoder301, ])
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    render_pass_encoder4011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    
    command_encoder500.resolveQuerySet(
        query502,
        0,
        32,
        buffer501,
        0
    )
    render_pass_encoder3000.executeBundles([render_bundle_encoder300, ])
    device40.queue.writeTexture({ texture: texture405 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder400.popDebugGroup();
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.setPipeline(render_pipeline400);
    render_pass_encoder3000.executeBundles([])
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture405 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.pushErrorScope("out-of-memory");
    const command_buffer501 = command_encoder501.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3010.popDebugGroup();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder3011.endOcclusionQuery()
    device50.queue.submit([command_buffer501, ]);
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder3000.popDebugGroup();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer401 = device40.createBuffer({
        label: "buffer401",
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
                    buffer: buffer400,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer401,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group400);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer401, ]);
    command_encoder500.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
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
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
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

    render_pass_encoder4011.setBindGroup(0, bind_group401);
    render_pass_encoder4010.setVertexBuffer(0, buffer402);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder4010.draw(3);
    render_pass_encoder4011.setVertexBuffer(0, buffer400);
    render_pass_encoder4010.end();
    render_pass_encoder4010.end();
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder4011.setIndexBuffer(buffer400, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4011.draw(3);
    render_pass_encoder4011.drawIndexed(3);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder3001.endOcclusionQuery()
    render_pass_encoder4011.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder4011.end();
    render_pass_encoder4011.drawIndexed(3);
    render_pass_encoder3011.popDebugGroup();
}