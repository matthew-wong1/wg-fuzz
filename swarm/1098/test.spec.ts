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
    
    
    const array0 = new Float32Array([0.75, -0.25, 0.5, -0.25, 0.25, -0.25, 1.0, 0.5, -0.25, -0.5, -0.25, 0.5, 1.0, -0.25, -0.5, 1.0, -0.5, 0.0, -1.0, -1.0, 0.75, 0.5, -0.5, 0.25, -0.25, 1.0, -0.5, 0.0, -0.25, 0.5, 0.5, -0.5, -0.5, 0.0, 0.5, 1.0, -0.5, -0.5, -0.75, -0.75, 0.25, 0.0, -0.75, 0.0, 0.0, 1.0, -0.75, 1.0, 0.75, -1.0, 0.5, 0.25, -0.5, -0.75, 0.5, -0.5, -0.25, -0.25, 0.0, 0.5, 0.25, 0.75, -0.75, -1.0, -0.75, -1.0, 0.75, 0.75, -0.25, -0.5, 0.25, 0.0, 0.25, -0.75, 1.0, -1.0, -1.0, -0.25, -0.5, 0.25, -1.0, -0.5, 0.5, 0.25, 0.25, -0.5, 1.0, -0.75, 0.0, 0.25, 0.25, -0.25, -0.75, -0.25, -1.0, 0.75, 1.0, -1.0, 0.0, -0.25, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder001.insertDebugMarker("mymarker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    
    const array1 = new Float32Array([1.0, 0.25, 0.0, 0.0, 0.75, 1.0, 0.75, -0.5, -0.75, -1.0, 0.75, 0.75, 1.0, 0.25, -0.5, 0.25, -0.25, 1.0, -0.5, 0.25, 1.0, -1.0, 0.0, 1.0, 0.75, 0.5, -0.75, -0.5, -1.0, 0.75, 1.0, 1.0, 0.5, -1.0, 1.0, -0.75, 0.5, 1.0, -1.0, -0.75, -0.5, 0.5, 1.0, -0.5, -0.75, 0.75, -0.5, -1.0, 0.75, 1.0, 1.0, 0.0, -0.25, -0.25, -0.25, -1.0, 0.0, -0.5, 0.5, 0.75, -0.25, 0.5, -1.0, 0.75, 0.75, -1.0, 1.0, 0.75, 0.75, 1.0, 0.75, 0.0, -1.0, 0.75, 1.0, -0.75, -0.75, 0.0, 0.5, 0.75, 0.0, 0.0, 0.75, 0.5, 0.25, 0.75, 0.5, 0.0, 0.25, 0.0, -0.75, -1.0, -0.75, 0.0, -0.75, 0.5, 0.75, 0.25, 0.5, 0.25, ]);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.insertDebugMarker("mymarker");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const array2 = new Float32Array([0.5, -0.25, -0.25, 0.25, 0.75, -0.5, -0.75, -0.25, -1.0, -1.0, 0.75, 1.0, -0.5, -0.25, 0.25, 0.5, -1.0, 0.75, -0.25, -0.25, 1.0, 0.5, -0.75, 0.5, -1.0, 0.0, -1.0, 1.0, 1.0, -0.5, 0.5, -0.25, -0.25, -1.0, -0.25, -1.0, 0.25, 1.0, 0.75, -1.0, -0.5, -0.75, 0.75, 0.25, 0.25, 1.0, -1.0, 0.5, -0.25, -1.0, 0.75, 0.5, -0.25, -0.75, -0.5, 0.25, 1.0, 1.0, 0.5, 0.25, -0.75, -0.25, 1.0, 0.75, -0.75, -0.25, -1.0, 1.0, 0.0, 0.0, -0.75, 0.0, 1.0, -0.75, 1.0, 0.0, 1.0, 0.75, 0.75, -0.25, 0.0, -0.25, 0.5, -0.5, 0.0, 0.5, -0.5, 0.75, -0.5, 0.5, -0.75, -0.75, -0.75, -0.5, -0.25, -0.5, 0.25, -1.0, -1.0, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const array3 = new Float32Array([0.25, 1.0, -0.75, 0.0, 0.25, -0.25, 0.75, -1.0, -1.0, 0.75, 0.25, -1.0, 1.0, -0.75, -0.25, 1.0, 0.5, 0.5, -0.5, 0.5, -0.75, 1.0, 0.75, -0.5, 0.5, 0.0, -0.5, -0.75, -0.75, 0.5, -0.25, 0.0, 0.25, -0.25, -0.5, -0.5, 1.0, 0.25, -1.0, -0.5, 0.5, 0.5, -0.5, -0.25, -0.5, -0.75, 0.75, 0.5, 0.5, 0.75, -1.0, 1.0, -0.25, 1.0, 0.25, 1.0, 0.5, -0.25, -0.25, -0.75, 0.75, 0.0, -0.5, -0.25, 0.5, 0.75, 1.0, -1.0, -0.25, 0.25, 1.0, 0.75, -0.5, 0.0, 0.0, 0.0, 0.5, -0.5, 0.5, 0.25, 0.0, 0.25, -1.0, 0.25, -0.25, 0.25, 0.0, 0.0, 0.75, -0.25, -0.25, 0.5, 0.25, -0.5, 1.0, 1.0, 1.0, 0.25, -0.5, -0.75, ]);
    
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    query000.destroy()
    
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
        occlusionQuerySet: undefined
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device00.pushErrorScope("out-of-memory");
    compute_pass_encoder0000.popDebugGroup()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
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
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const command_buffer001 = command_encoder001.finish();
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device20.pushErrorScope("out-of-memory");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_pass_encoder0010.executeBundles([])
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    device10.queue.submit([]);
    device10.destroy();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture001.destroy();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query001
    });
    
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.executeBundles([])
    command_encoder000.insertDebugMarker("mymarker");
    const command_buffer200 = command_encoder200.finish();
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    texture002.destroy();
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
    buffer200.destroy()
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0000.executeBundles([])
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.setStencilReference(1);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.executeBundles([])
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0000.setStencilReference(1);
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.setStencilReference(1);
    buffer001.destroy()
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array4 = new Float32Array([1.0, 0.75, 0.0, -0.75, 1.0, 1.0, -0.75, 1.0, 0.0, -0.25, -0.5, 0.5, 0.75, 0.75, 0.0, 0.5, 0.75, -0.25, 0.5, 0.0, 0.75, -1.0, -0.25, -0.25, 1.0, 0.0, 1.0, 1.0, 0.75, 0.25, -0.5, 0.0, -0.75, 0.25, 0.0, 1.0, -1.0, 0.75, 1.0, 0.25, 1.0, 0.75, -0.25, 0.75, -0.5, -0.75, -1.0, 1.0, 0.5, -1.0, -0.75, 0.5, 0.5, 0.25, 0.5, 0.75, 0.25, -1.0, 0.75, -0.5, -1.0, 1.0, 1.0, 0.25, 0.0, 0.0, 1.0, -0.5, -0.25, 0.5, -0.25, 1.0, 0.5, 0.75, 0.25, -0.5, -1.0, 0.0, 1.0, 1.0, -0.75, -1.0, -0.75, -0.5, 0.75, 0.5, 0.25, 0.25, 0.75, -0.25, 0.5, 0.25, 0.5, -1.0, 1.0, -1.0, 0.25, 0.0, -1.0, -1.0, ]);
    device00.queue.submit([command_buffer001, ]);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    render_pass_encoder0030.setStencilReference(1);
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_pass_encoder0030.executeBundles([])
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture003.destroy();
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder003.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    buffer000.destroy()
    
    
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query200.destroy()
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
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
    query201.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.submit([command_buffer001, ]);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder2010.executeBundles([])
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder0030.setStencilReference(1);
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    buffer002.destroy()
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: query002
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array5 = new Float32Array([0.5, 0.75, -0.5, 0.5, 1.0, 0.25, 0.25, -1.0, 0.25, 1.0, 0.0, 0.75, 1.0, 1.0, -1.0, -0.25, -0.25, 0.75, -1.0, 0.25, 0.0, 0.75, -0.25, -0.25, -0.5, 0.25, -0.75, -0.75, 0.25, -0.25, -1.0, 0.0, 1.0, -0.25, 1.0, -0.25, 0.5, 0.0, 0.75, 0.75, 0.0, 0.25, -0.25, -0.75, -0.5, 0.5, 0.5, 1.0, -0.25, 0.25, 0.75, -0.25, 0.5, 0.25, 1.0, -0.25, -0.75, 0.0, 0.0, 1.0, 0.0, 0.75, -0.25, 0.5, -0.75, -0.75, 1.0, 1.0, 0.5, 0.5, 0.0, -1.0, 1.0, 0.75, -1.0, 1.0, 0.0, 0.25, 0.0, -0.75, 0.5, -1.0, -0.75, 0.5, 1.0, 0.75, -0.5, -0.5, 0.75, -0.75, -1.0, 0.25, 0.75, -1.0, -0.25, -0.25, -0.5, 0.75, -0.5, 0.75, ]);
    render_pass_encoder2010.setStencilReference(1);
    
    
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder2010.setStencilReference(1);
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0030.beginOcclusionQuery(0)
    query202.destroy()
    
    compute_pass_encoder0000.popDebugGroup()
    query200.destroy()
    render_pass_encoder2010.setStencilReference(1);
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder0030.executeBundles([])
    device00.destroy();
    
    query201.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    device20.queue.submit([command_buffer200, ]);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder0010.popDebugGroup();
    
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    render_pass_encoder2010.executeBundles([])
    texture200.destroy();
    query200.destroy()
    query200.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2020.executeBundles([])
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2010.executeBundles([])
    
    render_bundle_encoder200.popDebugGroup();
    query200.destroy()
    buffer201.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0001.beginOcclusionQuery(0)
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2010.executeBundles([])
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query202
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_bundle_encoder201.popDebugGroup();
    texture201.destroy();
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2020.executeBundles([render_bundle_encoder202, ])
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    render_pass_encoder2011.setStencilReference(1);
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
        occlusionQuerySet: query201
    });
    texture203.destroy();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_pass_encoder0000.executeBundles([])
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query200
    });
    
    render_pass_encoder2031.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2031.executeBundles([render_bundle_encoder200, ])
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const array6 = new Float32Array([0.0, -0.75, 0.5, 0.25, -0.75, -0.75, -0.5, 0.0, 0.0, 0.25, -0.5, 1.0, 0.75, -0.5, 0.75, -0.5, -0.25, 0.0, -0.5, 0.25, 0.5, 0.75, 0.25, 0.5, 1.0, 0.0, 0.5, 0.0, 1.0, 0.0, -0.25, -0.75, -0.75, -0.5, -0.5, 0.0, 1.0, -0.5, 0.0, 1.0, 0.75, 0.25, 0.75, -0.25, -0.75, 0.75, 0.75, -1.0, 1.0, -0.25, 0.0, 1.0, -0.75, -0.25, -1.0, 1.0, -1.0, 1.0, -0.25, 0.75, -0.75, -0.5, -0.25, 1.0, -0.5, -0.25, 0.75, 1.0, 0.0, 1.0, 0.5, 0.5, 0.25, 0.75, -0.25, 0.25, 0.75, 0.75, -0.25, -0.5, -0.5, -0.5, -0.25, 0.5, 0.25, 0.5, 0.0, -1.0, 0.5, -0.75, 0.75, 0.0, 0.75, -1.0, 0.25, -0.25, 0.5, -1.0, -1.0, 0.0, ]);
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2010.setStencilReference(1);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_pass_encoder0020.executeBundles([])
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder0020.popDebugGroup();
    query200.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder2020.executeBundles([])
    
    render_pass_encoder2011.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2010.popDebugGroup();
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2021.executeBundles([])
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder2011.executeBundles([])
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout203]
    });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2030.setStencilReference(1);
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    const array7 = new Float32Array([0.5, -0.75, -1.0, -0.25, 1.0, -0.5, -0.25, -0.5, -1.0, -0.75, -1.0, 0.5, 0.75, 0.25, 0.25, 0.0, -0.75, -0.75, 1.0, -1.0, -0.25, -1.0, 0.25, -0.75, 0.5, 1.0, 0.0, -0.75, -0.75, -1.0, 0.5, 0.0, -1.0, -1.0, -0.25, 0.0, -0.75, -0.25, 0.75, 0.5, 0.0, 0.75, -0.75, -0.5, -0.5, -0.25, 0.5, -0.75, 1.0, -0.75, -0.25, 0.0, 0.25, 0.5, 0.75, 0.5, 0.5, 0.0, -1.0, 0.25, -0.5, -0.75, 0.75, -0.75, -1.0, 0.75, -0.5, 0.0, 0.25, 0.5, 0.75, -0.25, -1.0, -1.0, 1.0, 0.5, -0.75, -0.25, 0.75, 0.75, 0.5, 0.25, -0.25, 0.25, 0.0, 0.0, -1.0, -0.75, -0.5, -0.75, 0.75, 0.0, -0.25, 0.25, 0.75, 0.25, -0.25, -0.75, -0.5, 0.0, ]);
    
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2030.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder202.popDebugGroup();
    render_pass_encoder2020.executeBundles([])
    render_pass_encoder2011.setStencilReference(1);
    render_bundle_encoder200.popDebugGroup();
    
    render_pass_encoder2020.executeBundles([render_bundle_encoder201, ])
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder2021.executeBundles([])
    
    const render_bundle_encoder203 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder203",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0000.setStencilReference(1);
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query203
    });
    render_pass_encoder2040.executeBundles([render_bundle_encoder201, ])
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder2041.setStencilReference(1);
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    buffer202.destroy()
    render_pass_encoder2021.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    query202.destroy()
    
    render_pass_encoder2020.setStencilReference(1);
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2021.executeBundles([])
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2021.executeBundles([])
    render_pass_encoder2021.setStencilReference(1);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    render_pass_encoder2030.executeBundles([render_bundle_encoder201, ])
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder2021.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    buffer202.destroy()
    buffer201.destroy()
    const texture_view2023 = texture202.createView({ label: "texture_view2023" });
    render_pass_encoder2040.executeBundles([])
    query203.destroy()
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2030.executeBundles([render_bundle_encoder201, ])
    query203.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2011.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_bundle_encoder203.pushDebugGroup("group_marker");
    const texture_view2024 = texture202.createView({ label: "texture_view2024" });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setStencilReference(1);
    
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2050.executeBundles([])
    
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder2010.executeBundles([render_bundle_encoder201, ])
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query202.destroy()
    query202.destroy()
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout203]
    });
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
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
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder2032 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: query200
    });
    const array8 = new Float32Array([0.75, -0.25, 0.0, 1.0, 1.0, -0.75, 0.75, 0.75, -0.75, 0.75, 1.0, 0.25, -0.5, 1.0, 0.75, 1.0, 0.75, 0.5, -0.75, -1.0, -0.25, -0.25, -1.0, 0.25, 0.0, -1.0, -0.5, 0.75, 1.0, 1.0, -0.5, 1.0, 0.25, 1.0, 0.0, -0.5, 0.25, 0.0, -1.0, -0.75, -0.25, -1.0, 0.25, 1.0, 0.75, -0.5, 1.0, -0.25, 1.0, 0.5, 0.75, 0.5, 0.0, 0.75, -0.25, 0.75, -0.75, -0.5, -0.75, -1.0, -0.25, -0.75, 0.25, 0.25, -0.25, 0.0, 0.25, -0.5, 0.5, -0.75, 1.0, 0.0, 0.25, 0.75, -0.75, -0.75, 0.5, -0.75, 0.0, -0.5, 0.75, 0.75, 1.0, 1.0, -0.25, 1.0, 0.25, 0.0, -0.5, -0.25, 0.0, 0.75, 0.25, -0.75, 0.25, -1.0, -1.0, -0.75, 0.5, -0.25, ]);
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    const render_pass_encoder2070 = command_encoder207.beginRenderPass({
        label: "render_pass_encoder2070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query201
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2050.executeBundles([])
    render_pass_encoder2041.executeBundles([render_bundle_encoder203, ])
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2060.executeBundles([])
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    texture202.destroy();
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    const array9 = new Float32Array([-0.5, -0.25, -1.0, 1.0, 0.25, -0.75, -1.0, -0.5, -0.75, 0.75, 0.0, -1.0, 1.0, -0.25, -1.0, 0.0, 0.0, -0.75, 0.75, 1.0, 1.0, 0.25, -0.5, 0.5, 0.0, -0.5, 0.25, -0.5, 0.25, -0.5, 1.0, 0.75, -0.25, 0.0, 0.75, -1.0, -1.0, 0.25, -0.5, -0.5, 0.5, 1.0, 0.0, -1.0, -0.25, -1.0, 0.0, 0.25, -0.75, 0.0, 0.0, 0.25, -0.25, -1.0, -0.5, -1.0, -0.5, 0.75, 0.0, -1.0, 1.0, 0.25, 0.25, 0.25, -0.25, 0.0, -0.75, 0.5, -0.5, -1.0, 0.0, 0.5, 0.0, -1.0, 0.25, 1.0, 1.0, 0.0, -0.75, 1.0, 0.0, 0.0, 0.5, -1.0, 0.5, -0.75, -0.5, 0.25, -1.0, -0.5, -0.5, -1.0, 0.5, 0.5, -1.0, 0.0, -0.5, -0.5, 0.5, 1.0, ]);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2031.executeBundles([render_bundle_encoder200, ])
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout2017 = device20.createPipelineLayout({ 
        label: "pipeline_layout2017",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2031.executeBundles([])
    const render_pass_encoder2071 = command_encoder207.beginRenderPass({
        label: "render_pass_encoder2071",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: query201
    });
    render_bundle_encoder203.popDebugGroup();
    const command_buffer205 = command_encoder205.finish();
    render_pass_encoder2011.setStencilReference(1);
    render_pass_encoder2031.executeBundles([render_bundle_encoder203, ])
    render_pass_encoder2020.executeBundles([render_bundle_encoder201, ])
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    command_encoder204.resolveQuerySet(
        query203,
        0,
        32,
        buffer200,
        0
    )
    render_pass_encoder2050.executeBundles([render_bundle_encoder203, ])
    render_pass_encoder2032.executeBundles([])
    render_pass_encoder2032.executeBundles([render_bundle_encoder202, ])
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    
    const command_buffer204 = command_encoder204.finish();
    query203.destroy()
    render_pass_encoder2070.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2060.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_pass_encoder2061 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer207 = command_encoder207.finish();
    
    render_pass_encoder2021.executeBundles([])
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    const render_pass_encoder2033 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2033",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout2018 = device20.createPipelineLayout({ 
        label: "pipeline_layout2018",
        bindGroupLayouts: [bind_group_layout203]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder2070.executeBundles([])
    
    render_bundle_encoder203.pushDebugGroup("group_marker");
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder203.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2071.setStencilReference(1);
    
    device20.queue.writeTexture({ texture: texture201 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2041.executeBundles([])
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.popDebugGroup();
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    
    buffer204.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder2080 = command_encoder208.beginRenderPass({
        label: "render_pass_encoder2080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2023,
            },
        ],
        occlusionQuerySet: query203
    });
    render_pass_encoder2033.setViewport(0, 0, texture204.width / 2, texture204.height / 2, 0, 1);
    
    render_pass_encoder2030.executeBundles([])
    render_pass_encoder2071.setStencilReference(1);
    render_pass_encoder2071.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2031.executeBundles([])
    const texture_view2051 = texture205.createView({ label: "texture_view2051" });
    buffer203.destroy()
    const pipeline_layout2019 = device20.createPipelineLayout({ 
        label: "pipeline_layout2019",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout2020 = device20.createPipelineLayout({ 
        label: "pipeline_layout2020",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder2061.executeBundles([])
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    device20.queue.writeTexture({ texture: texture201 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2070.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    query201.destroy()
    render_pass_encoder2071.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    render_pass_encoder2060.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device20.queue.writeTexture({ texture: texture201 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder2033.popDebugGroup();
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_pass_encoder2040.executeBundles([])
    
    render_pass_encoder2080.executeBundles([])
    render_pass_encoder2011.executeBundles([])
    
    const pipeline_layout2021 = device20.createPipelineLayout({ 
        label: "pipeline_layout2021",
        bindGroupLayouts: [bind_group_layout204]
    });
    render_pass_encoder2061.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.submit([command_buffer204, command_buffer205, command_buffer207, ]);
    const pipeline_layout2022 = device20.createPipelineLayout({ 
        label: "pipeline_layout2022",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pass_encoder2081 = command_encoder208.beginRenderPass({
        label: "render_pass_encoder2081",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2023,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2081.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const pipeline_layout2023 = device20.createPipelineLayout({ 
        label: "pipeline_layout2023",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query002
    });
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: query003
    });
    render_pass_encoder2070.executeBundles([])
    render_pass_encoder2031.executeBundles([])
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder2050.popDebugGroup();
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder2060.popDebugGroup()
    render_pass_encoder2061.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2071.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2032.popDebugGroup();
}