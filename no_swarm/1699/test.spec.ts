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
    
    const array0 = new Float32Array([-1.0, -1.0, -0.25, -0.75, -0.75, -0.75, -1.0, -0.5, 0.5, 0.0, 0.25, -0.25, 0.75, 0.5, 0.0, 0.0, -0.25, 0.5, -0.5, 1.0, 0.0, -1.0, -0.5, 0.0, 0.75, 0.25, 0.0, 0.0, -1.0, 0.0, 0.5, -0.5, -1.0, -0.25, -0.75, 1.0, -0.75, -0.25, -0.5, 0.75, -0.25, -0.5, -0.25, 1.0, -1.0, 0.25, -0.75, 0.75, 0.75, -0.5, 0.5, -1.0, 1.0, 0.0, 1.0, 1.0, 0.0, 0.75, -0.25, -0.5, 0.25, -0.25, 0.0, -0.5, 0.0, 1.0, 1.0, -0.5, -1.0, 0.0, 0.25, 0.5, -1.0, -1.0, 0.5, -0.75, -1.0, -0.75, -0.25, 0.25, -1.0, -1.0, -1.0, 0.0, 0.0, 1.0, -0.75, -0.25, 1.0, -0.75, 0.5, 1.0, -0.75, 1.0, 0.75, 0.75, -0.5, -0.25, -0.25, -1.0, ]);
    const array1 = new Float32Array([0.0, 0.5, 1.0, 0.75, 1.0, 1.0, 1.0, -0.5, 0.0, 0.0, 0.0, -1.0, 0.25, 1.0, -0.25, -0.75, 0.0, 0.75, -0.75, 0.25, 0.5, 0.25, -0.5, 0.25, 0.5, 0.5, 0.25, 0.75, 0.5, -0.5, -0.25, -0.75, -0.75, 1.0, 1.0, -0.25, 0.75, -0.75, -1.0, 0.0, 0.75, 1.0, 1.0, 0.0, -0.5, 0.75, -1.0, 1.0, -0.25, 0.25, -1.0, 0.25, 0.5, -0.75, -1.0, 0.25, -1.0, 1.0, -1.0, -1.0, 0.0, 0.0, 0.25, 0.0, 1.0, 0.75, -0.75, 0.0, -0.5, -0.25, 0.25, -0.75, 0.0, 0.0, 0.5, 0.5, -0.75, -0.25, -0.5, 1.0, 0.5, 0.0, 0.25, -0.75, 0.25, -0.5, 0.25, 0.0, -0.5, -0.75, 1.0, 0.0, 1.0, -1.0, -0.5, -0.25, -1.0, -0.5, -0.25, 0.75, ]);
    
    const array2 = new Float32Array([0.0, -1.0, 0.25, -0.5, 0.5, -1.0, 0.75, -1.0, 0.5, 0.25, 1.0, -1.0, -0.75, 0.25, 0.0, -1.0, 0.75, -0.25, -0.25, -1.0, -1.0, 0.0, 1.0, 0.75, 0.0, 0.25, 1.0, 0.25, -0.25, -0.25, 1.0, 0.5, 0.5, -0.75, -0.25, -0.75, -0.5, -0.75, 0.0, -1.0, 1.0, -0.5, 0.25, 0.0, 0.25, -0.75, 0.75, 0.75, 0.75, 0.0, -1.0, 0.5, -1.0, -0.25, -0.5, -1.0, -0.75, 0.5, 0.5, -0.75, 0.25, 0.0, -0.75, -0.5, 0.75, 0.5, 0.0, 0.0, 0.0, 0.25, 0.0, 0.5, -1.0, 0.75, -0.5, -0.5, -0.25, -0.5, 1.0, 0.5, 0.5, -1.0, 0.0, 0.25, 1.0, 0.25, 0.75, 0.75, -1.0, 1.0, -0.5, 0.25, 0.75, 1.0, -1.0, 0.5, 0.25, 1.0, -0.25, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([0.25, -1.0, 0.0, 0.75, 0.0, 0.0, -1.0, 0.75, -0.25, -0.75, 0.75, 0.0, 0.25, -0.25, 0.5, 1.0, 0.75, -0.5, -0.75, -0.25, 0.25, 1.0, -0.25, 0.5, -0.25, -1.0, -0.25, -0.25, 0.5, 0.75, 0.5, -0.5, -0.5, 0.75, 1.0, 0.25, 0.5, -0.5, -0.25, 0.75, 0.25, 1.0, -0.25, 0.75, 0.25, 0.0, -1.0, 1.0, 1.0, -1.0, -0.75, 1.0, 0.75, 0.5, 0.5, -0.5, 0.5, 0.0, 0.0, 0.5, 0.75, -0.5, -1.0, 0.25, -0.5, 0.25, -1.0, 0.25, 1.0, 0.75, -0.25, 0.5, 0.0, -0.25, 0.0, 0.5, 0.0, -0.75, -0.5, 0.5, 0.25, 0.75, -0.5, 0.0, -0.25, 0.0, -0.75, -0.5, 0.5, 0.25, 0.0, -0.5, 0.5, 1.0, -1.0, 1.0, -0.5, -0.75, 1.0, -0.5, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    device10.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.pushErrorScope("validation");
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.popDebugGroup();
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    command_encoder000.pushDebugGroup("mygroupmarker")
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus",
        dimension: "2d"
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    query002.destroy()
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder001.popDebugGroup();
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    query000.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32sint",
        dimension: "2d"
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    texture000.destroy();
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
    
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    query001.destroy()
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query001.destroy()
    texture001.destroy();
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query004
    });
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query003
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const array4 = new Float32Array([0.5, -1.0, 0.75, 1.0, -1.0, 0.25, 1.0, 1.0, 0.25, 0.0, -1.0, 1.0, -0.5, 0.75, -0.25, -1.0, -0.75, 0.0, 1.0, -1.0, 0.25, -1.0, -0.25, 1.0, 0.25, -0.25, -0.75, 0.75, 0.5, 0.75, -1.0, 1.0, 0.0, 1.0, 0.25, -0.25, -1.0, -1.0, -1.0, 0.25, -0.25, 1.0, 0.75, -0.5, -1.0, -0.5, 0.0, 1.0, 0.0, -0.5, -1.0, 0.25, -0.25, 0.5, 0.25, -0.5, 0.0, -0.75, 0.25, -1.0, -0.75, 0.0, 0.25, -0.5, 0.0, 0.75, -0.25, 0.5, -0.5, 0.75, 0.75, 0.75, 0.75, -1.0, -1.0, 0.25, 1.0, -0.75, 1.0, -1.0, 1.0, 0.75, 0.0, 0.0, -1.0, -1.0, 0.25, 1.0, 0.25, 0.5, 1.0, -0.25, 0.0, 0.25, 0.75, 0.25, 0.5, -0.25, -0.75, 0.25, ]);
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder0010.insertDebugMarker("marker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query001
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
    compute_pass_encoder0000.setPipeline(compute_pipeline003);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.popDebugGroup();
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    render_pass_encoder0021.beginOcclusionQuery(0)
    render_pass_encoder0010.executeBundles([render_bundle_encoder001, ])
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.pushDebugGroup("group_marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    query004.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture002.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    texture200.destroy();
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const array5 = new Float32Array([-0.5, -1.0, 0.0, 0.5, -0.25, -0.5, -0.25, 1.0, 0.25, 0.0, 1.0, 0.25, -0.25, 0.0, 0.25, 0.5, 1.0, -1.0, 1.0, -1.0, -0.25, -0.25, -0.5, 1.0, -0.75, 1.0, 1.0, -1.0, 1.0, -0.75, 0.75, 0.5, 0.0, -1.0, -0.25, 0.0, -0.5, -0.5, 1.0, 0.75, 0.5, -1.0, 1.0, 1.0, 0.25, -0.25, 0.5, 0.5, 1.0, 0.0, -1.0, -0.5, 1.0, 1.0, 1.0, 0.0, 0.0, 0.25, -0.5, -0.25, -0.75, -0.75, 0.0, 0.75, -1.0, -1.0, 0.75, -0.5, 1.0, 0.5, 1.0, 0.0, 0.75, -0.25, 0.75, -0.75, 1.0, 0.25, 0.5, -1.0, 0.25, -0.25, -0.5, 1.0, 0.25, -0.75, 0.0, 0.5, -0.75, 0.5, -0.25, -0.25, 1.0, -1.0, 0.25, 0.5, -0.5, 0.0, -0.75, 1.0, ]);
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0021.executeBundles([])
    render_pass_encoder0021.endOcclusionQuery()
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    texture200.destroy();
    const array6 = new Float32Array([-0.75, 0.75, 0.5, 0.75, -0.75, -0.5, -1.0, 0.0, -1.0, -0.75, -0.75, -0.25, -0.25, 1.0, -0.5, 1.0, -0.25, 0.25, -0.25, 0.5, -0.75, -0.5, 0.0, -1.0, -1.0, 0.25, -0.25, 0.0, -0.25, -0.5, 0.25, -0.25, 0.0, -1.0, -0.75, 0.75, -1.0, 0.75, -1.0, -0.5, -0.25, -0.75, 0.25, 1.0, -1.0, -0.5, 0.75, 0.5, -0.75, -0.5, -0.25, -0.75, -1.0, 0.5, -0.5, 1.0, 1.0, 0.75, 0.5, -0.75, -1.0, 0.75, 0.0, 0.0, 0.0, -0.75, 1.0, -1.0, 0.25, 0.25, 0.25, 0.0, -0.75, 0.5, 1.0, -1.0, 0.75, 1.0, -1.0, -1.0, -0.5, 0.25, -1.0, -0.75, -0.5, -1.0, 0.0, 0.25, -1.0, 1.0, 0.5, 0.0, 1.0, 0.75, 0.75, -0.5, -1.0, 0.5, 1.0, 0.75, ]);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query002
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
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query000
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0021.popDebugGroup();
    
    render_pass_encoder0021.pushDebugGroup("group_marker");
    render_pass_encoder0001.insertDebugMarker("marker");
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0001.executeBundles([])
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0001.insertDebugMarker("marker");
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0011.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.executeBundles([])
    buffer000.destroy()
    
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0021.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    texture101.destroy();
    
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    render_pass_encoder0001.insertDebugMarker("marker");
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query201.destroy()
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.insertDebugMarker("marker");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer003, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer003, 0);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.beginOcclusionQuery(1)
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    render_pass_encoder0011.beginOcclusionQuery(1)
    render_pass_encoder0030.executeBundles([])
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder0020.executeBundles([render_bundle_encoder001, ])
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder0021.beginOcclusionQuery(0)
    
    
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0030.beginOcclusionQuery(0)
    render_pass_encoder0011.popDebugGroup();
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    buffer001.destroy()
    
    render_pass_encoder0030.executeBundles([render_bundle_encoder000, ])
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device20.destroy();
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout008,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.executeBundles([])
    command_encoder004.copyBufferToBuffer(
        buffer001,
        0,
        buffer003,
        0,
        400
    );
    query004.destroy()
    
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    device00.pushErrorScope("internal");
    render_pass_encoder0021.setStencilReference(1);
    command_encoder002.copyBufferToBuffer(
        buffer001,
        0,
        buffer003,
        0,
        400
    );
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
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
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query004
    });
    query000.destroy()
    render_pass_encoder0040.setStencilReference(1);
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.pushDebugGroup("group_marker");
    command_encoder005.copyBufferToBuffer(
        buffer000,
        0,
        buffer003,
        0,
        400
    );
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
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
    render_pass_encoder0000.executeBundles([render_bundle_encoder001, ])
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0031.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0021.endOcclusionQuery()
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    query004.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder0040.setPipeline(render_pipeline000);
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.setPipeline(render_pipeline000);
    render_pass_encoder0020.setPipeline(render_pipeline000);
    
    render_pass_encoder0011.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder0031.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0021.setStencilReference(1);
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout009,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0021.setPipeline(render_pipeline001);
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group001);
    buffer004.destroy()
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout009,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.pushDebugGroup("group_marker");
    command_encoder005.copyBufferToBuffer(
        buffer000,
        0,
        buffer003,
        0,
        400
    );
    render_pass_encoder0031.executeBundles([render_bundle_encoder002, ])
    render_pass_encoder0000.popDebugGroup();
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout008,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query004.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0001.pushDebugGroup("group_marker");
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    compute_pass_encoder0010.popDebugGroup()
    query004.destroy()
    render_pass_encoder0011.setPipeline(render_pipeline002);
    
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0051.insertDebugMarker("marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0050.setStencilReference(1);
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
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0050.executeBundles([])
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder0050.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.executeBundles([render_bundle_encoder000, ])
    compute_pass_encoder0000.popDebugGroup()
    command_encoder002.copyTextureToBuffer(
        {
            texture: texture002
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
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout008,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    buffer007.destroy()
    render_pass_encoder0050.setPipeline(render_pipeline002);
    
    const compute_pipeline0066 = device00.createComputePipeline({
        label: "compute_pipeline0066",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query005.destroy()
    
    render_pass_encoder0001.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group003);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const compute_pipeline0067 = device00.createComputePipeline({
        label: "compute_pipeline0067",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0051.setPipeline(render_pipeline000);
    
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    const compute_pipeline0068 = device00.createComputePipeline({
        label: "compute_pipeline0068",
        layout: pipeline_layout008,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0069 = device00.createComputePipeline({
        label: "compute_pipeline0069",
        layout: pipeline_layout008,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder003.copyBufferToBuffer(
        buffer001,
        0,
        buffer008,
        0,
        400
    );
    const compute_pipeline0070 = device00.createComputePipeline({
        label: "compute_pipeline0070",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setPipeline(render_pipeline000);
    const compute_pipeline0071 = device00.createComputePipeline({
        label: "compute_pipeline0071",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    
    command_encoder003.copyTextureToTexture(
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
    const render_pass_encoder0052 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0052",
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
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer008, 0, array1, 0, array1.length);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    compute_pass_encoder0030.setPipeline(compute_pipeline0054);
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    const compute_pipeline0072 = device00.createComputePipeline({
        label: "compute_pipeline0072",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    buffer009.destroy()
    
    const compute_pipeline0073 = device00.createComputePipeline({
        label: "compute_pipeline0073",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    buffer002.destroy()
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    render_pass_encoder0041.setStencilReference(1);
    const compute_pipeline0074 = device00.createComputePipeline({
        label: "compute_pipeline0074",
        layout: pipeline_layout009,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.popDebugGroup();
    buffer003.destroy()
    render_pass_encoder0052.setPipeline(render_pipeline002);
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder000.pushDebugGroup("mygroupmarker")
    buffer008.destroy()
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0075 = device00.createComputePipeline({
        label: "compute_pipeline0075",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer009,
        0
    )
    const compute_pipeline0076 = device00.createComputePipeline({
        label: "compute_pipeline0076",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0077 = device00.createComputePipeline({
        label: "compute_pipeline0077",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline0078 = device00.createComputePipeline({
        label: "compute_pipeline0078",
        layout: pipeline_layout009,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline0079 = device00.createComputePipeline({
        label: "compute_pipeline0079",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setPipeline(render_pipeline000);
    const compute_pipeline0080 = device00.createComputePipeline({
        label: "compute_pipeline0080",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0041.pushDebugGroup("group_marker");
    render_pass_encoder0052.pushDebugGroup("group_marker");
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
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_pass_encoder0000.executeBundles([])
    device00.pushErrorScope("out-of-memory");
    const compute_pipeline0081 = device00.createComputePipeline({
        label: "compute_pipeline0081",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0051.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0001.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline0082 = device00.createComputePipeline({
        label: "compute_pipeline0082",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0041.setStencilReference(1);
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0041.executeBundles([])
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0083 = device00.createComputePipeline({
        label: "compute_pipeline0083",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group004);
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.popDebugGroup();
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group005);
    
    const compute_pipeline0084 = device00.createComputePipeline({
        label: "compute_pipeline0084",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query004.destroy()
    render_bundle_encoder002.setVertexBuffer(0, buffer0013);
    const compute_pipeline0085 = device00.createComputePipeline({
        label: "compute_pipeline0085",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0086 = device00.createComputePipeline({
        label: "compute_pipeline0086",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    render_pass_encoder0051.insertDebugMarker("marker");
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group006);
    
    render_pass_encoder0011.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0087 = device00.createComputePipeline({
        label: "compute_pipeline0087",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer0015,
        0
    )
    
    const compute_pipeline0088 = device00.createComputePipeline({
        label: "compute_pipeline0088",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group007);
    buffer0017.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout003]
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
    const compute_pipeline0089 = device00.createComputePipeline({
        label: "compute_pipeline0089",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0090 = device00.createComputePipeline({
        label: "compute_pipeline0090",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0091 = device00.createComputePipeline({
        label: "compute_pipeline0091",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0092 = device00.createComputePipeline({
        label: "compute_pipeline0092",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0040.setVertexBuffer(0, buffer0018);
    const compute_pipeline0093 = device00.createComputePipeline({
        label: "compute_pipeline0093",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0094 = device00.createComputePipeline({
        label: "compute_pipeline0094",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    render_pass_encoder0051.setBindGroup(0, bind_group008);
    render_pass_encoder0051.setVertexBuffer(0, buffer004);
    render_pass_encoder0050.setVertexBuffer(0, buffer008);
    render_pass_encoder0050.drawIndirect(buffer009, 0);
    render_pass_encoder0020.setVertexBuffer(0, buffer0014);
    render_pass_encoder0000.setPipeline(render_pipeline002);
    render_pass_encoder0040.drawIndirect(buffer003, 0);
    compute_pass_encoder0000.end();
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group009);
    device40.queue.submit([]);
    render_pass_encoder0051.drawIndirect(buffer003, 0);
    command_encoder000.popDebugGroup()
    const command_buffer004 = command_encoder004.finish();
    const command_buffer005 = command_encoder005.finish();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.end();
    render_pass_encoder0051.drawIndirect(buffer007, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0041.setPipeline(render_pipeline003);
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    render_pass_encoder0011.setBindGroup(0, bind_group0010);
    device00.queue.submit([]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.setVertexBuffer(0, buffer002);
    render_pass_encoder0051.drawIndirect(buffer0018, 0);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    render_pass_encoder0040.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    render_pass_encoder0011.setVertexBuffer(0, buffer009);
    render_pass_encoder0040.draw(3);
    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
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
                    buffer: buffer0025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0026,
                },
            },
        ],
    });

    render_pass_encoder0031.setBindGroup(0, bind_group0011);
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
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0052.setBindGroup(0, bind_group0012);
    render_pass_encoder0011.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0052.setVertexBuffer(0, buffer000);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0001.setVertexBuffer(0, buffer0027);
    render_pass_encoder0001.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0052.setIndexBuffer(buffer0023, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0001.drawIndirect(buffer0025, 0);
    render_pass_encoder0052.popDebugGroup();
    render_pass_encoder0052.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0052.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0011.end();
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
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group0013);
    render_pass_encoder0052.end();
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
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0014);
    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0034,
                },
            },
        ],
    });

    render_pass_encoder0021.setBindGroup(0, bind_group0015);
    render_pass_encoder0051.end();
    render_pass_encoder0000.setVertexBuffer(0, buffer0027);
    render_pass_encoder0000.drawIndirect(buffer001, 0);
    render_pass_encoder0021.setVertexBuffer(0, buffer0023);
    render_pass_encoder0001.drawIndirect(buffer0027, 0);
    render_pass_encoder0050.end();
    device00.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer003, 0);
    render_pass_encoder0020.drawIndirect(buffer0033, 0);
    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline0054.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0036,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0016);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0031.setVertexBuffer(0, buffer0016);
    render_pass_encoder0001.end();
    render_pass_encoder0000.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0018, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0037, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0037, 0);
    render_pass_encoder0050.drawIndirect(buffer0020, 0);
    render_pass_encoder0020.drawIndirect(buffer0014, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0038, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0038, 0);
    render_pass_encoder0052.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0010.end();
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
    
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group0017);
    compute_pass_encoder0010.end();
    render_pass_encoder0021.end();
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
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0018);
    render_pass_encoder0021.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0041.setVertexBuffer(0, buffer0036);
    render_pass_encoder0040.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0038, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0037, 0);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0041.drawIndirect(buffer003, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0052.drawIndexedIndirect(buffer0012, 0);
    const command_buffer001 = command_encoder001.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0031.drawIndirect(buffer0038, 0);
    render_pass_encoder0010.drawIndirect(buffer0011, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0052.drawIndirect(buffer003, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0011.endOcclusionQuery()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0051.drawIndirect(buffer0038, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0027, "uint16");
    const command_buffer003 = command_encoder003.finish();
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
    
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group0019);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0052.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0011.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndirect(buffer0027, 0);
    render_pass_encoder0001.drawIndirect(buffer004, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0041.drawIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0021.drawIndirect(buffer0038, 0);
    device40.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer002, 0);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    render_pass_encoder0041.drawIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0030.setVertexBuffer(0, buffer0018);
    compute_pass_encoder0030.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0031.drawIndirect(buffer000, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0052.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0052.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0033, 0);
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer003, ]);
    render_pass_encoder0052.drawIndirect(buffer006, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0045, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0045, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0050.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0052.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0031.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0045, 0);
    render_pass_encoder0052.drawIndirect(buffer0042, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0046, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0031.drawIndirect(buffer0037, 0);
    render_pass_encoder0001.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0046, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0040.drawIndirect(buffer0035, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer003, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0050.setIndexBuffer(buffer0023, "uint16");
}