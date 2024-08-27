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
    const array0 = new Float32Array([0.5, 1.0, 0.0, 1.0, 0.0, 1.0, -0.5, -0.5, -0.5, -1.0, 0.5, -0.25, -0.75, -0.75, -0.25, 0.75, -0.5, -0.5, 0.0, 0.75, 1.0, 1.0, -1.0, -1.0, -0.25, 0.5, 0.75, -0.25, 0.75, -0.25, -1.0, -1.0, 0.25, -0.5, 1.0, -0.25, 0.75, 0.5, -1.0, -1.0, 0.0, -0.5, -0.75, 0.25, 0.5, 0.5, -1.0, 0.25, -0.75, -1.0, 0.75, 0.5, -0.75, 0.75, -0.25, 1.0, 0.0, -0.75, -0.25, -0.25, 0.75, 0.5, 0.25, -0.25, 0.0, -0.75, 0.5, 0.75, 1.0, 0.75, 0.75, -1.0, 0.0, -0.25, 0.0, -0.25, -1.0, 0.5, -0.5, 1.0, 0.25, -0.25, -0.75, 0.25, -0.75, -0.25, 0.75, 0.25, -0.5, 1.0, 1.0, -0.75, 0.0, -0.5, -1.0, -0.5, 1.0, 1.0, 0.25, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([-0.75, -0.5, 0.75, -0.75, 1.0, -0.75, -0.75, 0.5, -0.25, -1.0, -0.5, 0.5, 1.0, 0.0, 1.0, -1.0, -1.0, 0.75, -0.25, 0.25, 0.25, -1.0, -0.75, -1.0, -0.75, -0.5, 1.0, 0.25, 0.75, 0.5, -0.75, -0.5, -0.75, 0.0, 0.0, 1.0, 0.25, 0.0, -0.5, -1.0, 0.5, 0.25, 0.5, 0.75, 0.75, 1.0, -0.75, 1.0, -0.5, -0.25, 0.75, -0.5, -0.75, -0.5, 0.0, -0.25, 0.75, 0.25, -1.0, -0.75, 0.25, 0.0, 0.25, 1.0, -1.0, 0.25, 0.75, -1.0, 1.0, 1.0, 1.0, 0.75, -0.5, 0.75, -1.0, -0.5, 1.0, 0.5, 0.75, 1.0, -1.0, 0.5, -0.25, -0.5, -1.0, 0.5, 0.0, 1.0, -1.0, 0.25, -0.25, 0.25, -1.0, 0.25, 0.5, 0.75, 0.75, 0.5, 0.25, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_buffer000 = command_encoder000.finish();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const array2 = new Float32Array([-0.75, 0.75, 1.0, 0.25, 1.0, 0.0, 1.0, 0.5, 0.25, -1.0, -0.25, 0.5, -0.5, -1.0, -0.5, -0.5, 0.0, -0.5, 0.5, -1.0, -0.75, 0.75, 0.75, 0.5, -1.0, 0.25, -0.75, 0.75, 0.75, -0.5, 0.0, -0.25, -0.5, -1.0, -0.75, 0.5, 0.5, -1.0, 0.75, -0.25, -0.5, 0.0, 0.5, -0.75, -0.75, 0.0, -1.0, -1.0, -0.25, 0.5, 1.0, 0.25, 0.75, -0.25, -0.75, -0.75, 0.25, 1.0, 1.0, -0.5, -0.75, 0.5, -1.0, -0.75, -0.25, 0.0, -0.5, 0.25, 0.0, 0.5, 1.0, 0.5, 1.0, 0.0, -0.25, -0.5, 0.5, 0.5, -0.25, 0.0, -0.5, -1.0, 0.25, 0.25, -0.75, -0.75, 0.0, -1.0, 1.0, 0.25, 1.0, 0.0, -0.75, -0.5, -0.5, 0.25, -1.0, 0.25, 0.75, -0.5, ]);
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
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const array3 = new Float32Array([0.5, 0.75, -0.25, 1.0, 0.25, -0.25, 0.0, 0.75, 1.0, 0.5, 0.75, -0.5, -0.75, 0.25, -0.75, 0.0, 0.25, -0.75, 0.0, 0.0, 0.25, 0.0, 1.0, 0.0, 0.25, -0.5, 0.5, 0.5, -0.25, -1.0, 0.75, -1.0, 0.5, -0.75, -0.75, -0.25, -0.25, 1.0, 0.0, -0.5, 1.0, 0.75, 0.25, -0.25, 1.0, -0.25, 0.0, -0.5, 0.5, -0.5, -1.0, 0.75, -0.25, 0.5, -1.0, 1.0, 0.5, 1.0, 1.0, -1.0, 0.25, -0.25, 0.25, 0.25, 0.75, 0.75, -0.5, 0.75, -0.75, 0.5, 1.0, -0.25, 1.0, 0.75, 0.5, 0.0, 0.25, 0.25, -0.75, -1.0, 0.5, -0.75, -0.75, 1.0, -0.25, 1.0, 0.0, -0.75, 0.75, -0.25, 0.75, 1.0, -1.0, 0.0, 1.0, -1.0, 1.0, 0.5, 0.5, -0.5, ]);
    const array4 = new Float32Array([-0.5, -0.25, -1.0, 0.0, -0.25, 0.0, -0.75, 0.0, 0.0, 0.75, 0.5, 0.0, 0.25, 1.0, -0.25, -1.0, -1.0, 0.0, -1.0, 0.0, -0.5, 0.0, 0.75, 0.5, 0.75, -1.0, 0.25, -0.5, 0.0, -0.5, 0.25, -1.0, 0.25, -0.25, 0.25, 1.0, -0.5, -0.5, -0.5, -1.0, -0.75, -0.25, -0.75, -0.25, 0.5, 0.75, 0.75, 0.0, -0.75, -0.75, 0.25, 0.0, 0.75, -0.25, -1.0, -0.75, -1.0, -1.0, -0.25, 0.0, 0.75, -0.75, -0.75, -1.0, 0.25, 0.5, 0.0, 1.0, -0.5, 1.0, 0.75, -0.5, -0.25, 0.75, 0.0, -0.75, 0.75, 1.0, 1.0, 0.0, 0.25, -0.5, 0.5, -0.5, 0.75, -0.5, 1.0, -0.75, -0.75, 0.5, -0.5, 1.0, 0.5, -1.0, -0.75, 0.0, -0.5, -0.5, 0.75, 0.5, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    texture000.destroy();
    
    
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
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    query000.destroy()
    const array5 = new Float32Array([1.0, 1.0, 1.0, -0.25, -1.0, 0.25, -0.5, -0.5, -0.5, -1.0, -0.25, 0.75, -0.5, 0.25, -0.25, 0.25, -0.75, -0.5, -0.5, -0.5, 0.5, 0.25, -0.5, -0.25, 0.5, 0.5, -0.25, -0.75, -0.25, -0.5, 0.25, -1.0, 1.0, 0.75, 0.25, 1.0, 0.75, 0.5, -1.0, 0.25, 0.75, 0.25, 1.0, 0.25, -0.5, -0.5, -0.25, 0.75, 0.25, -0.25, -0.75, -0.75, -0.25, 0.75, 0.25, 0.5, 0.25, -0.75, -1.0, 0.5, -0.5, 0.75, 0.0, -1.0, 0.5, -0.25, -0.75, -0.5, 1.0, 0.75, -0.25, 0.5, -1.0, -0.75, 0.5, 0.25, 0.5, -0.25, 0.0, -0.25, 0.25, -0.75, -0.5, 1.0, 1.0, -0.25, 0.0, -0.25, 1.0, -1.0, 0.0, -1.0, -0.25, 1.0, 1.0, -1.0, -0.75, -0.25, 0.0, 0.5, ]);
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query000.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
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
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder001.insertDebugMarker("marker");
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
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture001.destroy();
    
    buffer001.destroy()
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    texture002.destroy();
    
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query000.destroy()
    
    
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout003]
    });
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout003]
    });
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer002.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
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
    
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const array6 = new Float32Array([0.25, 1.0, 0.75, 0.25, 0.75, -0.5, -0.25, -0.5, 0.25, -0.5, 0.0, -0.75, -0.25, -0.75, 0.5, -0.5, 0.25, 0.0, 1.0, -1.0, -0.5, -1.0, -0.25, 0.25, 0.0, 0.0, 0.0, 0.75, -0.5, 0.75, -0.75, 0.25, 1.0, 1.0, -1.0, -0.75, 0.25, 0.5, 1.0, 0.0, 1.0, -0.25, 0.5, -0.75, 0.0, 0.0, 0.75, 0.25, 0.25, 0.25, -0.5, 0.5, 0.75, 0.75, -0.25, -0.25, -1.0, -0.5, 1.0, 1.0, -0.25, -0.5, -0.75, 1.0, 0.25, -0.25, -1.0, 0.5, -0.25, 0.0, 0.75, -0.25, -0.25, -0.25, -0.5, 0.25, 0.25, -0.75, -0.5, 0.5, 1.0, -0.75, 0.0, 1.0, 0.75, 0.5, 0.75, 1.0, 1.0, -0.5, 0.0, 0.25, 0.75, 0.0, 0.75, 1.0, -1.0, 0.25, 1.0, 0.0, ]);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    query200.destroy()
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
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
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout005]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0010.executeBundles([])
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    device10.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    
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
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout006]
    });
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    render_pass_encoder0010.executeBundles([])
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    query000.destroy()
    
    
    query200.destroy()
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    buffer000.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder0010.popDebugGroup();
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    const bind_group_layout008 = device00.createBindGroupLayout({ 
        label: "bind_group_layout008",
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
    buffer004.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    query000.destroy()
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    
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
    
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout008]
    });
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
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
    query200.destroy()
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    command_encoder200.popDebugGroup()
    query000.destroy()
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_buffer201 = command_encoder201.finish();
    command_encoder200.popDebugGroup()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer400 = command_encoder400.finish();
    texture003.destroy();
    
    query000.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    query200.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout008]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const command_buffer200 = command_encoder200.finish();
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout008]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    query200.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32sint",
        dimension: "2d"
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture400.destroy();
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0032,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const bind_group_layout009 = device00.createBindGroupLayout({ 
        label: "bind_group_layout009",
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
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device70.destroy();
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder0030.setStencilReference(1);
    buffer005.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    query400.destroy()
    buffer003.destroy()
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    render_pass_encoder0030.executeBundles([])
    texture401.destroy();
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout403]
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0030.executeBundles([])
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder0030.executeBundles([])
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    render_pass_encoder0010.insertDebugMarker("marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout003]
    });
    query000.destroy()
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
        occlusionQuerySet: query002
    });
    render_pass_encoder0050.pushDebugGroup("group_marker");
    buffer302.destroy()
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_pass_encoder0040.setStencilReference(1);
    
    render_pass_encoder0040.executeBundles([])
    const array7 = new Float32Array([-1.0, 0.5, 0.0, 0.25, 1.0, 0.5, -0.5, 0.5, 0.75, 0.5, 0.5, -0.75, 0.25, 0.0, 0.5, 0.5, -0.5, 0.75, -0.25, -1.0, 1.0, 0.25, 0.5, 0.75, 0.0, 0.75, -0.5, -0.5, 1.0, 1.0, 0.75, 0.25, 1.0, 0.0, -0.25, -0.75, -1.0, -0.25, 0.5, 0.75, -0.5, -0.5, 0.25, -1.0, -0.75, -0.5, -0.25, 0.25, -0.75, 1.0, 0.25, 0.5, -1.0, 0.5, 0.5, 0.5, 0.5, 0.0, -1.0, -0.5, 0.75, -0.25, -0.75, -0.75, 0.5, -1.0, 0.0, 1.0, 0.5, -0.25, 0.25, 1.0, -0.75, 0.75, -0.5, -0.25, 0.5, 1.0, 0.5, 0.0, -0.5, -0.25, 0.0, 0.0, -0.75, 0.75, 0.25, 0.5, 0.75, 1.0, -0.25, -0.75, 0.25, -0.5, 0.25, -1.0, 1.0, 0.5, -0.5, 0.25, ]);
    command_encoder202.popDebugGroup()
    query302.destroy()
    query400.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    query003.destroy()
    buffer200.destroy()
    
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.setStencilReference(1);
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout004]
    });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    query201.destroy()
    render_pass_encoder0050.executeBundles([])
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0050.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    render_pass_encoder0030.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    
    device30.destroy();
    
    query002.destroy()
    render_pass_encoder0030.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const command_buffer202 = command_encoder202.finish();
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout402]
    });
    query001.destroy()
    
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0030.insertDebugMarker("marker");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    query202.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout006]
    });
    texture004.destroy();
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0030.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    device40.queue.submit([command_buffer400, ]);
    query201.destroy()
    render_pass_encoder0040.pushDebugGroup("group_marker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    
    texture200.destroy();
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout403]
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.executeBundles([])
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout404]
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    device00.queue.submit([command_buffer000, ]);
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    query001.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    query400.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout008]
    });
    
    
    
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout006]
    });
    render_pass_encoder2030.executeBundles([])
    render_pass_encoder0050.executeBundles([])
    
    
    buffer400.destroy()
    query400.destroy()
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    query401.destroy()
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0040.setStencilReference(1);
    query003.destroy()
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query203
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    query002.destroy()
    render_pass_encoder2050.setStencilReference(1);
    query004.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    query401.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2050.insertDebugMarker("marker");
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const command_buffer401 = command_encoder401.finish();
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    texture005.destroy();
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout404]
    });
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0010.setStencilReference(1);
    query003.destroy()
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0030.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder2030.executeBundles([])
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder0040.executeBundles([])
    
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout4013 = device40.createPipelineLayout({ 
        label: "pipeline_layout4013",
        bindGroupLayouts: [bind_group_layout404]
    });
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    const pipeline_layout4014 = device40.createPipelineLayout({ 
        label: "pipeline_layout4014",
        bindGroupLayouts: [bind_group_layout404]
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder0050.setStencilReference(1);
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const pipeline_layout0028 = device00.createPipelineLayout({ 
        label: "pipeline_layout0028",
        bindGroupLayouts: [bind_group_layout003]
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_buffer403 = command_encoder403.finish();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    device40.queue.submit([command_buffer401, ]);
    const command_buffer402 = command_encoder402.finish();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0020.popDebugGroup();
    device40.queue.submit([command_buffer403, ]);
}