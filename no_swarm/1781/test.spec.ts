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
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("out-of-memory");
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    texture001.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query000.destroy()
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer000 = command_encoder000.finish();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const array0 = new Float32Array([-0.75, -1.0, -0.25, 0.25, -0.25, -0.25, 0.75, 0.75, 0.0, 0.5, 0.0, -0.25, -1.0, 0.5, 0.25, -0.5, -0.5, -0.5, -1.0, 0.5, -0.5, 0.75, 0.25, -1.0, 0.0, 1.0, 0.5, -0.75, 0.25, 0.5, 0.25, -0.25, 0.5, 0.25, 0.0, -0.5, -0.25, 1.0, -1.0, -0.5, -0.5, -0.75, 0.75, -0.5, 0.25, -0.75, 0.75, -0.25, -1.0, -0.75, -0.75, -0.5, 1.0, -0.5, 1.0, 0.75, -0.25, -1.0, 0.25, 0.75, -0.75, -0.5, 0.75, -0.75, -0.75, -1.0, 0.0, 1.0, 1.0, 0.25, -1.0, -0.5, -0.75, -0.25, -0.25, 0.25, 0.0, 1.0, -1.0, 0.5, 0.75, -0.25, 0.5, -1.0, 0.0, -0.25, 0.0, -0.75, -1.0, 0.5, -0.25, -0.25, 0.0, -1.0, 0.5, 0.75, -0.5, -0.5, -0.75, -1.0, ]);
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    texture002.destroy();
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: query001
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
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0010.insertDebugMarker("marker");
    device00.queue.submit([command_buffer000, ]);
    
    query003.destroy()
    render_pass_encoder0010.insertDebugMarker("marker");
    query003.destroy()
    
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    const array1 = new Float32Array([1.0, 1.0, -0.25, 0.0, 0.75, 1.0, -0.75, 0.0, 0.25, 0.5, 0.0, 0.0, 0.0, 0.25, -1.0, -0.75, -1.0, -1.0, 1.0, 0.75, 1.0, 0.25, 1.0, 0.25, -1.0, 0.0, -1.0, 1.0, -0.75, 0.0, -0.5, -0.5, 0.25, -0.75, 0.75, -0.5, -0.75, 1.0, 0.75, -1.0, 0.25, -0.25, 0.5, 0.0, 0.75, 0.0, 0.75, 0.0, -0.5, 0.25, 0.0, -0.75, -1.0, 1.0, 0.5, -0.75, 0.5, 0.0, -1.0, -0.25, -0.5, 1.0, 0.75, -0.25, -0.25, -0.75, 0.25, 0.0, -0.75, 0.25, -0.5, -0.75, 0.5, -0.5, -1.0, -1.0, 0.25, -1.0, -0.5, 0.5, 0.75, 0.25, 1.0, -0.5, -1.0, 0.25, 0.5, -0.25, 1.0, 1.0, -0.5, 1.0, 0.0, 0.75, 1.0, 0.75, 0.75, 0.5, 0.25, -0.5, ]);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    
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
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0011.insertDebugMarker("marker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    command_encoder001.copyTextureToTexture(
        {
            texture: texture003
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
    
    render_pass_encoder0010.beginOcclusionQuery(0)
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16float",
        dimension: "2d"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    texture000.destroy();
    query000.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query003.destroy()
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const array2 = new Float32Array([0.0, -0.75, 0.25, -0.75, -1.0, -0.75, -0.5, -0.5, 0.25, -0.25, -0.75, 0.0, 0.0, -0.5, -0.25, -0.5, -0.25, -0.5, 0.0, -0.5, 1.0, 0.75, -0.5, 1.0, -0.75, -0.75, -0.75, -0.75, 0.75, 1.0, -0.75, 1.0, 0.0, 0.75, -0.25, 0.75, -1.0, 0.0, 0.5, -0.75, 0.0, 0.25, 0.5, 0.25, -0.5, 1.0, 1.0, -0.75, -0.25, -0.25, -1.0, 0.5, 0.0, 0.25, 0.0, 0.5, -0.75, -1.0, 0.25, -0.5, -0.5, 0.5, -0.5, 1.0, -1.0, 0.5, -0.25, 1.0, -0.25, -0.5, -0.5, 0.25, 0.75, 1.0, -1.0, -1.0, -1.0, -0.25, -0.75, 1.0, -0.75, -0.75, -0.5, 0.75, 0.0, 1.0, -0.25, 0.25, -0.75, -0.25, -1.0, -0.75, 0.5, -0.5, -0.5, -0.25, -0.5, -0.75, 0.25, 0.0, ]);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query003.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query002.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder0011.beginOcclusionQuery(0)
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0011.pushDebugGroup("group_marker");
    render_pass_encoder0011.executeBundles([])
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0010.endOcclusionQuery()
    const render_pass_encoder0012 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0012",
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
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0012.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.beginOcclusionQuery(1)
    buffer000.destroy()
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    texture004.destroy();
    render_pass_encoder0011.executeBundles([render_bundle_encoder002, ])
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout003]
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout003]
    });
    const array3 = new Float32Array([0.0, -0.5, 0.75, -0.5, 0.5, 0.0, -0.5, -0.25, -0.25, -0.25, 1.0, -0.75, 0.5, -0.25, 0.0, 0.75, -0.5, 0.25, -0.75, 0.5, 1.0, 0.5, 0.25, 1.0, 0.75, 0.5, -0.25, 1.0, -0.5, -0.5, 0.5, 0.5, -1.0, 0.5, 0.5, -0.25, -0.75, -0.5, 0.5, -1.0, 0.25, 0.25, 1.0, 0.25, 0.25, -0.5, -0.75, -1.0, 0.0, 0.5, -0.25, 0.75, 0.25, -0.25, 1.0, 0.25, -0.75, -1.0, 0.25, -0.25, 0.25, -1.0, 0.5, 0.5, -0.5, -0.75, -1.0, 0.25, -0.5, -0.5, 0.25, -1.0, -0.75, 0.75, -0.25, -0.5, 0.0, -0.75, 1.0, 0.75, 0.75, 0.25, -0.5, 0.5, -0.75, -0.75, -1.0, -0.5, 1.0, 0.0, 0.25, -0.75, -0.5, -1.0, 0.25, -0.5, 0.75, 0.75, 1.0, 0.0, ]);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0012.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pass_encoder0013 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0013",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query003.destroy()
    
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0010.endOcclusionQuery()
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    query001.destroy()
    query003.destroy()
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0010.setStencilReference(1);
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0013.insertDebugMarker("marker");
    
    device00.destroy();
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const array4 = new Float32Array([0.0, 0.5, 0.25, 0.25, -0.25, -0.5, 0.75, -1.0, -1.0, 1.0, 0.25, -0.25, 0.0, 0.25, -0.75, -0.75, -0.75, 0.0, -0.5, 0.75, -1.0, 1.0, -0.25, 0.25, -0.5, -0.75, -0.75, 0.5, 0.25, -0.25, 1.0, 0.5, 0.25, 1.0, 0.0, -0.75, 0.25, 1.0, 0.75, 0.25, -1.0, -0.25, 0.75, 0.5, -1.0, 0.5, 0.0, 0.25, -0.75, 0.75, 0.25, -0.5, -0.25, -1.0, -0.5, 0.25, -0.5, 0.0, -1.0, 1.0, -0.5, 0.25, -0.75, -0.25, -0.25, -0.5, 0.5, 0.0, 0.75, 0.75, 0.75, -0.5, -0.75, 0.75, -0.25, -0.75, 1.0, -0.75, -0.25, 0.5, 0.25, 0.75, -1.0, -1.0, -0.25, -1.0, -0.5, 0.5, 1.0, -1.0, 0.0, 0.75, 1.0, 0.75, 0.5, -0.75, 0.5, 0.5, 1.0, -0.75, ]);
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.insertDebugMarker("mymarker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    texture100.destroy();
    
    texture102.destroy();
    query100.destroy()
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32sint",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    
    
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
    render_pass_encoder1000.popDebugGroup();
    device10.pushErrorScope("validation");
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    command_encoder101.clearBuffer(buffer100);
    
    texture103.destroy();
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    command_encoder101.insertDebugMarker("mymarker");
    render_pass_encoder1000.insertDebugMarker("marker");
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
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
    texture101.destroy();
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    render_pass_encoder0011.popDebugGroup();
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
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1010.setStencilReference(1);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    render_pass_encoder1010.executeBundles([])
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const array5 = new Float32Array([0.75, -0.5, 0.5, 0.25, -1.0, -0.75, -0.75, 0.25, -1.0, 0.75, 0.25, 0.0, -1.0, 0.75, 0.0, 0.75, -0.25, 0.75, -0.25, -0.75, 0.0, -0.5, -1.0, 0.0, -0.5, 0.75, 1.0, -1.0, -0.25, 0.5, 0.0, -0.25, -1.0, 0.75, 0.0, -0.75, 1.0, -0.25, -0.25, 1.0, 1.0, 0.25, 0.5, -1.0, 0.25, 1.0, -0.75, -0.5, 0.75, -0.25, -0.75, 0.75, 0.0, 0.75, 0.0, -0.25, 0.75, -0.25, -1.0, -0.75, 0.75, -1.0, -0.75, -1.0, -1.0, 0.5, 1.0, 0.5, 0.0, 0.25, 0.25, 0.25, -0.75, 0.25, 0.5, -0.5, 0.0, -0.5, 1.0, 0.0, -0.25, -0.75, -0.25, -1.0, 0.5, 0.75, 0.75, -0.25, -1.0, -0.25, 1.0, -0.75, 0.5, 0.0, 0.5, -0.25, -0.75, 0.25, 0.5, 0.5, ]);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    buffer100.destroy()
    
    const array6 = new Float32Array([0.25, -0.25, 0.5, -0.75, 0.75, -0.25, 0.0, -0.25, 1.0, 1.0, 0.75, 0.5, 1.0, -1.0, -0.75, 0.25, 1.0, 0.0, -1.0, -0.5, -0.75, -0.5, 1.0, -0.5, 0.5, -0.5, 0.0, 1.0, 0.75, 0.75, -1.0, -0.5, 0.25, -0.5, -0.25, -0.5, 0.25, 1.0, 0.0, -1.0, 0.25, 0.0, 0.0, -1.0, 0.25, 0.75, -1.0, 0.5, -0.5, 0.5, -0.75, -0.5, 0.25, -0.75, -0.75, 0.75, 0.25, 1.0, -1.0, -1.0, 0.5, 1.0, 1.0, -0.5, 1.0, 0.25, 0.75, -0.75, 0.25, 0.75, 0.5, -1.0, -0.75, 0.0, 1.0, 0.25, -0.25, -0.25, 0.75, 0.25, 0.25, -1.0, 0.25, -0.25, -0.5, 0.75, 0.75, -0.75, -1.0, 0.5, -0.75, -0.5, 1.0, 0.25, -0.5, 0.25, -0.5, 0.0, 0.75, 0.5, ]);
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1000.setStencilReference(1);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    
    render_pass_encoder1000.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.setStencilReference(1);
    command_encoder102.pushDebugGroup("mygroupmarker")
    render_pass_encoder0012.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const array7 = new Float32Array([-0.25, -1.0, -1.0, 0.5, 0.5, 1.0, 1.0, -1.0, -1.0, 0.75, 0.0, 0.25, -0.5, 1.0, 0.5, -0.75, -0.25, 0.5, 0.0, 0.25, -0.25, 0.0, -1.0, 1.0, -0.25, -0.25, 0.25, 0.5, -0.75, 0.0, -1.0, -0.25, 0.25, 1.0, -0.5, 1.0, 1.0, 0.75, 0.25, -0.25, -1.0, 1.0, 0.0, -0.25, -0.75, 0.25, -0.5, -0.25, -0.75, -1.0, 0.5, 0.25, -0.25, 0.0, 0.75, -0.75, 0.75, -0.75, 0.25, -0.5, -1.0, 0.25, 0.25, 0.75, -0.75, 0.25, 0.5, -0.5, -0.25, 1.0, -1.0, -0.75, -0.5, 0.0, 1.0, 0.0, -0.5, 1.0, 1.0, 0.25, 0.0, 1.0, -0.5, 0.5, 0.75, 0.75, -0.25, 0.0, 1.0, -1.0, 0.75, 0.0, 1.0, -0.75, -0.5, 1.0, 0.5, 0.75, -1.0, -0.5, ]);
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    
    const command_buffer101 = command_encoder101.finish();
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query101
    });
    
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    render_pass_encoder0012.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    render_pass_encoder1010.insertDebugMarker("marker");
    command_encoder104.insertDebugMarker("mymarker");
    render_pass_encoder1020.setPipeline(render_pipeline100);
    compute_pass_encoder1000.popDebugGroup()
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
    render_pass_encoder1020.pushDebugGroup("group_marker");
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
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
        occlusionQuerySet: query101
    });
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    
    texture104.destroy();
    
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1010.setStencilReference(1);
    
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query101
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1021.setPipeline(render_pipeline100);
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1010.insertDebugMarker("marker");
    
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    buffer101.destroy()
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
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
    const array8 = new Float32Array([0.75, 0.0, 0.5, 0.75, 0.25, 0.75, 0.0, 0.75, 0.75, -1.0, -0.25, -0.75, 0.0, 0.0, -0.25, -0.5, 0.0, 0.0, -0.25, 0.5, -0.5, 0.75, -0.5, 0.5, -0.5, -0.5, 0.75, 1.0, -0.25, -0.25, -0.25, 0.5, -0.75, -0.5, 0.0, 0.5, -1.0, -0.25, 0.0, -1.0, 0.75, -0.5, 1.0, 0.25, -0.5, -0.75, 0.25, 0.0, -0.5, 0.5, 0.75, -1.0, 1.0, 0.75, 0.25, -0.75, 0.25, 0.5, -0.75, 0.5, 0.25, -0.75, 1.0, -0.5, -0.5, -1.0, 0.0, -0.75, 0.25, -1.0, 0.75, 0.5, 0.25, -1.0, -0.5, 0.75, -0.75, -0.5, 0.25, 0.75, 0.5, 0.75, -1.0, -0.25, 0.5, 0.0, -1.0, -0.25, -0.75, 0.75, 0.25, 0.5, 1.0, -0.25, -0.5, 0.75, -0.5, 0.25, 1.0, 0.25, ]);
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    render_pass_encoder1021.setBindGroup(0, bind_group100);
    render_pass_encoder1020.beginOcclusionQuery(0)
    render_pass_encoder1041.insertDebugMarker("marker");
    render_pass_encoder1021.setStencilReference(1);
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1041.setStencilReference(1);
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.insertDebugMarker("marker");
    buffer104.destroy()
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query101
    });
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    
    render_pass_encoder1040.beginOcclusionQuery(0)
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1031.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setStencilReference(1);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setPipeline(render_pipeline100);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1041.beginOcclusionQuery(0)
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    command_encoder100.insertDebugMarker("mymarker");
    render_pass_encoder1031.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.popDebugGroup();
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
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1041.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder1030.setPipeline(compute_pipeline107);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.executeBundles([])
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1041.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1031.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1010.executeBundles([])
    const render_pass_encoder1032 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query102
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    const render_pass_encoder1033 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1033",
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
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
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
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group101);
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0013.executeBundles([])
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder1032.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder0013.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    query100.destroy()
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
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
    render_pass_encoder1021.insertDebugMarker("marker");
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1000.insertDebugMarker("marker");
    command_encoder103.pushDebugGroup("mygroupmarker")
    render_pass_encoder1000.executeBundles([])
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1032.beginOcclusionQuery(0)
    render_pass_encoder1041.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1000.setStencilReference(1);
    buffer102.destroy()
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1021.setStencilReference(1);
    render_pass_encoder1021.beginOcclusionQuery(1)
    const render_pass_encoder1034 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1034",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1041,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.setPipeline(render_pipeline100);
    render_pass_encoder1034.setPipeline(render_pipeline100);
    compute_pass_encoder1030.popDebugGroup()
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group102);
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group103);
    render_pass_encoder1031.setPipeline(render_pipeline100);
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
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
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    render_pass_encoder1034.setBindGroup(0, bind_group104);
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
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
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group105);
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1000.setVertexBuffer(0, buffer1010);
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    render_pass_encoder1010.setPipeline(render_pipeline100);
    render_pass_encoder1041.endOcclusionQuery()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1016, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1016, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1001.setPipeline(render_pipeline100);
    render_pass_encoder1041.setPipeline(render_pipeline100);
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
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
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    render_pass_encoder1041.setBindGroup(0, bind_group106);
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1000.end();
    render_pass_encoder1034.setVertexBuffer(0, buffer105);
    compute_pass_encoder1000.end();
    render_pass_encoder1034.setIndexBuffer(buffer103, "uint16");
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
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
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group107);
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group108);
    render_pass_encoder1041.setVertexBuffer(0, buffer103);
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndirect(buffer1015, 0);
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1024,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group109);
    render_pass_encoder1001.setVertexBuffer(0, buffer104);
    render_pass_encoder1034.drawIndirect(buffer1012, 0);
    render_pass_encoder1033.setPipeline(render_pipeline100);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1033.endOcclusionQuery()
    render_pass_encoder1034.end();
    render_pass_encoder1020.setVertexBuffer(0, buffer1010);
    render_pass_encoder1001.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1024, 0);
    render_pass_encoder1030.setPipeline(render_pipeline100);
    render_pass_encoder1040.setVertexBuffer(0, buffer100);
    render_pass_encoder1041.end();
    render_pass_encoder1021.setVertexBuffer(0, buffer1017);
    device10.queue.submit([command_buffer103, ]);
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1026,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group1010);
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1023, 0);
    render_pass_encoder1040.drawIndirect(buffer1017, 0);
    render_pass_encoder1030.setVertexBuffer(0, buffer1021);
    render_pass_encoder1030.drawIndirect(buffer1011, 0);
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1021.drawIndirect(buffer100, 0);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1031.setVertexBuffer(0, buffer105);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1020, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1028,
                },
            },
        ],
    });

    render_pass_encoder1033.setBindGroup(0, bind_group1011);
    render_pass_encoder1040.end();
    render_pass_encoder1021.drawIndirect(buffer1016, 0);
    render_pass_encoder1033.setVertexBuffer(0, buffer1022);
    render_pass_encoder1031.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1033.drawIndirect(buffer108, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1030.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1033.end();
    render_pass_encoder1034.end();
    compute_pass_encoder1030.end();
    render_pass_encoder1001.end();
    render_pass_encoder1040.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1012, 0);
    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1030,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group1012);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1031.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1032.setPipeline(render_pipeline100);
    render_pass_encoder1040.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1000.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1001.drawIndirect(buffer1016, 0);
    command_encoder100.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1033.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1010.setVertexBuffer(0, buffer1013);
    render_pass_encoder1000.drawIndirect(buffer1010, 0);
    render_pass_encoder1033.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1016, 0);
    render_pass_encoder1000.popDebugGroup();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1010.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1041.drawIndirect(buffer1013, 0);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1000.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1040.drawIndirect(buffer1016, 0);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1020.drawIndirect(buffer109, 0);
    render_pass_encoder1021.end();
    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1032,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1013);
    render_pass_encoder1040.setIndexBuffer(buffer1025, "uint16");
    command_encoder102.popDebugGroup()
    render_pass_encoder1030.setIndexBuffer(buffer1032, "uint16");
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1030.setIndexBuffer(buffer1032, "uint16");
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1040.end();
    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1034,
                },
            },
        ],
    });

    render_pass_encoder1032.setBindGroup(0, bind_group1014);
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1033.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1032.setVertexBuffer(0, buffer1029);
    render_pass_encoder1032.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1032.drawIndirect(buffer1016, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1001.drawIndirect(buffer108, 0);
    render_pass_encoder1032.end();
    render_pass_encoder1034.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1033.draw(3);
    compute_pass_encoder1000.end();
    render_pass_encoder1032.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1021.drawIndirect(buffer1016, 0);
    render_pass_encoder1030.drawIndexed(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1031, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1035, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1035, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1034.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1001.drawIndirect(buffer109, 0);
    render_pass_encoder1000.drawIndirect(buffer1010, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1016, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1034.drawIndirect(buffer1024, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder1030.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1020.draw(3);
    render_pass_encoder1001.drawIndirect(buffer1029, 0);
    render_pass_encoder1034.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1031.drawIndirect(buffer1035, 0);
    render_pass_encoder1001.draw(3);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1032.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1033.drawIndirect(buffer1014, 0);
    render_pass_encoder1021.drawIndirect(buffer1022, 0);
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1000.drawIndirect(buffer1014, 0);
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1032, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1036, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1036, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1016, 0);
    compute_pass_encoder1030.end();
    render_pass_encoder1034.end();
    render_pass_encoder1031.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1033.drawIndexedIndirect(buffer1027, 0);
    device10.queue.submit([]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1001.drawIndirect(buffer1027, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1034.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1034.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1031.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1034, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1031.end();
    render_pass_encoder1031.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1032.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1033.drawIndirect(buffer1035, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1041.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1032.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1034.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1032.end();
    render_pass_encoder1010.drawIndirect(buffer1035, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1034.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1000.end();
    render_pass_encoder1033.setIndexBuffer(buffer101, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1041.drawIndirect(buffer1029, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1031, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1041.draw(3);
    device10.queue.submit([command_buffer100, ]);
    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1038,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1015);
    render_pass_encoder1030.drawIndirect(buffer106, 0);
    render_pass_encoder1034.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1035, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1039, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1039, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1033.drawIndirect(buffer1032, 0);
    render_pass_encoder1020.drawIndirect(buffer1039, 0);
    render_pass_encoder1041.setIndexBuffer(buffer101, "uint16");
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1031.drawIndirect(buffer1021, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1040.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1033.end();
    render_pass_encoder1001.drawIndirect(buffer1016, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1015, 0);
    render_pass_encoder1001.drawIndirect(buffer106, 0);
    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1041,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1016);
    render_pass_encoder1010.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1034.draw(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1033.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1041.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1033.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1034.draw(3);
    render_pass_encoder1033.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1000.drawIndirect(buffer1035, 0);
    render_pass_encoder1000.drawIndirect(buffer1012, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1042, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1042, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1034.end();
    render_pass_encoder1034.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1034.drawIndirect(buffer1012, 0);
    render_pass_encoder1041.drawIndirect(buffer1038, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1031.popDebugGroup();
    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1044,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1017);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1039, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1031.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1033.drawIndirect(buffer1042, 0);
    render_pass_encoder1001.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1041.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1033.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1033, 0);
    render_pass_encoder1032.drawIndirect(buffer1042, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1032.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1033.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1025, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1001.drawIndirect(buffer1039, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1034.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1021.drawIndirect(buffer1036, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1032.drawIndirect(buffer1036, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1030.end();
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1041.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1030.drawIndirect(buffer1036, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1033.drawIndirect(buffer1035, 0);
    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1046,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1018);
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    compute_pass_encoder1000.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1041, 0);
    render_pass_encoder1032.drawIndexed(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.end();
    render_pass_encoder1034.drawIndirect(buffer1035, 0);
    render_pass_encoder1034.popDebugGroup();
    render_pass_encoder1034.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1034.drawIndirect(buffer1026, 0);
    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1048,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1019);
    render_pass_encoder1031.drawIndirect(buffer102, 0);
    render_pass_encoder1040.drawIndirect(buffer1042, 0);
    render_pass_encoder1021.drawIndirect(buffer1042, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1032.end();
    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1050,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1020);
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1036, 0);
    device10.queue.submit([command_buffer100, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1051, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1051, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1034.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1033.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1032.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    render_pass_encoder1010.drawIndexed(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.drawIndirect(buffer1039, 0);
    render_pass_encoder1033.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndirect(buffer1051, 0);
    render_pass_encoder1033.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1034.drawIndirect(buffer1033, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1034.drawIndirect(buffer1039, 0);
    render_pass_encoder1010.drawIndirect(buffer1035, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1020.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1052, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1052, 0);
    render_pass_encoder1033.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1001.drawIndirect(buffer102, 0);
    render_pass_encoder1001.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1001.drawIndirect(buffer1052, 0);
    render_pass_encoder1020.drawIndirect(buffer1052, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1032.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1021.drawIndirect(buffer1039, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    render_pass_encoder1021.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1026, 0);
    render_pass_encoder1034.drawIndirect(buffer106, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1053, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1053, 0);
    render_pass_encoder1034.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1033.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1010.drawIndirect(buffer1053, 0);
    render_pass_encoder1040.drawIndirect(buffer1024, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1031.drawIndirect(buffer1036, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndirect(buffer1053, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1032.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1040.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1034.drawIndirect(buffer1016, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1035, 0);
    render_pass_encoder1020.drawIndirect(buffer1053, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1021.drawIndirect(buffer1053, 0);
    render_pass_encoder1000.drawIndirect(buffer1030, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1034.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1001.drawIndirect(buffer1016, 0);
    render_pass_encoder1034.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndirect(buffer1039, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1030.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1031.drawIndirect(buffer1051, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1032.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1034.drawIndirect(buffer102, 0);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1021.drawIndirect(buffer1051, 0);
    render_pass_encoder1034.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1040.drawIndirect(buffer1049, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1021.setIndexBuffer(buffer108, "uint16");
    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1055,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1021);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1033.drawIndexedIndirect(buffer108, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1040.drawIndirect(buffer102, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1032.drawIndexedIndirect(buffer1039, 0);
    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1057,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1022);
    render_pass_encoder1040.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1032.drawIndirect(buffer1035, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1032.drawIndirect(buffer1036, 0);
    render_pass_encoder1032.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1032.popDebugGroup();
    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1059,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1023);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1060, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1060, 0);
    render_pass_encoder1034.drawIndirect(buffer1045, 0);
    render_pass_encoder1041.drawIndirect(buffer1039, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1034, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1033.setIndexBuffer(buffer1049, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1053, 0);
    render_pass_encoder1031.end();
}