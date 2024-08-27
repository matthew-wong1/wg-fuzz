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
    const array0 = new Float32Array([-1.0, -0.75, 0.75, 1.0, -0.5, -0.75, 0.25, 0.75, 0.5, -0.5, -0.25, 0.25, -0.25, 0.25, 1.0, -1.0, -0.75, -0.75, 1.0, -0.25, -1.0, -0.25, 0.25, -0.25, 0.75, -0.75, -0.25, -1.0, -0.75, 0.75, 0.25, 0.5, -0.25, 0.0, 1.0, 0.0, 0.5, -1.0, 1.0, -0.25, 0.5, -0.5, -0.75, 0.0, -1.0, 0.0, 1.0, -0.5, 1.0, 0.0, 0.5, 0.0, -0.25, -1.0, -0.5, -1.0, -0.25, 1.0, 0.75, -0.75, 0.0, 1.0, 0.75, 1.0, -0.25, 0.5, -0.75, -1.0, 0.75, 0.25, -0.75, -0.25, 0.75, 0.75, -1.0, 1.0, -0.75, -1.0, -0.75, 0.0, -0.5, 0.75, 0.0, -0.25, 0.75, 0.25, 0.75, -0.75, -0.5, 1.0, 0.75, -1.0, 0.5, -0.75, 0.5, -0.75, 0.0, -0.5, 1.0, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([0.25, 0.5, 0.0, 0.0, -0.75, 0.75, 0.0, 1.0, 0.5, -0.25, -0.5, 0.5, -0.75, -0.5, -0.25, 0.0, 0.5, 0.5, -1.0, -0.5, 1.0, -0.75, -0.75, 0.25, 0.75, -0.25, 0.0, -1.0, -0.5, 1.0, -0.25, 0.5, -0.75, -0.5, -0.5, 0.75, 0.0, -0.5, 0.0, -0.5, -1.0, 1.0, -0.5, -0.75, -1.0, -1.0, -0.25, 0.0, 0.0, 0.25, -0.25, -0.75, 0.75, -0.75, -0.5, -0.25, -0.5, 0.25, 0.75, -0.75, -0.25, 0.0, -0.25, 1.0, -1.0, -0.25, -1.0, 0.25, 0.5, 0.25, 1.0, -0.25, 0.5, 0.25, 1.0, 0.25, -0.5, -0.75, 0.5, -0.25, -0.75, 1.0, -0.75, 0.0, 0.0, -0.25, 0.5, -0.75, -0.25, -0.5, 0.0, 0.25, -1.0, 0.25, -0.25, -0.25, -0.5, 0.5, 0.5, -1.0, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.destroy();
    const array2 = new Float32Array([0.75, -1.0, 0.0, 0.25, 0.5, -0.75, 0.0, 0.25, -0.5, 0.75, -0.5, -1.0, -0.5, 0.25, 0.75, -0.25, -1.0, -0.25, 0.75, 0.75, 0.5, 0.25, 0.5, -0.5, -1.0, 0.5, -1.0, 1.0, 1.0, -1.0, 1.0, -1.0, -1.0, -1.0, -0.75, -0.75, -1.0, 0.5, 0.0, 0.25, 0.75, -0.25, 1.0, -0.75, 0.75, 0.0, 0.75, 0.25, 0.5, -0.75, -0.75, -1.0, -1.0, 0.5, 0.0, 0.25, -0.25, -0.5, -0.75, -1.0, 1.0, -1.0, 0.5, 0.0, 0.5, 0.75, -0.75, 0.5, -0.75, -0.25, 0.5, 0.5, -0.75, -0.5, 0.0, 0.75, -0.25, 0.25, 0.25, 0.75, 1.0, -0.25, 0.0, -0.75, -0.5, -0.25, -0.5, 0.25, 0.25, -1.0, 0.5, -0.25, -0.25, 0.5, 0.75, 1.0, 0.25, 1.0, -0.5, 0.25, ]);
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const array3 = new Float32Array([-0.75, -1.0, 0.5, -1.0, 0.75, -0.75, -0.5, -0.25, 0.5, 0.75, 0.75, -0.25, 0.5, 0.5, -0.25, -0.25, -0.5, 1.0, 0.75, 1.0, -0.75, 0.25, -0.5, 0.5, -0.25, 0.25, -0.5, 0.5, 0.25, 0.25, 0.25, 1.0, -0.25, 0.75, 0.5, -0.75, -0.5, -0.25, 0.0, 0.25, 0.0, 0.5, 0.0, 1.0, 0.5, -0.75, 0.75, -0.75, 0.25, -0.5, 0.75, 0.75, -0.75, 1.0, 0.25, 1.0, -0.25, -0.25, 0.0, 0.0, 0.0, 0.75, 0.25, 0.75, 0.75, 0.5, -1.0, 0.0, -0.5, -0.75, 0.75, -0.25, -0.5, 0.5, -0.25, 0.75, 0.5, 0.25, -0.5, 0.75, 0.5, 0.5, 0.75, -0.25, 0.25, 0.25, -0.25, -1.0, 0.5, -0.75, 0.25, 0.25, -0.25, -0.5, -0.5, -0.25, 0.25, -0.5, 1.0, -1.0, ]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.pushErrorScope("internal");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const array4 = new Float32Array([0.5, -0.75, 0.5, -0.5, 0.25, 1.0, -0.25, -0.25, 0.5, 0.75, 0.25, -0.5, -0.25, -0.75, -0.25, -0.75, -0.75, -0.5, 0.0, -0.75, -0.25, -0.25, 1.0, -1.0, 0.75, 0.25, 0.0, 1.0, 0.5, 1.0, 0.0, 0.25, 0.0, -1.0, 0.0, 0.25, -0.5, -0.75, -1.0, -0.75, 0.75, -0.75, 1.0, -0.75, -0.5, 0.75, 0.75, 0.0, 0.25, -1.0, 0.75, -1.0, 1.0, 0.75, -0.5, 0.0, 1.0, -0.25, -0.5, -1.0, 0.0, 0.5, -0.75, -0.5, -1.0, 0.0, 0.75, -0.5, 0.25, 0.0, -0.25, 0.75, 1.0, 0.75, 0.5, 0.0, 0.25, 0.0, 0.5, -0.5, -1.0, -0.75, -0.25, 0.25, 0.0, 0.0, -0.25, 0.0, -0.75, -0.25, -0.75, 0.5, -0.5, 0.0, 0.0, 0.75, 0.75, 0.25, -1.0, 0.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    texture001.destroy();
    
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device10.destroy();
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8uint",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.destroy();
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture301.destroy();
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.popDebugGroup();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    texture300.destroy();
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    device40.destroy();
    texture302.destroy();
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    buffer100.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder102.insertDebugMarker("marker");
    
    query300.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    device30.destroy();
    
    render_bundle_encoder100.popDebugGroup();
    
    const array5 = new Float32Array([0.25, -0.5, 0.0, -0.5, 0.25, 0.0, -0.25, -0.75, -0.5, -1.0, 0.0, 1.0, -1.0, 0.75, 1.0, -0.25, -0.25, -0.25, -0.75, -1.0, 0.5, -0.75, 0.0, 0.75, 0.25, -0.75, -0.5, -0.25, 0.75, 0.75, 0.25, 1.0, -0.75, -0.5, 0.0, -0.75, 0.5, 0.25, -0.75, -0.25, 0.25, 0.0, 0.0, -0.25, 1.0, 0.75, 0.0, -0.75, 1.0, -0.5, -0.25, -0.75, -0.25, 0.75, 0.5, 0.0, -1.0, 0.75, 1.0, -0.75, -0.5, 0.75, 0.0, -0.25, -0.5, 0.5, 0.0, 1.0, 0.0, 0.5, 0.25, -0.75, -0.75, 0.5, -0.75, -0.75, 0.75, -0.5, 0.0, -0.5, 0.5, 0.0, -0.75, 0.0, -0.25, 0.5, 0.25, 0.0, 1.0, -1.0, -0.5, 0.0, -0.75, 0.5, -1.0, 1.0, -0.5, 0.25, 1.0, 0.0, ]);
    query200.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const array6 = new Float32Array([0.5, -0.5, -0.25, 0.75, 1.0, 0.0, -0.25, 0.75, 0.25, 0.0, 0.0, 0.25, 0.0, -1.0, 0.25, 0.0, 0.5, 0.75, 0.75, 0.75, -0.25, -1.0, 0.0, 1.0, -0.5, 0.0, -0.25, 0.75, 1.0, -0.25, -1.0, -0.25, 0.5, 0.0, -0.5, 0.25, 0.25, 0.0, -0.75, 0.25, -0.75, 0.5, -0.5, 0.75, 0.25, 1.0, 0.75, 0.0, -0.5, -0.25, -0.5, -0.5, -0.25, 0.5, -0.75, -0.5, 0.75, -0.5, -0.5, 0.5, -0.25, 0.0, -1.0, 1.0, 1.0, 1.0, 0.5, 1.0, 0.0, 0.25, 0.0, 0.25, 0.25, -0.25, 0.5, 0.25, -0.5, -0.25, -0.75, -1.0, 0.25, 0.25, 0.75, -1.0, 1.0, -0.75, -1.0, 1.0, 0.0, -1.0, -1.0, 0.25, 0.5, -0.5, 0.5, 0.0, 0.0, 0.0, -1.0, 1.0, ]);
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    
    texture302.destroy();
    const array7 = new Float32Array([-0.5, 0.75, 1.0, 0.25, 1.0, 0.5, -0.75, -0.5, 1.0, -0.5, -0.25, 0.5, -1.0, 0.0, 0.5, 0.5, 1.0, 0.0, -1.0, -0.5, 0.0, 1.0, 0.5, 0.0, 0.5, 0.5, -0.25, 1.0, 0.75, 0.0, 0.0, 0.75, 0.0, 1.0, 0.25, 0.5, 0.25, -0.75, 0.0, -1.0, 0.25, -0.25, 0.25, 0.25, -0.75, 0.25, 0.75, 0.0, -0.5, 0.75, -0.75, -0.25, 0.0, 0.5, -0.5, -0.75, 1.0, 0.75, 0.0, 0.75, -0.75, 0.75, -0.25, 0.75, 0.25, -0.25, -0.25, -0.25, -0.75, 0.0, 1.0, 0.0, -0.25, -0.5, -0.5, 0.0, 1.0, -0.75, -0.75, -0.5, -0.5, 1.0, 0.5, -0.25, -0.75, 0.0, -0.5, 0.75, 0.75, 0.75, -0.25, 0.0, 0.25, -0.25, 0.75, 0.25, 1.0, 0.75, -0.5, -0.25, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    
    device60.pushErrorScope("validation");
    device30.pushErrorScope("internal");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    buffer301.destroy()
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
    command_encoder302.copyTextureToTexture(
        {
            texture: texture302
        },
        {
            texture: texture302
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const array8 = new Float32Array([0.25, 0.75, -0.25, -1.0, 0.75, -1.0, 0.25, 0.25, -0.25, 0.25, -0.75, -0.25, 0.25, -1.0, 0.25, -0.25, -0.25, 1.0, -1.0, 0.5, -0.5, -0.25, -0.5, -0.75, -0.75, 0.0, 1.0, 0.0, 0.25, 0.0, -1.0, 0.5, 0.25, 0.0, -0.75, 0.75, -1.0, 1.0, -0.75, 1.0, -0.25, -0.75, -0.5, 1.0, 0.25, -0.5, 0.25, -0.75, -0.5, 0.0, -1.0, -0.5, -0.25, 0.0, 1.0, 0.5, 0.25, -0.5, 0.0, 0.25, 0.5, -0.75, 0.0, -0.75, -0.5, -0.5, 1.0, -0.5, -0.5, 0.0, -1.0, 0.0, 0.5, -0.5, 0.75, -0.5, -0.5, 0.75, 0.25, 0.5, 1.0, -0.75, -0.25, -0.75, 0.5, -0.75, 1.0, 0.75, -1.0, -0.5, -1.0, -1.0, -0.75, 1.0, -0.5, 0.25, 1.0, -0.25, -0.75, 0.75, ]);
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device50.pushErrorScope("validation");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    texture600.destroy();
    command_encoder500.insertDebugMarker("mymarker");
    const array9 = new Float32Array([0.5, 0.5, -0.75, -1.0, -0.5, 1.0, 1.0, -0.75, 0.5, 0.5, 0.25, 0.75, 1.0, -0.75, 0.25, -0.5, -1.0, 0.25, 0.5, -0.75, -0.25, -1.0, -0.75, 0.75, -1.0, 0.0, 0.0, 0.0, -0.75, 0.0, 0.5, 0.25, 0.25, 0.25, 0.25, -0.25, 0.5, 0.25, 0.75, 0.75, 0.0, 0.0, 0.25, 0.75, 0.75, -1.0, 0.25, -0.75, 0.25, -1.0, -0.25, -0.75, 0.0, -0.75, -0.5, -0.25, 0.5, -1.0, 1.0, -0.25, -0.75, 0.5, -1.0, -0.5, 0.0, -0.25, -0.25, 0.25, -0.75, -0.75, -0.5, -0.25, 0.25, 0.5, 1.0, 0.5, 0.75, -1.0, -1.0, -0.5, 0.0, -1.0, -1.0, -0.75, -0.75, 0.0, -0.75, 0.0, 0.25, 0.0, -1.0, -0.25, -0.75, 0.5, 0.25, 1.0, 0.25, 0.25, 1.0, -0.25, ]);
    command_encoder500.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
    command_encoder500.insertDebugMarker("mymarker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    command_encoder301.insertDebugMarker("mymarker");
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
    query600.destroy()
    
    
    render_bundle_encoder601.insertDebugMarker("marker");
    query600.destroy()
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const array10 = new Float32Array([0.25, -0.25, 0.75, 1.0, -0.25, 1.0, -0.5, 0.0, -0.75, -1.0, -0.5, -0.75, 0.0, -0.5, 1.0, 0.5, 0.0, -0.5, 0.5, -0.25, 0.0, -0.5, -1.0, 0.5, -1.0, 0.5, 0.5, -0.5, 0.25, 0.5, 1.0, 0.5, -0.5, -0.25, 0.0, 0.0, 0.75, -0.25, 0.25, -0.75, 0.25, 1.0, 0.0, -0.75, -0.5, 1.0, 1.0, 1.0, 0.25, 1.0, -0.25, 0.25, 0.75, -0.25, 0.0, 0.25, 0.0, 0.0, 0.75, 0.0, 0.25, 0.5, -1.0, 0.5, -0.75, 0.75, -0.75, -1.0, -0.75, 0.25, -0.25, 0.75, 0.5, 1.0, -1.0, -0.75, 0.5, 0.75, 0.25, 0.25, -0.75, -1.0, 1.0, 0.0, -0.5, 0.75, -0.5, 0.25, -0.5, -0.5, 0.25, 0.5, -0.5, 0.75, 0.5, 0.0, 1.0, 0.5, 0.5, -0.5, ]);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    device50.pushErrorScope("out-of-memory");
    
    render_bundle_encoder501.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32sint",
        dimension: "2d"
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    texture600.destroy();
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder502.insertDebugMarker("marker");
    query500.destroy()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    query501.destroy()
    render_bundle_encoder502.insertDebugMarker("marker");
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
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device60.queue.writeTexture({ texture: texture601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    
    device10.destroy();
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder602.insertDebugMarker("marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_bundle_encoder502.insertDebugMarker("marker");
    buffer500.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    command_encoder601.pushDebugGroup("mygroupmarker")
    
    
    command_encoder601.insertDebugMarker("mymarker");
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    command_encoder500.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    
    render_bundle_encoder502.insertDebugMarker("marker");
    
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    compute_pass_encoder6020.insertDebugMarker("marker")
    command_encoder500.copyBufferToBuffer(
        buffer501,
        0,
        buffer501,
        0,
        400
    );
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    compute_pass_encoder5000.setPipeline(compute_pipeline501);
    command_encoder303.pushDebugGroup("mygroupmarker")
    query501.destroy()
    buffer501.destroy()
    
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
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    command_encoder601.insertDebugMarker("mymarker");
    render_bundle_encoder500.popDebugGroup();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    query501.destroy()
    
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    device60.queue.submit([]);
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder601.insertDebugMarker("marker");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6020.insertDebugMarker("marker")
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    
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
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const texture_view5003 = texture500.createView({ label: "texture_view5003" });
    device40.destroy();
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    query501.destroy()
    render_bundle_encoder502.insertDebugMarker("marker");
    const texture_view5004 = texture500.createView({ label: "texture_view5004" });
    
    query600.destroy()
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
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
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    texture600.destroy();
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16uint",
        dimension: "2d"
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder600.popDebugGroup();
    
    texture500.destroy();
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    query502.destroy()
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const compute_pass_encoder6021 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6021" });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const sampler605 = device60.createSampler( { label: "sampler605" } );
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    render_bundle_encoder600.insertDebugMarker("marker");
    command_encoder603.pushDebugGroup("mygroupmarker")
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    compute_pass_encoder6010.insertDebugMarker("marker")
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout502]
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    render_bundle_encoder602.insertDebugMarker("marker");
    command_encoder502.insertDebugMarker("mymarker");
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    command_encoder500.popDebugGroup()
    command_encoder603.popDebugGroup()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
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
    const array11 = new Float32Array([-0.75, -1.0, 0.25, -0.25, 0.0, -0.75, 0.5, -0.75, 0.5, -0.5, -0.5, -1.0, 0.25, 0.0, -0.25, 0.0, 0.75, -0.5, 0.5, -1.0, -0.5, 0.25, -1.0, -0.25, -0.75, -0.75, -1.0, 0.25, 0.75, -0.25, 0.25, -0.5, -0.25, -0.25, -0.75, 0.5, 0.25, -0.5, 0.5, 1.0, 0.0, -0.25, -1.0, 0.75, 0.0, -0.5, 0.75, 1.0, 1.0, 0.0, 0.75, -0.75, 0.0, 0.5, 0.0, -0.75, 0.0, -1.0, -0.25, -0.25, 0.5, -0.25, -0.5, 0.5, 0.25, 0.25, 1.0, -0.25, 0.25, -0.75, -1.0, 1.0, 0.25, 0.0, -0.25, 0.75, -0.75, -0.5, 1.0, -0.5, -0.25, -0.5, 0.5, 1.0, -0.5, 1.0, 1.0, 1.0, 0.5, -0.25, 0.25, 0.25, 1.0, -1.0, -0.5, -1.0, -0.75, -0.25, 1.0, 1.0, ]);
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    command_encoder502.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    command_encoder502.insertDebugMarker("mymarker");
    
    command_encoder502.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    command_encoder502.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    device00.pushErrorScope("internal");
    render_bundle_encoder502.insertDebugMarker("marker");
    command_encoder502.resolveQuerySet(
        query504,
        0,
        32,
        buffer500,
        0
    )
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
    command_encoder501.resolveQuerySet(
        query504,
        0,
        32,
        buffer500,
        0
    )
    compute_pass_encoder6020.setPipeline(compute_pipeline601);
    compute_pass_encoder6020.insertDebugMarker("marker")
    device60.queue.writeTexture({ texture: texture601 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout602]
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout602]
    });
    command_encoder501.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder6000.setPipeline(compute_pipeline601);
    const sampler606 = device60.createSampler( { label: "sampler606" } );
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout503]
    });
    command_encoder502.insertDebugMarker("mymarker");
    
    const sampler607 = device60.createSampler( { label: "sampler607" } );
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    
    compute_pass_encoder6021.setPipeline(compute_pipeline602);
    command_encoder503.copyBufferToBuffer(
        buffer501,
        0,
        buffer500,
        0,
        400
    );
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    buffer700.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    command_encoder501.pushDebugGroup("mygroupmarker")
    command_encoder501.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    command_encoder502.resolveQuerySet(
        query504,
        0,
        32,
        buffer500,
        0
    )
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6010.insertDebugMarker("marker")
    
    
    
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
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    render_bundle_encoder502.popDebugGroup();
    command_encoder502.resolveQuerySet(
        query504,
        0,
        32,
        buffer500,
        0
    )
    compute_pass_encoder5010.setPipeline(compute_pipeline5011);
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout504]
    });
    device70.destroy();
    
    
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder602.popDebugGroup();
    command_encoder502.resolveQuerySet(
        query502,
        0,
        32,
        buffer503,
        0
    )
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
    render_bundle_encoder501.insertDebugMarker("marker");
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    
    command_encoder503.resolveQuerySet(
        query504,
        0,
        32,
        buffer501,
        0
    )
    query501.destroy()
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout604]
    });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    command_encoder502.resolveQuerySet(
        query503,
        0,
        32,
        buffer500,
        0
    )
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    query602.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query504.destroy()
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const command_encoder605 = device60.createCommandEncoder({ label: "command_encoder605" });
    
    const bind_group_layout605 = device60.createBindGroupLayout({ 
        label: "bind_group_layout605",
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
    
    
    render_bundle_encoder501.popDebugGroup();
    compute_pass_encoder5010.insertDebugMarker("marker")
    query602.destroy()
    query600.destroy()
    
    command_encoder503.resolveQuerySet(
        query504,
        0,
        32,
        buffer500,
        0
    )
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout505]
    });
    const sampler608 = device60.createSampler( { label: "sampler608" } );
    command_encoder502.resolveQuerySet(
        query501,
        0,
        32,
        buffer503,
        0
    )
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    compute_pass_encoder6010.setPipeline(compute_pipeline602);
    device80.destroy();
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout504,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    command_encoder602.pushDebugGroup("mygroupmarker")
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    compute_pass_encoder5030.setPipeline(compute_pipeline508);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}