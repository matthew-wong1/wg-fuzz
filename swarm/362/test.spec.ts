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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16float",
        dimension: "2d"
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder100.popDebugGroup();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
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
    texture102.destroy();
    
    
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array0 = new Float32Array([-0.5, -0.25, 0.0, 0.5, -0.75, -0.5, -0.25, 0.0, 0.5, 0.75, 0.75, -1.0, -0.25, -0.5, -0.25, 0.0, 1.0, 1.0, 0.0, -0.25, -0.5, 0.0, 0.25, -0.75, -1.0, -0.75, 0.5, 0.0, -0.75, -0.5, -0.75, -1.0, 1.0, 0.5, -0.5, -0.5, -0.75, 0.75, 0.0, 0.5, 0.5, -1.0, -0.5, -0.25, 0.5, 0.25, 0.5, 0.75, 0.75, -1.0, -1.0, 0.0, 0.75, -0.75, -1.0, -0.5, 0.75, -0.5, 0.5, 1.0, -0.25, -0.5, 0.75, -0.5, 0.75, 0.5, 0.0, 1.0, 0.5, 0.5, -0.5, -0.75, -0.5, 1.0, 0.5, -0.75, -0.25, 0.25, -0.5, 0.75, -0.25, -1.0, -0.25, 1.0, 0.25, 0.5, 1.0, 0.5, 0.0, 0.0, -0.25, 0.75, -0.5, 0.25, 0.5, 0.5, 0.0, -0.5, 0.0, -1.0, ]);
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
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    query200.destroy()
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const array1 = new Float32Array([-0.75, 0.0, 0.5, 0.25, 0.5, -0.75, -0.25, 0.75, 1.0, -0.5, 0.0, -0.5, -0.5, 0.0, -0.25, 0.25, 0.5, -0.25, 0.0, 0.5, -1.0, -0.25, -0.75, 0.5, -0.25, 1.0, 0.25, 1.0, -1.0, -0.5, 0.0, 0.75, 0.0, 1.0, -1.0, 1.0, -1.0, -0.75, 1.0, -1.0, 1.0, 0.0, 1.0, -0.25, -1.0, 0.75, 1.0, 1.0, -0.75, 0.75, -1.0, -0.75, -1.0, -0.5, 0.25, 0.5, 0.5, 1.0, -0.75, -0.25, 0.5, -0.5, 1.0, 1.0, 0.0, -1.0, -1.0, -0.25, -0.75, -0.5, 0.75, -1.0, -0.5, 0.5, -0.75, 0.25, -0.75, 1.0, 0.0, 0.5, 0.75, -0.5, 0.75, -1.0, -1.0, 0.5, 0.5, 0.25, -0.75, -0.25, 0.75, 0.75, 0.25, 0.5, -0.25, -0.75, 0.5, -0.5, -0.5, 1.0, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query200.destroy()
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    query200.destroy()
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
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
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
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
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    buffer200.destroy()
    render_pass_encoder2000.insertDebugMarker("marker");
    buffer201.destroy()
    render_pass_encoder2000.beginOcclusionQuery(0)
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    texture200.destroy();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const array2 = new Float32Array([0.0, -0.75, 1.0, 0.5, 0.5, 0.0, -0.75, 0.0, 0.5, 0.25, -0.5, 0.0, -0.5, 0.5, 0.0, -0.5, 1.0, -0.75, 0.0, 0.75, 1.0, -0.75, 0.0, -1.0, -0.5, 0.0, 0.75, 0.0, -0.25, -0.75, -1.0, 0.75, 0.75, -0.5, -0.75, -0.5, -0.75, -0.75, -0.75, 0.0, 0.75, -1.0, 0.25, 0.25, 0.25, -0.75, -0.5, 0.25, -0.75, 0.25, -0.5, 0.75, 0.25, 0.75, 1.0, -0.25, -0.75, -1.0, 1.0, -0.25, -1.0, 0.25, 0.5, -0.5, -0.5, -1.0, 0.5, -0.25, -0.25, -1.0, 0.5, -0.25, 0.75, -1.0, -0.25, -0.25, 0.5, -1.0, 0.0, 0.5, 0.25, -0.25, 0.25, -0.25, 0.5, -1.0, 0.0, -0.5, 0.25, -0.75, -0.75, 0.5, -0.75, -1.0, 0.75, -1.0, 0.25, 0.5, -1.0, 1.0, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
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
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder2010.setStencilReference(1);
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query201
    });
    device30.destroy();
    buffer202.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.beginOcclusionQuery(0)
    
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2000.beginOcclusionQuery(0)
    query200.destroy()
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    texture201.destroy();
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query202
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device40.destroy();
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    query202.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
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
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2020.endOcclusionQuery()
    
    
    render_pass_encoder2000.setStencilReference(1);
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    render_pass_encoder2030.insertDebugMarker("marker");
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout201]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2020.pushDebugGroup("group_marker");
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
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    render_pass_encoder2030.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2010.setStencilReference(1);
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2020.popDebugGroup();
    const array3 = new Float32Array([0.25, 1.0, -0.75, -0.75, 0.0, -0.5, 1.0, -1.0, 1.0, -0.75, 0.5, -1.0, 1.0, 0.0, 1.0, -0.25, 0.5, 1.0, -0.5, 1.0, -0.75, -0.75, 0.5, 0.75, -0.5, 0.75, -0.25, 0.75, 0.0, 0.5, 1.0, -1.0, 0.5, 1.0, -1.0, -0.25, 0.5, 0.25, 0.5, -0.25, 0.5, -0.25, -0.5, 0.5, 0.0, -0.5, 0.0, 0.75, 0.25, -0.25, 1.0, -1.0, -1.0, -0.75, -0.25, 1.0, -0.25, 0.25, -0.5, 0.75, -0.25, 1.0, -0.75, 0.5, 0.75, -0.5, 0.5, -0.75, 1.0, 1.0, -0.25, 1.0, 0.5, 0.5, -0.25, 1.0, 0.0, -0.75, 0.25, -0.75, -0.25, -0.25, 0.5, -1.0, 0.25, 0.25, -0.25, 1.0, 0.75, -1.0, -1.0, 0.75, -0.5, 0.25, -0.75, 0.0, -0.75, 0.0, -1.0, -0.25, ]);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder201.popDebugGroup();
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder2000.setStencilReference(1);
    query203.destroy()
    
    
    render_pass_encoder2020.setStencilReference(1);
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout203]
    });
    query200.destroy()
    render_pass_encoder2000.insertDebugMarker("marker");
    
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.popDebugGroup();
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2030.pushDebugGroup("group_marker");
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.setStencilReference(1);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2010.setStencilReference(1);
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer203.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query200.destroy()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.endOcclusionQuery()
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout2017 = device20.createPipelineLayout({ 
        label: "pipeline_layout2017",
        bindGroupLayouts: [bind_group_layout202]
    });
    const array4 = new Float32Array([0.75, -1.0, -0.5, -1.0, -0.5, 0.75, -0.25, 0.75, -0.75, 0.5, -0.75, 0.75, -0.25, -0.5, 0.75, 0.5, 0.5, 0.25, -0.25, 0.5, -0.75, 0.25, 0.0, 1.0, -0.25, -1.0, -0.25, 0.25, 0.25, 0.25, 0.0, -0.5, -1.0, -0.75, 0.0, 1.0, -0.75, 0.0, -0.5, 0.5, -0.75, 1.0, -1.0, -0.5, 0.25, 0.0, 0.25, -1.0, -0.25, -0.5, 0.75, -0.5, -0.25, -0.5, -0.5, -0.25, 1.0, -0.75, 0.75, 0.75, 0.25, 1.0, -0.5, 0.75, -0.5, -0.5, 1.0, -0.75, 0.0, -0.25, -1.0, 0.5, -0.25, -0.5, 0.5, -0.5, 0.0, -0.75, 0.25, 0.75, 0.5, -0.75, 0.25, -0.75, 0.75, -0.75, -0.75, 0.25, -0.5, -1.0, 0.25, -0.5, -0.5, -0.75, -0.5, -0.25, -0.25, 0.0, -0.5, 0.0, ]);
    
    render_pass_encoder2010.setStencilReference(1);
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.insertDebugMarker("marker");
    
    render_pass_encoder2010.popDebugGroup();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2000.beginOcclusionQuery(0)
    render_bundle_encoder201.insertDebugMarker("marker");
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
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const array5 = new Float32Array([-0.75, -1.0, -1.0, 1.0, -0.75, 0.5, 0.0, 0.0, 0.5, 0.25, -0.25, -0.25, 0.0, -0.25, 0.5, 0.25, 0.0, -0.75, 1.0, 0.25, -0.75, -0.5, -0.75, -0.75, 0.5, 0.75, 0.25, 0.75, 0.75, -1.0, -1.0, 0.75, 0.25, 0.0, -0.5, 0.75, -1.0, -0.75, -0.75, -1.0, 0.5, 0.75, -0.25, 1.0, -0.5, -0.5, -0.75, 0.5, 0.25, -0.5, -0.5, 0.5, 0.0, 1.0, 0.5, 0.0, -0.75, 0.25, 0.25, -0.5, 0.5, -0.5, -0.5, 1.0, 0.25, 0.25, 0.75, -0.25, -0.75, 1.0, -1.0, 0.75, -0.25, 1.0, 0.5, 1.0, -1.0, -0.25, 0.25, 1.0, -0.75, -0.75, -0.25, -0.25, 0.5, 0.75, 0.0, 0.75, 1.0, -0.25, 0.25, 0.0, -0.75, -0.75, 0.25, -0.5, -0.75, -1.0, -0.25, -1.0, ]);
    
    render_pass_encoder2040.setStencilReference(1);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query202
    });
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder2000.setStencilReference(1);
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2030.popDebugGroup();
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    query200.destroy()
    texture202.destroy();
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.insertDebugMarker("marker");
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    query203.destroy()
    
    render_pass_encoder2060.setStencilReference(1);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const pipeline_layout2018 = device20.createPipelineLayout({ 
        label: "pipeline_layout2018",
        bindGroupLayouts: [bind_group_layout203]
    });
    query202.destroy()
    texture601.destroy();
    const render_pass_encoder2070 = command_encoder207.beginRenderPass({
        label: "render_pass_encoder2070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query204
    });
    texture600.destroy();
    
    device60.destroy();
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.setStencilReference(1);
    const pipeline_layout2019 = device20.createPipelineLayout({ 
        label: "pipeline_layout2019",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2060.pushDebugGroup("group_marker");
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder2070.setStencilReference(1);
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2040.pushDebugGroup("group_marker");
    render_pass_encoder2070.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder2070.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2060.insertDebugMarker("marker");
    
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder2020.insertDebugMarker("marker");
    
    const pipeline_layout2020 = device20.createPipelineLayout({ 
        label: "pipeline_layout2020",
        bindGroupLayouts: [bind_group_layout205]
    });
    device20.queue.writeBuffer(buffer204, 0, array5, 0, array5.length);
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2070.insertDebugMarker("marker");
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2070.setStencilReference(1);
    
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2040.setStencilReference(1);
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    buffer204.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const array6 = new Float32Array([-1.0, 0.75, 1.0, 0.0, 1.0, 1.0, -1.0, -1.0, -0.75, 0.25, -0.25, -0.75, 0.75, 1.0, -0.25, -1.0, 0.25, 1.0, 0.0, 0.25, 0.0, -0.25, 0.5, -0.25, 0.25, 0.5, 0.75, -0.25, 0.0, -0.75, -0.75, -0.5, 0.5, 0.25, 1.0, 0.0, -0.5, -1.0, 0.75, -1.0, 0.5, -0.5, -0.25, 0.25, 0.75, -0.5, -0.25, 0.75, 1.0, -1.0, -1.0, 0.25, -1.0, -0.5, -0.5, 1.0, 1.0, -1.0, 0.0, 0.25, 0.5, -0.75, 1.0, -0.25, 1.0, 0.75, -1.0, -0.25, -0.25, -0.75, 0.25, 0.0, 0.0, 1.0, -0.5, 0.25, 0.0, -0.25, 0.25, 1.0, 0.25, 0.75, -1.0, 0.75, 1.0, -0.25, -0.25, -0.75, -0.25, 1.0, 1.0, -1.0, 0.5, 0.5, 0.0, 0.75, -0.25, -0.25, 0.75, -0.5, ]);
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder2070.insertDebugMarker("marker");
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2070.beginOcclusionQuery(0)
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder2060.insertDebugMarker("marker");
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2070.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2050.setStencilReference(1);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2050.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2050.insertDebugMarker("marker");
    buffer205.destroy()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder2070.setStencilReference(1);
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const array7 = new Float32Array([1.0, -1.0, -0.5, 0.5, -0.5, 1.0, 1.0, 0.0, 0.0, 0.75, -1.0, -0.75, 0.75, 0.5, 1.0, -0.5, 0.75, -1.0, -0.5, 1.0, 0.0, -0.25, 0.25, 0.25, -0.25, -0.75, 0.25, 1.0, 0.75, 0.5, 0.0, 0.25, 0.5, 0.0, 0.5, 0.25, -0.75, -0.5, 1.0, 0.75, -1.0, 1.0, 0.0, 0.25, 0.0, -0.75, 1.0, 0.5, 0.25, -0.75, -0.25, 0.5, 1.0, -0.5, -0.25, -0.5, 0.75, -0.25, 0.25, 0.5, 0.0, 1.0, 1.0, 0.25, 0.5, -0.5, -0.75, 0.5, -0.5, 0.5, -0.5, 0.0, 0.75, 0.75, -0.75, 0.25, 0.75, -0.5, -0.25, -1.0, 0.5, -1.0, 0.0, -0.75, 0.25, 0.25, -1.0, 0.25, -0.75, 0.25, 0.5, -0.75, -0.75, -0.75, 0.25, 0.5, 0.0, -1.0, -0.25, -0.75, ]);
    render_pass_encoder2050.setStencilReference(1);
    
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2040.setStencilReference(1);
    buffer206.destroy()
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2050.insertDebugMarker("marker");
    const pipeline_layout2021 = device20.createPipelineLayout({ 
        label: "pipeline_layout2021",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    render_pass_encoder2010.setStencilReference(1);
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout2022 = device20.createPipelineLayout({ 
        label: "pipeline_layout2022",
        bindGroupLayouts: [bind_group_layout201]
    });
    device70.queue.writeTexture({ texture: texture700 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout2023 = device20.createPipelineLayout({ 
        label: "pipeline_layout2023",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    query200.destroy()
    render_pass_encoder2060.pushDebugGroup("group_marker");
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder2050.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2040.insertDebugMarker("marker");
    const array8 = new Float32Array([1.0, -0.75, 0.0, 1.0, -0.25, -0.75, -0.25, 0.5, 0.75, 0.25, 0.25, 0.25, 0.0, 0.0, -0.75, -0.5, 0.75, 0.0, 0.5, -0.5, -0.75, 0.0, -0.25, -0.5, 0.0, 0.25, 1.0, -0.25, -0.5, 1.0, 0.5, 0.25, 0.75, 1.0, 1.0, -0.5, -0.75, 0.5, 1.0, 0.75, 0.75, -0.75, -0.5, 1.0, 0.75, 0.5, -1.0, 0.25, 0.5, 1.0, 0.5, 0.0, 0.25, 0.75, 0.0, 0.75, 0.5, -1.0, 0.5, -0.75, 0.5, -0.75, 1.0, 0.0, -0.5, 1.0, 0.25, 0.25, 0.75, 1.0, -0.25, -0.25, 0.25, -1.0, 1.0, 0.75, 0.75, 0.25, 0.25, 1.0, 0.25, -0.25, -1.0, 0.75, 0.5, -1.0, -0.25, -0.5, 0.5, -0.5, 0.0, 1.0, 0.5, 1.0, -0.25, -0.25, 1.0, 0.0, -1.0, 0.0, ]);
    render_pass_encoder2000.setStencilReference(1);
    device70.queue.writeTexture({ texture: texture700 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2070.insertDebugMarker("marker");
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
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    render_pass_encoder2050.setStencilReference(1);
    render_pass_encoder2070.insertDebugMarker("marker");
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    device70.queue.writeTexture({ texture: texture700 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout2024 = device20.createPipelineLayout({ 
        label: "pipeline_layout2024",
        bindGroupLayouts: [bind_group_layout200]
    });
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
    device70.queue.writeTexture({ texture: texture700 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device70.queue.writeTexture({ texture: texture700 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder2060.insertDebugMarker("marker");
    query203.destroy()
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    const array9 = new Float32Array([-1.0, -0.5, 1.0, -1.0, 0.25, -0.25, -1.0, -0.75, -0.5, -0.75, -0.25, -0.5, 0.25, 0.5, 0.5, 0.25, -0.25, 0.5, 0.0, 0.25, -0.75, 0.0, 0.25, 0.75, 0.5, 0.25, 0.25, 0.0, -1.0, 0.5, -0.5, 0.5, -0.5, 1.0, 0.0, -0.75, 1.0, 0.0, 0.0, 0.5, 1.0, 0.5, 0.5, -0.5, -0.75, -0.75, -0.75, -1.0, -0.25, 0.5, -0.5, -0.25, -0.5, 0.75, 0.25, 0.0, -0.25, 0.75, 0.75, -0.25, -0.25, -0.5, -0.5, 0.25, -0.25, 0.25, -0.75, -0.75, -0.75, 0.25, -1.0, 1.0, 1.0, -0.75, 0.75, 0.0, 0.75, 0.75, -0.75, 0.0, -1.0, 0.25, 0.0, -0.75, 0.5, -0.25, -0.75, 0.5, 1.0, -0.5, 0.5, 0.25, 0.5, -0.75, -0.5, 1.0, -1.0, 0.5, 0.5, -0.5, ]);
    
    render_pass_encoder2060.setStencilReference(1);
    render_pass_encoder2030.insertDebugMarker("marker");
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    render_pass_encoder2070.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query202.destroy()
    device70.queue.writeTexture({ texture: texture700 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout2025 = device20.createPipelineLayout({ 
        label: "pipeline_layout2025",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2010.pushDebugGroup("group_marker");
    device70.destroy();
    const pipeline_layout2026 = device20.createPipelineLayout({ 
        label: "pipeline_layout2026",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const pipeline_layout2027 = device20.createPipelineLayout({ 
        label: "pipeline_layout2027",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2070.endOcclusionQuery()
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    render_pass_encoder2020.popDebugGroup();
    query200.destroy()
    
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    render_pass_encoder2000.pushDebugGroup("group_marker");
    query202.destroy()
    render_pass_encoder2000.endOcclusionQuery()
    
    render_pass_encoder2050.insertDebugMarker("marker");
    const pipeline_layout2028 = device20.createPipelineLayout({ 
        label: "pipeline_layout2028",
        bindGroupLayouts: [bind_group_layout200]
    });
    query200.destroy()
    render_pass_encoder2060.setStencilReference(1);
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2030.setStencilReference(1);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout2029 = device20.createPipelineLayout({ 
        label: "pipeline_layout2029",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder2050.setStencilReference(1);
    
    const query1002 = device100.createQuerySet({
        label: "query1002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    query201.destroy()
    render_pass_encoder2050.insertDebugMarker("marker");
    const pipeline_layout2030 = device20.createPipelineLayout({ 
        label: "pipeline_layout2030",
        bindGroupLayouts: [bind_group_layout205]
    });
    
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder2070.beginOcclusionQuery(0)
    
    const pipeline_layout2031 = device20.createPipelineLayout({ 
        label: "pipeline_layout2031",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout2032 = device20.createPipelineLayout({ 
        label: "pipeline_layout2032",
        bindGroupLayouts: [bind_group_layout203]
    });
    const pipeline_layout2033 = device20.createPipelineLayout({ 
        label: "pipeline_layout2033",
        bindGroupLayouts: [bind_group_layout206]
    });
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    
    const array10 = new Float32Array([1.0, 0.5, -0.5, -0.25, -0.25, 1.0, 0.5, 1.0, -0.5, 1.0, -0.5, -0.25, -0.75, 0.75, -0.25, 0.5, -1.0, -0.75, -0.75, 0.5, 0.25, -0.25, 0.75, -0.25, -0.5, 1.0, 1.0, 0.0, 0.25, 0.25, 0.0, 0.0, 0.25, -0.5, -1.0, 0.25, 0.0, -0.5, 0.75, 1.0, -1.0, 0.5, -0.75, -0.75, -0.25, 1.0, 1.0, 1.0, 0.5, 1.0, -0.5, -0.25, 0.5, 1.0, 0.5, 0.25, 0.5, -0.5, -0.5, 0.0, -0.75, 0.0, -0.75, 0.25, -0.25, -0.75, 0.5, -0.75, -0.5, -0.25, 1.0, 0.5, 0.75, -1.0, 0.0, 0.5, 0.75, 0.75, -0.25, 0.5, -1.0, -0.25, -0.25, -1.0, -1.0, -0.75, 0.25, -0.25, -0.5, -0.25, 0.5, -0.5, 0.25, 0.0, 0.5, 1.0, 0.75, 0.75, 0.75, -0.5, ]);
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2070.endOcclusionQuery()
    render_pass_encoder2060.popDebugGroup();
}