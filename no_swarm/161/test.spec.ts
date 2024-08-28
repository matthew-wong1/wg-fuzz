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
    
    const array0 = new Float32Array([-0.25, -1.0, 0.5, 0.25, 1.0, 0.25, 0.5, 0.5, -0.75, 0.5, 0.25, 1.0, 0.25, 0.75, -0.5, -1.0, -0.75, -0.5, 1.0, -0.25, -0.25, 0.0, 0.75, -0.25, -0.25, 0.5, 1.0, 1.0, 0.5, 1.0, 0.25, -0.25, -0.75, -0.25, -0.5, 0.25, -0.5, 0.5, 0.5, 0.75, -0.25, 1.0, -0.25, -0.5, 0.75, -1.0, 0.25, 0.75, 0.25, -0.5, -0.75, 0.0, 1.0, 0.5, 0.5, -0.75, 0.5, 0.5, -0.25, 0.5, -1.0, 0.75, -0.5, 0.75, -0.5, 0.0, -1.0, 1.0, 0.0, -0.75, 0.25, 0.75, 0.75, 0.75, 0.0, 0.75, -1.0, -1.0, 0.25, 0.25, -0.75, -0.75, 0.5, 0.0, -0.25, -0.5, 0.75, 0.75, 0.75, 0.75, 1.0, 0.0, -0.5, 0.75, 0.5, 0.75, -0.5, -1.0, -1.0, 0.0, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([0.75, 0.5, -0.5, -0.5, 0.5, 0.5, 0.5, -0.5, -1.0, 0.5, -0.75, -0.75, 0.5, 0.5, 0.25, 0.75, -1.0, 0.25, -0.75, 1.0, 0.25, 0.5, -1.0, -0.75, 0.75, 1.0, -1.0, 0.5, 0.5, 0.25, -0.25, 0.75, -0.5, -1.0, 0.0, -1.0, 0.75, 0.0, -0.75, 0.25, 1.0, -0.5, -1.0, -1.0, 1.0, 0.5, -0.25, 1.0, 0.5, -1.0, -0.25, 0.25, 0.25, -0.75, -0.75, -1.0, -0.25, -0.75, -0.5, 0.0, 1.0, 1.0, -0.5, 0.5, 0.75, 0.75, -0.75, 0.75, 0.0, 0.75, 1.0, -0.5, -0.25, -0.75, 0.5, -0.75, 0.75, -0.75, 1.0, -0.75, 0.75, 0.5, 0.5, 1.0, -0.75, 1.0, -0.25, -0.5, 0.0, -0.5, -0.75, 0.75, -0.5, 0.25, 0.75, 0.5, -1.0, -1.0, -0.75, 0.75, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.destroy();
    
    
    
    
    const array2 = new Float32Array([-0.25, -1.0, 1.0, 0.75, -0.5, 0.75, 0.75, 0.25, -0.25, 0.75, 0.0, 0.5, -0.25, 0.25, -1.0, -0.25, 0.0, -1.0, -0.5, -0.25, -0.25, 0.0, -0.25, 0.5, -0.75, -0.75, -0.25, 1.0, 1.0, 1.0, -0.5, -1.0, -0.75, -1.0, 0.75, -0.5, 1.0, -1.0, -1.0, -0.25, 0.75, -0.25, 0.5, -0.75, -0.5, -0.5, -1.0, 1.0, 0.5, -0.25, -0.5, 0.75, 1.0, 0.0, 0.0, -0.75, -0.5, 0.25, 1.0, -0.5, 0.5, -0.75, -0.5, -0.25, 0.75, 0.25, 0.75, 1.0, 0.5, -0.5, 0.25, 0.75, 0.25, -0.25, -1.0, 0.75, 1.0, 1.0, -0.75, -1.0, -1.0, -1.0, 0.0, 1.0, -0.25, 0.75, -1.0, -0.75, -0.75, 1.0, -0.75, -0.25, -0.25, 0.75, 0.25, -1.0, 0.0, -0.5, 1.0, -0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([0.75, 0.5, 0.0, -0.25, 0.5, -0.25, -0.75, 0.0, 0.25, -0.5, 0.0, -0.75, 0.25, 0.5, 0.0, 0.5, 0.0, -0.5, -1.0, 1.0, -1.0, 0.75, -0.5, -0.75, 0.5, 0.0, 0.5, 1.0, -0.5, 0.25, -0.75, -1.0, 0.5, 0.5, -1.0, 0.5, 0.25, 0.75, -0.25, 1.0, -0.25, 0.75, 1.0, 1.0, -0.75, 0.25, 0.0, 1.0, -1.0, 0.0, 0.5, -0.25, -0.25, -1.0, -1.0, -0.5, 1.0, 0.75, -0.75, 0.75, 0.25, 0.0, -1.0, 0.25, 0.0, -0.25, -1.0, 0.75, -0.75, 0.5, 0.0, 0.25, -0.5, 0.25, -0.75, -0.5, 0.0, 0.5, -0.5, -1.0, 0.75, 0.25, -1.0, 0.5, -0.75, 0.0, -0.25, -0.25, 0.5, 1.0, -1.0, 1.0, 1.0, -0.75, -0.75, -1.0, 1.0, -1.0, -0.5, -0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
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
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    
    
    command_encoder100.insertDebugMarker("mymarker");
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
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
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setStencilReference(1);
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
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1003,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const query100 = device10.createQuerySet({
        label: "query100",
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
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_pass_encoder1010.insertDebugMarker("marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1010.insertDebugMarker("marker");
    
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1010.setStencilReference(1);
    
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture100.destroy();
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1010.setStencilReference(1);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1000.executeBundles([])
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder1010.setStencilReference(1);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1000.setStencilReference(1);
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder1000.executeBundles([])
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.executeBundles([])
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder1010.popDebugGroup();
    device10.pushErrorScope("out-of-memory");
    
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
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device50.pushErrorScope("validation");
    
    
    render_pass_encoder1010.insertDebugMarker("marker");
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    query301.destroy()
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    texture102.destroy();
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device30.pushErrorScope("internal");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    
    buffer103.destroy()
    query300.destroy()
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    texture101.destroy();
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("out-of-memory");
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder1010.setStencilReference(1);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    
    buffer101.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
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
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout107,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout502]
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    query302.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1000.insertDebugMarker("marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_pass_encoder1010.executeBundles([])
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8unorm",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    query302.destroy()
    render_pass_encoder1020.setPipeline(render_pipeline100);
    
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout107,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query302
    });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer501.destroy()
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1040.insertDebugMarker("marker");
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device20.pushErrorScope("validation");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer100.destroy()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder1040.executeBundles([])
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.executeBundles([])
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder200.insertDebugMarker("mymarker");
    query101.destroy()
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    query400.destroy()
    buffer400.destroy()
    
    render_pass_encoder1040.executeBundles([])
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8snorm",
        dimension: "2d"
    });
    buffer104.destroy()
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
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
        occlusionQuerySet: query101
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    query101.destroy()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_pass_encoder1030.insertDebugMarker("marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    texture400.destroy();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setPipeline(render_pipeline100);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query400.destroy()
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
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const command_buffer401 = command_encoder401.finish();
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
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
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1050.pushDebugGroup("group_marker");
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    query101.destroy()
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    render_pass_encoder1040.popDebugGroup();
    
    
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
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
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    render_pass_encoder1040.insertDebugMarker("marker");
    buffer500.destroy()
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    render_pass_encoder1050.popDebugGroup();
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    query302.destroy()
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder1050.setPipeline(render_pipeline102);
    
    
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
    
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.popDebugGroup();
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.executeBundles([])
    command_encoder500.insertDebugMarker("mymarker");
    
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    render_pass_encoder1020.setBindGroup(0, bind_group100);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    texture300.destroy();
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    query300.destroy()
    
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.setStencilReference(1);
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.insertDebugMarker("marker");
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.setPipeline(render_pipeline101);
    device50.pushErrorScope("out-of-memory");
    
    render_bundle_encoder301.popDebugGroup();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    command_encoder500.popDebugGroup()
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder1000.insertDebugMarker("marker");
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group101);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_pass_encoder1040.setPipeline(render_pipeline100);
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    texture103.destroy();
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1050.pushDebugGroup("group_marker");
    
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
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.setPipeline(render_pipeline101);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device70.pushErrorScope("validation");
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout107,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
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
    
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device50.pushErrorScope("internal");
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const texture_view4013 = texture401.createView({ label: "texture_view4013" });
    
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.executeBundles([])
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1030.setStencilReference(1);
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.setStencilReference(1);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.setVertexBuffer(0, buffer102);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1030.popDebugGroup();
    const command_buffer700 = command_encoder700.finish();
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group102);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    render_pass_encoder1010.setVertexBuffer(0, buffer100);
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1050.setVertexBuffer(0, buffer100);
    render_pass_encoder1050.setIndexBuffer(buffer103, "uint16");
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    render_pass_encoder1030.setBindGroup(0, bind_group103);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1010.draw(3);
    render_pass_encoder1050.setIndexBuffer(buffer101, "uint16");
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
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

    render_pass_encoder1040.setBindGroup(0, bind_group104);
    render_pass_encoder1050.draw(3);
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
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
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group105);
    render_pass_encoder1000.setVertexBuffer(0, buffer100);
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1040.setVertexBuffer(0, buffer102);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1030.setVertexBuffer(0, buffer102);
    render_pass_encoder1050.end();
    render_pass_encoder1000.draw(3);
    render_pass_encoder1000.end();
    render_pass_encoder1030.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1030.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer101, "uint16");
    const command_buffer105 = command_encoder105.finish();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1030.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1030.draw(3);
    render_pass_encoder1040.draw(3);
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    render_pass_encoder1030.end();
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1040.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer103, ]);
    device50.queue.submit([command_buffer500, ]);
    const command_buffer104 = command_encoder104.finish();
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer104, ]);
}