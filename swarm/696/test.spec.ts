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
    const array0 = new Float32Array([1.0, -0.25, 1.0, -0.25, 0.5, 0.25, 1.0, 0.5, 0.75, -1.0, 0.0, 1.0, -0.25, 0.0, -1.0, -0.25, 0.0, 0.75, 0.5, -0.25, -1.0, 0.75, 0.5, 1.0, -0.75, 0.25, 0.0, -1.0, 0.5, 0.5, -0.5, -1.0, 0.5, -0.75, -0.5, 0.0, 1.0, -1.0, -1.0, -0.5, 0.75, -1.0, 1.0, 0.75, -0.25, 0.5, 1.0, 1.0, -0.75, -0.5, 0.5, -0.25, 0.0, -0.5, 1.0, 0.5, -0.25, -0.75, -0.75, -0.25, -1.0, 0.25, 0.5, -1.0, 0.5, 0.25, -0.25, 0.25, -0.5, -0.25, -1.0, -0.5, -0.5, 0.75, 1.0, 0.0, 0.75, 1.0, -0.75, 0.25, 0.75, -0.5, -1.0, 0.25, 0.0, 0.25, -1.0, -1.0, 0.0, 0.5, 0.75, -0.5, 0.25, 1.0, 0.75, 0.25, 1.0, 0.5, 0.25, -0.25, ]);
    
    
    
    const array1 = new Float32Array([-0.25, -0.75, 1.0, 0.0, -0.5, 0.0, -0.5, -1.0, 0.25, -0.5, -0.5, 0.0, -0.5, 0.5, 0.75, -1.0, -0.25, -0.25, -0.5, 0.75, -1.0, 0.5, -0.25, -0.75, -0.25, 0.75, 0.75, -0.75, -0.5, 0.5, 0.5, 0.75, -0.25, 0.75, 0.0, 0.5, 0.5, -1.0, -1.0, 0.0, -0.5, -0.5, -0.5, 0.25, 0.0, -0.25, 0.75, -0.75, -0.5, -1.0, 0.75, -0.75, 0.25, 0.25, 0.75, -0.25, 1.0, 0.0, 0.75, 0.25, -0.75, -1.0, -1.0, 0.75, 0.25, 0.75, 0.75, 0.75, 1.0, 0.75, 0.5, -1.0, -1.0, -1.0, -0.25, -0.75, -1.0, -0.25, 0.75, 0.75, -0.75, -0.25, -0.5, 0.75, -1.0, -0.25, 0.5, 1.0, 0.75, -0.5, 1.0, 0.5, 0.5, 1.0, 1.0, 0.25, 0.25, 1.0, 0.5, 1.0, ]);
    const array2 = new Float32Array([-0.75, 0.75, -0.5, 0.75, 1.0, -1.0, -1.0, 0.75, -0.5, 1.0, -0.5, 0.0, 0.0, -0.25, 1.0, 1.0, -0.5, -0.25, 1.0, -0.5, 0.75, -0.5, -0.75, -1.0, 1.0, 0.75, 0.0, 1.0, 0.5, 0.5, 0.25, -0.5, 0.75, 0.25, 0.25, -0.25, -0.75, -0.5, 0.0, -0.75, 0.0, 1.0, -1.0, 0.25, -1.0, -0.75, -1.0, 0.0, -0.75, 0.25, 0.5, 1.0, 0.5, 1.0, -0.5, -1.0, 0.75, 1.0, -0.5, 0.5, -0.5, 0.5, -0.5, -0.75, 0.75, -1.0, -0.75, 0.5, -0.25, 1.0, 0.25, 0.75, 0.5, -0.25, -1.0, -0.5, -0.75, -0.5, -1.0, 0.25, -0.25, -0.75, -0.75, 0.0, 0.5, 0.25, 0.0, 0.75, -1.0, -1.0, -0.25, 0.5, 0.0, -0.75, 0.5, 1.0, 0.25, -0.5, 0.0, 0.0, ]);
    
    
    
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
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([0.5, -0.25, -0.5, -0.75, 0.75, 0.75, 0.0, -1.0, 0.5, 0.5, 1.0, -0.25, -0.5, 0.0, 0.25, 1.0, 0.25, 0.25, -0.75, 0.75, 1.0, 1.0, 0.75, 0.5, -0.75, -1.0, -0.5, -0.25, 0.0, 0.25, -0.5, -1.0, -0.75, 1.0, -0.25, 0.5, -0.75, 0.75, 1.0, -0.25, 0.75, 0.5, -1.0, 0.25, 0.25, 1.0, -0.5, 1.0, -1.0, 0.25, -0.75, 0.0, -0.75, 1.0, 1.0, -0.75, -0.5, -1.0, -1.0, -1.0, -0.5, 0.25, -0.5, -0.5, -0.75, -0.75, -0.5, -0.25, 0.75, 0.75, 0.75, 1.0, 0.25, 0.75, -0.75, -0.75, 0.25, -0.25, 0.5, 0.25, 0.5, 0.75, -0.25, 0.75, -1.0, 1.0, -0.25, 0.25, 0.25, 0.5, 0.5, -1.0, 1.0, -0.75, -1.0, -0.5, 0.25, -0.25, 0.5, 0.0, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array4 = new Float32Array([-0.5, 0.75, -1.0, 1.0, 0.5, -0.25, -0.25, -0.75, 0.25, -0.75, -0.25, -1.0, 0.5, -0.75, 0.0, 0.5, 0.25, -0.75, -0.25, 0.75, 0.5, 0.5, -0.5, 0.75, 1.0, -0.25, -0.5, 0.0, 0.75, -0.25, -0.5, -0.75, 0.5, -0.5, 0.0, 0.0, -0.25, -0.5, -0.75, -0.75, -0.25, -0.75, -1.0, 1.0, 0.25, 0.75, 0.75, 0.25, -0.5, 1.0, -0.25, -0.5, 0.25, -0.75, 0.75, 0.25, -0.5, 0.5, -1.0, -0.5, -1.0, 0.25, -1.0, 0.75, 0.0, 1.0, 0.0, 0.75, 0.5, -0.5, 0.75, 0.5, 1.0, -1.0, 0.25, -1.0, -0.25, 0.0, 0.75, -0.75, 0.0, -0.5, -1.0, -0.25, 1.0, 0.5, -0.5, 0.75, 0.25, 0.25, -0.75, 1.0, 0.5, -0.5, -0.25, -0.25, -0.75, 0.25, -1.0, 0.0, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    texture000.destroy();
    query001.destroy()
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
    
    
    command_encoder000.insertDebugMarker("mymarker");
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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    query000.destroy()
    
    command_encoder000.insertDebugMarker("mymarker");
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32uint",
        dimension: "2d"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture001.destroy();
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.insertDebugMarker("mymarker");
    device00.pushErrorScope("validation");
    
    command_encoder000.popDebugGroup()
    const array5 = new Float32Array([0.0, -0.75, 0.25, 0.25, 1.0, -0.75, -0.5, -0.75, -0.25, -0.25, 0.0, 0.75, -0.75, 1.0, -0.25, 0.5, -0.5, 1.0, 0.0, -0.75, 0.25, -1.0, -0.5, -1.0, -0.25, 0.25, 0.75, -0.5, 0.5, -0.5, 0.75, 0.5, 0.0, -1.0, 1.0, 0.5, 0.75, -1.0, -1.0, -0.5, 0.75, -0.75, 0.0, 0.0, 0.0, 0.5, 0.25, -0.5, -0.25, 0.75, 1.0, -0.25, 0.5, -0.5, 0.0, -0.25, 0.75, 0.0, 0.5, 0.0, -0.5, 0.0, -0.25, 0.25, 0.25, 0.25, 1.0, -0.75, -0.25, 0.0, -1.0, 0.75, -0.25, 0.75, 0.75, 1.0, 0.75, 0.25, -0.25, -0.75, -0.5, 0.0, 0.25, -0.25, -1.0, -0.5, -0.5, -0.75, -0.5, -0.5, -0.5, 0.25, -1.0, 0.0, 0.0, 0.0, -1.0, 0.75, -1.0, 0.0, ]);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    command_encoder000.pushDebugGroup("mygroupmarker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device20.pushErrorScope("internal");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
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
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    
    device10.pushErrorScope("out-of-memory");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    texture002.destroy();
    texture003.destroy();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    command_encoder001.clearBuffer(buffer001);
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query200.destroy()
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer100 = command_encoder100.finish();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    query200.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    command_encoder001.clearBuffer(buffer001);
    query100.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    device00.queue.writeTexture({ texture: texture004 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    query000.destroy()
    command_encoder001.clearBuffer(buffer001);
    texture004.destroy();
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    command_encoder001.popDebugGroup()
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const array6 = new Float32Array([0.5, 0.75, 0.5, 0.0, -0.25, 0.25, -0.5, -0.5, 0.25, -0.5, 0.0, 0.75, 0.0, 0.5, 1.0, 0.0, 0.5, 0.0, 1.0, 0.75, 0.5, -0.75, 0.75, 0.25, 1.0, 0.0, -0.25, -0.75, 0.5, 1.0, -0.25, -0.5, -0.75, 0.25, 1.0, 0.0, 0.0, 1.0, 0.25, 0.5, -1.0, 0.25, -0.75, -0.5, -1.0, -0.25, 0.0, -0.25, 0.25, 0.5, -0.5, -0.25, 0.25, 0.25, 0.0, 0.75, 1.0, 0.0, -1.0, -0.25, -0.25, -1.0, -0.5, -1.0, -0.75, -0.5, 0.0, 1.0, 0.75, 0.75, 0.5, -0.75, 0.75, -1.0, -0.25, 1.0, 0.25, 0.0, -0.5, 1.0, -1.0, -0.25, 0.25, -1.0, 1.0, -0.5, 0.5, 0.25, 0.75, -1.0, 0.0, -0.75, -1.0, 1.0, -0.5, 0.5, 0.5, -0.5, 0.25, -0.5, ]);
    
    
    
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.pushErrorScope("out-of-memory");
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder300.insertDebugMarker("mymarker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8sint",
        dimension: "2d"
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    command_encoder300.insertDebugMarker("mymarker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query002.destroy()
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_buffer101 = command_encoder101.finish();
    
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("validation");
    command_encoder300.popDebugGroup()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    query001.destroy()
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    query002.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    const command_buffer300 = command_encoder300.finish();
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    compute_pass_encoder2000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const array7 = new Float32Array([0.0, 1.0, 1.0, -0.75, 1.0, -0.25, -0.25, 0.25, -1.0, 0.0, -1.0, 1.0, 1.0, -0.25, 0.75, -1.0, -0.5, 1.0, -0.75, 0.25, -0.5, 0.75, -1.0, 0.0, 0.5, 0.0, 1.0, -0.5, 0.25, -1.0, 0.25, -1.0, -0.75, -0.5, 0.25, -0.25, 1.0, 0.0, 0.5, 0.0, 0.25, 0.75, 0.5, 1.0, -1.0, -0.5, -1.0, -0.5, 0.5, -0.75, -0.5, 0.0, 0.25, 1.0, -0.25, -0.75, -0.75, 1.0, 0.25, 0.5, 0.5, 0.5, 0.0, 0.75, 0.5, 0.5, -0.25, 1.0, -1.0, 0.75, 0.0, 0.5, 0.75, -1.0, 0.25, -0.5, 0.25, 0.75, 0.25, 0.0, 1.0, 0.75, -1.0, 1.0, 0.5, -0.75, 0.25, 1.0, 0.0, -0.5, 0.75, 0.0, -0.75, -1.0, -0.25, -0.25, 0.0, 1.0, -0.25, 0.25, ]);
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    const query300 = device30.createQuerySet({
        label: "query300",
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
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder0000.popDebugGroup()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    query202.destroy()
    query002.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const array8 = new Float32Array([0.75, -0.5, 0.75, 0.25, -0.75, -0.75, 0.0, -0.75, -0.75, 0.0, -0.75, -0.75, 0.0, -0.5, 0.25, -1.0, 0.0, -0.25, -0.5, -0.5, 0.0, 0.0, 0.0, -0.25, -0.75, -1.0, 1.0, -0.25, -0.25, 0.5, 0.25, 1.0, 0.75, 0.25, -0.5, -0.25, -1.0, -1.0, 0.5, -0.5, 0.0, -1.0, -0.25, -0.5, 0.25, -1.0, 1.0, 0.25, 0.5, 0.5, -1.0, 0.25, -0.5, 0.5, 0.25, 1.0, 0.25, -0.25, -0.25, 0.0, 0.0, 1.0, 0.0, 0.25, 1.0, 0.5, -1.0, 0.5, 0.5, -1.0, 0.75, 0.0, 0.25, 1.0, 0.75, 0.0, 0.75, 0.5, 0.75, 0.0, 0.25, 0.5, -0.5, -0.25, 0.0, 0.5, -1.0, -0.5, -0.5, 0.5, -0.25, 1.0, -0.25, 0.75, -0.5, 1.0, -1.0, 1.0, -0.75, 1.0, ]);
    query001.destroy()
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    query203.destroy()
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    query001.destroy()
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer004, 0, array6, 0, array6.length);
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture400.destroy();
    device30.queue.submit([command_buffer300, ]);
    device20.pushErrorScope("internal");
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const array9 = new Float32Array([0.0, -0.25, 0.5, -0.25, -0.25, -0.25, 1.0, 0.75, 1.0, -1.0, 1.0, 0.75, -1.0, -0.25, 0.0, 0.0, 1.0, -0.25, 0.0, -0.25, -1.0, 0.25, -1.0, 0.0, -0.5, -0.75, 0.0, -1.0, 1.0, 0.75, 1.0, -0.75, -0.5, -0.25, 0.0, 0.75, 0.25, 0.75, -0.75, -0.5, -0.5, -0.5, 0.5, 0.75, 0.25, 1.0, 0.0, -0.5, -0.75, 0.5, 1.0, -0.75, 0.75, -0.75, 0.5, -0.75, -1.0, 0.25, 0.5, -0.25, 0.75, -0.75, 0.5, -1.0, -0.5, 0.75, -0.25, 0.0, 0.25, 0.0, 0.25, -0.5, 0.75, -0.5, 1.0, 0.25, 1.0, 1.0, 1.0, 0.75, -0.75, 0.75, -0.5, -0.75, -0.75, 0.5, -0.25, 0.0, -0.25, -1.0, -1.0, -0.25, 0.5, 0.25, 0.25, -0.25, 0.0, 0.0, -1.0, -0.5, ]);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const command_buffer004 = command_encoder004.finish();
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.popDebugGroup()
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
    
    query202.destroy()
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder2010.popDebugGroup()
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device00.queue.writeBuffer(buffer004, 0, array9, 0, array9.length);
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer007, 0, array9, 0, array9.length);
    compute_pass_encoder0010.insertDebugMarker("marker")
    query003.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    device00.queue.writeBuffer(buffer007, 0, array7, 0, array7.length);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query202.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query203.destroy()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
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
    
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query203.destroy()
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    
    
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer007, 0, array6, 0, array6.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout004]
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device00.queue.writeBuffer(buffer007, 0, array5, 0, array5.length);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    device40.pushErrorScope("internal");
    compute_pass_encoder2010.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer007, 0, array6, 0, array6.length);
    device10.pushErrorScope("validation");
    device00.queue.writeBuffer(buffer007, 0, array5, 0, array5.length);
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32uint",
        dimension: "2d"
    });
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer007, 0, array4, 0, array4.length);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    query203.destroy()
    
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
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
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer001, 0, array9, 0, array9.length);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    compute_pass_encoder0020.popDebugGroup()
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder005.insertDebugMarker("mymarker");
    query201.destroy()
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    texture402.destroy();
    query202.destroy()
    compute_pass_encoder4000.insertDebugMarker("marker")
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    query202.destroy()
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    command_encoder005.insertDebugMarker("mymarker");
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0050,
            },
        ],
        occlusionQuerySet: query004
    });
    texture401.destroy();
    query003.destroy()
    query000.destroy()
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    device00.queue.writeBuffer(buffer004, 0, array6, 0, array6.length);
    query302.destroy()
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8sint",
        dimension: "2d"
    });
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    render_pass_encoder0050.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    render_pass_encoder0050.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    query300.destroy()
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
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    texture100.destroy();
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout004]
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    query001.destroy()
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer007, 0, array8, 0, array8.length);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0050.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    query004.destroy()
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query003.destroy()
    device00.queue.writeBuffer(buffer007, 0, array4, 0, array4.length);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder006.clearBuffer(buffer007);
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    command_encoder102.pushDebugGroup("mygroupmarker")
    command_encoder006.pushDebugGroup("mygroupmarker")
    command_encoder402.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    device00.queue.writeBuffer(buffer007, 0, array8, 0, array8.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout006]
    });
    command_encoder006.copyTextureToBuffer(
        {
            texture: texture005
        },
        {
            buffer: buffer004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    
    query302.destroy()
    command_encoder402.insertDebugMarker("mymarker");
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.writeBuffer(buffer001, 0, array8, 0, array8.length);
    compute_pass_encoder4010.insertDebugMarker("marker")
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    command_encoder102.popDebugGroup()
    command_encoder006.popDebugGroup()
    const command_buffer102 = command_encoder102.finish();
    compute_pass_encoder3010.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer402 = command_encoder402.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2010.popDebugGroup()
    const command_buffer006 = command_encoder006.finish();
    device10.queue.submit([command_buffer102, ]);
    device40.queue.submit([command_buffer402, ]);
    device00.queue.submit([command_buffer006, ]);
}