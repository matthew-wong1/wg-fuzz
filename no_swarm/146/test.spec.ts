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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("validation");
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
    command_encoder000.insertDebugMarker("mymarker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    buffer000.destroy()
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
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
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout002]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder101.insertDebugMarker("mymarker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.popDebugGroup()
    
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    texture000.destroy();
    command_encoder102.insertDebugMarker("mymarker");
    command_encoder102.pushDebugGroup("mygroupmarker")
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
    texture100.destroy();
    query100.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
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
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    render_bundle_encoder100.popDebugGroup();
    
    command_encoder102.insertDebugMarker("mymarker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    buffer100.destroy()
    
    
    
    buffer001.destroy()
    device00.pushErrorScope("internal");
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    query100.destroy()
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.popDebugGroup();
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder002.insertDebugMarker("mymarker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
        occlusionQuerySet: query000
    });
    const array0 = new Float32Array([0.0, 0.75, -0.25, -0.75, -0.75, 1.0, 0.0, 0.25, -1.0, -1.0, 0.25, 1.0, 0.5, 1.0, 0.25, 1.0, 0.0, -1.0, 1.0, 0.75, -0.25, 0.5, 0.0, -0.75, -0.5, 0.25, 0.75, -1.0, 0.0, 0.0, -1.0, 0.25, 0.5, 1.0, -0.25, 0.0, -0.25, 0.75, 0.0, -0.25, -0.5, 0.25, -0.75, -1.0, 0.5, 1.0, 0.5, 0.25, -1.0, -0.5, -0.75, 0.5, 0.0, -0.25, 0.75, -0.5, -0.75, 1.0, 1.0, -0.75, 0.75, 1.0, 0.0, 0.5, 0.0, -0.25, -0.25, -1.0, -0.5, -1.0, 0.75, 0.75, 0.25, -0.25, 0.25, -0.25, -0.25, 1.0, 0.5, 0.5, 1.0, -0.25, -0.5, 0.25, 0.0, -0.5, 0.5, 0.25, -0.5, -0.75, 0.5, -0.5, 0.75, -0.75, -0.75, 0.5, -0.5, -0.75, 0.0, 0.0, ]);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device40.destroy();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder102.popDebugGroup()
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    device00.pushErrorScope("out-of-memory");
    device10.pushErrorScope("internal");
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0020.setStencilReference(1);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    query103.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.beginOcclusionQuery(0)
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.popDebugGroup();
    query103.destroy()
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
        occlusionQuerySet: undefined
    });
    
    
    command_encoder102.insertDebugMarker("mymarker");
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.executeBundles([])
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query000.destroy()
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.insertDebugMarker("marker");
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_pass_encoder0030.setStencilReference(1);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8sint",
        dimension: "2d"
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_buffer004 = command_encoder004.finish();
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0010.executeBundles([])
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0030.executeBundles([])
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    texture002.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.popDebugGroup();
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    query000.destroy()
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    device00.queue.submit([command_buffer000, ]);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout009,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder103.pushDebugGroup("mygroupmarker")
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout009,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("out-of-memory");
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.executeBundles([])
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query000.destroy()
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
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
    render_pass_encoder0020.insertDebugMarker("marker");
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder103.insertDebugMarker("mymarker");
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("out-of-memory");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    texture101.destroy();
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    query104.destroy()
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1010.popDebugGroup()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout009,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query103.destroy()
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus",
        dimension: "2d"
    });
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    texture001.destroy();
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    texture005.destroy();
    texture004.destroy();
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const command_buffer005 = command_encoder005.finish();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline105);
    
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout004]
    });
    compute_pass_encoder1030.setPipeline(compute_pipeline100);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    compute_pass_encoder3000.insertDebugMarker("marker")
    query002.destroy()
    render_pass_encoder0020.popDebugGroup();
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout009,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: query001
    });
    compute_pass_encoder1020.setPipeline(compute_pipeline101);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    compute_pass_encoder1040.setPipeline(compute_pipeline102);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0060.insertDebugMarker("marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_bundle_encoder101.popDebugGroup();
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0010.endOcclusionQuery()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout008,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder102.popDebugGroup();
    
    
    const compute_pipeline0066 = device00.createComputePipeline({
        label: "compute_pipeline0066",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0067 = device00.createComputePipeline({
        label: "compute_pipeline0067",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0068 = device00.createComputePipeline({
        label: "compute_pipeline0068",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0069 = device00.createComputePipeline({
        label: "compute_pipeline0069",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline0070 = device00.createComputePipeline({
        label: "compute_pipeline0070",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0071 = device00.createComputePipeline({
        label: "compute_pipeline0071",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline0072 = device00.createComputePipeline({
        label: "compute_pipeline0072",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    device60.pushErrorScope("validation");
    const compute_pipeline0073 = device00.createComputePipeline({
        label: "compute_pipeline0073",
        layout: pipeline_layout009,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0074 = device00.createComputePipeline({
        label: "compute_pipeline0074",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query001.destroy()
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0075 = device00.createComputePipeline({
        label: "compute_pipeline0075",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0076 = device00.createComputePipeline({
        label: "compute_pipeline0076",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder0010.setStencilReference(1);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline0077 = device00.createComputePipeline({
        label: "compute_pipeline0077",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0078 = device00.createComputePipeline({
        label: "compute_pipeline0078",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0079 = device00.createComputePipeline({
        label: "compute_pipeline0079",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0080 = device00.createComputePipeline({
        label: "compute_pipeline0080",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0081 = device00.createComputePipeline({
        label: "compute_pipeline0081",
        layout: pipeline_layout009,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    const compute_pipeline0082 = device00.createComputePipeline({
        label: "compute_pipeline0082",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline0083 = device00.createComputePipeline({
        label: "compute_pipeline0083",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0084 = device00.createComputePipeline({
        label: "compute_pipeline0084",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0085 = device00.createComputePipeline({
        label: "compute_pipeline0085",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setStencilReference(1);
    const compute_pipeline0086 = device00.createComputePipeline({
        label: "compute_pipeline0086",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0087 = device00.createComputePipeline({
        label: "compute_pipeline0087",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline0088 = device00.createComputePipeline({
        label: "compute_pipeline0088",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.popDebugGroup();
    const compute_pipeline0089 = device00.createComputePipeline({
        label: "compute_pipeline0089",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0090 = device00.createComputePipeline({
        label: "compute_pipeline0090",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0091 = device00.createComputePipeline({
        label: "compute_pipeline0091",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline0092 = device00.createComputePipeline({
        label: "compute_pipeline0092",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const compute_pipeline0093 = device00.createComputePipeline({
        label: "compute_pipeline0093",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0094 = device00.createComputePipeline({
        label: "compute_pipeline0094",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0095 = device00.createComputePipeline({
        label: "compute_pipeline0095",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0096 = device00.createComputePipeline({
        label: "compute_pipeline0096",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0097 = device00.createComputePipeline({
        label: "compute_pipeline0097",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query001.destroy()
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const compute_pipeline0098 = device00.createComputePipeline({
        label: "compute_pipeline0098",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0099 = device00.createComputePipeline({
        label: "compute_pipeline0099",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.insertDebugMarker("marker");
    const compute_pipeline00100 = device00.createComputePipeline({
        label: "compute_pipeline00100",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const compute_pipeline00101 = device00.createComputePipeline({
        label: "compute_pipeline00101",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline00102 = device00.createComputePipeline({
        label: "compute_pipeline00102",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline00103 = device00.createComputePipeline({
        label: "compute_pipeline00103",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout002]
    });
    buffer300.destroy()
    const compute_pipeline00104 = device00.createComputePipeline({
        label: "compute_pipeline00104",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline00105 = device00.createComputePipeline({
        label: "compute_pipeline00105",
        layout: pipeline_layout009,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setStencilReference(1);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query001.destroy()
    
    const compute_pipeline00106 = device00.createComputePipeline({
        label: "compute_pipeline00106",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline00107 = device00.createComputePipeline({
        label: "compute_pipeline00107",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder101.insertDebugMarker("marker");
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
    
    const compute_pipeline00108 = device00.createComputePipeline({
        label: "compute_pipeline00108",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline00109 = device00.createComputePipeline({
        label: "compute_pipeline00109",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
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
    const compute_pipeline00110 = device00.createComputePipeline({
        label: "compute_pipeline00110",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const compute_pipeline00111 = device00.createComputePipeline({
        label: "compute_pipeline00111",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline00112 = device00.createComputePipeline({
        label: "compute_pipeline00112",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group101);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer107, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer107, 0);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group102);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1020.end();
    const command_buffer102 = command_encoder102.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1010.end();
    render_pass_encoder0030.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group103);
    device10.queue.submit([command_buffer102, ]);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1012, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1012, 0);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group104);
    const command_buffer101 = command_encoder101.finish();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.end();
    compute_pass_encoder1030.dispatchWorkgroups(100);
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1030.end();
    command_encoder103.popDebugGroup()
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder1040.end();
    device10.queue.submit([command_buffer100, ]);
    const command_buffer103 = command_encoder103.finish();
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([command_buffer103, ]);
}