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
    const array0 = new Float32Array([0.5, 1.0, 1.0, -0.75, 0.75, -1.0, 1.0, 0.75, 0.25, 0.75, 0.75, -0.5, 0.75, 0.25, 0.25, -0.5, -0.5, 1.0, 0.5, 0.25, 0.0, -0.5, -0.5, -0.25, -0.75, -0.5, 0.5, -0.75, -0.5, -0.25, -1.0, 0.0, 0.0, 0.0, 0.75, 0.0, -0.5, 0.25, 0.0, -1.0, -0.75, 1.0, 0.75, 0.25, 0.0, -0.75, -0.25, -1.0, 0.0, -0.25, -0.5, 0.5, -0.75, -0.25, 0.75, -0.75, 0.25, -0.5, 0.0, 0.25, 0.75, -0.75, 0.5, 1.0, 1.0, 0.5, 0.5, -0.25, 0.75, -0.5, 0.0, 0.25, -0.25, 0.25, 0.25, 1.0, 1.0, -0.25, 0.0, 0.25, -0.5, 0.25, 0.25, -1.0, 0.75, 0.25, -1.0, -0.75, 1.0, -0.75, -0.5, -1.0, -0.75, 0.0, 1.0, -0.75, 0.25, 1.0, -0.25, -0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const array1 = new Float32Array([-0.75, 0.25, -1.0, 0.25, 0.0, 0.0, -1.0, -1.0, 0.75, 0.0, -0.75, -0.5, 0.25, 1.0, 0.0, -0.25, 0.5, -0.25, 0.0, 0.25, -0.25, 0.75, 0.5, -1.0, 1.0, 1.0, -0.5, -0.75, -0.25, 0.25, 0.75, -0.75, 0.75, 0.5, 0.75, 0.5, 0.5, -0.5, -0.75, -0.25, -1.0, -0.25, -1.0, 0.75, -0.25, -0.5, 0.75, 0.25, -0.5, -0.75, -0.25, 1.0, 0.75, -0.5, -1.0, 0.75, -0.25, 0.0, 0.5, -0.25, -0.5, 0.25, -0.25, -0.5, 0.0, 0.5, 1.0, -1.0, 1.0, 0.25, 0.75, 0.25, -1.0, -1.0, -0.75, 0.0, -0.25, -0.75, -0.25, 0.25, -0.25, -0.5, 0.25, 0.75, -0.75, 0.25, 0.0, -0.25, 0.25, -1.0, 0.5, -0.5, 0.25, 1.0, -0.25, -0.75, -0.5, 0.25, 1.0, -0.5, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const array2 = new Float32Array([0.25, -0.25, 0.75, -0.25, 0.5, -0.5, -0.75, -0.75, 0.5, -0.5, 0.5, 0.5, 0.25, -0.5, -1.0, 0.75, 0.25, 0.75, 1.0, 0.25, 1.0, -1.0, -1.0, 0.75, 0.25, -0.25, -1.0, -0.75, 0.25, 0.5, 0.5, 0.5, 0.25, 1.0, 0.25, -0.5, -1.0, -0.25, 0.75, 0.75, 0.75, -0.75, -0.5, 0.5, -0.25, 0.75, 0.5, 0.5, -0.5, -0.5, -0.25, -0.75, -0.75, 1.0, -0.5, -0.5, 0.75, 0.5, -1.0, -1.0, 0.75, -0.25, 0.75, -0.75, -0.75, -0.25, -1.0, 0.75, 0.75, -1.0, 0.75, -0.75, -0.25, 0.25, 0.5, 0.0, 0.25, 0.75, -0.25, -0.25, 1.0, -0.75, 1.0, 0.5, 0.5, -0.25, 1.0, -1.0, -0.75, 0.25, 0.75, 0.0, 0.75, -0.25, -0.5, -0.25, -0.5, 0.75, -1.0, 0.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_buffer001 = command_encoder001.finish();
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([-0.75, 0.5, 0.5, 0.5, 0.0, -0.75, -1.0, 0.75, 0.75, -0.75, 0.75, -0.75, -0.75, -0.25, 0.0, -0.25, 0.5, -0.75, -0.25, 0.75, 0.25, -0.75, -0.25, 0.25, 0.0, 0.0, 0.25, -0.75, 0.25, -1.0, 1.0, 0.5, -0.5, 0.75, -1.0, -0.5, 0.5, 0.5, 0.0, 0.5, -0.25, 0.25, 0.75, 0.0, 0.0, -1.0, -0.5, 0.75, -0.5, 0.0, 0.25, -1.0, -0.75, -0.75, 0.5, -0.75, 0.0, 0.25, 0.75, 0.0, -1.0, 0.25, 0.75, 1.0, -0.25, 1.0, 0.25, 0.25, -1.0, 0.25, 0.75, 1.0, -0.75, 0.5, -0.75, -0.75, 0.75, -0.5, -0.25, 1.0, -1.0, -0.5, 0.5, -1.0, -0.5, -1.0, -1.0, 1.0, 0.5, 0.0, -0.5, 0.0, 0.5, -0.5, 0.5, 0.25, 0.0, -0.75, -0.75, -0.25, ]);
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    const array4 = new Float32Array([-0.25, -1.0, 1.0, -0.75, 0.25, -0.25, 1.0, 0.25, -0.75, 0.5, 0.25, -0.5, 0.75, 0.5, 0.75, 1.0, 0.75, 0.0, -1.0, 1.0, 1.0, -0.25, 0.5, 0.75, -0.5, 0.5, 0.75, 0.5, -0.25, 0.75, -0.25, 0.25, 0.0, 1.0, 1.0, 0.5, 1.0, -1.0, -1.0, 0.5, 0.75, 1.0, -0.75, 0.5, -0.25, 0.5, 0.5, 1.0, 1.0, -1.0, 1.0, 1.0, -1.0, 1.0, 0.5, -0.75, -0.5, 0.75, 1.0, 0.75, -1.0, -1.0, -1.0, -0.25, 0.5, 1.0, 0.5, 0.25, 0.75, 1.0, 1.0, -1.0, 0.0, -0.25, 0.25, 0.5, -0.5, 0.0, -0.25, 0.0, -0.25, 0.0, -0.5, 0.75, 0.75, -0.75, 0.75, 0.5, 0.25, 0.5, -0.75, 0.25, 0.25, 0.25, 0.25, -1.0, 0.25, -0.5, -1.0, -0.5, ]);
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
    command_encoder100.pushDebugGroup("mygroupmarker")
    query100.destroy()
    render_bundle_encoder001.popDebugGroup();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.copyTextureToTexture(
        {
            texture: texture000
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder000.insertDebugMarker("mymarker");
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const array5 = new Float32Array([0.25, 0.0, -0.75, -0.25, -0.5, 0.0, 0.75, 0.5, 0.0, -0.75, 0.25, 0.0, 0.5, -1.0, 1.0, 0.25, -0.5, 0.5, 0.25, 0.75, 1.0, 0.0, -0.5, -0.5, -1.0, -1.0, -1.0, -0.5, 0.5, 1.0, -0.5, -0.5, 0.5, 0.75, -0.5, 0.5, 0.0, -0.5, 0.75, 0.0, -0.25, 0.5, -1.0, 0.25, 0.0, 0.0, 0.0, 0.75, -0.75, -0.25, 0.0, 0.25, 0.25, 0.25, 0.75, -1.0, 0.25, 0.75, 0.0, 0.75, 0.5, -0.25, -0.75, 0.75, 0.5, 0.0, -0.25, -0.5, -0.5, 1.0, -0.5, 0.25, -1.0, 0.75, 0.25, 0.0, -0.25, -0.5, -0.25, -1.0, 0.5, 0.0, 0.75, 0.0, 0.75, 1.0, 0.75, -1.0, -0.75, 0.0, -1.0, 0.75, -0.75, -0.75, 1.0, 0.75, -0.75, 0.5, -0.5, 0.75, ]);
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query004.destroy()
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query003.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    command_encoder100.popDebugGroup()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    query003.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query001.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    query003.destroy()
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder100.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query100.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query006.destroy()
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query004.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder000.clearBuffer(buffer000);
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query002
    });
    query002.destroy()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    command_encoder100.insertDebugMarker("mymarker");
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0000.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query006
    });
    command_encoder301.insertDebugMarker("mymarker");
    render_bundle_encoder001.insertDebugMarker("marker");
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
        occlusionQuerySet: query300
    });
    query005.destroy()
    render_pass_encoder0001.setStencilReference(1);
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const command_buffer301 = command_encoder301.finish();
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query000.destroy()
    
    
    
    const render_pass_encoder0002 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0002",
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
    render_pass_encoder3000.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder0000.setStencilReference(1);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_bundle_encoder000.popDebugGroup();
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.destroy();
    command_encoder300.pushDebugGroup("mygroupmarker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder0000.executeBundles([])
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.executeBundles([render_bundle_encoder000, ])
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder002.popDebugGroup();
    query002.destroy()
    query007.destroy()
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    command_encoder101.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder302.insertDebugMarker("mymarker");
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    render_pass_encoder0002.pushDebugGroup("group_marker");
    render_pass_encoder0002.popDebugGroup();
    const command_buffer101 = command_encoder101.finish();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder3000.executeBundles([])
    query000.destroy()
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
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
    render_pass_encoder0002.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0001.executeBundles([])
    
    render_pass_encoder3000.setStencilReference(1);
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query301.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    command_encoder302.insertDebugMarker("mymarker");
    
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    device40.destroy();
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0002.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder0002.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    render_pass_encoder0001.endOcclusionQuery()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0002.pushDebugGroup("group_marker");
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    query301.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    query003.destroy()
    
    
    query003.destroy()
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
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
    command_encoder103.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    
    device00.destroy();
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_pass_encoder3020.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_pass_encoder3021.setStencilReference(1);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    command_encoder500.insertDebugMarker("mymarker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
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
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_bundle_encoder001.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder3000.executeBundles([])
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder500.insertDebugMarker("mymarker");
    render_pass_encoder3000.setStencilReference(1);
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder3021.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3020.insertDebugMarker("marker");
    
    
    render_pass_encoder3000.insertDebugMarker("marker");
    render_pass_encoder3020.insertDebugMarker("marker");
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_pass_encoder3020.insertDebugMarker("marker");
    render_pass_encoder3020.executeBundles([])
    render_pass_encoder3021.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder300.popDebugGroup();
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder301.popDebugGroup();
    command_encoder300.insertDebugMarker("mymarker");
    render_pass_encoder3021.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const array6 = new Float32Array([-0.75, 0.0, 0.5, -1.0, 0.75, -0.75, -1.0, 0.5, 1.0, -0.75, 1.0, 0.25, 0.5, 0.0, 0.75, -0.5, 0.75, 0.25, -0.25, 1.0, 0.0, -0.5, 0.0, 0.0, -0.25, 0.75, 0.75, -0.25, 0.25, 0.0, 0.5, -1.0, -0.75, 0.75, -0.5, -0.25, 0.5, -0.25, -0.75, 0.0, -0.75, -0.5, 0.5, 0.5, -0.5, 0.5, -0.25, -1.0, 0.0, -0.75, -0.25, -0.75, -1.0, -0.75, 0.25, 0.25, -0.25, 0.25, 1.0, -1.0, 0.0, 1.0, 0.5, 0.5, 0.75, -0.25, -0.75, -0.5, -0.5, -0.25, -0.5, 0.5, -0.5, -0.75, 0.75, 0.25, 0.5, 0.5, 0.75, -1.0, -0.5, 0.25, -0.75, -0.5, 1.0, -0.75, 1.0, -0.5, -0.75, -1.0, 0.75, 0.25, 0.5, 0.75, 0.25, 0.5, 0.0, 0.25, 0.5, -0.75, ]);
    render_pass_encoder3020.pushDebugGroup("group_marker");
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder100.insertDebugMarker("mymarker");
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
    query200.destroy()
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_bundle_encoder301.insertDebugMarker("marker");
    query100.destroy()
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    
    query100.destroy()
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    const command_buffer500 = command_encoder500.finish();
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder3001.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    
    
    query100.destroy()
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    
    render_pass_encoder3020.insertDebugMarker("marker");
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3021.executeBundles([render_bundle_encoder300, ])
    command_encoder103.copyBufferToBuffer(
        buffer101,
        0,
        buffer102,
        0,
        400
    );
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder502.pushDebugGroup("mygroupmarker")
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    device30.destroy();
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder500.popDebugGroup();
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
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
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
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
    const command_buffer502 = command_encoder502.finish();
    render_bundle_encoder100.popDebugGroup();
    command_encoder103.insertDebugMarker("mymarker");
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query500.destroy()
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    command_encoder104.insertDebugMarker("mymarker");
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.popDebugGroup()
    query200.destroy()
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder104.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder105.copyBufferToBuffer(
        buffer104,
        0,
        buffer102,
        0,
        400
    );
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
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
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query001.destroy()
    command_encoder104.pushDebugGroup("mygroupmarker")
    
    query102.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder103.copyBufferToTexture(
        {
            buffer: buffer103
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
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
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder105.insertDebugMarker("mymarker");
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    command_encoder100.copyBufferToBuffer(
        buffer103,
        0,
        buffer104,
        0,
        400
    );
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const array7 = new Float32Array([-0.75, -1.0, -0.25, -0.75, 0.5, 0.75, -0.5, 0.75, 0.75, -0.75, 0.25, 0.0, 1.0, -0.25, -0.25, 0.25, 0.5, 0.5, 0.5, -1.0, 0.5, 0.25, 0.5, 1.0, -1.0, 0.5, 0.5, -0.5, -1.0, -0.5, 0.5, -0.75, 1.0, 1.0, -0.75, -0.75, -1.0, 0.25, 0.5, -0.75, -0.75, 0.0, -1.0, 0.25, -0.75, -0.25, 0.0, -0.5, 0.75, 0.5, 1.0, 0.25, 1.0, 0.25, 0.75, 0.5, 0.25, 0.0, 0.75, 0.75, 0.75, 1.0, -1.0, -0.5, 1.0, 1.0, 0.5, -0.5, 0.5, -1.0, -0.5, -0.25, 0.75, -0.25, -1.0, 0.5, 0.75, 0.75, 0.5, -1.0, -0.25, 0.25, 1.0, 0.25, -0.75, 0.75, -0.25, -0.25, -0.25, -1.0, 0.0, 0.5, 1.0, 0.0, -0.75, -0.25, 0.5, -1.0, -1.0, 0.75, ]);
    render_pass_encoder1050.setStencilReference(1);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    query101.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder103.copyBufferToBuffer(
        buffer103,
        0,
        buffer104,
        0,
        400
    );
    
    const command_buffer100 = command_encoder100.finish();
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder1040.setStencilReference(1);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_pass_encoder1050.insertDebugMarker("marker");
    command_encoder104.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder101.popDebugGroup();
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer108,
        0
    )
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1040.setStencilReference(1);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    render_pass_encoder1040.insertDebugMarker("marker");
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1040.executeBundles([render_bundle_encoder100, ])
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.executeBundles([])
    
    
    device60.queue.writeTexture({ texture: texture601 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.popDebugGroup();
    device60.destroy();
    render_bundle_encoder102.popDebugGroup();
    
    
    
    command_encoder104.popDebugGroup()
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
}