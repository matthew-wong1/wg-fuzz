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
    const array0 = new Float32Array([0.25, 1.0, -0.75, 0.75, 1.0, -0.75, 1.0, 1.0, 0.25, 0.0, -0.5, -1.0, -0.25, -0.5, 0.0, -1.0, 1.0, -0.5, 0.5, 0.5, 0.75, -0.5, -0.75, 0.5, 1.0, 0.5, 0.75, 0.25, 0.75, 0.0, -1.0, 0.75, -0.25, -0.75, 0.25, -0.75, 0.25, -0.25, -0.25, -0.5, -0.75, 0.25, -0.25, 1.0, -0.25, -0.75, -0.75, 0.0, 0.75, 0.5, 1.0, 1.0, 1.0, -1.0, 0.25, -0.25, -0.5, -0.75, -1.0, -1.0, 0.0, 0.5, -0.25, 0.0, 0.75, -0.25, 0.75, -1.0, 0.5, 0.75, -0.75, -0.5, -0.75, -0.5, -0.25, -0.25, 0.75, -0.25, 1.0, 1.0, 0.25, 0.5, 0.5, 0.25, 0.75, 0.5, 0.0, -0.5, 0.5, 0.0, -0.25, 0.25, 0.5, 1.0, 0.75, 0.5, 0.0, -1.0, 0.25, 0.25, ]);
    const array1 = new Float32Array([-0.25, -0.5, 0.5, 1.0, 0.75, 1.0, 1.0, 1.0, 0.25, -0.75, -0.5, 0.25, -0.25, -0.75, -0.25, -0.25, -0.25, -1.0, 1.0, 0.0, -1.0, -0.5, -0.75, -0.5, 0.0, -0.25, -1.0, 0.75, -0.5, 0.5, -0.5, 0.0, 1.0, -1.0, 0.75, 1.0, -0.25, -0.5, -0.75, 0.5, -0.5, -1.0, 0.75, 0.75, -0.25, -1.0, 0.5, 0.75, -0.25, -0.25, -0.5, -0.75, 0.5, -0.5, -0.5, 0.75, 0.75, -0.25, 0.75, 0.5, -0.5, -0.25, 0.75, -0.5, -0.5, 0.5, 1.0, 1.0, -0.25, 0.0, -0.25, 1.0, 0.0, -1.0, 0.25, -1.0, -1.0, 0.5, 0.5, -0.25, 0.0, 0.5, 0.75, 0.25, -1.0, -1.0, -0.5, -0.75, -0.25, 0.75, -1.0, -0.25, -0.5, 0.0, -1.0, 0.75, -0.75, -0.5, -0.75, -0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
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
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    
    const array2 = new Float32Array([1.0, 0.75, -1.0, -0.5, -0.75, 0.25, 0.5, 0.25, 0.0, 0.0, -1.0, 0.75, -0.25, -0.75, -1.0, 0.25, 0.75, 0.75, 1.0, -0.5, -0.75, 0.75, 0.0, -0.25, -1.0, 0.25, 0.25, 0.25, -0.75, 0.5, 0.5, 1.0, -1.0, 0.5, -1.0, 0.25, -0.5, -0.5, -0.5, -0.5, 1.0, -0.25, 0.5, 1.0, 1.0, 1.0, -1.0, -0.5, 1.0, 0.75, -0.25, 0.5, -0.5, -0.75, -0.25, -0.5, -0.75, -0.75, -0.5, -0.75, -0.5, 0.0, 0.0, -1.0, 0.0, 1.0, 0.0, -0.25, 0.25, -1.0, 1.0, -0.25, -0.75, -0.5, 0.25, -0.25, 0.75, -1.0, -1.0, -0.25, 0.75, -0.75, -1.0, 0.5, -0.75, -1.0, -0.25, 0.0, 1.0, 1.0, 0.5, -1.0, 1.0, -0.25, -1.0, -0.75, 0.0, 0.0, -0.75, 0.0, ]);
    
    
    const array3 = new Float32Array([1.0, 0.5, 0.5, -0.5, -0.5, 0.5, -1.0, 0.0, 0.25, -0.75, 0.0, -1.0, -0.75, -0.5, -1.0, 0.75, 0.25, -0.5, 0.25, 0.0, 0.0, 0.75, -0.5, 0.75, 0.5, 0.75, -0.5, 1.0, -0.75, 0.75, -0.75, 1.0, -0.75, 1.0, -0.75, 0.75, 0.25, 0.0, 1.0, 1.0, 0.25, 0.25, 0.5, 0.0, -0.75, -0.75, 0.5, 0.5, 0.0, 1.0, 0.5, -0.25, 0.0, 0.5, 0.0, 0.0, -0.5, -0.75, -1.0, 1.0, 0.0, 0.75, 1.0, 1.0, -0.75, -0.25, -0.75, -0.75, 0.0, 0.0, 0.25, 0.5, 0.0, 0.5, -0.25, -1.0, 1.0, 1.0, 0.0, 0.25, -0.75, 0.25, 0.75, 1.0, -0.5, 0.5, -0.25, 0.75, -0.5, 0.5, 1.0, -0.25, 0.75, -1.0, 0.0, -0.75, -1.0, -1.0, -0.5, -0.5, ]);
    
    
    const array4 = new Float32Array([1.0, 0.5, 0.0, 1.0, 0.0, 0.75, 0.5, 0.75, 0.75, -0.25, -1.0, 0.25, 0.5, 1.0, 0.75, -0.5, -0.5, -0.25, 0.0, 0.0, 0.75, -0.75, -0.75, 0.5, 0.5, -1.0, 0.5, 0.5, 0.25, 1.0, 0.5, 0.0, -0.75, -1.0, 0.0, -0.5, -0.25, -0.75, 0.5, 0.5, -0.75, 1.0, 0.75, 0.5, 1.0, -0.75, -0.25, -0.5, -0.75, 0.0, 0.0, 1.0, -0.5, -0.5, -0.5, -0.75, 0.75, 0.0, 0.75, -0.25, 0.0, 0.0, -0.75, 0.75, -1.0, -0.25, -0.25, -0.75, -0.25, 0.25, 0.0, -0.5, -0.25, -1.0, 0.0, 0.0, 0.25, 0.5, -0.75, -0.25, 0.25, -0.25, 0.0, -0.25, 0.25, -0.5, 0.5, 0.0, 0.5, -0.75, -0.25, -0.25, -1.0, 0.0, 0.0, -0.75, 0.25, 0.5, -0.5, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array5 = new Float32Array([0.5, -0.75, 0.5, -1.0, 0.25, -0.25, -0.75, -0.75, 0.25, 0.25, -0.25, 1.0, -0.5, 1.0, -0.25, 1.0, -0.5, 0.0, -0.5, 0.75, 0.0, 0.0, 0.75, -0.5, 0.0, -0.25, -0.75, 1.0, 0.0, -0.25, -1.0, 0.0, -0.75, -0.5, 0.0, -0.5, 0.75, -1.0, 0.0, 0.25, 0.5, 0.0, 0.0, -0.5, 0.0, 0.5, 1.0, -0.5, 1.0, 0.75, -0.75, 0.75, -0.75, -1.0, 0.5, -1.0, 0.0, 1.0, 1.0, -0.75, -0.75, 0.75, -1.0, -0.25, 0.75, -0.75, -0.75, 0.25, -0.25, -0.25, 0.75, 1.0, 0.5, 0.25, 0.75, -1.0, -0.25, 0.0, -0.25, 1.0, -1.0, 0.0, -1.0, 0.5, -1.0, 0.5, 1.0, -0.75, -0.5, 0.0, 0.75, -0.5, -0.5, -0.75, 0.75, 0.5, 1.0, 0.5, -1.0, 0.25, ]);
    
    
    
    
    const array6 = new Float32Array([0.25, -0.75, -0.75, -1.0, 0.5, 0.25, -1.0, -0.75, 0.25, 0.5, 0.25, 0.75, 0.5, 0.75, 0.5, -0.25, -1.0, 0.0, 1.0, 1.0, 1.0, -0.5, 1.0, 0.25, 0.5, -0.75, 0.75, -0.75, 0.0, 0.25, 0.0, -1.0, -0.5, 0.25, -0.25, 0.5, -1.0, -0.25, 1.0, -0.75, -0.75, 0.0, -0.75, -0.5, 0.5, 0.75, 1.0, 0.5, 0.5, -0.25, -0.75, -0.25, -0.25, 0.0, -1.0, 0.25, -0.5, 0.25, -0.25, -0.75, 0.5, 0.25, -0.75, 0.75, -1.0, -1.0, -0.25, 1.0, 0.5, 0.5, 1.0, 0.0, -1.0, 0.25, 1.0, -1.0, -0.5, -1.0, 0.25, 0.0, -0.25, -0.75, -0.5, 0.5, -0.25, -1.0, -0.5, 0.75, -0.5, -0.5, 0.0, 0.0, -0.25, -0.75, 1.0, 0.75, 0.5, 0.0, 0.75, -0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    texture200.destroy();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const array7 = new Float32Array([0.0, -0.75, 1.0, 1.0, -0.25, 0.0, 0.5, 1.0, 0.0, -0.25, 0.5, 0.0, 0.0, -1.0, -0.25, 1.0, 0.75, 0.0, 0.5, -0.25, 0.5, -1.0, -0.25, 0.75, -0.25, -0.5, 1.0, -1.0, -0.25, -1.0, -0.5, 0.75, -1.0, 0.5, 0.5, 0.25, -1.0, 0.25, 0.0, -0.75, -1.0, 0.0, 0.5, 0.75, 1.0, -0.75, -0.5, 0.0, -0.75, -0.25, -1.0, 0.25, -0.75, -0.5, -0.75, -0.75, -0.75, -1.0, 0.25, 0.0, -1.0, 1.0, 1.0, 0.75, 1.0, -0.75, -0.75, 0.5, -0.75, 0.75, -0.25, 1.0, 0.5, -0.5, 0.25, -0.75, -0.5, 0.75, -0.5, 0.0, -0.5, 0.5, 0.0, -0.75, 0.5, 0.25, -0.5, -1.0, -1.0, -0.5, -1.0, -0.25, -0.5, -0.75, -1.0, -0.75, -0.75, -0.75, -0.25, 0.5, ]);
    device40.destroy();
    
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.destroy();
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
    
    
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device10.destroy();
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder500.insertDebugMarker("mymarker");
    const command_buffer500 = command_encoder500.finish();
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder501.popDebugGroup();
    
    
    
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const array8 = new Float32Array([0.25, -0.5, -0.75, 0.0, -1.0, -0.75, -0.5, -0.5, -0.5, -0.5, -0.75, 0.5, 0.5, -1.0, 1.0, 1.0, 1.0, -1.0, -0.25, -0.5, -1.0, -0.25, 0.25, -0.5, 0.25, -0.25, 1.0, 0.0, -0.75, 0.75, -0.75, -0.25, 1.0, 0.5, 0.0, 0.0, 1.0, 0.25, 0.75, 0.5, 0.5, -1.0, 0.25, 0.5, 0.5, -0.25, 0.0, -1.0, 1.0, -0.5, -0.75, -0.75, 0.75, -0.25, -0.75, -0.75, 0.75, -1.0, 0.25, -0.75, 0.25, -0.75, -1.0, 0.0, 0.25, 0.0, -0.5, 0.75, -0.25, -0.75, -0.25, 1.0, 0.5, 1.0, -0.75, 0.25, 0.75, 0.25, 0.0, -0.25, 0.5, -0.5, 0.0, 0.25, 0.5, 0.5, 0.0, 0.0, 0.25, 0.5, -0.75, 1.0, -0.25, 1.0, -0.75, 0.75, 0.5, 0.25, -0.25, -0.5, ]);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_buffer300 = command_encoder300.finish();
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    texture300.destroy();
    
    
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
    device50.queue.submit([command_buffer500, ]);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    device10.pushErrorScope("out-of-memory");
    
    command_encoder501.copyBufferToBuffer(
        buffer500,
        0,
        buffer501,
        0,
        400
    );
    buffer500.destroy()
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    device50.pushErrorScope("internal");
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_bundle_encoder502.insertDebugMarker("marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const sampler506 = device50.createSampler( { label: "sampler506" } );
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    render_bundle_encoder501.popDebugGroup();
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    render_bundle_encoder500.insertDebugMarker("marker");
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    query500.destroy()
    
    device50.pushErrorScope("validation");
    render_bundle_encoder501.insertDebugMarker("marker");
    
    render_bundle_encoder502.insertDebugMarker("marker");
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
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
    
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    
    render_bundle_encoder300.popDebugGroup();
    
    query300.destroy()
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_bundle_encoder301.insertDebugMarker("marker");
    buffer300.destroy()
    
    
    
    texture300.destroy();
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
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
    
    
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    texture500.destroy();
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    device40.pushErrorScope("internal");
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.popDebugGroup();
    
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
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder500.setPipeline(render_pipeline501);
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    device50.queue.writeTexture({ texture: texture501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_bundle_encoder501.popDebugGroup();
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder301.popDebugGroup();
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    device50.queue.writeTexture({ texture: texture501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.submit([command_buffer300, ]);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    texture501.destroy();
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    query300.destroy()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    buffer501.destroy()
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder500.popDebugGroup();
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device60.destroy();
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    
    query300.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const render_bundle_encoder503 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder503",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query500.destroy()
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query300.destroy()
    compute_pass_encoder5010.popDebugGroup()
    
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder501.setPipeline(render_pipeline500);
    
    command_encoder301.resolveQuerySet(
        query301,
        0,
        32,
        buffer302,
        0
    )
    
    compute_pass_encoder5010.setPipeline(compute_pipeline504);
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    
    texture301.destroy();
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
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
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder500.popDebugGroup();
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    device50.pushErrorScope("out-of-memory");
    render_bundle_encoder501.popDebugGroup();
    
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
    render_pass_encoder3010.popDebugGroup();
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    texture501.destroy();
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device70.destroy();
    render_pass_encoder3020.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3030.pushDebugGroup("group_marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    buffer505.destroy()
    
    
    render_pass_encoder5020.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([-0.75, 0.0, -0.25, -0.75, 0.25, 0.0, 0.25, -0.75, -0.75, -0.75, 0.5, 1.0, -0.75, -1.0, 0.25, 1.0, 0.0, 0.0, 0.25, -1.0, 0.5, -0.75, 1.0, 0.75, 0.5, -0.75, 0.0, -1.0, -0.75, 1.0, -1.0, -0.75, 0.75, -1.0, -0.25, 0.0, 0.25, 0.25, 0.75, 0.75, 0.5, -1.0, -0.5, -0.75, 0.5, -0.75, -0.75, -0.25, 1.0, 0.5, 0.75, 1.0, -0.25, 0.25, 1.0, -0.5, 0.0, 0.0, 0.25, 0.0, -0.75, 0.75, 0.5, 0.25, -1.0, -0.75, 0.5, 0.25, 0.0, -0.5, 1.0, -0.75, 1.0, -0.25, -0.5, 0.25, -1.0, -0.25, -0.75, -0.75, -1.0, 0.0, 1.0, -0.75, -0.25, -0.75, -0.25, 0.75, -0.75, 0.75, -0.5, 0.5, -0.5, 0.5, 1.0, -0.75, 0.0, 0.25, 0.0, 0.75, ]);
    query501.destroy()
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    render_bundle_encoder301.popDebugGroup();
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    command_encoder305.clearBuffer(buffer300);
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array9, 0, array9.length);
    render_pass_encoder3040.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    render_pass_encoder3030.setStencilReference(1);
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    
    render_pass_encoder3020.setStencilReference(1);
    
    render_pass_encoder3010.setStencilReference(1);
    
    
    render_pass_encoder3020.setStencilReference(1);
    
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout501,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_pass_encoder5020.executeBundles([])
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device50.queue.writeBuffer(buffer503, 0, array1, 0, array1.length);
    
    command_encoder301.insertDebugMarker("mymarker");
    render_pass_encoder3030.executeBundles([])
    render_pass_encoder5020.setPipeline(render_pipeline501);
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    render_bundle_encoder503.setPipeline(render_pipeline500);
    buffer504.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    render_pass_encoder3040.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
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
    render_pass_encoder3030.popDebugGroup();
    
    render_pass_encoder5020.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    device30.pushErrorScope("validation");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    device30.pushErrorScope("out-of-memory");
    
    command_encoder306.resolveQuerySet(
        query300,
        0,
        32,
        buffer302,
        0
    )
    const render_pass_encoder5021 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer301.destroy()
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    render_bundle_encoder300.insertDebugMarker("marker");
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
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.popDebugGroup();
    render_bundle_encoder503.insertDebugMarker("marker");
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout501,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder3030.executeBundles([])
    render_pass_encoder3040.executeBundles([])
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group501);
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder503.pushDebugGroup("group_marker");
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    query300.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    render_bundle_encoder503.setBindGroup(0, bind_group502);
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    buffer302.destroy()
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    device50.queue.writeBuffer(buffer506, 0, array9, 0, array9.length);
    render_bundle_encoder502.insertDebugMarker("marker");
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5020.setVertexBuffer(0, buffer506);
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5021.insertDebugMarker("marker");
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    render_pass_encoder3020.executeBundles([])
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.popDebugGroup();
    
    
    query500.destroy()
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout504,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3060 = command_encoder306.beginComputePass({ label: "compute_pass_encoder3060" });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    command_encoder304.pushDebugGroup("mygroupmarker")
    
    
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    render_pass_encoder3040.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const render_pass_encoder3031 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder3040.executeBundles([])
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    render_bundle_encoder502.setPipeline(render_pipeline500);
    render_pass_encoder3040.insertDebugMarker("marker");
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3040.pushDebugGroup("group_marker");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_bundle_encoder502.popDebugGroup();
    
    render_pass_encoder3010.popDebugGroup();
    command_encoder302.resolveQuerySet(
        query301,
        0,
        32,
        buffer302,
        0
    )
    
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
    render_pass_encoder3020.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5020.setIndexBuffer(buffer509, "uint16");
    device30.queue.submit([]);
    render_pass_encoder5021.setPipeline(render_pipeline500);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder5020.drawIndirect(buffer501, 0);
    device50.queue.submit([]);
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder3010.endOcclusionQuery()
    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: compute_pipeline504.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5012,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group503);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5010.dispatchWorkgroups(100);
    compute_pass_encoder5010.end();
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder3040.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3040.popDebugGroup();
    compute_pass_encoder3060.popDebugGroup()
    const command_buffer501 = command_encoder501.finish();
    device50.queue.submit([command_buffer501, ]);
    device50.queue.submit([command_buffer500, ]);
    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5014,
                },
            },
        ],
    });

    render_pass_encoder5021.setBindGroup(0, bind_group504);
    command_encoder301.popDebugGroup()
    render_pass_encoder5021.setVertexBuffer(0, buffer505);
    render_pass_encoder5020.setIndexBuffer(buffer501, "uint16");
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder5021.drawIndirect(buffer500, 0);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5021.end();
    render_pass_encoder3040.endOcclusionQuery()
    render_pass_encoder5020.drawIndexedIndirect(buffer505, 0);
    device30.queue.submit([]);
    render_pass_encoder5020.end();
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder3050.popDebugGroup()
    const command_buffer502 = command_encoder502.finish();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder3010.endOcclusionQuery()
    device50.queue.submit([command_buffer502, ]);
    device50.queue.submit([command_buffer502, ]);
}