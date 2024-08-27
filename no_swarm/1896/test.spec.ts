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
    
    const array0 = new Float32Array([1.0, -0.25, -0.25, -0.25, -0.5, -1.0, -0.25, 0.25, -0.25, 1.0, -0.75, -0.75, 1.0, -0.75, 1.0, 0.25, 0.5, 0.75, -0.75, 0.75, 0.25, 1.0, 1.0, -1.0, 0.0, 0.5, 1.0, 0.75, 0.25, -0.75, 0.5, -1.0, -0.5, 0.25, 1.0, -0.75, 0.5, 0.25, -0.75, -0.25, -1.0, -1.0, -0.75, 0.75, -0.75, -0.75, -0.75, 1.0, 0.25, 0.75, -0.25, -0.75, 0.25, 1.0, 0.25, -1.0, 0.25, -1.0, -0.25, -0.25, -0.5, 0.25, 0.75, 0.75, -0.5, 0.75, -0.5, -0.75, 0.25, 0.0, 0.5, -0.5, -1.0, -0.75, -0.5, -1.0, 0.25, 1.0, -1.0, -0.5, 0.0, 0.75, -0.25, 0.75, -1.0, 0.0, -0.5, 0.25, 0.75, -1.0, -1.0, 0.75, -1.0, -0.5, -0.5, -0.75, -0.5, 0.25, -0.75, 0.25, ]);
    
    const array1 = new Float32Array([-1.0, 1.0, -0.5, 0.75, 0.25, 0.0, 0.0, 0.0, 0.75, 1.0, 0.75, 0.0, -0.75, 0.25, 0.0, -0.5, 1.0, -0.5, -0.25, -1.0, -0.75, -1.0, -0.25, 0.0, 0.75, 1.0, 0.0, 0.0, 1.0, -1.0, -0.25, -0.25, 0.25, -0.25, 0.25, 0.5, 0.5, -0.75, -0.75, 0.0, 1.0, -0.5, 0.0, 0.25, 0.5, -1.0, 0.75, -0.75, -0.75, 0.5, 0.5, -1.0, 0.75, 0.0, 0.25, 0.0, 0.0, 0.0, 0.5, 0.75, -0.75, -0.5, 1.0, -1.0, 0.0, -1.0, -0.75, -0.5, -0.5, 0.0, 0.5, -1.0, -0.75, 0.25, 0.0, -0.5, -0.5, -0.25, 0.25, -0.5, -0.75, 0.25, -1.0, -1.0, 0.0, 0.25, 0.5, 0.25, 0.5, 1.0, 0.5, 0.0, -1.0, -0.75, -0.25, -0.5, 0.25, 0.75, 0.5, 0.75, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const array2 = new Float32Array([-0.25, 0.5, -1.0, -1.0, 1.0, 0.75, 0.0, -0.75, -1.0, -0.25, -0.25, -0.5, 0.75, -0.75, -1.0, -1.0, -0.75, 1.0, -0.25, 0.75, 0.5, -0.25, -0.5, 0.75, 0.75, -0.25, -0.75, 1.0, 0.5, -0.5, 0.25, -0.75, -0.75, 0.75, -0.25, -1.0, 0.25, -0.5, -0.75, 0.75, 0.0, -0.75, 1.0, 0.0, -0.5, 0.5, -1.0, -0.5, 0.0, -0.25, 1.0, -1.0, 0.5, -1.0, -0.5, 0.75, -0.25, 0.0, 0.5, -0.25, -0.75, -1.0, 0.75, -0.75, 0.5, -0.25, -1.0, -0.75, 1.0, 0.0, 0.0, -0.75, -0.5, -0.75, -0.25, -1.0, 0.75, 0.25, 0.5, 0.25, 0.25, 0.25, 1.0, 1.0, 0.0, 0.25, 0.75, 0.5, 1.0, -0.5, -0.25, 0.0, 0.75, -0.75, -1.0, -0.75, 0.5, -0.25, 0.25, -0.25, ]);
    const array3 = new Float32Array([0.0, -0.5, 0.5, -1.0, -0.75, 0.0, 0.25, 1.0, 0.5, -0.25, -0.5, 0.25, 1.0, 0.25, 0.5, 0.25, -0.25, 0.5, 0.0, -0.25, 0.75, 0.5, 0.5, 0.5, -0.5, 0.25, -0.5, 0.25, -0.25, -0.5, -1.0, 0.75, 0.75, 0.0, -0.25, 1.0, -1.0, -1.0, -0.5, -0.5, 1.0, -0.75, -0.75, 1.0, 0.25, 0.25, -1.0, -0.5, -0.25, -1.0, -1.0, -0.75, -0.25, 0.25, -0.5, 0.0, 0.75, 0.75, -0.25, 0.25, -0.25, -0.5, 0.75, -0.75, 0.5, -0.5, -0.5, -0.25, -0.5, 0.0, 0.25, -1.0, -0.75, 0.75, 0.0, 1.0, -0.5, -1.0, 0.0, -0.5, 0.5, 0.25, -0.5, 0.5, 0.25, -0.75, 1.0, 0.5, -0.75, 0.25, 0.0, 0.0, 0.5, -1.0, 1.0, -0.75, -1.0, -0.25, 0.75, 0.0, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder000.insertDebugMarker("mymarker");
    device00.pushErrorScope("validation");
    
    device10.destroy();
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.destroy();
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8unorm",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.pushDebugGroup("mygroupmarker")
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture000.destroy();
    const array4 = new Float32Array([-0.5, -0.25, 0.75, -0.5, 0.0, -0.75, 0.0, 0.5, 0.0, -0.75, -0.25, -0.5, 0.25, -0.75, 1.0, -0.5, -0.5, 0.25, 0.0, -1.0, -0.5, 0.5, -0.5, 1.0, 1.0, -1.0, 0.25, 0.5, 1.0, 0.75, -1.0, -0.25, -1.0, -0.25, 1.0, 0.0, -0.75, -0.75, -1.0, 0.25, -1.0, -1.0, 0.25, 0.75, -0.5, -0.25, 1.0, 0.25, 0.25, 0.0, 0.5, -0.5, -1.0, -1.0, 1.0, 0.5, 0.75, -1.0, -0.25, -1.0, 0.75, -0.5, -1.0, -0.5, 1.0, -0.25, 0.25, 0.5, -0.5, 0.75, 0.0, 0.0, -1.0, 0.75, -0.5, 0.75, 0.0, 0.25, 0.5, 0.25, 0.0, -0.75, 0.0, -0.75, -1.0, 1.0, -0.5, -0.5, 0.0, 0.25, 0.75, 0.75, 0.25, 0.25, 0.25, 0.75, -0.25, 0.75, 0.25, 1.0, ]);
    command_encoder001.insertDebugMarker("mymarker");
    buffer002.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder001.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    buffer000.destroy()
    
    device00.pushErrorScope("internal");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    command_encoder002.insertDebugMarker("mymarker");
    
    
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder001.popDebugGroup();
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    buffer001.destroy()
    const command_buffer003 = command_encoder003.finish();
    
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    command_encoder000.popDebugGroup()
    
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
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    compute_pass_encoder0010.popDebugGroup()
    command_encoder004.copyBufferToBuffer(
        buffer000,
        0,
        buffer003,
        0,
        400
    );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    query000.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    compute_pass_encoder0000.insertDebugMarker("marker")
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder0011.insertDebugMarker("marker")
    compute_pass_encoder0011.insertDebugMarker("marker")
    
    const command_buffer004 = command_encoder004.finish();
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    compute_pass_encoder0011.insertDebugMarker("marker")
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const array5 = new Float32Array([0.75, 1.0, 0.25, 1.0, 1.0, 0.75, -0.75, 0.0, -0.75, 0.25, 0.0, 0.25, -0.75, -0.25, -0.25, 0.0, 0.0, 0.0, 0.25, 0.75, 0.0, 1.0, -0.75, 0.5, 1.0, 0.0, 1.0, 1.0, -1.0, -0.5, 0.75, 1.0, 0.25, -1.0, -1.0, 0.75, -0.5, 0.25, -0.25, 0.75, 0.75, 1.0, 0.0, 0.75, -0.5, 0.75, -0.25, 1.0, 0.75, -0.25, -0.25, 0.0, -0.25, 0.25, 1.0, 0.0, 0.75, -1.0, -0.25, -0.75, 0.25, -0.25, 1.0, 1.0, -0.75, 1.0, 0.25, 0.0, 0.75, 0.25, 0.5, 1.0, -0.5, 0.5, -1.0, -0.25, 1.0, -0.25, -0.75, -0.25, -1.0, -0.25, -1.0, -1.0, 0.5, 0.5, 0.25, 0.5, -0.5, -1.0, 0.25, 1.0, -1.0, 0.25, -0.5, -1.0, 0.75, 0.75, -1.0, 0.75, ]);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
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
    
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    command_encoder005.copyBufferToBuffer(
        buffer002,
        0,
        buffer004,
        0,
        400
    );
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    compute_pass_encoder0060.insertDebugMarker("marker")
    render_bundle_encoder001.popDebugGroup();
    
    buffer004.destroy()
    query001.destroy()
    command_encoder000.insertDebugMarker("mymarker");
    query001.destroy()
    
    command_encoder005.copyBufferToBuffer(
        buffer003,
        0,
        buffer003,
        0,
        400
    );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array6 = new Float32Array([1.0, -0.5, -0.25, -0.5, -1.0, 1.0, -0.25, -1.0, -0.75, -0.75, -1.0, 1.0, -1.0, 1.0, -0.25, -0.5, 0.0, -0.5, 0.25, 0.5, 0.75, 0.5, -0.5, -0.25, -0.5, -1.0, -0.25, -0.75, 0.75, -0.5, 0.75, 0.5, 0.75, 0.75, -0.25, 0.75, 1.0, 1.0, -0.5, -0.5, 0.5, -0.25, 0.5, 0.75, 0.5, -0.5, 0.5, 0.5, -0.75, 0.75, -0.25, -1.0, -0.5, -0.25, -0.75, 0.5, -1.0, 1.0, 1.0, 0.0, 0.0, 0.75, -1.0, -0.25, -0.75, -1.0, 1.0, -0.5, 0.0, -0.5, 1.0, -0.25, 0.0, 0.0, -0.5, -1.0, -0.75, 1.0, -0.25, -0.5, -0.75, 0.75, 1.0, -0.25, 0.0, 0.25, -1.0, -0.25, 1.0, -0.25, -0.75, 0.0, 0.0, 0.5, 0.75, 0.0, -0.5, 0.25, 0.25, 0.75, ]);
    device00.queue.submit([command_buffer003, ]);
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    buffer003.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder005.pushDebugGroup("mygroupmarker")
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    query000.destroy()
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder005.clearBuffer(buffer004);
    device00.pushErrorScope("out-of-memory");
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    device30.pushErrorScope("internal");
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder006.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0020.insertDebugMarker("marker")
    
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    query000.destroy()
    
    
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.popDebugGroup();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture300.destroy();
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder300.popDebugGroup();
    query300.destroy()
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    buffer301.destroy()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    buffer005.destroy()
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    
    query301.destroy()
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    buffer300.destroy()
    
    render_bundle_encoder002.setPipeline(render_pipeline001);
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    
    device30.destroy();
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder000.popDebugGroup();
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.popDebugGroup();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8uint",
        dimension: "2d"
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group000);
    
    
    compute_pass_encoder0050.insertDebugMarker("marker")
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    render_bundle_encoder000.setPipeline(render_pipeline002);
    
    texture000.destroy();
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0020.popDebugGroup()
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    command_encoder008.pushDebugGroup("mygroupmarker")
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    buffer004.destroy()
    buffer004.destroy()
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const command_buffer002 = command_encoder002.finish();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder0070.popDebugGroup()
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    query000.destroy()
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8unorm",
        dimension: "2d"
    });
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    command_encoder008.copyBufferToBuffer(
        buffer007,
        0,
        buffer001,
        0,
        400
    );
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0011.setPipeline(compute_pipeline001);
    command_encoder008.copyBufferToBuffer(
        buffer006,
        0,
        buffer006,
        0,
        400
    );
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    compute_pass_encoder0070.setPipeline(compute_pipeline000);
    compute_pass_encoder0011.insertDebugMarker("marker")
    render_pass_encoder0080.pushDebugGroup("group_marker");
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group001);
    command_encoder006.copyTextureToBuffer(
        {
            texture: texture003
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
    query001.destroy()
    render_pass_encoder0080.executeBundles([render_bundle_encoder001, ])
    compute_pass_encoder0060.insertDebugMarker("marker")
    compute_pass_encoder0060.insertDebugMarker("marker")
    buffer008.destroy()
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    texture001.destroy();
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    compute_pass_encoder0070.insertDebugMarker("marker")
    compute_pass_encoder0050.setPipeline(compute_pipeline003);
    command_encoder008.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    
    
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder0081 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0081",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group002);
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_buffer009 = command_encoder009.finish();
    render_bundle_encoder003.setPipeline(render_pipeline003);
    render_pass_encoder0080.setPipeline(render_pipeline000);
    compute_pass_encoder0060.setPipeline(compute_pipeline000);
    device00.queue.writeBuffer(buffer009, 0, array1, 0, array1.length);
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    
    render_pass_encoder0070.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    compute_pass_encoder0001.setPipeline(compute_pipeline003);
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    device00.queue.writeBuffer(buffer0012, 0, array5, 0, array5.length);
    
    render_pass_encoder0081.setPipeline(render_pipeline002);
    
    buffer006.destroy()
    render_pass_encoder0070.setPipeline(render_pipeline001);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query002.destroy()
    texture003.destroy();
    query000.destroy()
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
    
    buffer009.destroy()
    render_pass_encoder0070.setStencilReference(1);
    device00.queue.writeBuffer(buffer0012, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer0012, 0, array0, 0, array0.length);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0081.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query000
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0000.setPipeline(compute_pipeline004);
    render_bundle_encoder001.setPipeline(render_pipeline002);
    render_pass_encoder0000.insertDebugMarker("marker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    render_pass_encoder0081.insertDebugMarker("marker");
    render_pass_encoder0000.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_bundle_encoder003.setBindGroup(0, bind_group003);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    buffer0013.destroy()
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
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_bundle_encoder003.setVertexBuffer(0, buffer001);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    render_pass_encoder0081.insertDebugMarker("marker");
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0070.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
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
    command_encoder008.resolveQuerySet(
        query002,
        0,
        32,
        buffer0011,
        0
    )
    device00.queue.writeBuffer(buffer0013, 0, array4, 0, array4.length);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer0011.destroy()
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout005]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder007.clearBuffer(buffer0012);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder0070.setStencilReference(1);
    render_bundle_encoder003.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0011.setPipeline(render_pipeline002);
    command_encoder200.insertDebugMarker("mymarker");
    
    command_encoder006.clearBuffer(buffer006);
    const command_buffer200 = command_encoder200.finish();
    buffer0010.destroy()
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    render_bundle_encoder003.drawIndirect(buffer000, 0);
    compute_pass_encoder0020.insertDebugMarker("marker")
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    query002.destroy()
    
    const render_pass_encoder00100 = command_encoder0010.beginRenderPass({
        label: "render_pass_encoder00100",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer200.destroy()
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0015, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0015, 0);
    render_pass_encoder0070.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    compute_pass_encoder0000.popDebugGroup()
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    device00.queue.writeBuffer(buffer0012, 0, array0, 0, array0.length);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_pass_encoder0070.setStencilReference(1);
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    render_pass_encoder0070.setStencilReference(1);
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group004);
    command_encoder006.clearBuffer(buffer0012);
    command_encoder0010.copyBufferToBuffer(
        buffer0016,
        0,
        buffer0012,
        0,
        400
    );
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_pass_encoder0010.setPipeline(render_pipeline002);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    compute_pass_encoder0050.end();
    command_encoder000.clearBuffer(buffer0012);
    render_pass_encoder0081.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture005 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder0010.clearBuffer(buffer0011);
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group005);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query003.destroy()
    render_pass_encoder0000.setPipeline(render_pipeline004);
    
    device00.queue.writeBuffer(buffer0012, 0, array3, 0, array3.length);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query001
    });
    command_encoder0010.copyBufferToBuffer(
        buffer0017,
        0,
        buffer005,
        0,
        400
    );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group006);
    
    device00.queue.writeBuffer(buffer0015, 0, array0, 0, array0.length);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    
    render_bundle_encoder002.setVertexBuffer(0, buffer001);
    buffer0018.destroy()
    
    render_pass_encoder0050.setPipeline(render_pipeline003);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    buffer0020.destroy()
    render_pass_encoder0081.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_bundle_encoder002.draw(3);
    command_encoder007.copyBufferToBuffer(
        buffer0016,
        0,
        buffer0015,
        0,
        400
    );
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture005
        },
        {
            buffer: buffer007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    query001.destroy()
    
    render_bundle_encoder000.setVertexBuffer(0, buffer000);
    render_bundle_encoder003.insertDebugMarker("marker");
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    render_pass_encoder0050.insertDebugMarker("marker");
    compute_pass_encoder0060.insertDebugMarker("marker")
    query000.destroy()
    device00.queue.writeBuffer(buffer0015, 0, array2, 0, array2.length);
    command_encoder000.copyTextureToBuffer(
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
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const array7 = new Float32Array([-1.0, 0.5, 1.0, 0.75, 0.5, 0.5, -0.75, 0.5, 0.5, 0.25, 1.0, 0.25, -0.5, 0.0, 0.5, 0.75, 0.0, -0.5, -0.5, -0.25, 0.0, 0.75, 0.75, 1.0, -0.75, -0.75, -0.75, -0.5, 0.25, 1.0, -1.0, 0.25, 0.0, -1.0, 0.25, -1.0, 1.0, -0.25, 0.25, -0.75, -0.5, 0.0, 0.0, 1.0, 1.0, -0.5, 0.25, 0.5, 0.25, 0.5, 0.25, -0.75, -0.25, 1.0, 0.5, 0.0, 1.0, 0.25, 0.0, 0.25, 0.25, 0.5, 1.0, 0.25, -0.75, 0.75, 0.0, -1.0, -0.25, 0.5, 0.5, -0.5, -0.25, 0.0, 0.75, -0.5, -1.0, 0.25, 0.75, -0.75, 1.0, 1.0, 1.0, 0.5, -1.0, -0.25, -0.25, -0.75, -1.0, -1.0, 0.75, -0.25, -1.0, 0.75, -0.25, -0.75, 0.25, 0.75, 0.75, 0.25, ]);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder0070.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0060.insertDebugMarker("marker")
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group007);
    query000.destroy()
    const array8 = new Float32Array([-1.0, -0.25, -0.25, 0.5, 1.0, -0.75, 0.75, 0.5, 0.25, 0.0, -0.75, -0.25, 0.75, -0.75, -0.75, -0.25, -0.75, 0.0, -0.5, 0.75, -0.5, 0.0, -0.5, -0.5, 0.5, 0.75, -1.0, 0.75, -0.75, 1.0, 0.5, -1.0, 0.0, 0.25, -0.5, -1.0, 1.0, 0.75, -0.5, -1.0, 0.0, 0.0, -0.5, 0.5, -0.75, 0.25, 0.25, 1.0, 0.5, 0.75, 0.5, 1.0, 0.75, 0.0, 0.25, -0.25, -0.5, 0.25, -0.5, 1.0, -0.25, -1.0, 0.75, 1.0, -0.5, -0.5, -1.0, 0.75, 0.0, -0.25, 1.0, -1.0, 0.75, 1.0, -0.25, -0.25, -1.0, -1.0, 1.0, 0.75, 0.5, 1.0, 0.25, -0.75, 0.75, -0.25, -0.5, -0.5, -0.5, 0.25, -1.0, -0.25, 1.0, 0.5, -1.0, -1.0, -0.5, 1.0, -0.25, -0.5, ]);
    render_pass_encoder0011.insertDebugMarker("marker");
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    command_encoder0010.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder000.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder00100.setPipeline(render_pipeline005);
    compute_pass_encoder0020.insertDebugMarker("marker")
    buffer0023.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder000.drawIndexedIndirect(buffer006, 0);
    
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
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
    texture003.destroy();
    render_bundle_encoder001.popDebugGroup();
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0025,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group008);
    device00.queue.writeBuffer(buffer0012, 0, array4, 0, array4.length);
    render_bundle_encoder000.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0070.popDebugGroup();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0026, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0026, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.setVertexBuffer(0, buffer0021);
    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0028,
                },
            },
        ],
    });

    compute_pass_encoder0070.setBindGroup(0, bind_group009);
    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0030,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group0010);
    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0032,
                },
            },
        ],
    });

    render_pass_encoder0080.setBindGroup(0, bind_group0011);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0000.setVertexBuffer(0, buffer0016);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    render_pass_encoder0080.setVertexBuffer(0, buffer0021);
    device20.queue.submit([]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0033, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0033, 0);
    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0035,
                },
            },
        ],
    });

    render_pass_encoder0081.setBindGroup(0, bind_group0012);
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0037,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0013);
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0038, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer0038, 0);
    render_pass_encoder0081.setVertexBuffer(0, buffer0030);
    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0040,
                },
            },
        ],
    });

    render_pass_encoder0011.setBindGroup(0, bind_group0014);
    render_pass_encoder0011.setVertexBuffer(0, buffer0018);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0081.drawIndirect(buffer0015, 0);
    compute_pass_encoder0070.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer004, 0);
    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0042,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0015);
    render_pass_encoder0011.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0011.end();
    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0044,
                },
            },
        ],
    });

    render_pass_encoder0070.setBindGroup(0, bind_group0016);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0045, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0045, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0020, 0);
    compute_pass_encoder0060.end();
    compute_pass_encoder0011.popDebugGroup()
    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0047,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group0017);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0050.setVertexBuffer(0, buffer000);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0070.setVertexBuffer(0, buffer0030);
    compute_pass_encoder0010.end();
    render_pass_encoder0000.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0081.end();
    render_pass_encoder0011.end();
    compute_pass_encoder0011.end();
    render_pass_encoder0070.drawIndirect(buffer0012, 0);
    command_encoder006.popDebugGroup()
    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: render_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0049,
                },
            },
        ],
    });

    render_pass_encoder00100.setBindGroup(0, bind_group0018);
    render_pass_encoder0050.drawIndirect(buffer0010, 0);
    compute_pass_encoder0070.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0040, 0);
    render_pass_encoder0081.setIndexBuffer(buffer0012, "uint16");
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0000.drawIndirect(buffer0033, 0);
    compute_pass_encoder0001.popDebugGroup()
    const command_buffer006 = command_encoder006.finish();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0081.drawIndirect(buffer0026, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0000.drawIndirect(buffer0033, 0);
    const command_buffer0010 = command_encoder0010.finish();
    render_pass_encoder0081.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0038, 0);
    render_pass_encoder0081.drawIndirect(buffer0019, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0011.end();
    render_pass_encoder0070.drawIndirect(buffer0010, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0081.drawIndexed(3);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0000.end();
    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0051,
                },
            },
        ],
    });

    compute_pass_encoder0070.setBindGroup(0, bind_group0019);
    render_pass_encoder0070.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0015, 0);
    render_pass_encoder00100.setVertexBuffer(0, buffer0023);
    compute_pass_encoder0020.end();
    device00.queue.submit([command_buffer0010, ]);
    render_pass_encoder0081.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0050.end();
    command_encoder001.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0033, 0);
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    render_pass_encoder0081.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder00100.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder00100.drawIndirect(buffer0033, 0);
    render_pass_encoder0080.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0081.drawIndirect(buffer0017, 0);
    render_pass_encoder00100.drawIndirect(buffer0045, 0);
    render_pass_encoder00100.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder00100.end();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0050.drawIndirect(buffer0038, 0);
    const command_buffer007 = command_encoder007.finish();
    render_pass_encoder0070.end();
    render_pass_encoder0011.drawIndirect(buffer0051, 0);
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer006, command_buffer007, ]);
    render_pass_encoder0081.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0011.end();
    compute_pass_encoder0011.popDebugGroup()
    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0053,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0020);
    command_encoder008.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer002, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0080.drawIndexed(3);
    compute_pass_encoder0050.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0060.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0054, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0054, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0013, "uint16");
    device20.queue.submit([command_buffer200, ]);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0055, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0055, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0055, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder00100.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0081.drawIndexed(3);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0015, 0);
    command_encoder005.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0080.drawIndirect(buffer0045, 0);
    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0057,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0021);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0058, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0058, 0);
    render_pass_encoder0080.drawIndirect(buffer0055, 0);
    const command_buffer001 = command_encoder001.finish();
    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0060,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0022);
    render_pass_encoder0081.endOcclusionQuery()
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    device20.queue.submit([command_buffer200, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0061, 0);
    render_pass_encoder0080.drawIndirect(buffer0054, 0);
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder0080.drawIndirect(buffer0018, 0);
    compute_pass_encoder0070.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0017, 0);
    device00.queue.submit([command_buffer001, command_buffer006, ]);
    render_pass_encoder0070.drawIndirect(buffer0026, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0062, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0062, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0048, 0);
    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0064,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0023);
    render_pass_encoder0011.drawIndirect(buffer0037, 0);
    render_pass_encoder0000.drawIndirect(buffer0033, 0);
    const command_buffer008 = command_encoder008.finish();
    render_pass_encoder0050.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0080.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer000, 0);
    const command_buffer005 = command_encoder005.finish();
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0065, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer0065, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder00100.drawIndirect(buffer0015, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0066, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0066, 0);
    render_pass_encoder0081.drawIndirect(buffer0066, 0);
    render_pass_encoder00100.drawIndirect(buffer0033, 0);
    compute_pass_encoder0070.popDebugGroup()
    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0068,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0024);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0081.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0000.end();
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0080.drawIndirect(buffer0058, 0);
    compute_pass_encoder0070.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0000.setIndexBuffer(buffer0035, "uint16");
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer0019, 0);
    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0070,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0025);
    render_pass_encoder0050.drawIndirect(buffer0038, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0010.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0036, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0080.drawIndirect(buffer0058, 0);
    render_pass_encoder0010.drawIndirect(buffer005, 0);
    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0072,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0026);
    device00.queue.submit([command_buffer003, ]);
    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0074,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0027);
    render_pass_encoder00100.drawIndirect(buffer0054, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0070.drawIndirect(buffer0074, 0);
    render_pass_encoder0081.drawIndexedIndirect(buffer0069, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0011.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0015, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0050.drawIndirect(buffer0026, 0);
    render_pass_encoder0010.drawIndirect(buffer0065, 0);
    render_pass_encoder0081.drawIndirect(buffer0066, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndirect(buffer0034, 0);
    render_pass_encoder0011.drawIndirect(buffer0052, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0081.drawIndirect(buffer0061, 0);
    render_pass_encoder0050.drawIndirect(buffer0026, 0);
    render_pass_encoder0081.drawIndirect(buffer000, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0053, 0);
    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0076,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0028);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder00100.setIndexBuffer(buffer001, "uint16");
    device20.queue.submit([]);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0077, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0077, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0064, 0);
    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0079,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0029);
    render_pass_encoder0050.end();
    render_pass_encoder00100.drawIndirect(buffer0058, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0080, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0080, 0);
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0081, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer0081, 0);
    render_pass_encoder0010.drawIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer002, command_buffer008, ]);
    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0083,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0030);
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0062, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0084, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0084, 0);
    render_pass_encoder0011.draw(3);
    compute_pass_encoder0070.end();
    render_pass_encoder0011.drawIndirect(buffer0052, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0070.drawIndirect(buffer0081, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0085, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0085, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0080.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0050.drawIndirect(buffer000, 0);
    render_pass_encoder0081.drawIndirect(buffer0058, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0086, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0086, 0);
    render_pass_encoder0080.drawIndirect(buffer0055, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0070.drawIndirect(buffer0078, 0);
    render_pass_encoder0011.end();
    device00.queue.submit([command_buffer006, command_buffer008, ]);
    render_pass_encoder0011.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder0000.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder00100.drawIndirect(buffer0066, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0050.setIndexBuffer(buffer0080, "uint16");
    render_pass_encoder0081.end();
    render_pass_encoder00100.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0011.drawIndirect(buffer0038, 0);
    render_pass_encoder0081.drawIndirect(buffer0024, 0);
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0087, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer0087, 0);
    render_pass_encoder0010.drawIndirect(buffer0033, 0);
    render_pass_encoder0070.drawIndirect(buffer0060, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0050.drawIndirect(buffer0065, 0);
    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0089,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0031);
    render_pass_encoder0000.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0015, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0090, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0090, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder00100.drawIndirect(buffer0080, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0077, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0080, "uint16");
    compute_pass_encoder0060.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0011.drawIndirect(buffer0065, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0010.drawIndirect(buffer0045, 0);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0081.drawIndirect(buffer0018, 0);
    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0092,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0032);
    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0094,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0033);
    render_pass_encoder0081.drawIndexedIndirect(buffer0066, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0070.setIndexBuffer(buffer0091, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0081.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    compute_pass_encoder0001.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0000.setIndexBuffer(buffer0053, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0095 = device00.createBuffer({
        label: "buffer0095",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0095, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0095, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0038, 0);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0011.drawIndirect(buffer000, 0);
    render_pass_encoder0081.endOcclusionQuery()
    render_pass_encoder0070.drawIndirect(buffer0045, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0011.end();
    render_pass_encoder0070.setIndexBuffer(buffer001, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0050.end();
    compute_pass_encoder0020.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0070.drawIndirect(buffer0025, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0090, 0);
    device00.queue.submit([command_buffer005, ]);
    const buffer0096 = device00.createBuffer({
        label: "buffer0096",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0096,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0097,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0034);
    render_pass_encoder0000.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0081.drawIndirect(buffer0080, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0021, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder00100.setIndexBuffer(buffer0089, "uint16");
    render_pass_encoder0081.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer000, 0);
    compute_pass_encoder0001.end();
    compute_pass_encoder0050.end();
    render_pass_encoder0080.drawIndexed(3);
    const buffer0098 = device00.createBuffer({
        label: "buffer0098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0099 = device00.createBuffer({
        label: "buffer0099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0099,
                },
            },
        ],
    });

    compute_pass_encoder0070.setBindGroup(0, bind_group0035);
    render_pass_encoder0010.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder00100.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0070.popDebugGroup()
    render_pass_encoder0070.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder00100.drawIndirect(buffer0033, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0085, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0026, 0);
    render_pass_encoder0070.drawIndirect(buffer0081, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0010.popDebugGroup();
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00100 = device00.createBuffer({
        label: "buffer00100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00100, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00100, 0);
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer004, command_buffer006, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0077, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0010.drawIndirect(buffer0077, 0);
    render_pass_encoder0000.drawIndirect(buffer0065, 0);
    render_pass_encoder0050.drawIndirect(buffer0015, 0);
    render_pass_encoder0080.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0000.drawIndirect(buffer0090, 0);
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0084, 0);
    const buffer00101 = device00.createBuffer({
        label: "buffer00101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00102 = device00.createBuffer({
        label: "buffer00102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00102,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0036);
    render_pass_encoder0000.drawIndirect(buffer00100, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0058, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00103 = device00.createBuffer({
        label: "buffer00103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00103, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00103, 0);
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0000.end();
    render_pass_encoder0080.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0080.setIndexBuffer(buffer003, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0054, 0);
    device40.queue.submit([]);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00104 = device00.createBuffer({
        label: "buffer00104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00104, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00104, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0093, "uint16");
    compute_pass_encoder0050.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00105 = device00.createBuffer({
        label: "buffer00105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00105, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00105, 0);
    render_pass_encoder0070.end();
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer00106 = device00.createBuffer({
        label: "buffer00106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00106, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer00106, 0);
    render_pass_encoder0081.drawIndirect(buffer0026, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00103, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0070.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0080.drawIndirect(buffer0062, 0);
    const buffer00107 = device00.createBuffer({
        label: "buffer00107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00108 = device00.createBuffer({
        label: "buffer00108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0037 = device00.createBindGroup({
        label: "bind_group0037",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00108,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0037);
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0081.drawIndirect(buffer000, 0);
    render_pass_encoder0050.drawIndirect(buffer0062, 0);
    const buffer00109 = device00.createBuffer({
        label: "buffer00109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00110 = device00.createBuffer({
        label: "buffer00110",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0038 = device00.createBindGroup({
        label: "bind_group0038",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00110,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0038);
    render_pass_encoder00100.drawIndirect(buffer0085, 0);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00111 = device00.createBuffer({
        label: "buffer00111",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00111, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00111, 0);
    compute_pass_encoder0000.end();
    device00.queue.submit([command_buffer000, command_buffer008, ]);
    render_pass_encoder0081.drawIndirect(buffer0080, 0);
    render_pass_encoder0081.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00105, 0);
    const buffer00112 = device00.createBuffer({
        label: "buffer00112",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00113 = device00.createBuffer({
        label: "buffer00113",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0039 = device00.createBindGroup({
        label: "bind_group0039",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00112,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00113,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0039);
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer00114 = device00.createBuffer({
        label: "buffer00114",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00114, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer00114, 0);
    render_pass_encoder0080.setIndexBuffer(buffer0083, "uint16");
    render_pass_encoder0070.drawIndirect(buffer000, 0);
    render_pass_encoder0081.drawIndirect(buffer00105, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0084, 0);
    compute_pass_encoder0070.dispatchWorkgroups(100);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0045, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00114, 0);
    const buffer00115 = device00.createBuffer({
        label: "buffer00115",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00116 = device00.createBuffer({
        label: "buffer00116",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0040 = device00.createBindGroup({
        label: "bind_group0040",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00115,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00116,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0040);
    render_pass_encoder0011.drawIndirect(buffer0090, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0091, "uint16");
    compute_pass_encoder0001.dispatchWorkgroups(100);
    compute_pass_encoder0020.end();
    render_pass_encoder0081.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer00117 = device00.createBuffer({
        label: "buffer00117",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00117, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer00117, 0);
    render_pass_encoder0050.drawIndirect(buffer0038, 0);
    render_pass_encoder0081.drawIndirect(buffer0054, 0);
    render_pass_encoder0010.drawIndirect(buffer0087, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0065, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0070.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0011.setIndexBuffer(buffer006, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0066, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00118 = device00.createBuffer({
        label: "buffer00118",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00118, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00118, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0058, 0);
    const buffer00119 = device00.createBuffer({
        label: "buffer00119",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00120 = device00.createBuffer({
        label: "buffer00120",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0041 = device00.createBindGroup({
        label: "bind_group0041",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00119,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00120,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0041);
    render_pass_encoder0070.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00107, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0080.drawIndexedIndirect(buffer00105, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0000.drawIndirect(buffer0062, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00121 = device00.createBuffer({
        label: "buffer00121",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00121, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00121, 0);
    render_pass_encoder0080.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0050.end();
    const buffer00122 = device00.createBuffer({
        label: "buffer00122",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00123 = device00.createBuffer({
        label: "buffer00123",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0042 = device00.createBindGroup({
        label: "bind_group0042",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00122,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00123,
                },
            },
        ],
    });

    compute_pass_encoder0070.setBindGroup(0, bind_group0042);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0011.drawIndirect(buffer0033, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer000, 0);
    device00.queue.submit([command_buffer007, command_buffer009, ]);
    compute_pass_encoder0020.popDebugGroup()
    const buffer00124 = device00.createBuffer({
        label: "buffer00124",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00125 = device00.createBuffer({
        label: "buffer00125",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0043 = device00.createBindGroup({
        label: "bind_group0043",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00124,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00125,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0043);
    render_pass_encoder0080.drawIndexedIndirect(buffer00114, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer00106, 0);
    compute_pass_encoder0001.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer009, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00126 = device00.createBuffer({
        label: "buffer00126",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00126, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00126, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder00100.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0080.drawIndirect(buffer008, 0);
    render_pass_encoder0081.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder00100.drawIndirect(buffer0086, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0080.popDebugGroup();
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0080.setIndexBuffer(buffer0086, "uint16");
    const buffer00127 = device00.createBuffer({
        label: "buffer00127",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00128 = device00.createBuffer({
        label: "buffer00128",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0044 = device00.createBindGroup({
        label: "bind_group0044",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00127,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00128,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0044);
    render_pass_encoder00100.drawIndexedIndirect(buffer0055, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0045, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00129 = device00.createBuffer({
        label: "buffer00129",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00129, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00129, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0054, 0);
    const buffer00130 = device00.createBuffer({
        label: "buffer00130",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00131 = device00.createBuffer({
        label: "buffer00131",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0045 = device00.createBindGroup({
        label: "bind_group0045",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00130,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00131,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0045);
    render_pass_encoder0050.drawIndexedIndirect(buffer0058, 0);
    const buffer00132 = device00.createBuffer({
        label: "buffer00132",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00133 = device00.createBuffer({
        label: "buffer00133",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0046 = device00.createBindGroup({
        label: "bind_group0046",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00132,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00133,
                },
            },
        ],
    });

    compute_pass_encoder0070.setBindGroup(0, bind_group0046);
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0080.drawIndexedIndirect(buffer0055, 0);
    const buffer00134 = device00.createBuffer({
        label: "buffer00134",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00135 = device00.createBuffer({
        label: "buffer00135",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0047 = device00.createBindGroup({
        label: "bind_group0047",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00134,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00135,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0047);
    device00.queue.submit([command_buffer003, ]);
    const buffer00136 = device00.createBuffer({
        label: "buffer00136",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00137 = device00.createBuffer({
        label: "buffer00137",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0048 = device00.createBindGroup({
        label: "bind_group0048",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00136,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00137,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0048);
    render_pass_encoder0080.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00104, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00120, "uint16");
    compute_pass_encoder0011.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0080.drawIndirect(buffer0065, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0001.end();
    render_pass_encoder0080.drawIndirect(buffer0066, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0010.drawIndirect(buffer0033, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0081.drawIndexedIndirect(buffer00103, 0);
    render_pass_encoder00100.drawIndirect(buffer00136, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0081.setIndexBuffer(buffer00124, "uint16");
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer00121, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00138 = device00.createBuffer({
        label: "buffer00138",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00138, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00138, 0);
    compute_pass_encoder0011.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0011.drawIndirect(buffer0010, 0);
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer008, ]);
    render_pass_encoder0070.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0081.drawIndirect(buffer0090, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder0011.setIndexBuffer(buffer0090, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer00120, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0070.end();
    render_pass_encoder0070.drawIndirect(buffer0066, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0080.drawIndirect(buffer0026, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00106, 0);
    const buffer00139 = device00.createBuffer({
        label: "buffer00139",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00140 = device00.createBuffer({
        label: "buffer00140",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0049 = device00.createBindGroup({
        label: "bind_group0049",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00139,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00140,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0049);
    render_pass_encoder0080.end();
    render_pass_encoder0000.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00141 = device00.createBuffer({
        label: "buffer00141",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00141, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00141, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder00100.drawIndirect(buffer00114, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0029, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer0035, "uint16");
    compute_pass_encoder0070.popDebugGroup()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00142 = device00.createBuffer({
        label: "buffer00142",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00142, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00142, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0080.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00100, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0052, 0);
    render_pass_encoder00100.popDebugGroup();
    const buffer00143 = device00.createBuffer({
        label: "buffer00143",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00144 = device00.createBuffer({
        label: "buffer00144",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0050 = device00.createBindGroup({
        label: "bind_group0050",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00143,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00144,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0050);
    render_pass_encoder0080.drawIndirect(buffer0033, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder00100.drawIndirect(buffer0062, 0);
    render_pass_encoder0070.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00145 = device00.createBuffer({
        label: "buffer00145",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00145, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00145, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0050.drawIndirect(buffer0081, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer005, ]);
    const buffer00146 = device00.createBuffer({
        label: "buffer00146",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00147 = device00.createBuffer({
        label: "buffer00147",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0051 = device00.createBindGroup({
        label: "bind_group0051",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00146,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00147,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0051);
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0063, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0070.draw(3);
    render_pass_encoder0050.drawIndirect(buffer0055, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder00100.drawIndirect(buffer0066, 0);
    render_pass_encoder0080.drawIndexed(3);
    render_pass_encoder0011.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0050.drawIndirect(buffer00100, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00144, 0);
    render_pass_encoder0011.drawIndirect(buffer0088, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder0010.drawIndirect(buffer0066, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0010.drawIndirect(buffer0084, 0);
    render_pass_encoder00100.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00118, 0);
    render_pass_encoder0070.drawIndirect(buffer00103, 0);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer00148 = device00.createBuffer({
        label: "buffer00148",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00148, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer00148, 0);
    const buffer00149 = device00.createBuffer({
        label: "buffer00149",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00150 = device00.createBuffer({
        label: "buffer00150",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0052 = device00.createBindGroup({
        label: "bind_group0052",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00149,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00150,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0052);
    render_pass_encoder0010.drawIndexedIndirect(buffer00129, 0);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer001, command_buffer009, ]);
    compute_pass_encoder0001.end();
    device00.queue.submit([command_buffer006, command_buffer009, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndirect(buffer0067, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0080.drawIndirect(buffer0056, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0080.drawIndexedIndirect(buffer00118, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0050.drawIndirect(buffer0055, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00151 = device00.createBuffer({
        label: "buffer00151",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00151, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00151, 0);
    render_pass_encoder0070.drawIndirect(buffer0033, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00114, 0);
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0080.drawIndirect(buffer0095, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder00100.drawIndirect(buffer00106, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0070.drawIndirect(buffer0058, 0);
    render_pass_encoder0011.drawIndirect(buffer00124, 0);
    render_pass_encoder0010.popDebugGroup();
    const buffer00152 = device00.createBuffer({
        label: "buffer00152",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00153 = device00.createBuffer({
        label: "buffer00153",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0053 = device00.createBindGroup({
        label: "bind_group0053",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00152,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00153,
                },
            },
        ],
    });

    compute_pass_encoder0070.setBindGroup(0, bind_group0053);
    render_pass_encoder0050.drawIndirect(buffer00138, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndirect(buffer0033, 0);
    render_pass_encoder0000.drawIndirect(buffer0090, 0);
    compute_pass_encoder0001.end();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder00100.drawIndexedIndirect(buffer000, 0);
    const buffer00154 = device00.createBuffer({
        label: "buffer00154",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00155 = device00.createBuffer({
        label: "buffer00155",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0054 = device00.createBindGroup({
        label: "bind_group0054",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00154,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00155,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0054);
    render_pass_encoder0000.drawIndirect(buffer00138, 0);
    render_pass_encoder0010.drawIndexed(3);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer0056, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0050.end();
    render_pass_encoder00100.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0081.setIndexBuffer(buffer00117, "uint16");
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0000.end();
    render_pass_encoder0000.end();
    render_pass_encoder0070.setIndexBuffer(buffer00133, "uint16");
    compute_pass_encoder0011.end();
    render_pass_encoder0010.drawIndirect(buffer00104, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00156 = device00.createBuffer({
        label: "buffer00156",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00156, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00156, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00157 = device00.createBuffer({
        label: "buffer00157",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00157, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00157, 0);
    render_pass_encoder0011.drawIndirect(buffer00114, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0080.drawIndirect(buffer0090, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00158 = device00.createBuffer({
        label: "buffer00158",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00158, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00158, 0);
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder0050.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer00104, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0081.drawIndirect(buffer0066, 0);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder00100.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0053, "uint16");
    compute_pass_encoder0070.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer00126, 0);
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0070.drawIndirect(buffer0086, 0);
    const buffer00159 = device00.createBuffer({
        label: "buffer00159",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00160 = device00.createBuffer({
        label: "buffer00160",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0055 = device00.createBindGroup({
        label: "bind_group0055",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00159,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00160,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0055);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0080.drawIndirect(buffer0045, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer00104, 0);
    const buffer00161 = device00.createBuffer({
        label: "buffer00161",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00162 = device00.createBuffer({
        label: "buffer00162",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0056 = device00.createBindGroup({
        label: "bind_group0056",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00161,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00162,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0056);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    const buffer00163 = device00.createBuffer({
        label: "buffer00163",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00164 = device00.createBuffer({
        label: "buffer00164",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0057 = device00.createBindGroup({
        label: "bind_group0057",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00163,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00164,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0057);
    compute_pass_encoder0050.end();
    render_pass_encoder0081.popDebugGroup();
    compute_pass_encoder0070.popDebugGroup()
    const buffer00165 = device00.createBuffer({
        label: "buffer00165",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00166 = device00.createBuffer({
        label: "buffer00166",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0058 = device00.createBindGroup({
        label: "bind_group0058",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00165,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00166,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0058);
    const buffer00167 = device00.createBuffer({
        label: "buffer00167",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00168 = device00.createBuffer({
        label: "buffer00168",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0059 = device00.createBindGroup({
        label: "bind_group0059",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00167,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00168,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0059);
    render_pass_encoder00100.drawIndirect(buffer0045, 0);
    compute_pass_encoder0010.end();
    const buffer00169 = device00.createBuffer({
        label: "buffer00169",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00170 = device00.createBuffer({
        label: "buffer00170",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0060 = device00.createBindGroup({
        label: "bind_group0060",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00169,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00170,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0060);
    render_pass_encoder0011.setIndexBuffer(buffer0068, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder0010.setIndexBuffer(buffer00152, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0070.drawIndirect(buffer00148, 0);
    render_pass_encoder0010.drawIndirect(buffer00157, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00141, 0);
    render_pass_encoder0080.drawIndirect(buffer00141, 0);
    render_pass_encoder0010.end();
    render_pass_encoder00100.drawIndexedIndirect(buffer0034, 0);
    const buffer00171 = device00.createBuffer({
        label: "buffer00171",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00172 = device00.createBuffer({
        label: "buffer00172",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0061 = device00.createBindGroup({
        label: "bind_group0061",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00171,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00172,
                },
            },
        ],
    });

    compute_pass_encoder0070.setBindGroup(0, bind_group0061);
    render_pass_encoder00100.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder00100.popDebugGroup();
    const buffer00173 = device00.createBuffer({
        label: "buffer00173",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00174 = device00.createBuffer({
        label: "buffer00174",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0062 = device00.createBindGroup({
        label: "bind_group0062",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00173,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00174,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0062);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00175 = device00.createBuffer({
        label: "buffer00175",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00175, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00175, 0);
    render_pass_encoder0080.drawIndirect(buffer0091, 0);
    const buffer00176 = device00.createBuffer({
        label: "buffer00176",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00177 = device00.createBuffer({
        label: "buffer00177",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0063 = device00.createBindGroup({
        label: "bind_group0063",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00176,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00177,
                },
            },
        ],
    });

    compute_pass_encoder0070.setBindGroup(0, bind_group0063);
    compute_pass_encoder0000.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00178 = device00.createBuffer({
        label: "buffer00178",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00178, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00178, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0081.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0081.drawIndirect(buffer00157, 0);
    render_pass_encoder0010.drawIndirect(buffer0080, 0);
    render_pass_encoder0000.drawIndirect(buffer0038, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00179 = device00.createBuffer({
        label: "buffer00179",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00179, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00179, 0);
    render_pass_encoder0050.drawIndirect(buffer0016, 0);
    compute_pass_encoder0070.end();
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0070.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0050.drawIndirect(buffer00161, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00114, 0);
    render_pass_encoder0000.drawIndirect(buffer00126, 0);
    render_pass_encoder0070.drawIndirect(buffer0014, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00141, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0080.end();
    render_pass_encoder0010.end();
    const buffer00180 = device00.createBuffer({
        label: "buffer00180",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00181 = device00.createBuffer({
        label: "buffer00181",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0064 = device00.createBindGroup({
        label: "bind_group0064",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00180,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00181,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0064);
    render_pass_encoder00100.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0077, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder00100.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0081, "uint16");
    render_pass_encoder0080.drawIndirect(buffer00171, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0010.drawIndirect(buffer00105, 0);
    render_pass_encoder0011.drawIndirect(buffer0037, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder00100.drawIndirect(buffer00156, 0);
    const buffer00182 = device00.createBuffer({
        label: "buffer00182",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00183 = device00.createBuffer({
        label: "buffer00183",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0065 = device00.createBindGroup({
        label: "bind_group0065",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00182,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00183,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0065);
    render_pass_encoder0010.drawIndexedIndirect(buffer00145, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0081.drawIndirect(buffer0033, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00141, 0);
    const buffer00184 = device00.createBuffer({
        label: "buffer00184",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00185 = device00.createBuffer({
        label: "buffer00185",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0066 = device00.createBindGroup({
        label: "bind_group0066",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00184,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00185,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0066);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0080.drawIndirect(buffer0041, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0080.drawIndexedIndirect(buffer00147, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0010.drawIndirect(buffer0058, 0);
    render_pass_encoder0000.end();
    compute_pass_encoder0000.end();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00186 = device00.createBuffer({
        label: "buffer00186",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00186, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00186, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0081.end();
    render_pass_encoder0000.drawIndirect(buffer00156, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0081.drawIndirect(buffer00121, 0);
    compute_pass_encoder0070.dispatchWorkgroups(100);
    render_pass_encoder0011.setIndexBuffer(buffer0054, "uint16");
    const buffer00187 = device00.createBuffer({
        label: "buffer00187",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00188 = device00.createBuffer({
        label: "buffer00188",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0067 = device00.createBindGroup({
        label: "bind_group0067",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00187,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00188,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0067);
    render_pass_encoder0010.drawIndirect(buffer0085, 0);
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    render_pass_encoder0000.drawIndirect(buffer0081, 0);
    render_pass_encoder0081.drawIndirect(buffer0090, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndirect(buffer00156, 0);
    render_pass_encoder0080.drawIndirect(buffer007, 0);
    render_pass_encoder0080.drawIndirect(buffer00105, 0);
    render_pass_encoder0050.drawIndirect(buffer00151, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0070.drawIndirect(buffer00156, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder0070.drawIndirect(buffer00110, 0);
    render_pass_encoder00100.drawIndirect(buffer00104, 0);
    render_pass_encoder0081.drawIndirect(buffer0087, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0045, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0070.end();
    render_pass_encoder0050.drawIndirect(buffer00178, 0);
    const buffer00189 = device00.createBuffer({
        label: "buffer00189",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00190 = device00.createBuffer({
        label: "buffer00190",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0068 = device00.createBindGroup({
        label: "bind_group0068",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00189,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00190,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0068);
    render_pass_encoder0010.drawIndirect(buffer0066, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0080.drawIndirect(buffer0084, 0);
    render_pass_encoder0081.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0086, 0);
    device00.queue.submit([command_buffer002, command_buffer005, command_buffer009, ]);
    render_pass_encoder0080.drawIndexedIndirect(buffer00158, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0080.end();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00191 = device00.createBuffer({
        label: "buffer00191",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00191, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00191, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0070.drawIndirect(buffer00148, 0);
    device00.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer0026, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0081.setIndexBuffer(buffer0016, "uint16");
    compute_pass_encoder0070.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer00150, 0);
    compute_pass_encoder0060.popDebugGroup()
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00192 = device00.createBuffer({
        label: "buffer00192",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00192, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00192, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0011.drawIndirect(buffer00190, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0015, "uint16");
    device00.queue.submit([command_buffer006, command_buffer007, command_buffer009, ]);
    render_pass_encoder00100.drawIndirect(buffer0095, 0);
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0050.drawIndexed(3);
    device00.queue.submit([command_buffer005, command_buffer008, command_buffer009, ]);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0080.drawIndexedIndirect(buffer00178, 0);
    compute_pass_encoder0050.popDebugGroup()
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00193 = device00.createBuffer({
        label: "buffer00193",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00193, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00193, 0);
    render_pass_encoder0081.drawIndirect(buffer00141, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0081.drawIndirect(buffer00179, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0057, "uint16");
    const buffer00194 = device00.createBuffer({
        label: "buffer00194",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00195 = device00.createBuffer({
        label: "buffer00195",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0069 = device00.createBindGroup({
        label: "bind_group0069",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00194,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00195,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0069);
    render_pass_encoder0000.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0080.setIndexBuffer(buffer00173, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer00104, 0);
    device00.queue.submit([command_buffer001, command_buffer009, ]);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0011.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    const buffer00196 = device00.createBuffer({
        label: "buffer00196",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00197 = device00.createBuffer({
        label: "buffer00197",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0070 = device00.createBindGroup({
        label: "bind_group0070",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00196,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00197,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0070);
    render_pass_encoder0010.setIndexBuffer(buffer003, "uint16");
    compute_pass_encoder0070.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0058, 0);
    const buffer00198 = device00.createBuffer({
        label: "buffer00198",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00199 = device00.createBuffer({
        label: "buffer00199",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0071 = device00.createBindGroup({
        label: "bind_group0071",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00198,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00199,
                },
            },
        ],
    });

    compute_pass_encoder0070.setBindGroup(0, bind_group0071);
    render_pass_encoder0081.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0000.drawIndirect(buffer0061, 0);
    render_pass_encoder00100.setIndexBuffer(buffer000, "uint16");
    device00.queue.submit([command_buffer005, command_buffer009, ]);
    render_pass_encoder00100.drawIndexedIndirect(buffer0060, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00200 = device00.createBuffer({
        label: "buffer00200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00200, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00200, 0);
    render_pass_encoder0081.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0080.setIndexBuffer(buffer0085, "uint16");
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder0010.end();
    render_pass_encoder0081.drawIndexedIndirect(buffer0057, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00201 = device00.createBuffer({
        label: "buffer00201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00201, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00201, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00202 = device00.createBuffer({
        label: "buffer00202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00202, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00202, 0);
    render_pass_encoder0070.drawIndirect(buffer0042, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00191, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00143, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00186, 0);
    device00.queue.submit([command_buffer003, command_buffer0010, ]);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00203 = device00.createBuffer({
        label: "buffer00203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00203, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00203, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00157, "uint16");
    render_pass_encoder0070.end();
    render_pass_encoder0010.drawIndirect(buffer00157, 0);
    render_pass_encoder0081.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00164, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00203, 0);
    render_pass_encoder0010.drawIndirect(buffer0086, 0);
    render_pass_encoder0000.drawIndirect(buffer0080, 0);
    render_pass_encoder0000.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0000.setIndexBuffer(buffer00166, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer00103, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0072, "uint16");
    render_pass_encoder0080.drawIndirect(buffer00175, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00179, 0);
    render_pass_encoder0081.setIndexBuffer(buffer00175, "uint16");
    compute_pass_encoder0070.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndirect(buffer00148, 0);
    render_pass_encoder0081.drawIndirect(buffer00191, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0080.drawIndexedIndirect(buffer0097, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    const buffer00204 = device00.createBuffer({
        label: "buffer00204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00205 = device00.createBuffer({
        label: "buffer00205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0072 = device00.createBindGroup({
        label: "bind_group0072",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00205,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0072);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0081.end();
    render_pass_encoder0011.end();
    render_pass_encoder0070.drawIndirect(buffer00106, 0);
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    const buffer00206 = device00.createBuffer({
        label: "buffer00206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00207 = device00.createBuffer({
        label: "buffer00207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0073 = device00.createBindGroup({
        label: "bind_group0073",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00207,
                },
            },
        ],
    });

    compute_pass_encoder0070.setBindGroup(0, bind_group0073);
    render_pass_encoder0010.drawIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndirect(buffer00162, 0);
    render_pass_encoder0010.drawIndirect(buffer00164, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0080.drawIndirect(buffer00126, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00114, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00160, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0095, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00136, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00193, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer00147, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00208 = device00.createBuffer({
        label: "buffer00208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00208, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00208, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0080.end();
    render_pass_encoder0010.drawIndirect(buffer00179, 0);
    render_pass_encoder0010.drawIndirect(buffer0097, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00179, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0070.setIndexBuffer(buffer0020, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00209 = device00.createBuffer({
        label: "buffer00209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00209, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00209, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder0010.end();
    render_pass_encoder0081.drawIndexedIndirect(buffer00142, 0);
    render_pass_encoder0000.setIndexBuffer(buffer00153, "uint16");
    render_pass_encoder0081.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00129, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0080.drawIndirect(buffer000, 0);
    render_pass_encoder0070.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer008, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0081.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0050.popDebugGroup()
    device20.queue.submit([]);
    const buffer00210 = device00.createBuffer({
        label: "buffer00210",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00211 = device00.createBuffer({
        label: "buffer00211",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0074 = device00.createBindGroup({
        label: "bind_group0074",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00210,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00211,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0074);
    render_pass_encoder0070.setIndexBuffer(buffer00112, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer004, command_buffer005, ]);
    render_pass_encoder0050.drawIndirect(buffer0088, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00212 = device00.createBuffer({
        label: "buffer00212",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00212, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00212, 0);
    render_pass_encoder0080.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0050.end();
    render_pass_encoder0080.drawIndirect(buffer0090, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00190, "uint16");
    render_pass_encoder0070.popDebugGroup();
    const buffer00213 = device00.createBuffer({
        label: "buffer00213",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00214 = device00.createBuffer({
        label: "buffer00214",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0075 = device00.createBindGroup({
        label: "bind_group0075",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00213,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00214,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0075);
    render_pass_encoder0000.drawIndirect(buffer00157, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer00157, 0);
    render_pass_encoder0050.drawIndirect(buffer00209, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00212, 0);
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder00100.drawIndexedIndirect(buffer00117, 0);
    device00.queue.submit([command_buffer005, command_buffer009, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00215 = device00.createBuffer({
        label: "buffer00215",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00215, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00215, 0);
    render_pass_encoder0050.drawIndirect(buffer00117, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00216 = device00.createBuffer({
        label: "buffer00216",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00216, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00216, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00186, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0081.drawIndirect(buffer0013, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0000.drawIndirect(buffer00150, 0);
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer0010, ]);
    render_pass_encoder0081.drawIndirect(buffer0045, 0);
    compute_pass_encoder0010.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer0050, 0);
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer00217 = device00.createBuffer({
        label: "buffer00217",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00217, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer00217, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0081.setIndexBuffer(buffer00159, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00218 = device00.createBuffer({
        label: "buffer00218",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00218, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00218, 0);
    device00.queue.submit([command_buffer000, command_buffer003, command_buffer007, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00116, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0050.drawIndirect(buffer0058, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0010.drawIndirect(buffer0095, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00125, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0070.drawIndirect(buffer00191, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00129, 0);
    device00.queue.submit([command_buffer008, command_buffer009, ]);
    render_pass_encoder0011.drawIndirect(buffer0058, 0);
    render_pass_encoder00100.drawIndirect(buffer0017, 0);
    render_pass_encoder0070.popDebugGroup();
    const buffer00219 = device00.createBuffer({
        label: "buffer00219",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00220 = device00.createBuffer({
        label: "buffer00220",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0076 = device00.createBindGroup({
        label: "bind_group0076",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00219,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00220,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0076);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0081.drawIndirect(buffer0033, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0070.drawIndirect(buffer00126, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00114, 0);
    render_pass_encoder0070.drawIndirect(buffer00186, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder00100.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0081.drawIndirect(buffer0095, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00215, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer007, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0070.drawIndirect(buffer0055, 0);
    compute_pass_encoder0070.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0070.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0081.drawIndexedIndirect(buffer00117, 0);
    compute_pass_encoder0070.end();
    render_pass_encoder0081.end();
    render_pass_encoder0080.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0011.end();
    const buffer00221 = device00.createBuffer({
        label: "buffer00221",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00222 = device00.createBuffer({
        label: "buffer00222",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0077 = device00.createBindGroup({
        label: "bind_group0077",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00221,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00222,
                },
            },
        ],
    });

    compute_pass_encoder0070.setBindGroup(0, bind_group0077);
    render_pass_encoder0011.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0080.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00201, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00203, 0);
    const buffer00223 = device00.createBuffer({
        label: "buffer00223",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00224 = device00.createBuffer({
        label: "buffer00224",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0078 = device00.createBindGroup({
        label: "bind_group0078",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00223,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00224,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0078);
    render_pass_encoder0000.drawIndirect(buffer0086, 0);
    device00.queue.submit([command_buffer000, command_buffer009, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder00100.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0080.drawIndirect(buffer000, 0);
    const buffer00225 = device00.createBuffer({
        label: "buffer00225",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00226 = device00.createBuffer({
        label: "buffer00226",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0079 = device00.createBindGroup({
        label: "bind_group0079",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00225,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00226,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0079);
    compute_pass_encoder0020.popDebugGroup()
    const buffer00227 = device00.createBuffer({
        label: "buffer00227",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00228 = device00.createBuffer({
        label: "buffer00228",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0080 = device00.createBindGroup({
        label: "bind_group0080",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00227,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00228,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0080);
    compute_pass_encoder0000.end();
    render_pass_encoder0050.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0036, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0070.endOcclusionQuery()
    render_pass_encoder0000.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder00100.drawIndirect(buffer0026, 0);
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0081.end();
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0081.drawIndexedIndirect(buffer00211, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00122, "uint16");
    const buffer00229 = device00.createBuffer({
        label: "buffer00229",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00230 = device00.createBuffer({
        label: "buffer00230",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0081 = device00.createBindGroup({
        label: "bind_group0081",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00229,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00230,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0081);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0038, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device20.queue.submit([]);
    render_pass_encoder0011.drawIndirect(buffer0053, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0081.drawIndirect(buffer0075, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer00140, 0);
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer00231 = device00.createBuffer({
        label: "buffer00231",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00231, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer00231, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0070.drawIndirect(buffer00135, 0);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0080.drawIndirect(buffer0087, 0);
    render_pass_encoder0080.drawIndirect(buffer0087, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0081.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0081.drawIndirect(buffer00217, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00106, 0);
    render_pass_encoder0081.drawIndexedIndirect(buffer00100, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00232 = device00.createBuffer({
        label: "buffer00232",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00232, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00232, 0);
    render_pass_encoder0080.drawIndirect(buffer0086, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00223, 0);
    render_pass_encoder0000.setIndexBuffer(buffer00198, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00148, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0080.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00202, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0066, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00209, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0045, 0);
    render_pass_encoder0070.drawIndirect(buffer0084, 0);
    compute_pass_encoder0000.end();
    const buffer00233 = device00.createBuffer({
        label: "buffer00233",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00234 = device00.createBuffer({
        label: "buffer00234",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0082 = device00.createBindGroup({
        label: "bind_group0082",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00233,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00234,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0082);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer0066, 0);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0000.setIndexBuffer(buffer00191, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0050.drawIndirect(buffer00121, 0);
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer0089, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0081.drawIndirect(buffer00100, 0);
    device00.queue.submit([command_buffer004, command_buffer008, ]);
    render_pass_encoder0011.drawIndirect(buffer00100, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0045, 0);
    render_pass_encoder0080.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0080.drawIndirect(buffer0085, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0011.drawIndirect(buffer00142, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0094, 0);
    compute_pass_encoder0011.end();
    device00.queue.submit([command_buffer001, command_buffer007, command_buffer009, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer0045, 0);
    compute_pass_encoder0070.popDebugGroup()
    render_pass_encoder0011.drawIndexed(3);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0081.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00215, 0);
    render_pass_encoder0000.end();
    render_pass_encoder00100.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder0080.drawIndirect(buffer00208, 0);
    render_pass_encoder0050.end();
    device00.queue.submit([command_buffer004, command_buffer009, ]);
    render_pass_encoder0011.end();
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0060.end();
    render_pass_encoder0080.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder00100.drawIndirect(buffer0087, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00215, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0050.drawIndirect(buffer00208, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00208, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00235 = device00.createBuffer({
        label: "buffer00235",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00235, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00235, 0);
    render_pass_encoder0080.popDebugGroup();
    compute_pass_encoder0000.end();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0011.end();
    device00.queue.submit([command_buffer006, command_buffer009, ]);
    render_pass_encoder0081.drawIndirect(buffer0062, 0);
    render_pass_encoder0070.drawIndirect(buffer00158, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0070.drawIndirect(buffer00201, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer00118, 0);
    render_pass_encoder0011.drawIndirect(buffer00224, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00118, 0);
    const buffer00236 = device00.createBuffer({
        label: "buffer00236",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00237 = device00.createBuffer({
        label: "buffer00237",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0083 = device00.createBindGroup({
        label: "bind_group0083",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00236,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00237,
                },
            },
        ],
    });

    compute_pass_encoder0070.setBindGroup(0, bind_group0083);
    render_pass_encoder0000.drawIndirect(buffer0049, 0);
    const buffer00238 = device00.createBuffer({
        label: "buffer00238",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00239 = device00.createBuffer({
        label: "buffer00239",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0084 = device00.createBindGroup({
        label: "bind_group0084",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00238,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00239,
                },
            },
        ],
    });

    compute_pass_encoder0070.setBindGroup(0, bind_group0084);
    render_pass_encoder0070.setIndexBuffer(buffer00143, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00217, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00191, "uint16");
    compute_pass_encoder0011.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder00100.drawIndirect(buffer0055, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00240 = device00.createBuffer({
        label: "buffer00240",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00240, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00240, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00179, 0);
    render_pass_encoder0080.drawIndirect(buffer00117, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00121, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00156, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00228, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00217, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00241 = device00.createBuffer({
        label: "buffer00241",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00241, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00241, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00237, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00201, 0);
    render_pass_encoder0080.setIndexBuffer(buffer00199, "uint16");
    device00.queue.submit([command_buffer0010, ]);
    render_pass_encoder0050.end();
    compute_pass_encoder0001.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00148, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0070.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer00217, 0);
    render_pass_encoder0080.setIndexBuffer(buffer00189, "uint16");
    render_pass_encoder0080.drawIndirect(buffer00212, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0048, "uint16");
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00242 = device00.createBuffer({
        label: "buffer00242",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00242, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00242, 0);
    compute_pass_encoder0070.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0081.drawIndirect(buffer0090, 0);
    compute_pass_encoder0070.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0081.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00202, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00243 = device00.createBuffer({
        label: "buffer00243",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00243, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00243, 0);
    const buffer00244 = device00.createBuffer({
        label: "buffer00244",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00245 = device00.createBuffer({
        label: "buffer00245",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0085 = device00.createBindGroup({
        label: "bind_group0085",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00244,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00245,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0085);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00203, 0);
    render_pass_encoder0070.drawIndirect(buffer00100, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0080.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0081.drawIndirect(buffer00118, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00196, "uint16");
    const buffer00246 = device00.createBuffer({
        label: "buffer00246",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00247 = device00.createBuffer({
        label: "buffer00247",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0086 = device00.createBindGroup({
        label: "bind_group0086",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00246,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00247,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0086);
    render_pass_encoder00100.drawIndexedIndirect(buffer00203, 0);
    device00.queue.submit([command_buffer000, command_buffer009, ]);
    render_pass_encoder0011.drawIndirect(buffer0066, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0081.drawIndirect(buffer0024, 0);
    const buffer00248 = device00.createBuffer({
        label: "buffer00248",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00249 = device00.createBuffer({
        label: "buffer00249",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0087 = device00.createBindGroup({
        label: "bind_group0087",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00248,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00249,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0087);
    render_pass_encoder0050.end();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    compute_pass_encoder0070.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0080.drawIndirect(buffer00105, 0);
    render_pass_encoder00100.end();
    compute_pass_encoder0070.end();
    render_pass_encoder0010.drawIndirect(buffer00177, 0);
    render_pass_encoder0080.drawIndexed(3);
    render_pass_encoder0010.end();
    render_pass_encoder0050.drawIndirect(buffer00114, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00130, "uint16");
    render_pass_encoder00100.drawIndirect(buffer0066, 0);
    render_pass_encoder0011.drawIndirect(buffer0029, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00155, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00148, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0070.drawIndirect(buffer0038, 0);
    device00.queue.submit([command_buffer0010, ]);
    render_pass_encoder0000.drawIndirect(buffer00206, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0000.setIndexBuffer(buffer00145, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00193, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00250 = device00.createBuffer({
        label: "buffer00250",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00250, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00250, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00141, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer00217, 0);
    render_pass_encoder0000.drawIndirect(buffer0058, 0);
    render_pass_encoder0010.drawIndirect(buffer00242, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00251 = device00.createBuffer({
        label: "buffer00251",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00251, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00251, 0);
    render_pass_encoder00100.drawIndirect(buffer0050, 0);
    render_pass_encoder00100.drawIndirect(buffer0087, 0);
    compute_pass_encoder0070.end();
    render_pass_encoder0050.drawIndirect(buffer0090, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0081.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00202, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndirect(buffer00145, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer00154, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder0020.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder00100.drawIndirect(buffer00209, 0);
    render_pass_encoder0081.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0030, 0);
    device00.queue.submit([]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    compute_pass_encoder0070.end();
    render_pass_encoder0011.drawIndirect(buffer0086, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0010.drawIndirect(buffer00215, 0);
    compute_pass_encoder0070.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer00192, 0);
    const buffer00252 = device00.createBuffer({
        label: "buffer00252",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00253 = device00.createBuffer({
        label: "buffer00253",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0088 = device00.createBindGroup({
        label: "bind_group0088",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00252,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00253,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0088);
    render_pass_encoder0081.drawIndirect(buffer0095, 0);
    render_pass_encoder0081.drawIndirect(buffer002, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00251, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0070.drawIndirect(buffer0068, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer0058, 0);
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer00254 = device00.createBuffer({
        label: "buffer00254",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00254, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer00254, 0);
    render_pass_encoder0070.drawIndirect(buffer00104, 0);
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    const buffer00255 = device00.createBuffer({
        label: "buffer00255",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00256 = device00.createBuffer({
        label: "buffer00256",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0089 = device00.createBindGroup({
        label: "bind_group0089",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00255,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00256,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0089);
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0080, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0000.end();
    render_pass_encoder0081.end();
    device00.queue.submit([command_buffer0010, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0050.drawIndirect(buffer0026, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00244, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00232, 0);
    render_pass_encoder0080.setIndexBuffer(buffer00180, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00232, 0);
    render_pass_encoder0081.drawIndexedIndirect(buffer00158, 0);
    render_pass_encoder0011.drawIndirect(buffer0029, 0);
    const buffer00257 = device00.createBuffer({
        label: "buffer00257",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00258 = device00.createBuffer({
        label: "buffer00258",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0090 = device00.createBindGroup({
        label: "bind_group0090",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00257,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00258,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0090);
    render_pass_encoder0010.drawIndexedIndirect(buffer0062, 0);
    compute_pass_encoder0070.popDebugGroup()
    render_pass_encoder00100.drawIndirect(buffer0059, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder00100.drawIndirect(buffer00100, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00127, 0);
    compute_pass_encoder0070.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0050.end();
    compute_pass_encoder0070.end();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00259 = device00.createBuffer({
        label: "buffer00259",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00259, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00259, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00251, 0);
    render_pass_encoder0080.drawIndirect(buffer00151, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0070.drawIndirect(buffer0055, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00260 = device00.createBuffer({
        label: "buffer00260",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00260, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00260, 0);
    render_pass_encoder0000.drawIndirect(buffer0038, 0);
    render_pass_encoder00100.drawIndirect(buffer00157, 0);
    device20.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0080, 0);
    compute_pass_encoder0070.popDebugGroup()
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer00227, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00245, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer0081, 0);
    device00.queue.submit([command_buffer0010, ]);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0090, 0);
    compute_pass_encoder0010.end();
    const buffer00261 = device00.createBuffer({
        label: "buffer00261",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00262 = device00.createBuffer({
        label: "buffer00262",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0091 = device00.createBindGroup({
        label: "bind_group0091",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00261,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00262,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0091);
    render_pass_encoder0010.drawIndexedIndirect(buffer00145, 0);
    render_pass_encoder0070.drawIndirect(buffer00202, 0);
    render_pass_encoder0010.drawIndirect(buffer00151, 0);
    render_pass_encoder0081.drawIndirect(buffer00244, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0050.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer00259, 0);
    render_pass_encoder0070.drawIndirect(buffer0095, 0);
    render_pass_encoder0050.drawIndirect(buffer00143, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0086, 0);
    device00.queue.submit([command_buffer003, command_buffer004, command_buffer008, ]);
    render_pass_encoder0000.setIndexBuffer(buffer00225, "uint16");
    render_pass_encoder0070.drawIndirect(buffer0045, 0);
    render_pass_encoder0080.drawIndirect(buffer00231, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00263 = device00.createBuffer({
        label: "buffer00263",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00263, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00263, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00264 = device00.createBuffer({
        label: "buffer00264",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00264, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00264, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0045, 0);
    device00.queue.submit([command_buffer000, command_buffer006, command_buffer0010, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00141, 0);
    const buffer00265 = device00.createBuffer({
        label: "buffer00265",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00266 = device00.createBuffer({
        label: "buffer00266",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0092 = device00.createBindGroup({
        label: "bind_group0092",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00265,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00266,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0092);
    render_pass_encoder0011.setIndexBuffer(buffer00211, "uint16");
    render_pass_encoder0081.drawIndexedIndirect(buffer00114, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00203, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00267 = device00.createBuffer({
        label: "buffer00267",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00267, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00267, 0);
    render_pass_encoder0011.drawIndirect(buffer00117, 0);
    render_pass_encoder0010.drawIndirect(buffer00106, 0);
    const buffer00268 = device00.createBuffer({
        label: "buffer00268",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00269 = device00.createBuffer({
        label: "buffer00269",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0093 = device00.createBindGroup({
        label: "bind_group0093",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00268,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00269,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0093);
    compute_pass_encoder0001.end();
    const buffer00270 = device00.createBuffer({
        label: "buffer00270",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00271 = device00.createBuffer({
        label: "buffer00271",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0094 = device00.createBindGroup({
        label: "bind_group0094",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00270,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00271,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0094);
    render_pass_encoder0070.popDebugGroup();
    compute_pass_encoder0070.end();
    render_pass_encoder0000.drawIndirect(buffer0058, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00142, 0);
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0055, 0);
    render_pass_encoder0070.drawIndirect(buffer00114, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0081.setIndexBuffer(buffer00145, "uint16");
    render_pass_encoder00100.end();
    compute_pass_encoder0070.end();
    render_pass_encoder0081.drawIndirect(buffer0055, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00264, 0);
    render_pass_encoder00100.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00197, 0);
    render_pass_encoder0010.endOcclusionQuery()
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0080.drawIndirect(buffer00151, 0);
    render_pass_encoder0000.drawIndirect(buffer00105, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder00100.drawIndirect(buffer00216, 0);
    device00.queue.submit([command_buffer002, command_buffer0010, ]);
    render_pass_encoder0011.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0081.draw(3);
    render_pass_encoder0081.drawIndirect(buffer00114, 0);
    const buffer00272 = device00.createBuffer({
        label: "buffer00272",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00273 = device00.createBuffer({
        label: "buffer00273",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0095 = device00.createBindGroup({
        label: "bind_group0095",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00272,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00273,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0095);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00274 = device00.createBuffer({
        label: "buffer00274",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00274, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00274, 0);
    render_pass_encoder0050.drawIndirect(buffer00186, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0065, 0);
    compute_pass_encoder0070.end();
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0050.setIndexBuffer(buffer0091, "uint16");
    render_pass_encoder0080.drawIndirect(buffer0061, 0);
    render_pass_encoder00100.drawIndirect(buffer0061, 0);
    render_pass_encoder0000.drawIndirect(buffer00259, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00150, 0);
    const buffer00275 = device00.createBuffer({
        label: "buffer00275",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00276 = device00.createBuffer({
        label: "buffer00276",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0096 = device00.createBindGroup({
        label: "bind_group0096",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00275,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00276,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0096);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0066, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0070.drawIndirect(buffer0061, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0050.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder00100.drawIndirect(buffer0095, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0092, 0);
    render_pass_encoder0050.drawIndirect(buffer0026, 0);
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00274, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer00200, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00240, 0);
    const buffer00277 = device00.createBuffer({
        label: "buffer00277",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00278 = device00.createBuffer({
        label: "buffer00278",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0097 = device00.createBindGroup({
        label: "bind_group0097",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00277,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00278,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0097);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndirect(buffer00156, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00270, 0);
    render_pass_encoder0070.drawIndirect(buffer0061, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0000.drawIndirect(buffer00106, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00279 = device00.createBuffer({
        label: "buffer00279",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00279, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00279, 0);
    render_pass_encoder0080.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0081.drawIndexedIndirect(buffer00203, 0);
    render_pass_encoder0011.drawIndirect(buffer00279, 0);
    render_pass_encoder0070.drawIndirect(buffer00100, 0);
    render_pass_encoder0000.drawIndirect(buffer00274, 0);
    render_pass_encoder0010.end();
    render_pass_encoder00100.drawIndexedIndirect(buffer00142, 0);
    render_pass_encoder0081.drawIndexedIndirect(buffer00215, 0);
    render_pass_encoder0081.drawIndexedIndirect(buffer0073, 0);
    compute_pass_encoder0020.popDebugGroup()
    const buffer00280 = device00.createBuffer({
        label: "buffer00280",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00281 = device00.createBuffer({
        label: "buffer00281",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0098 = device00.createBindGroup({
        label: "bind_group0098",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00280,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00281,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0098);
    render_pass_encoder0050.drawIndexedIndirect(buffer0090, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00260, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0080.drawIndexedIndirect(buffer00157, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0050.drawIndirect(buffer00121, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00282 = device00.createBuffer({
        label: "buffer00282",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00282, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00282, 0);
    render_pass_encoder0011.drawIndirect(buffer00180, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0010.drawIndirect(buffer0058, 0);
    render_pass_encoder0080.drawIndirect(buffer00226, 0);
    render_pass_encoder0000.drawIndirect(buffer00235, 0);
    render_pass_encoder0070.drawIndirect(buffer00232, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0081.end();
    render_pass_encoder0081.drawIndirect(buffer00218, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00241, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0081.drawIndexedIndirect(buffer00145, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder00100.drawIndirect(buffer0038, 0);
    render_pass_encoder0010.drawIndirect(buffer0090, 0);
    render_pass_encoder0011.drawIndirect(buffer00195, 0);
    render_pass_encoder0080.end();
    render_pass_encoder0011.drawIndirect(buffer00271, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0081.end();
    render_pass_encoder0080.drawIndirect(buffer00241, 0);
    render_pass_encoder00100.drawIndirect(buffer0085, 0);
    device00.queue.submit([command_buffer005, command_buffer008, ]);
    render_pass_encoder0010.drawIndirect(buffer00176, 0);
    render_pass_encoder0081.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder00100.drawIndirect(buffer00142, 0);
    render_pass_encoder0081.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0080.drawIndirect(buffer00114, 0);
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder0081.drawIndexedIndirect(buffer00218, 0);
    render_pass_encoder00100.drawIndirect(buffer0085, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0011.drawIndirect(buffer0092, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00232, 0);
    render_pass_encoder0010.drawIndirect(buffer00279, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00283 = device00.createBuffer({
        label: "buffer00283",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00283, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00283, 0);
    render_pass_encoder00100.drawIndirect(buffer00260, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder00100.setIndexBuffer(buffer00145, "uint16");
    render_pass_encoder0000.drawIndirect(buffer000, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder00100.drawIndexedIndirect(buffer00263, 0);
    render_pass_encoder0080.drawIndirect(buffer00216, 0);
    const buffer00284 = device00.createBuffer({
        label: "buffer00284",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00285 = device00.createBuffer({
        label: "buffer00285",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0099 = device00.createBindGroup({
        label: "bind_group0099",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00284,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00285,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0099);
    render_pass_encoder0010.drawIndexedIndirect(buffer00274, 0);
    const buffer00286 = device00.createBuffer({
        label: "buffer00286",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00287 = device00.createBuffer({
        label: "buffer00287",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00100 = device00.createBindGroup({
        label: "bind_group00100",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00286,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00287,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00100);
    render_pass_encoder0011.drawIndirect(buffer00121, 0);
    render_pass_encoder0010.drawIndexed(3);
    device00.queue.submit([command_buffer0010, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0096, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer00212, 0);
    render_pass_encoder0081.drawIndirect(buffer0066, 0);
    render_pass_encoder0081.drawIndirect(buffer00235, 0);
    render_pass_encoder0000.drawIndirect(buffer00192, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndirect(buffer0066, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00158, 0);
    render_pass_encoder0070.end();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00288 = device00.createBuffer({
        label: "buffer00288",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00288, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00288, 0);
    render_pass_encoder0050.drawIndirect(buffer00279, 0);
    render_pass_encoder0000.drawIndirect(buffer00135, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0081.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0080.drawIndirect(buffer00240, 0);
    const buffer00289 = device00.createBuffer({
        label: "buffer00289",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00290 = device00.createBuffer({
        label: "buffer00290",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00101 = device00.createBindGroup({
        label: "bind_group00101",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00289,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00290,
                },
            },
        ],
    });

    compute_pass_encoder0070.setBindGroup(0, bind_group00101);
    device00.queue.submit([command_buffer0010, ]);
    render_pass_encoder00100.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00262, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0081.drawIndexedIndirect(buffer0033, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder00100.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder00100.end();
    const buffer00291 = device00.createBuffer({
        label: "buffer00291",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00292 = device00.createBuffer({
        label: "buffer00292",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00102 = device00.createBindGroup({
        label: "bind_group00102",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00291,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00292,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group00102);
    render_pass_encoder00100.drawIndexedIndirect(buffer0062, 0);
    compute_pass_encoder0070.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer00178, 0);
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder0000.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00250, 0);
    const buffer00293 = device00.createBuffer({
        label: "buffer00293",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00294 = device00.createBuffer({
        label: "buffer00294",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00103 = device00.createBindGroup({
        label: "bind_group00103",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00293,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00294,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group00103);
    render_pass_encoder0070.end();
    render_pass_encoder0070.drawIndirect(buffer0085, 0);
    render_pass_encoder0070.end();
    render_pass_encoder00100.drawIndirect(buffer00135, 0);
    render_pass_encoder0050.drawIndirect(buffer0095, 0);
    render_pass_encoder00100.drawIndirect(buffer00282, 0);
    render_pass_encoder0081.setIndexBuffer(buffer00266, "uint16");
    render_pass_encoder00100.setIndexBuffer(buffer0096, "uint16");
    render_pass_encoder0080.popDebugGroup();
    const buffer00295 = device00.createBuffer({
        label: "buffer00295",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00296 = device00.createBuffer({
        label: "buffer00296",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00104 = device00.createBindGroup({
        label: "bind_group00104",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00295,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00296,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00104);
    render_pass_encoder0070.drawIndexedIndirect(buffer00241, 0);
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder00100.drawIndirect(buffer00257, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00278, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    const buffer00297 = device00.createBuffer({
        label: "buffer00297",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00298 = device00.createBuffer({
        label: "buffer00298",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00105 = device00.createBindGroup({
        label: "bind_group00105",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00297,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00298,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00105);
    const buffer00299 = device00.createBuffer({
        label: "buffer00299",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00300 = device00.createBuffer({
        label: "buffer00300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00106 = device00.createBindGroup({
        label: "bind_group00106",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00299,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00300,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00106);
    render_pass_encoder00100.drawIndirect(buffer0045, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00232, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00151, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00301 = device00.createBuffer({
        label: "buffer00301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00301, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00301, 0);
    device00.queue.submit([command_buffer005, command_buffer009, ]);
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer00302 = device00.createBuffer({
        label: "buffer00302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00302, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer00302, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndirect(buffer00217, 0);
    compute_pass_encoder0070.end();
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0080.drawIndexedIndirect(buffer00274, 0);
    const buffer00303 = device00.createBuffer({
        label: "buffer00303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00304 = device00.createBuffer({
        label: "buffer00304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00107 = device00.createBindGroup({
        label: "bind_group00107",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00304,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00107);
    render_pass_encoder0080.drawIndirect(buffer00242, 0);
    render_pass_encoder0011.drawIndirect(buffer0058, 0);
    render_pass_encoder0081.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder0000.drawIndirect(buffer00253, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0080.drawIndirect(buffer000, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer00305 = device00.createBuffer({
        label: "buffer00305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00305, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer00305, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0081.drawIndirect(buffer00251, 0);
    device00.queue.submit([command_buffer008, ]);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    const buffer00306 = device00.createBuffer({
        label: "buffer00306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00307 = device00.createBuffer({
        label: "buffer00307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00108 = device00.createBindGroup({
        label: "bind_group00108",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00307,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00108);
    render_pass_encoder00100.drawIndirect(buffer00144, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00212, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder00100.setIndexBuffer(buffer0087, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00235, 0);
    render_pass_encoder0010.drawIndirect(buffer00231, 0);
    render_pass_encoder0081.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder0010.drawIndirect(buffer00202, 0);
    render_pass_encoder0080.drawIndexedIndirect(buffer00215, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder00100.drawIndirect(buffer0098, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0054, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0080.drawIndexedIndirect(buffer0062, 0);
    const buffer00308 = device00.createBuffer({
        label: "buffer00308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00309 = device00.createBuffer({
        label: "buffer00309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00109 = device00.createBindGroup({
        label: "bind_group00109",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00309,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00109);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0070.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0081.end();
    render_pass_encoder0070.drawIndirect(buffer00106, 0);
    render_pass_encoder0080.drawIndirect(buffer00235, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00158, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder00100.setIndexBuffer(buffer00245, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00158, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00310 = device00.createBuffer({
        label: "buffer00310",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00310, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00310, 0);
    render_pass_encoder0000.end();
}