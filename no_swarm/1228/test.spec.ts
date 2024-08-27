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
    const array0 = new Float32Array([0.0, 1.0, 0.0, -0.75, -0.5, 0.0, -0.5, -0.75, 0.75, 1.0, 1.0, 0.5, -0.5, -0.75, 0.5, 0.0, 0.0, -1.0, -0.5, 0.25, 1.0, -0.25, -1.0, -0.75, 1.0, -0.5, 0.5, -0.5, -1.0, -0.75, 0.75, 0.25, -0.75, 0.75, -0.5, -0.25, -1.0, 0.75, 0.75, 0.5, 0.75, -0.5, -0.75, -0.25, -1.0, -1.0, -1.0, -1.0, -0.75, -1.0, -0.25, 0.75, 0.5, 0.5, -0.5, 0.75, -0.25, 0.75, -0.25, 0.0, 0.25, 0.5, -0.75, -0.5, -0.25, 0.0, -1.0, -0.75, -0.25, -1.0, -0.25, -0.5, -0.75, -0.75, 0.5, 0.75, -0.25, 0.25, 0.75, 0.75, 0.25, -1.0, -0.75, 0.25, 0.25, 1.0, -0.25, 0.0, 0.5, 0.75, -0.5, 1.0, 0.0, -0.25, 0.5, -0.75, -1.0, 0.25, 0.75, -1.0, ]);
    
    const array1 = new Float32Array([0.0, 1.0, 0.5, 0.25, 0.0, 0.75, -1.0, -0.25, -0.75, 0.75, 0.5, -0.75, -1.0, 0.5, -0.75, 0.0, 0.75, 0.25, 1.0, 0.75, 0.75, 0.5, 0.75, 0.5, 1.0, -1.0, -1.0, -1.0, -1.0, 1.0, -1.0, -0.75, -0.5, -0.25, -0.75, -0.5, -0.75, -0.5, 0.5, -0.25, -0.5, -0.5, 0.5, 0.25, 0.25, -0.5, -0.75, 0.0, 0.75, -0.5, -0.75, -0.25, 0.25, 0.5, -0.25, -0.75, -0.5, 0.25, -0.25, -0.75, 0.0, -0.5, -0.5, -1.0, 0.25, 0.0, 1.0, -0.5, -0.25, 0.25, 0.25, 0.5, -1.0, 1.0, 0.75, -0.5, 0.5, 0.5, 0.0, -0.25, -0.25, -0.5, 0.0, -0.5, -1.0, -0.75, 0.75, -0.25, 1.0, -0.5, 0.25, 1.0, 1.0, -0.75, 0.0, 0.25, -1.0, -0.75, -0.75, 0.25, ]);
    
    const array2 = new Float32Array([-0.25, 0.75, 0.75, 0.25, 0.25, 1.0, 0.75, -1.0, -0.5, 0.5, 0.0, -0.75, 0.5, 1.0, -0.25, -0.25, -0.25, 0.0, 0.25, -1.0, -1.0, -0.5, -1.0, 1.0, -0.25, 1.0, -0.5, -0.25, -0.25, 0.75, 1.0, 1.0, -1.0, 0.75, -0.5, -0.25, 0.0, -0.75, 0.75, 0.75, 0.75, 0.25, -0.25, 1.0, 1.0, 0.5, 0.5, -0.75, -0.75, -0.75, 0.0, 1.0, -0.25, -0.5, -0.5, -0.5, 0.5, -0.5, -0.5, -0.75, -0.75, -0.75, 0.0, -0.75, 0.75, -0.25, -1.0, 0.75, -0.5, 0.75, -0.5, 0.25, 0.0, -0.75, -0.25, -1.0, -0.25, 0.75, -0.5, 0.5, -0.5, -0.75, 0.75, 1.0, -0.25, -1.0, -0.75, 0.0, -1.0, 1.0, 0.5, 0.5, 0.75, 0.0, -0.75, -0.25, 1.0, 0.25, -0.5, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.destroy();
    const array3 = new Float32Array([0.5, 0.25, 1.0, -0.75, -0.25, -0.75, 0.0, -0.5, 1.0, 0.25, 0.0, 0.5, -0.75, 0.0, 0.25, 0.25, -0.5, -1.0, 1.0, -0.5, 0.5, 1.0, 0.0, -0.5, 0.25, -0.25, -1.0, 0.5, 1.0, 0.25, 0.25, 0.5, 1.0, -0.25, -0.5, -0.5, 1.0, -0.75, 0.5, 1.0, -0.75, -0.75, 0.75, -1.0, 0.75, 0.25, 0.25, -0.5, -0.75, -1.0, -0.5, -1.0, -1.0, -1.0, 0.25, 0.5, 0.25, 0.0, 0.0, 0.75, 0.5, 0.75, 0.75, 0.0, 0.75, 0.5, 0.5, 0.25, 0.5, 0.5, -0.75, -1.0, 0.0, 0.75, -1.0, 0.25, 0.5, 0.0, 0.5, 0.25, 0.75, 0.75, -0.5, -0.5, 0.75, -0.75, -1.0, -0.5, 0.5, 0.5, 0.25, -1.0, -0.75, -0.75, -0.5, 0.75, 1.0, -1.0, 1.0, 0.25, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array4 = new Float32Array([0.25, -1.0, -1.0, 1.0, 0.25, -0.25, -0.5, -0.75, 0.75, 0.5, -1.0, 0.5, 1.0, 1.0, 0.0, -0.75, -0.75, 1.0, 0.75, -0.75, 0.5, 0.25, -0.25, 0.0, -0.75, -0.25, -1.0, -0.25, -0.25, -1.0, -1.0, 0.0, -0.5, -0.75, -1.0, 0.0, 0.0, -0.75, 0.75, 0.25, -0.25, 0.5, -0.5, 0.5, 1.0, -0.5, -0.75, 1.0, -0.75, 0.25, -0.25, -1.0, -0.5, 1.0, -1.0, 0.25, 1.0, -0.25, -0.75, -0.25, 0.75, -0.25, 1.0, -1.0, 0.75, -0.75, 0.25, 0.25, 0.0, 1.0, 0.25, -0.25, -0.25, 1.0, 1.0, -1.0, 1.0, 0.5, 0.25, 0.75, -0.5, 0.5, 1.0, -0.25, 0.25, 0.75, 0.5, 0.0, -0.75, 0.5, -0.25, 0.5, -0.75, 0.75, -0.5, 0.5, -1.0, 0.5, 0.75, 0.75, ]);
    device00.pushErrorScope("validation");
    
    
    
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    device20.pushErrorScope("out-of-memory");
    const array5 = new Float32Array([0.5, -1.0, 0.25, -0.75, -0.75, 0.0, 0.5, 0.75, 0.0, -0.25, 0.5, 0.75, -0.75, -1.0, 0.25, 0.5, 0.75, -1.0, 0.25, 1.0, -0.25, 0.0, 0.75, 0.0, 0.75, 0.5, 1.0, 0.0, 0.75, -1.0, -1.0, 0.75, -0.25, -1.0, 0.0, 0.0, 0.5, -0.75, -0.5, -0.5, -0.25, 0.0, -0.25, -0.75, 0.75, 0.25, 1.0, 0.5, 0.0, -0.75, -0.5, 1.0, 0.5, 0.5, 0.0, 0.0, -0.25, 0.75, 0.5, -0.5, -0.75, -0.25, -0.25, 0.25, -0.75, -0.5, 0.25, -1.0, 0.25, 0.75, 0.25, -0.25, -0.25, -1.0, 0.25, 1.0, -1.0, 0.5, -0.75, 0.5, -0.5, -0.5, 0.5, 0.5, 1.0, -0.5, -0.25, -0.25, -0.75, -0.75, 0.75, -0.5, -1.0, 0.25, 1.0, -0.25, 0.0, -0.5, -0.25, -0.5, ]);
    device20.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array6 = new Float32Array([0.25, 0.0, 0.25, 0.75, 0.5, 0.25, 0.75, -0.25, 0.25, -0.5, 0.0, -0.75, -1.0, -0.75, 0.0, -0.75, -0.25, 0.75, 0.0, 0.5, 0.25, 0.5, 0.25, 1.0, 0.0, -0.25, 0.75, 1.0, 1.0, -0.25, 0.5, -0.75, -1.0, 0.0, 0.25, -1.0, -0.75, 0.25, -0.75, 0.0, 0.5, 0.5, -0.5, -0.25, 0.0, 0.5, -0.25, -0.75, -0.5, -0.25, 0.0, -0.75, 0.25, -0.75, 0.75, 1.0, 0.75, -1.0, -0.25, -0.25, 0.25, 0.5, 0.5, -0.75, -0.25, 0.0, 0.5, -0.5, 0.75, 0.0, -0.5, 0.0, -0.5, -0.5, -0.75, 1.0, 0.5, 0.25, -0.25, -0.75, -1.0, -0.25, -0.25, -0.75, 0.5, 0.5, 0.5, -1.0, -0.25, -0.75, -0.75, -0.25, -0.25, -0.5, 1.0, -0.25, -0.25, -0.25, -1.0, 1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
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
    device10.pushErrorScope("internal");
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture100.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.queue.submit([]);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const array7 = new Float32Array([0.5, -0.75, 0.75, 0.0, -1.0, 0.5, 0.75, -0.5, 0.5, -0.5, -0.75, 0.0, 0.5, 0.0, -0.5, 0.25, -1.0, 0.75, 0.5, 0.25, 0.0, 0.5, -0.5, 0.25, -0.75, 0.75, 1.0, -1.0, 1.0, -0.75, -0.25, 0.0, -0.75, 0.0, -1.0, -0.75, 1.0, -1.0, -0.75, 0.0, 0.75, 1.0, 0.25, -0.25, 0.0, 0.25, 1.0, -0.75, 0.75, 0.0, -1.0, -1.0, -1.0, 0.5, -0.5, -0.25, -0.5, -0.75, -1.0, -1.0, 0.25, 1.0, -0.75, 0.5, -0.25, 0.0, 0.5, 1.0, -0.25, 1.0, 0.0, -0.5, 1.0, 0.25, 0.75, 0.25, 0.75, 0.0, -1.0, 0.25, -1.0, 0.75, -0.75, 1.0, 0.5, -0.75, 0.0, -1.0, 0.5, 0.0, 0.0, -0.25, 0.25, 0.75, 0.5, -0.75, 1.0, 0.5, -0.5, -0.5, ]);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const array8 = new Float32Array([-1.0, -0.25, 0.0, 0.0, -0.5, 0.5, -0.75, 0.0, -0.5, -0.5, 0.0, -0.75, 0.25, -0.75, -0.25, -0.5, -0.25, 0.0, 0.75, 0.0, -0.25, 0.75, -0.5, -0.75, 0.0, -0.5, -0.25, 0.75, -0.5, 0.0, -0.5, 0.75, 0.75, -0.75, -0.25, 0.5, 0.25, 0.75, 0.0, 0.75, -0.5, 0.5, 0.5, -1.0, 0.0, -0.5, 0.5, -1.0, -1.0, 0.25, -1.0, -0.25, -0.25, 0.5, 0.75, -0.5, 0.0, 0.75, -1.0, -0.75, -0.25, -0.25, -0.75, 0.75, 0.5, 0.75, -1.0, 0.25, -1.0, 1.0, -0.5, 0.0, 0.0, 0.5, -0.25, 0.5, 1.0, 0.75, 0.25, 1.0, 0.75, 0.5, -0.25, -0.25, -1.0, 0.5, 1.0, 0.75, -1.0, -0.5, -1.0, 0.25, -1.0, -0.5, -0.25, 0.75, -1.0, 0.5, -0.75, -1.0, ]);
    device40.queue.submit([]);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    command_encoder100.insertDebugMarker("mymarker");
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.destroy();
    buffer100.destroy()
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    command_encoder100.insertDebugMarker("mymarker");
    
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    
    device10.pushErrorScope("validation");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder101.insertDebugMarker("mymarker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1000.popDebugGroup();
    
    
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder1001.setStencilReference(1);
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth16unorm",
        dimension: "2d"
    });
    render_pass_encoder1001.setStencilReference(1);
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_pass_encoder1001.insertDebugMarker("marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder1001.setStencilReference(1);
    texture101.destroy();
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device10.pushErrorScope("out-of-memory");
    
    render_pass_encoder1000.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture104 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture104.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    device10.queue.writeTexture({ texture: texture103 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1001.insertDebugMarker("marker");
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device50.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    texture301.destroy();
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_buffer300 = command_encoder300.finish();
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_pass_encoder1000.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer600.destroy()
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    buffer300.destroy()
    
    texture102.destroy();
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder301.insertDebugMarker("mymarker");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query300.destroy()
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder102.pushDebugGroup("mygroupmarker")
    device10.queue.writeTexture({ texture: texture105 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1001.setStencilReference(1);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder3010.setPipeline(render_pipeline300);
    
    render_pass_encoder1001.pushDebugGroup("group_marker");
    render_pass_encoder3010.setStencilReference(1);
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const array9 = new Float32Array([0.75, 0.5, 0.75, -1.0, -0.75, 0.0, 1.0, 1.0, -0.75, 0.0, 1.0, -0.75, 0.0, 0.75, 1.0, 0.0, 0.5, -0.25, -1.0, -0.5, -0.5, 0.25, 0.5, -1.0, 0.0, 0.5, 0.0, -0.5, 0.75, -0.5, -0.25, 1.0, 1.0, 0.75, 0.0, 0.75, 0.5, -0.75, -1.0, 1.0, -0.75, -0.5, -0.75, -0.5, -0.5, 0.0, -1.0, 1.0, -0.5, 0.75, -0.25, 0.5, -0.25, 0.25, -0.25, 1.0, -1.0, -0.25, -0.75, 0.0, -1.0, -0.25, 0.25, 0.5, 1.0, -1.0, 0.75, -1.0, 0.25, -0.25, -1.0, 0.75, 0.75, 0.5, -0.25, 0.5, 0.75, -0.25, -1.0, -1.0, 0.25, 0.25, -0.5, -0.75, -1.0, 0.5, -0.75, 1.0, 0.75, -0.75, 0.25, -0.25, 0.0, 1.0, 0.0, 0.0, 0.0, 0.5, 1.0, 0.0, ]);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group300);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    buffer700.destroy()
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device30.pushErrorScope("out-of-memory");
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    
    
    const command_buffer600 = command_encoder600.finish();
    buffer302.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1001.insertDebugMarker("marker");
    
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device80.destroy();
    device70.destroy();
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
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
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    query301.destroy()
    render_pass_encoder1000.executeBundles([])
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1001.popDebugGroup();
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    texture300.destroy();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder100.popDebugGroup();
    query100.destroy()
    
    render_pass_encoder1001.setStencilReference(1);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    command_encoder302.pushDebugGroup("mygroupmarker")
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
    buffer303.destroy()
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
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
    
    
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder1000.popDebugGroup();
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    command_encoder302.popDebugGroup()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_pass_encoder1000.setStencilReference(1);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1031,
            },
        ],
        occlusionQuerySet: query100
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder103.insertDebugMarker("mymarker");
    
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1001.insertDebugMarker("marker");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_pass_encoder1020.executeBundles([])
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query100
    });
    
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder1030.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture105 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder3020.insertDebugMarker("marker");
    render_pass_encoder1001.insertDebugMarker("marker");
    render_pass_encoder3010.setStencilReference(1);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    query600.destroy()
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    query601.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder3020.setStencilReference(1);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device30.pushErrorScope("out-of-memory");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query101
    });
    device30.queue.submit([command_buffer300, ]);
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    buffer301.destroy()
    render_pass_encoder1031.executeBundles([])
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device60.pushErrorScope("validation");
    query301.destroy()
    
    query302.destroy()
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    texture105.destroy();
    query300.destroy()
    query302.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    query100.destroy()
    query301.destroy()
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout302]
    });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    buffer600.destroy()
    compute_pass_encoder6000.insertDebugMarker("marker")
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1032,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query301
    });
    device30.queue.writeBuffer(buffer304, 0, array3, 0, array3.length);
    
    device30.queue.writeBuffer(buffer304, 0, array9, 0, array9.length);
    device10.queue.writeTexture({ texture: texture106 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    render_pass_encoder1030.insertDebugMarker("marker");
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_pass_encoder1041.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device30.queue.writeBuffer(buffer304, 0, array8, 0, array8.length);
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    render_pass_encoder3011.executeBundles([])
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder1030.setStencilReference(1);
    render_bundle_encoder600.setPipeline(render_pipeline600);
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder1041.executeBundles([])
    
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1041.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    device10.queue.writeTexture({ texture: texture106 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder601.setPipeline(render_pipeline600);
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    render_pass_encoder3011.setPipeline(render_pipeline300);
    render_pass_encoder1040.executeBundles([])
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    device30.queue.writeBuffer(buffer304, 0, array7, 0, array7.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer304.destroy()
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1021.pushDebugGroup("group_marker");
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_bundle_encoder601.insertDebugMarker("marker");
    
    
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query301.destroy()
    
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture103.destroy();
    
    device10.pushErrorScope("internal");
    render_pass_encoder1030.executeBundles([render_bundle_encoder100, render_bundle_encoder101, ])
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    
    render_pass_encoder1001.executeBundles([])
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
        occlusionQuerySet: query301
    });
    
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
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
    
    render_pass_encoder1031.pushDebugGroup("group_marker");
    render_pass_encoder3020.setPipeline(render_pipeline301);
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3010.insertDebugMarker("marker");
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    render_pass_encoder1041.setPipeline(render_pipeline100);
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder1031.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.setPipeline(render_pipeline100);
    render_pass_encoder1020.setPipeline(render_pipeline100);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.setPipeline(render_pipeline300);
    render_pass_encoder1040.setPipeline(render_pipeline100);
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_pass_encoder3011.setBindGroup(0, bind_group301);
    render_pass_encoder1021.setPipeline(render_pipeline100);
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

    render_pass_encoder1020.setBindGroup(0, bind_group100);
    device60.queue.submit([command_buffer600, ]);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group101);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3010.setVertexBuffer(0, buffer304);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group102);
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group103);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    render_pass_encoder3010.drawIndirect(buffer306, 0);
    render_pass_encoder3020.popDebugGroup();
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group104);
    render_pass_encoder1000.setVertexBuffer(0, buffer105);
    render_pass_encoder1031.setPipeline(render_pipeline100);
    render_pass_encoder1040.setVertexBuffer(0, buffer101);
    render_pass_encoder3011.setVertexBuffer(0, buffer305);
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    render_pass_encoder1040.drawIndirect(buffer108, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3011.drawIndirect(buffer303, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.draw(3);
    render_pass_encoder1030.setVertexBuffer(0, buffer107);
    render_pass_encoder1021.popDebugGroup();
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1041.setBindGroup(0, bind_group105);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group302);
    render_pass_encoder1041.setVertexBuffer(0, buffer105);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group106);
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group303);
    render_pass_encoder1021.setVertexBuffer(0, buffer109);
    render_pass_encoder1021.drawIndirect(buffer104, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1031.setVertexBuffer(0, buffer108);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder1041.draw(3);
    render_pass_encoder1031.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder3030.endOcclusionQuery()
    render_pass_encoder1031.draw(3);
    render_pass_encoder1040.drawIndirect(buffer109, 0);
    render_pass_encoder3011.draw(3);
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1040.end();
    render_pass_encoder1040.draw(3);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder3011.end();
    render_pass_encoder1041.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder3010.drawIndirect(buffer309, 0);
    device60.queue.submit([command_buffer600, ]);
    const command_buffer100 = command_encoder100.finish();
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder3030.setVertexBuffer(0, buffer309);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder3030.draw(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder3011.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder3020.setVertexBuffer(0, buffer305);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder301.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3011.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder1020.setVertexBuffer(0, buffer107);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder1021.draw(3);
    render_pass_encoder3030.end();
    const command_buffer000 = command_encoder000.finish();
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder3020.draw(3);
    render_pass_encoder1001.setPipeline(render_pipeline100);
    render_pass_encoder3010.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3011.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder1040.drawIndirect(buffer106, 0);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder1041.draw(3);
    render_pass_encoder3020.end();
    render_pass_encoder1021.end();
    render_pass_encoder1020.end();
    render_pass_encoder1000.setIndexBuffer(buffer1012, "uint16");
    command_encoder102.popDebugGroup()
    render_pass_encoder1041.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder3011.drawIndexed(3);
    render_pass_encoder3011.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder1041.end();
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder1031.popDebugGroup();
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1041.end();
    render_pass_encoder1030.end();
    render_pass_encoder1030.end();
    render_pass_encoder3030.popDebugGroup();
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group107);
    render_pass_encoder1001.setVertexBuffer(0, buffer1014);
    render_pass_encoder1041.drawIndirect(buffer1010, 0);
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder1001.draw(3);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer104, "uint16");
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1001.end();
    device30.queue.submit([]);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1013, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder3011.end();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder3020.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder3010.draw(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer106, 0);
    device40.queue.submit([]);
    render_pass_encoder1030.draw(3);
    render_pass_encoder3011.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3020.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder1020.draw(3);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    device40.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1041.drawIndirect(buffer105, 0);
    render_pass_encoder1001.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder3020.drawIndirect(buffer301, 0);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1000.draw(3);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1000.end();
    render_pass_encoder3011.end();
    device00.queue.submit([command_buffer000, ]);
    device60.queue.submit([]);
    render_pass_encoder1031.drawIndirect(buffer100, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1030.end();
    render_pass_encoder3020.drawIndirect(buffer307, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1040.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1015, "uint16");
    device30.queue.submit([]);
    render_pass_encoder3030.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder1030.end();
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder1030.draw(3);
    render_pass_encoder3010.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3010.draw(3);
    render_pass_encoder1021.draw(3);
    render_pass_encoder3030.drawIndirect(buffer304, 0);
    render_pass_encoder1041.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1041.draw(3);
    render_pass_encoder3020.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3010.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1021.end();
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder1040.drawIndirect(buffer1014, 0);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3020.draw(3);
    render_pass_encoder1030.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder3010.drawIndirect(buffer304, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1021.end();
    render_pass_encoder3011.draw(3);
    render_pass_encoder3011.drawIndexed(3);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1013, "uint16");
    device30.queue.submit([]);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder1031.end();
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer1011, "uint16");
}