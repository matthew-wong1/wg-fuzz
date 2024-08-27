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
    
    const array0 = new Float32Array([0.25, -1.0, 1.0, 0.75, 0.0, 0.0, 1.0, -1.0, 0.0, 0.75, -0.5, 0.0, -0.75, -1.0, 1.0, 0.75, 0.0, 0.5, 0.5, -0.5, -0.75, 0.75, -0.25, -0.5, -0.75, 0.75, 0.5, 1.0, -0.75, -0.25, 0.25, -1.0, -0.5, -0.75, 0.25, -0.25, 1.0, 0.5, 0.5, -0.25, -0.25, 0.25, 0.75, -1.0, 0.0, -0.5, 0.0, 0.0, -0.75, -1.0, 0.0, -1.0, -0.75, 1.0, -0.25, -0.75, -1.0, 0.75, -0.75, -0.5, -0.5, -0.75, -0.25, -0.75, 1.0, -0.25, 0.5, 1.0, -0.25, -0.25, -1.0, 0.25, 0.0, 0.25, -0.75, 0.25, -0.5, 0.25, 1.0, 0.75, -0.5, 0.25, 1.0, 0.75, -0.25, 0.25, -1.0, 0.0, 0.0, -0.25, 0.75, 1.0, -0.25, -0.25, 1.0, 0.25, 1.0, 0.5, -0.5, 0.0, ]);
    const array1 = new Float32Array([-1.0, -0.75, -0.75, -0.25, -0.75, -0.25, -1.0, -0.75, -0.5, -1.0, -0.5, -0.75, 0.75, -0.5, -0.75, -0.75, -1.0, 0.75, 0.25, 0.25, 0.5, -1.0, 0.75, 0.25, -0.75, 0.5, 0.5, -0.25, 0.0, 0.25, -0.25, -0.25, -0.5, 0.25, 0.0, 0.0, -0.25, -0.5, -1.0, 0.25, -0.5, 0.0, -1.0, 0.0, 1.0, 0.5, 0.75, -0.25, 0.25, -1.0, 1.0, -0.25, -0.5, 0.75, 0.0, -0.75, 0.5, -0.5, 1.0, 0.5, -0.25, 0.25, 0.25, 0.0, 0.0, -1.0, 1.0, 0.5, 1.0, -1.0, -0.75, 0.25, 0.75, -1.0, 1.0, 1.0, 0.25, -0.25, -1.0, 0.0, 0.0, 1.0, 0.5, 1.0, -0.5, 1.0, 0.5, -0.75, -1.0, 0.75, -1.0, 0.75, 0.0, 0.0, 0.5, 0.25, 0.5, 0.5, -1.0, 0.75, ]);
    
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const array2 = new Float32Array([0.5, 0.0, 1.0, 0.25, -0.25, 0.25, -0.25, -1.0, 0.0, -0.5, -0.25, -0.75, 0.0, -0.75, 0.25, -1.0, 0.25, 0.5, 0.25, 0.0, 0.0, -0.5, 0.5, -0.75, -0.25, -0.25, -1.0, -0.25, 0.25, 1.0, 1.0, -1.0, 0.5, -0.75, 0.25, 1.0, 0.0, 0.75, 0.75, 0.25, -0.5, -0.25, -0.75, -0.25, 0.25, 1.0, 0.5, -0.75, -0.25, -0.25, 0.25, 0.5, 0.0, 0.25, -0.75, -0.5, 0.25, -0.25, -1.0, 0.0, -0.25, 0.75, 0.25, 0.25, -1.0, -0.25, 1.0, -0.25, 0.75, -1.0, 1.0, 0.5, 0.5, 0.75, -0.75, -0.5, 0.25, -1.0, -0.5, -0.75, 0.0, 0.25, -0.25, 0.0, 0.75, 1.0, 0.75, 0.0, 0.25, 0.75, 0.5, -0.75, -1.0, 0.5, 0.0, 0.75, 0.0, 0.0, -0.25, -0.75, ]);
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array3 = new Float32Array([0.25, -0.5, -0.5, -0.25, -1.0, -0.75, 0.0, 0.0, -0.5, 0.5, 0.5, -1.0, -0.75, 0.5, 0.25, -0.75, 1.0, -1.0, 1.0, -0.5, 0.25, 0.5, 0.5, 0.5, 0.0, -1.0, -1.0, 0.5, 0.75, -0.25, 0.75, 0.0, -0.75, 0.75, 1.0, -0.5, -0.25, 1.0, 0.0, 0.75, 0.0, -0.75, -1.0, -1.0, -0.75, 0.5, -1.0, -0.75, -0.5, -0.5, -0.25, -0.5, -1.0, 0.0, 0.5, 0.5, 0.0, -0.25, 0.5, 0.25, 0.25, 0.5, 0.0, -0.75, 0.0, 0.25, 0.75, 0.0, -0.25, -0.5, -0.5, 0.5, 0.25, 0.25, 0.25, -0.75, -0.25, -0.75, 0.75, 0.5, -0.25, 0.75, 0.25, 0.75, -0.25, -0.75, 0.75, 0.0, 0.25, -1.0, -0.25, 0.0, -0.5, -0.25, -1.0, -0.75, 0.75, -0.5, 0.0, 0.5, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_buffer000 = command_encoder000.finish();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([0.0, -0.5, 0.0, -0.5, 0.0, -0.75, -0.25, 0.75, 0.5, 0.0, -0.75, -1.0, 1.0, 0.75, 0.0, -0.5, -1.0, 0.75, 0.25, 0.75, 0.5, 0.0, 0.25, -1.0, -0.5, -0.5, -0.25, 1.0, -0.25, 1.0, 0.25, -0.25, 1.0, 1.0, -0.75, 0.0, 0.5, -0.5, -0.25, -0.5, 1.0, 1.0, 0.25, 0.0, 0.75, 0.25, 0.25, -1.0, 0.75, 0.75, -0.75, -1.0, 0.75, 0.75, -0.5, -0.75, -0.75, -0.75, 0.75, 0.25, -0.5, 0.75, 0.75, 0.5, -1.0, 0.75, -0.5, 1.0, 0.25, -1.0, -0.5, 0.0, 0.75, 0.0, -0.5, 0.0, -0.5, 0.5, -0.75, 1.0, 0.75, -0.25, 0.75, -1.0, 0.75, -0.75, 0.5, -0.5, -0.75, 0.0, 0.5, 0.75, -0.75, 0.25, 0.25, 0.25, 0.5, 0.5, -0.25, -1.0, ]);
    device00.pushErrorScope("validation");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer002 = command_encoder002.finish();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array5 = new Float32Array([-0.5, 1.0, 0.5, 1.0, -0.5, -1.0, 0.75, -0.25, -1.0, -0.75, -1.0, -0.5, -0.25, 0.75, 0.75, -0.75, -0.5, -0.25, 0.25, 1.0, 0.5, -0.75, 0.25, -0.75, -0.75, 0.75, -1.0, -0.25, 0.0, -0.5, -0.25, -0.25, 0.75, 0.75, -0.5, -0.25, 0.0, -0.5, -0.5, 1.0, 0.0, 0.0, -0.5, 0.25, -0.25, -0.75, 0.0, -0.75, 0.25, -0.75, 0.0, 0.0, 0.0, 1.0, 0.5, 1.0, 0.75, 0.25, -0.25, 1.0, 0.25, 0.75, -0.5, 0.0, -1.0, -1.0, 1.0, 0.0, 0.25, 0.5, 0.75, -1.0, 1.0, -0.5, 0.25, 0.25, 0.75, -0.5, -1.0, 0.75, 0.5, 0.25, -0.25, -1.0, -0.5, 0.25, -0.25, 0.5, 0.75, -0.25, -0.75, 0.25, -0.25, -1.0, -0.5, -0.75, 0.5, -0.75, -0.25, 0.0, ]);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture000.destroy();
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
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
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("validation");
    render_bundle_encoder001.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
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
    query000.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
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
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    command_encoder003.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder0010.beginOcclusionQuery(0)
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("validation");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.pushErrorScope("validation");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    command_encoder003.pushDebugGroup("mygroupmarker")
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
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.submit([command_buffer000, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array6 = new Float32Array([1.0, 1.0, -0.75, 0.25, 0.0, -0.75, -0.5, 0.75, -0.25, 1.0, 0.75, 0.0, -0.75, -0.5, 0.5, -0.5, 0.5, 0.5, -1.0, 0.75, -0.5, 0.25, 1.0, -0.5, 0.0, 0.0, 0.0, 0.0, 0.75, -0.25, -0.75, 0.25, -0.25, -1.0, 0.0, 0.0, 0.25, 0.5, 0.75, 1.0, 0.25, -0.75, 0.75, 0.75, 0.5, -0.5, 0.5, -1.0, -0.25, 0.75, -0.5, -0.25, -0.25, 0.5, 0.0, -0.75, -0.75, 1.0, -1.0, -1.0, 1.0, -0.5, -0.75, -0.25, -1.0, 0.0, -0.5, 0.5, 0.5, -0.5, 1.0, 0.75, -1.0, -0.75, 0.75, 0.25, -0.25, 1.0, 1.0, -0.25, 0.5, 0.75, -0.75, -0.5, -0.5, -1.0, -0.5, -0.75, -1.0, 0.75, 0.5, -0.5, 0.25, 1.0, 0.5, -0.75, -0.25, 0.0, 0.0, -1.0, ]);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0030.executeBundles([])
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder000.popDebugGroup();
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    buffer000.destroy()
    render_pass_encoder0030.popDebugGroup();
    
    render_pass_encoder0050.beginOcclusionQuery(0)
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
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    device00.destroy();
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
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
    
    
    texture100.destroy();
    render_bundle_encoder101.popDebugGroup();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const array7 = new Float32Array([-0.75, 0.75, 1.0, -0.5, 0.0, -1.0, 1.0, -1.0, -0.5, 0.5, -0.5, -0.25, -0.75, 0.5, 0.25, -0.5, 0.0, -0.25, 0.25, 0.0, -0.25, -1.0, 0.25, 0.5, 0.0, -0.75, 0.5, -0.25, -0.75, -0.25, -0.25, 0.5, 0.5, 1.0, -0.5, -0.5, 0.0, 0.75, 0.0, -1.0, -1.0, -0.5, -0.5, 0.25, 0.5, 0.25, 1.0, 0.75, 0.75, -1.0, 1.0, -0.25, -0.75, 0.5, 0.5, 1.0, -1.0, -0.75, -0.5, 1.0, 0.5, -1.0, 0.5, 1.0, -0.5, 0.75, -0.25, -0.5, -1.0, 0.5, 0.0, 0.25, 0.5, 0.0, -0.25, 0.5, 0.25, 1.0, 0.25, -0.25, -0.5, 1.0, -1.0, -1.0, -0.5, 0.0, 0.25, 0.0, 0.0, 0.75, 0.0, 0.0, -0.75, 0.25, -0.5, 0.0, 0.25, 0.5, 0.5, 0.25, ]);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
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
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    device20.destroy();
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    texture102.destroy();
    texture101.destroy();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    device10.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    query101.destroy()
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    device20.destroy();
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
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    buffer200.destroy()
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
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
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
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    texture301.destroy();
    
    device20.pushErrorScope("out-of-memory");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    texture300.destroy();
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    compute_pass_encoder3000.popDebugGroup()
    texture302.destroy();
    
    device30.pushErrorScope("internal");
    render_pass_encoder0050.endOcclusionQuery()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
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
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3030.pushDebugGroup("group_marker");
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    buffer101.destroy()
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
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
    texture200.destroy();
    
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8snorm",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture303 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder3020.pushDebugGroup("group_marker");
    
    device30.queue.writeTexture({ texture: texture303 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pass_encoder3011 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3011" });
    compute_pass_encoder3011.pushDebugGroup("group_marker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer303, ]);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture305 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3011.insertDebugMarker("marker")
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    
    render_pass_encoder3030.executeBundles([])
    texture305.destroy();
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    texture303.destroy();
    render_pass_encoder0040.executeBundles([])
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    device30.queue.writeTexture({ texture: texture305 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array8 = new Float32Array([-1.0, -1.0, 0.75, 0.5, 0.0, -0.25, 0.75, 0.5, 0.75, 0.5, 0.5, -0.25, 0.0, -0.75, 0.5, 0.75, 0.5, 0.75, 0.5, -0.5, 0.25, 0.0, 1.0, -0.75, -0.75, -1.0, -1.0, 1.0, -0.25, 0.25, -0.25, 0.75, 0.0, 0.75, 0.25, -1.0, 1.0, -0.25, 1.0, -0.5, -0.5, 0.0, 0.5, -0.25, -0.75, 1.0, 0.75, -0.5, 0.75, -1.0, -1.0, -0.5, -0.5, -0.25, -0.5, -1.0, 0.5, 0.5, 0.75, 0.25, 0.5, 0.75, -0.25, 0.25, 0.5, -0.5, 0.75, 0.5, -0.75, -0.25, 1.0, 1.0, 0.5, 0.25, 0.5, 0.25, -0.75, 1.0, 0.5, 0.75, -0.75, 0.5, 0.0, -0.75, -0.75, -0.75, 0.25, -0.75, -0.5, 0.25, -0.5, -0.25, 0.75, 0.5, -0.75, 0.25, 0.75, 0.75, 0.75, -0.25, ]);
    device30.queue.writeTexture({ texture: texture303 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device30.queue.writeTexture({ texture: texture305 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3020.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    device30.queue.writeTexture({ texture: texture304 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3011.insertDebugMarker("marker")
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
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
    render_pass_encoder3000.executeBundles([])
    texture306.destroy();
    texture304.destroy();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    texture306.destroy();
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder3020.pushDebugGroup("group_marker");
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3020.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_pass_encoder3020.executeBundles([])
    render_pass_encoder3000.pushDebugGroup("group_marker");
    query300.destroy()
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    render_pass_encoder3000.executeBundles([])
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
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
    query301.destroy()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder3000.popDebugGroup()
    query300.destroy()
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder3000.executeBundles([])
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3000.executeBundles([])
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    query301.destroy()
    
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder3001.executeBundles([])
    
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder3010.executeBundles([])
    render_pass_encoder3010.executeBundles([])
    device00.queue.submit([command_buffer000, ]);
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query303
    });
    render_pass_encoder3021.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3001.pushDebugGroup("group_marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder3011.popDebugGroup()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder3011.pushDebugGroup("group_marker")
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3021.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_pass_encoder3021.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
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
        occlusionQuerySet: undefined
    });
    const array9 = new Float32Array([-0.5, -1.0, 0.25, -1.0, 0.25, 0.25, 0.25, 0.5, -0.25, -0.75, -0.5, -0.25, -0.5, -0.5, 0.75, 0.0, -0.5, 0.5, 0.5, -1.0, -0.5, -0.75, 1.0, -0.5, 1.0, 0.5, -0.75, 0.25, -0.25, 0.75, -0.75, -1.0, -1.0, -0.25, 0.5, 0.75, -0.5, 1.0, 0.25, 0.75, -0.5, -0.25, -1.0, 1.0, -0.75, 1.0, 0.5, 0.75, 0.25, -0.25, -0.75, -1.0, 0.0, 1.0, -0.75, 0.25, -0.5, -0.75, -0.75, 1.0, 0.75, 0.75, -0.75, 1.0, -0.5, 0.0, 1.0, -1.0, -0.5, -0.25, 1.0, -0.25, -0.25, 1.0, -0.25, 1.0, 0.75, 0.0, 0.25, 0.5, -0.25, -0.5, 0.25, 1.0, -0.25, 0.25, 0.5, -0.75, 0.25, -0.5, -0.5, 0.75, 0.5, 0.0, 0.5, -1.0, -0.5, 1.0, 0.75, -0.75, ]);
    
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    
    render_pass_encoder3040.executeBundles([])
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3020.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    const array10 = new Float32Array([-0.25, -0.75, 0.5, 0.75, -0.5, 0.25, 1.0, -0.5, -0.75, -1.0, 0.75, 0.0, -0.5, -0.75, -1.0, 0.75, 0.25, 0.75, 0.0, -0.5, 1.0, -0.5, -1.0, -0.75, 1.0, 0.5, 0.25, 0.75, -0.5, 0.75, -0.75, -0.25, -0.75, 0.75, 0.0, 0.75, 0.0, 0.25, 0.75, -1.0, -0.75, 0.0, 0.0, -1.0, -0.5, 0.0, 0.25, -0.25, -0.75, 0.25, 0.5, 0.5, 0.75, 0.75, 0.0, 0.5, 0.25, 1.0, 0.25, -0.75, -1.0, 0.75, -0.25, -1.0, 0.5, 1.0, 0.75, -0.25, -0.25, 0.5, 0.75, -0.25, -0.75, -0.25, -1.0, 0.5, 1.0, 1.0, 0.25, -1.0, 0.25, 0.0, -1.0, 0.75, 0.75, -0.5, 0.25, 0.25, 0.75, 0.25, 0.0, -0.75, 0.75, -0.25, -0.25, 0.75, -0.25, 0.25, 0.5, 0.75, ]);
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture_view3070 = texture307.createView({ label: "texture_view3070" });
    
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    query003.destroy()
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pass_encoder3041 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3041",
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
    texture307.destroy();
    render_pass_encoder3030.executeBundles([])
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    const array11 = new Float32Array([-0.5, 0.75, 1.0, -1.0, 0.25, 0.75, 1.0, 0.5, -0.5, -0.25, 0.75, -0.75, 0.25, 0.25, 0.75, 0.75, -0.75, 0.25, 1.0, 0.0, 1.0, 0.0, 0.0, 0.75, 0.25, 0.25, -0.5, -0.5, 0.75, 0.5, -0.75, 0.25, 0.25, -0.5, 1.0, -1.0, -0.5, -1.0, -0.75, 1.0, 0.0, -0.75, 0.5, 1.0, -0.25, -0.25, 0.0, 0.25, -0.25, 1.0, -0.25, -0.25, 0.25, -0.75, -0.75, 1.0, -1.0, 1.0, -0.5, -0.75, -0.5, 1.0, -0.5, -0.5, 0.75, 0.75, 0.5, 0.0, 0.25, -0.5, 1.0, 0.0, -0.5, -1.0, 0.25, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.5, -0.5, -0.75, -1.0, 0.5, -0.5, 0.75, 1.0, -1.0, 0.75, -0.5, 0.5, 0.0, 0.25, -0.75, -0.25, 0.25, -0.5, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3021.executeBundles([])
    render_pass_encoder3041.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3041.pushDebugGroup("group_marker");
    render_bundle_encoder101.popDebugGroup();
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder3001 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3001" });
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder3011.beginOcclusionQuery(0)
    
    render_pass_encoder3021.pushDebugGroup("group_marker");
    const texture308 = device30.createTexture({
        label: "texture308",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3011.pushDebugGroup("group_marker");
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3000.executeBundles([])
    render_pass_encoder3020.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    const texture309 = device30.createTexture({
        label: "texture309",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeTexture({ texture: texture001 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_pass_encoder3021.popDebugGroup();
    compute_pass_encoder3001.pushDebugGroup("group_marker")
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    texture308.destroy();
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    query302.destroy()
    
    compute_pass_encoder3011.popDebugGroup()
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3041.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3001.popDebugGroup();
    
    render_pass_encoder3021.executeBundles([])
    texture309.destroy();
    compute_pass_encoder3011.pushDebugGroup("group_marker")
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query302.destroy()
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    render_pass_encoder3011.endOcclusionQuery()
    render_pass_encoder3041.executeBundles([])
    render_pass_encoder3021.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    const command_buffer306 = command_encoder306.finish();
    
    render_pass_encoder3010.executeBundles([])
    render_bundle_encoder200.popDebugGroup();
    compute_pass_encoder3050.pushDebugGroup("group_marker")
    texture306.destroy();
    
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    compute_pass_encoder3001.insertDebugMarker("marker")
    compute_pass_encoder3050.insertDebugMarker("marker")
    render_pass_encoder3021.pushDebugGroup("group_marker");
    render_pass_encoder3021.beginOcclusionQuery(0)
    
    render_pass_encoder3041.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const texture3010 = device30.createTexture({
        label: "texture3010",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder3021.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3041.executeBundles([])
    query301.destroy()
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_pass_encoder3011.executeBundles([])
    compute_pass_encoder3010.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture305 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("internal");
    
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
    device30.queue.writeTexture({ texture: texture303 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture309 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder3001.pushDebugGroup("group_marker");
    render_pass_encoder3021.endOcclusionQuery()
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    const array12 = new Float32Array([1.0, 0.75, 0.25, 0.75, -1.0, -0.25, -1.0, 0.5, -1.0, -0.75, 1.0, 0.5, -0.75, -0.25, 0.25, -0.75, -0.25, 1.0, 0.25, -0.5, 0.25, -0.25, -0.5, -0.5, 1.0, 0.25, 1.0, -0.25, 0.0, -0.5, 0.25, -0.75, 0.5, 0.25, -0.75, 0.25, 0.75, 1.0, -0.75, 0.25, 0.5, -0.5, 0.75, -0.25, 0.0, 0.75, 0.5, 0.75, 0.25, -0.75, -1.0, -0.25, -1.0, 0.75, -0.5, 0.75, -1.0, -0.75, 0.25, -1.0, -0.25, -1.0, -1.0, 0.75, 0.25, 1.0, -1.0, -0.75, 0.75, -0.5, 1.0, -0.5, 0.75, 0.5, -1.0, 0.5, 0.75, -0.75, 0.5, 0.75, 0.75, 0.5, 0.5, 0.25, -0.25, 1.0, 0.25, -0.5, -1.0, 0.5, 0.25, 0.5, -0.25, 0.25, 0.25, -0.25, 0.25, -0.5, 0.75, 1.0, ]);
    compute_pass_encoder3050.popDebugGroup()
    const render_pass_encoder3070 = command_encoder307.beginRenderPass({
        label: "render_pass_encoder3070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query302
    });
    command_encoder307.pushDebugGroup("mygroupmarker")
    render_pass_encoder3010.popDebugGroup();
    
    compute_pass_encoder3050.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture3010 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3070.pushDebugGroup("group_marker");
    compute_pass_encoder3010.popDebugGroup()
    texture3010.destroy();
    render_pass_encoder3070.popDebugGroup();
    
    render_pass_encoder0030.popDebugGroup();
    command_encoder300.resolveQuerySet(
        query300,
        0,
        32,
        buffer302,
        0
    )
    render_pass_encoder3020.popDebugGroup();
    device30.queue.writeTexture({ texture: texture306 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.queue.writeBuffer(buffer300, 0, array11, 0, array11.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    buffer302.destroy()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3020.pushDebugGroup("group_marker");
    command_encoder304.resolveQuerySet(
        query301,
        0,
        32,
        buffer301,
        0
    )
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3040.pushDebugGroup("group_marker");
    
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    render_pass_encoder3040.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    command_encoder302.copyTextureToTexture(
        {
            texture: texture309
        },
        {
            texture: texture3010
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    buffer301.destroy()
    compute_pass_encoder3011.insertDebugMarker("marker")
    render_pass_encoder3010.executeBundles([])
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture3011 = device30.createTexture({
        label: "texture3011",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3011.popDebugGroup()
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    render_pass_encoder3070.pushDebugGroup("group_marker");
    render_pass_encoder3041.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3070.executeBundles([])
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const render_pass_encoder3071 = command_encoder307.beginRenderPass({
        label: "render_pass_encoder3071",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3070,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler308 = device30.createSampler( { label: "sampler308" } );
    render_pass_encoder3020.popDebugGroup();
    
    render_pass_encoder3000.executeBundles([])
    render_pass_encoder3011.executeBundles([])
    render_pass_encoder3011.pushDebugGroup("group_marker");
    compute_pass_encoder3050.insertDebugMarker("marker")
    
    render_pass_encoder3040.popDebugGroup();
    
    compute_pass_encoder3050.insertDebugMarker("marker")
    compute_pass_encoder3011.insertDebugMarker("marker")
    command_encoder307.popDebugGroup()
    compute_pass_encoder3001.popDebugGroup()
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3071.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3011.popDebugGroup();
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder3070.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.submit([command_buffer306, ]);
    render_pass_encoder3040.popDebugGroup();
    command_encoder300.popDebugGroup()
    render_pass_encoder3030.popDebugGroup();
    const command_buffer305 = command_encoder305.finish();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder3050.popDebugGroup()
    render_pass_encoder3070.popDebugGroup();
    compute_pass_encoder3001.popDebugGroup()
    device30.queue.submit([command_buffer306, ]);
    device30.queue.submit([command_buffer305, ]);
    compute_pass_encoder3011.popDebugGroup()
    compute_pass_encoder3001.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3050.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder3011.popDebugGroup()
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3070.endOcclusionQuery()
    render_pass_encoder3011.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3011.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder3000.popDebugGroup();
    const command_buffer304 = command_encoder304.finish();
    device30.queue.submit([command_buffer301, command_buffer304, ]);
    render_pass_encoder3070.endOcclusionQuery()
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder3050.popDebugGroup()
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    device30.queue.submit([command_buffer306, ]);
    device30.queue.submit([command_buffer303, command_buffer305, ]);
    const command_buffer307 = command_encoder307.finish();
    render_pass_encoder3070.endOcclusionQuery()
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3070.popDebugGroup();
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder3070.endOcclusionQuery()
    compute_pass_encoder3011.popDebugGroup()
    device30.queue.submit([command_buffer306, ]);
    command_encoder302.popDebugGroup()
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3021.popDebugGroup();
    device30.queue.submit([command_buffer304, command_buffer307, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3041.popDebugGroup();
    device30.queue.submit([command_buffer305, ]);
    compute_pass_encoder3050.popDebugGroup()
}