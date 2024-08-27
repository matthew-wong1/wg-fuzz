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
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    
    
    
    
    
    
    
    const array0 = new Float32Array([1.0, 0.5, -0.75, -0.75, 0.75, 0.5, -0.5, 0.25, 0.75, 0.75, -0.75, 0.5, 1.0, 0.0, 0.5, -0.75, 0.25, 0.0, 1.0, -0.5, 0.25, 0.75, -1.0, 0.25, -1.0, -1.0, 0.25, 1.0, 0.25, 0.75, -0.75, 1.0, -0.25, 1.0, -0.75, -0.25, 1.0, 0.75, -1.0, -0.25, 0.5, 0.75, -1.0, -0.75, 0.25, 0.75, -0.5, 0.5, 0.25, 0.0, 0.25, 0.5, 0.25, -0.25, 0.75, 0.5, 0.25, -0.25, -1.0, -1.0, 1.0, 1.0, -0.25, 0.5, -0.5, 0.5, -1.0, -0.75, 1.0, 0.5, -0.75, 0.25, 0.75, 1.0, 0.25, 0.0, -0.75, 0.0, -1.0, 0.0, -1.0, 0.75, 0.5, -1.0, -0.5, 0.0, 1.0, 0.5, -0.75, -1.0, 0.25, 0.5, 0.5, 0.75, 0.75, -0.5, 0.25, 0.25, -0.25, 0.75, ]);
    
    const array1 = new Float32Array([0.0, -0.5, 1.0, 0.25, -0.5, 1.0, 0.75, 1.0, 0.0, -0.25, -0.75, 0.25, 1.0, -0.25, -1.0, -0.5, 0.0, 1.0, -0.75, 1.0, 1.0, 0.0, -0.5, 0.75, 0.75, -0.25, -0.5, 1.0, 0.0, -0.5, -0.5, 0.75, -1.0, 1.0, 0.0, 0.0, -1.0, -0.5, -1.0, 1.0, -0.75, -0.75, 0.0, -1.0, -0.25, -0.75, -1.0, 0.75, 0.75, -0.5, 0.5, 1.0, -0.5, 0.25, 0.0, 0.75, 0.5, -0.25, -0.25, -0.5, 0.25, -0.75, 0.5, -0.25, -0.25, -0.5, 0.0, 1.0, -1.0, 0.75, 1.0, -0.25, -0.5, 0.25, 0.25, -1.0, 0.75, 0.0, 0.0, 0.75, 0.5, 0.0, -0.75, -1.0, 0.75, -0.25, 0.25, -0.75, -0.75, 1.0, -0.75, -0.5, 1.0, -0.25, -0.75, 0.0, -0.75, 0.0, 0.0, 1.0, ]);
    const array2 = new Float32Array([0.0, -0.5, 0.5, 0.25, -0.25, -0.25, 0.25, 0.5, -1.0, -1.0, -1.0, -0.25, -1.0, 0.5, -0.75, 0.75, -0.75, -1.0, 1.0, -1.0, -0.75, 0.0, -1.0, -0.75, -0.25, 1.0, -0.5, 0.0, 0.0, -0.75, -1.0, 0.5, -0.25, 0.25, 0.5, -1.0, 0.0, -1.0, -0.25, -0.5, -0.25, -0.25, 0.5, -0.5, 0.25, -0.75, 0.25, 0.5, 1.0, -1.0, -0.25, -0.5, -0.75, 0.5, 0.25, -1.0, -1.0, 1.0, -1.0, 0.0, -0.25, -0.25, 0.25, 1.0, 1.0, -0.75, -0.75, 0.25, 0.0, -0.5, 0.5, 0.75, 1.0, -0.75, -0.5, 1.0, 0.5, 1.0, 0.25, -0.25, -1.0, 0.75, -0.25, -0.25, 0.25, 0.25, 0.0, 0.75, -1.0, 0.5, -0.25, 0.5, 0.0, -0.75, 0.0, 0.25, -0.75, -0.5, 0.5, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([0.0, -0.25, 0.25, 0.75, 0.0, 0.0, -0.25, -0.25, -1.0, 1.0, -0.25, -0.75, -0.25, 0.25, -0.5, -0.25, 0.5, 1.0, 0.75, -0.5, 1.0, 0.5, 0.0, -1.0, -0.25, 1.0, 0.0, 1.0, -0.25, 0.25, -0.5, -0.5, 0.75, 0.75, -1.0, 0.75, -0.75, 0.5, -1.0, 0.25, 0.75, -1.0, 0.25, 1.0, -1.0, 1.0, 0.5, -0.75, 0.75, -1.0, 1.0, 0.0, 0.75, 0.5, 0.0, -0.5, 0.25, -0.75, -0.25, -0.75, -1.0, 0.0, -0.5, 0.0, -0.75, -0.5, 1.0, -0.75, -0.25, -0.25, -0.75, 0.0, 0.5, 0.5, 0.5, 1.0, 0.0, -0.25, 0.5, -0.75, 1.0, 0.0, 0.75, 0.0, 0.5, 0.0, 0.5, 0.5, -0.5, -1.0, 0.5, 1.0, -0.5, -0.25, -0.75, 1.0, 0.5, -0.25, 0.5, -0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device10.pushErrorScope("validation");
    const array4 = new Float32Array([-0.5, -0.25, 0.75, 0.75, -0.25, 1.0, 0.75, -0.25, -0.5, -0.5, -0.75, 0.0, -0.25, 0.0, 0.5, 0.0, 0.0, 0.5, -0.75, 0.5, 0.5, -0.75, -0.25, 0.5, -0.5, 0.0, -0.25, -0.75, 1.0, 0.25, 0.5, 1.0, -0.5, -0.75, 1.0, 0.5, 1.0, 0.25, 0.25, 0.5, 0.0, -0.25, -1.0, -0.75, -0.5, 0.25, -0.75, 0.75, 0.25, -0.5, 0.75, -1.0, -0.5, 1.0, -0.75, -0.25, 1.0, 0.25, -0.25, 0.25, 0.25, -0.75, -0.5, 0.5, -1.0, 0.0, 0.75, 0.0, -0.5, 0.75, -1.0, 0.5, 0.0, -0.75, 0.25, 0.25, -0.5, 0.0, 0.0, -0.25, -1.0, -0.25, 0.25, -0.75, 0.5, 0.75, -0.5, -0.25, -0.75, 0.25, 0.5, 0.75, 0.25, 0.25, 0.0, -0.25, -0.5, 0.25, -0.75, 0.25, ]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array5 = new Float32Array([-1.0, 0.75, -1.0, -0.5, 0.25, -0.5, -0.25, -0.25, -0.5, -1.0, -1.0, 0.75, 0.0, 1.0, 1.0, -1.0, 0.25, 0.0, -0.5, 0.25, 0.0, -0.25, 0.0, -1.0, 0.25, -0.5, -0.25, -0.25, 1.0, 0.75, -0.5, 0.75, 0.0, -0.25, -0.5, 1.0, 0.5, 0.5, -0.5, -0.25, -1.0, -1.0, -0.75, -0.75, 0.5, -0.5, 0.5, 0.75, -1.0, 1.0, 0.0, -0.5, 0.75, 1.0, 0.0, -0.25, 0.25, -0.5, 0.5, 0.25, 0.75, -0.25, 0.5, -0.75, -0.5, 0.5, -0.5, 1.0, 0.75, 0.0, -0.5, 1.0, 1.0, 0.25, 0.75, 0.25, 0.25, -0.75, 0.25, 0.25, 0.75, 0.25, -0.25, 0.75, 0.75, -0.25, -1.0, 0.5, 0.5, -0.5, 1.0, 1.0, 0.5, -1.0, -0.75, -1.0, -0.5, 1.0, 1.0, 1.0, ]);
    
    device10.pushErrorScope("internal");
    command_encoder100.clearBuffer(buffer100);
    command_encoder100.pushDebugGroup("mygroupmarker")
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    device10.pushErrorScope("validation");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
        occlusionQuerySet: query100
    });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("internal");
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    const array6 = new Float32Array([0.25, 0.0, 0.25, -1.0, -0.75, -1.0, -0.5, 0.25, 1.0, 0.75, 0.0, 0.75, 0.5, -0.25, 1.0, -0.75, 0.5, -0.5, 0.5, -1.0, -1.0, 0.0, -0.25, 0.75, 0.25, -1.0, -0.5, -1.0, -0.25, -0.25, -0.5, -1.0, 0.5, -0.5, 0.25, -0.75, 0.75, -1.0, 0.25, -0.75, 1.0, -0.75, -0.25, 0.25, 1.0, 0.25, -0.5, -0.75, 0.0, -1.0, 0.25, -0.25, -0.75, -0.25, -0.25, 0.75, -0.75, 0.0, -0.5, -0.75, -0.75, -0.5, -0.5, -0.5, -1.0, 0.75, 0.25, 0.75, -0.75, 0.0, 0.0, -0.75, 0.5, 0.5, 0.5, 0.75, 0.0, 0.5, 0.75, -0.75, -1.0, 0.5, -1.0, 0.75, 1.0, 0.5, 0.75, -0.75, 0.0, -1.0, -0.75, 0.0, -1.0, -1.0, -0.5, -0.5, -0.5, -0.5, 0.25, 0.0, ]);
    
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
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
    command_encoder200.insertDebugMarker("mymarker");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture102 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    render_pass_encoder1000.executeBundles([])
    command_encoder200.insertDebugMarker("mymarker");
    render_pass_encoder1000.insertDebugMarker("marker");
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    command_encoder200.clearBuffer(buffer200);
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    texture102.destroy();
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
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
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    device10.pushErrorScope("validation");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    render_pass_encoder1001.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
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
    
    render_pass_encoder1000.executeBundles([])
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
    render_pass_encoder1010.setStencilReference(1);
    texture200.destroy();
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view1005 = texture100.createView({ label: "texture_view1005" });
    render_pass_encoder1000.insertDebugMarker("marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder1000.executeBundles([])
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder1001.setStencilReference(1);
    buffer101.destroy()
    texture100.destroy();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_pass_encoder1000.popDebugGroup();
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
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    command_encoder200.insertDebugMarker("mymarker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    render_pass_encoder1001.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1001.executeBundles([])
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_buffer201 = command_encoder201.finish();
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    
    render_pass_encoder1000.setStencilReference(1);
    device20.pushErrorScope("out-of-memory");
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const texture_view1006 = texture100.createView({ label: "texture_view1006" });
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder1001.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const array7 = new Float32Array([0.0, 1.0, -0.75, -1.0, 0.25, 0.5, -0.75, 0.25, 0.75, -0.25, 0.75, 0.75, 0.0, -1.0, 0.5, 0.0, -0.5, -1.0, 0.25, -0.25, -0.75, -1.0, 0.75, 0.25, 0.25, 0.25, 0.0, -0.5, 0.0, 0.0, -0.5, -0.75, 1.0, -1.0, 0.25, 0.25, -0.25, -1.0, -0.5, 0.0, -0.75, 1.0, 0.5, 1.0, -1.0, 1.0, 1.0, 0.5, 0.75, -1.0, -0.5, 0.5, -0.75, 0.0, -0.25, 0.75, -0.5, -0.25, 1.0, 0.5, 1.0, -0.75, 0.0, 0.5, 0.5, -1.0, 0.75, -0.5, -0.75, 0.75, 0.25, -0.75, 0.5, 0.0, 0.0, -1.0, -0.75, -0.25, 0.75, -0.5, -0.25, -1.0, 1.0, -0.5, -0.25, 0.25, 0.0, 0.5, -0.5, -0.5, 0.75, -1.0, -0.75, 0.75, -0.25, 0.75, 0.0, -0.5, 0.5, 0.75, ]);
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_pass_encoder1002 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1004,
            },
        ],
        occlusionQuerySet: query101
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_pass_encoder1002.executeBundles([render_bundle_encoder101, ])
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const render_pass_encoder1003 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1003",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query101
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    texture201.destroy();
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.popDebugGroup();
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1006,
            },
        ],
        occlusionQuerySet: query101
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setStencilReference(1);
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
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1004,
            },
        ],
        occlusionQuerySet: query101
    });
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
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1011.pushDebugGroup("group_marker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder1003.setStencilReference(1);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const command_buffer202 = command_encoder202.finish();
    const array8 = new Float32Array([-0.25, -0.5, -0.5, -1.0, -1.0, -0.75, 0.75, 0.5, 0.5, -0.75, 0.0, 1.0, -1.0, 1.0, -1.0, -0.25, -0.75, -0.5, -1.0, -1.0, -0.5, 1.0, -0.75, 0.25, -0.25, -0.75, 0.5, -0.25, 0.5, -0.75, -0.75, -0.25, 1.0, -0.25, 1.0, -1.0, -0.75, 0.0, 0.5, 1.0, -0.75, 0.0, 1.0, 0.5, -0.25, -0.25, -0.75, 0.5, 0.25, 0.5, -0.25, 0.5, -0.25, 0.5, 0.25, -0.5, 0.0, -0.25, -0.5, 0.0, -0.75, -0.5, -0.25, -0.5, -1.0, -1.0, -0.75, 0.25, 0.0, 1.0, 0.5, 0.5, 0.75, 0.5, -0.25, -0.75, -0.75, -0.25, -0.5, -0.5, -0.5, -0.25, 1.0, -0.75, 0.25, 0.75, -0.25, 0.0, 0.0, -0.25, -1.0, -1.0, 0.25, 0.0, 0.0, 1.0, 0.25, 0.0, 1.0, -1.0, ]);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const render_pass_encoder1012 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1021.executeBundles([])
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pass_encoder1004 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1004",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1004,
            },
        ],
        occlusionQuerySet: query101
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1012.executeBundles([])
    
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1021.executeBundles([])
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    render_pass_encoder1001.popDebugGroup();
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder1003.setStencilReference(1);
    buffer103.destroy()
    render_pass_encoder1002.executeBundles([])
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder1002.executeBundles([])
    device20.pushErrorScope("internal");
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    render_pass_encoder1004.pushDebugGroup("group_marker");
    render_pass_encoder1003.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer200.destroy()
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1004.setStencilReference(1);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder1003.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    texture101.destroy();
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1003.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder1030.insertDebugMarker("marker");
    buffer201.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_pass_encoder1003.executeBundles([])
    render_pass_encoder1011.executeBundles([])
    render_pass_encoder1011.setStencilReference(1);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer100.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1004,
            },
        ],
        occlusionQuerySet: query100
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder1003.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1003.insertDebugMarker("marker");
    render_pass_encoder1001.pushDebugGroup("group_marker");
    render_pass_encoder1021.pushDebugGroup("group_marker");
    render_pass_encoder1040.executeBundles([render_bundle_encoder102, ])
    render_pass_encoder1030.executeBundles([])
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1021.setStencilReference(1);
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder203.copyTextureToTexture(
        {
            texture: texture202
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    command_encoder103.insertDebugMarker("mymarker");
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
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder1004.popDebugGroup();
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_buffer203 = command_encoder203.finish();
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1041.setStencilReference(1);
    buffer102.destroy()
    render_bundle_encoder202.popDebugGroup();
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.executeBundles([render_bundle_encoder101, render_bundle_encoder102, ])
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    command_encoder103.insertDebugMarker("mymarker");
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder104.pushDebugGroup("mygroupmarker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder1012.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1004,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder104.insertDebugMarker("mymarker");
    render_pass_encoder1012.executeBundles([render_bundle_encoder102, ])
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_pass_encoder1004.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1012.executeBundles([])
    
    render_pass_encoder1004.setStencilReference(1);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer204.destroy()
    render_pass_encoder1004.executeBundles([])
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    render_pass_encoder1001.popDebugGroup();
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder1000.setPipeline(compute_pipeline102);
    texture202.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder1013 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1013",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query100
    });
    command_encoder100.copyTextureToTexture(
        {
            texture: texture100
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1004.setStencilReference(1);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_pass_encoder1013.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1012.executeBundles([])
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    buffer100.destroy()
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1021.executeBundles([])
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1001.setStencilReference(1);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    render_pass_encoder1041.executeBundles([render_bundle_encoder102, ])
    render_pass_encoder1001.executeBundles([])
    buffer202.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1013.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    render_pass_encoder1003.setStencilReference(1);
    render_pass_encoder1001.pushDebugGroup("group_marker");
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1012.executeBundles([])
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1001.insertDebugMarker("marker");
    render_pass_encoder1013.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1021.insertDebugMarker("marker");
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder104.insertDebugMarker("mymarker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder102.popDebugGroup();
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.insertDebugMarker("marker");
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    
    texture201.destroy();
    render_pass_encoder1001.executeBundles([])
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.executeBundles([])
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer205.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1004.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1021.executeBundles([])
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.executeBundles([])
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1031.popDebugGroup();
    
    const render_pass_encoder1032 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1032",
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
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder1013.popDebugGroup();
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder1021.executeBundles([])
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    render_pass_encoder1011.popDebugGroup();
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1004.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1004.executeBundles([])
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1032.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1032.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture201.destroy();
    const render_pass_encoder1042 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1042",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1003,
            },
        ],
        occlusionQuerySet: query100
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1032.insertDebugMarker("marker");
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1042.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    const command_buffer102 = command_encoder102.finish();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1004.popDebugGroup();
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1004.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1002.popDebugGroup();
}