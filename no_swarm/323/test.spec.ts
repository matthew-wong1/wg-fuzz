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
    device00.destroy();
    
    const array0 = new Float32Array([0.0, 0.5, -0.25, -1.0, -0.75, -0.75, -0.75, -1.0, 0.25, 0.5, 0.25, -0.5, 0.0, 0.25, 0.5, -0.75, 0.75, 0.25, 0.0, -0.25, 0.25, 0.75, -0.75, -0.25, 0.5, 1.0, 0.5, -0.25, 0.0, 0.5, 0.75, 1.0, -0.25, -0.5, 0.25, 0.5, 0.75, 1.0, -0.25, -0.75, -0.25, 0.0, 0.5, 1.0, 0.25, 0.75, 1.0, 0.25, -0.25, -0.5, 0.0, -1.0, 0.25, -0.5, -0.25, -0.25, 0.0, 0.75, 0.75, -1.0, -0.75, 0.0, 0.5, -0.75, 0.75, 0.75, -0.5, -0.75, 0.5, 1.0, 0.0, 0.25, 0.75, -0.5, -0.5, 0.0, 0.0, -0.5, 0.5, 0.75, 0.5, 0.75, -0.75, 0.25, 0.5, 0.0, 0.5, -0.75, 1.0, -0.75, -1.0, 0.5, 1.0, 0.25, 0.75, 0.0, 1.0, 0.0, -0.25, 1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array1 = new Float32Array([-1.0, -0.5, -0.75, -0.25, -0.5, 0.5, 0.0, -0.25, -0.5, 0.5, 0.25, 0.5, 0.25, 0.0, -1.0, 1.0, -0.25, -0.25, 0.0, 0.25, -0.75, -0.25, -0.5, 0.0, -1.0, 0.0, 0.25, 0.5, -1.0, 0.0, 0.5, 0.25, -0.25, -1.0, -0.75, -1.0, -0.75, 0.25, 0.25, 1.0, 0.5, 0.0, -0.75, 0.25, 0.75, -0.5, 0.75, -0.75, 0.75, 0.25, -0.75, 0.0, 0.0, -0.5, -1.0, 0.75, -0.5, -0.25, -0.75, 0.25, 0.0, 0.25, 0.25, -0.25, -0.75, 0.75, 0.75, 1.0, 1.0, -1.0, -0.25, 0.75, -0.5, 1.0, -0.25, -0.5, 0.25, 1.0, -0.5, -0.25, 0.5, -1.0, 1.0, 0.25, -0.75, -0.5, 0.5, 1.0, -0.5, -1.0, -0.5, 0.5, -0.75, 0.75, -0.25, 0.5, 0.5, -0.5, -0.25, 1.0, ]);
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
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.pushErrorScope("validation");
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16sint",
        dimension: "2d"
    });
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
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
    buffer100.destroy()
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
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
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device10.pushErrorScope("out-of-memory");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout104]
    });
    device20.destroy();
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    query100.destroy()
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    
    
    render_pass_encoder1000.executeBundles([])
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.executeBundles([])
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder100.popDebugGroup();
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
    render_pass_encoder1000.setStencilReference(1);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
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
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    texture101.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setStencilReference(1);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.popDebugGroup();
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder102.insertDebugMarker("marker");
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query100.destroy()
    render_pass_encoder1010.executeBundles([])
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout105]
    });
    const array2 = new Float32Array([-0.25, 0.75, 0.5, 0.0, -0.25, -0.75, 0.0, 1.0, -0.25, 0.75, -0.75, 0.0, 0.5, -0.25, -0.75, 1.0, -0.25, 0.0, 1.0, -1.0, 0.0, 0.75, -0.5, 1.0, 0.5, -0.25, -1.0, -1.0, -0.75, 0.25, -0.75, -1.0, 0.25, 0.0, 0.0, 1.0, 0.75, 0.25, -0.75, -0.5, -0.25, 0.25, 0.5, 0.75, -0.25, 0.5, -0.5, -0.75, -0.25, 0.5, -1.0, -0.5, -0.5, -0.25, 0.75, 0.0, 1.0, 0.5, -1.0, 0.75, 0.5, -0.5, 0.25, 0.75, 0.0, 1.0, -0.25, 0.5, -1.0, 0.75, -0.25, -0.5, 0.5, 0.25, -0.5, 0.75, 0.5, 0.75, -0.5, 0.0, 0.5, -0.75, 0.5, 0.75, 0.0, -0.5, -1.0, 0.0, -1.0, -0.25, -1.0, -0.25, 0.5, 1.0, -0.25, 0.0, -0.25, -1.0, -1.0, -1.0, ]);
    
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1010.setStencilReference(1);
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout104]
    });
    const array3 = new Float32Array([-1.0, -0.75, -0.5, 1.0, -1.0, -1.0, -1.0, -1.0, -1.0, 1.0, 0.75, 0.5, -0.25, 1.0, 0.0, -0.25, -0.75, -1.0, 0.25, 1.0, -0.75, 0.5, -1.0, 0.0, -0.25, -0.75, -0.25, 0.75, 0.0, -1.0, -0.25, -0.5, -1.0, 0.25, 0.5, -0.25, -1.0, 0.5, -0.75, 1.0, -0.75, -1.0, 1.0, 0.75, 0.5, -1.0, 0.25, 0.75, 0.75, 1.0, 1.0, -0.25, -0.25, 1.0, 0.25, 0.0, -0.75, -1.0, -0.25, -0.25, -0.75, -0.25, -1.0, -0.5, 0.5, 0.75, 0.5, -0.25, -1.0, -0.5, -0.75, 0.25, -0.25, 0.75, -0.25, -0.75, -1.0, -0.5, 1.0, -1.0, 0.75, 1.0, 1.0, -1.0, -0.5, -1.0, 0.0, 0.0, 0.25, 0.0, 0.25, -0.75, 0.75, 0.75, 0.5, 0.75, -0.75, -1.0, -0.5, 1.0, ]);
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout105]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1010.executeBundles([])
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.executeBundles([])
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.popDebugGroup();
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout108,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder1000.insertDebugMarker("marker");
    device40.pushErrorScope("validation");
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
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
        occlusionQuerySet: undefined
    });
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout1016,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
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
    texture102.destroy();
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer102.destroy()
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    texture100.destroy();
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.popDebugGroup();
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.executeBundles([])
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout106]
    });
    
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const compute_pipeline1061 = device10.createComputePipeline({
        label: "compute_pipeline1061",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline1062 = device10.createComputePipeline({
        label: "compute_pipeline1062",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        occlusionQuerySet: query102
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const compute_pipeline1063 = device10.createComputePipeline({
        label: "compute_pipeline1063",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    query104.destroy()
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout105]
    });
    const compute_pipeline1064 = device10.createComputePipeline({
        label: "compute_pipeline1064",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query102.destroy()
    
    const array4 = new Float32Array([0.75, 0.0, -0.25, 0.0, -0.5, 1.0, 1.0, -0.25, -1.0, -0.5, 1.0, -1.0, -0.75, -0.5, 1.0, -0.75, -0.5, -0.75, -0.25, -0.75, 0.25, 0.0, 0.25, -1.0, -0.5, 0.75, 0.0, -0.75, -0.25, 0.25, 0.25, 0.0, -1.0, -0.25, 1.0, 0.75, -0.5, 1.0, -0.75, 1.0, 0.5, -1.0, -1.0, 0.75, -0.5, 0.75, 0.0, -0.25, -0.5, 1.0, 0.75, 0.25, 0.0, 0.0, 0.0, -1.0, -0.75, 0.25, -0.25, -0.25, -0.25, -1.0, 0.0, -1.0, 0.5, 0.5, 0.0, -0.25, 0.0, 1.0, 0.25, 0.0, 1.0, -0.5, -0.5, -0.5, 0.25, 0.5, 0.5, 0.0, -0.5, 0.75, 0.5, 0.25, 0.5, 0.25, -0.5, 0.25, 1.0, 0.0, -1.0, -0.75, -0.5, 0.75, 1.0, 0.25, -0.5, 1.0, -0.5, -0.5, ]);
    const compute_pipeline1065 = device10.createComputePipeline({
        label: "compute_pipeline1065",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1000.setStencilReference(1);
    const compute_pipeline1066 = device10.createComputePipeline({
        label: "compute_pipeline1066",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1010.setPipeline(render_pipeline101);
    const compute_pipeline1067 = device10.createComputePipeline({
        label: "compute_pipeline1067",
        layout: pipeline_layout108,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline1068 = device10.createComputePipeline({
        label: "compute_pipeline1068",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1069 = device10.createComputePipeline({
        label: "compute_pipeline1069",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1070 = device10.createComputePipeline({
        label: "compute_pipeline1070",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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
    render_pass_encoder1030.setStencilReference(1);
    const compute_pipeline1071 = device10.createComputePipeline({
        label: "compute_pipeline1071",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1072 = device10.createComputePipeline({
        label: "compute_pipeline1072",
        layout: pipeline_layout1020,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1073 = device10.createComputePipeline({
        label: "compute_pipeline1073",
        layout: pipeline_layout1019,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder101.setPipeline(render_pipeline101);
    const compute_pipeline1074 = device10.createComputePipeline({
        label: "compute_pipeline1074",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline1075 = device10.createComputePipeline({
        label: "compute_pipeline1075",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1076 = device10.createComputePipeline({
        label: "compute_pipeline1076",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    const compute_pipeline1077 = device10.createComputePipeline({
        label: "compute_pipeline1077",
        layout: pipeline_layout109,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1078 = device10.createComputePipeline({
        label: "compute_pipeline1078",
        layout: pipeline_layout1018,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1079 = device10.createComputePipeline({
        label: "compute_pipeline1079",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline1080 = device10.createComputePipeline({
        label: "compute_pipeline1080",
        layout: pipeline_layout1019,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline1081 = device10.createComputePipeline({
        label: "compute_pipeline1081",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group100);
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder1000.setPipeline(render_pipeline100);
    const compute_pipeline1082 = device10.createComputePipeline({
        label: "compute_pipeline1082",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1083 = device10.createComputePipeline({
        label: "compute_pipeline1083",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    buffer101.destroy()
    const compute_pipeline1084 = device10.createComputePipeline({
        label: "compute_pipeline1084",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline1085 = device10.createComputePipeline({
        label: "compute_pipeline1085",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const compute_pipeline1086 = device10.createComputePipeline({
        label: "compute_pipeline1086",
        layout: pipeline_layout1017,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const compute_pipeline1087 = device10.createComputePipeline({
        label: "compute_pipeline1087",
        layout: pipeline_layout108,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setPipeline(render_pipeline101);
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    device50.pushErrorScope("internal");
    const pipeline_layout1024 = device10.createPipelineLayout({ 
        label: "pipeline_layout1024",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline1088 = device10.createComputePipeline({
        label: "compute_pipeline1088",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1089 = device10.createComputePipeline({
        label: "compute_pipeline1089",
        layout: pipeline_layout1022,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    buffer105.destroy()
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1090 = device10.createComputePipeline({
        label: "compute_pipeline1090",
        layout: pipeline_layout108,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1091 = device10.createComputePipeline({
        label: "compute_pipeline1091",
        layout: pipeline_layout1024,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query103
    });
    const compute_pipeline1092 = device10.createComputePipeline({
        label: "compute_pipeline1092",
        layout: pipeline_layout109,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1093 = device10.createComputePipeline({
        label: "compute_pipeline1093",
        layout: pipeline_layout1018,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1094 = device10.createComputePipeline({
        label: "compute_pipeline1094",
        layout: pipeline_layout1020,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1095 = device10.createComputePipeline({
        label: "compute_pipeline1095",
        layout: pipeline_layout1022,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1096 = device10.createComputePipeline({
        label: "compute_pipeline1096",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1097 = device10.createComputePipeline({
        label: "compute_pipeline1097",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const compute_pipeline1098 = device10.createComputePipeline({
        label: "compute_pipeline1098",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout1025 = device10.createPipelineLayout({ 
        label: "pipeline_layout1025",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1099 = device10.createComputePipeline({
        label: "compute_pipeline1099",
        layout: pipeline_layout1018,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    const compute_pipeline10100 = device10.createComputePipeline({
        label: "compute_pipeline10100",
        layout: pipeline_layout1020,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline10101 = device10.createComputePipeline({
        label: "compute_pipeline10101",
        layout: pipeline_layout1023,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline10102 = device10.createComputePipeline({
        label: "compute_pipeline10102",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline10103 = device10.createComputePipeline({
        label: "compute_pipeline10103",
        layout: pipeline_layout107,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline10104 = device10.createComputePipeline({
        label: "compute_pipeline10104",
        layout: pipeline_layout109,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline10105 = device10.createComputePipeline({
        label: "compute_pipeline10105",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline10106 = device10.createComputePipeline({
        label: "compute_pipeline10106",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline10107 = device10.createComputePipeline({
        label: "compute_pipeline10107",
        layout: pipeline_layout1020,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setStencilReference(1);
    const compute_pipeline10108 = device10.createComputePipeline({
        label: "compute_pipeline10108",
        layout: pipeline_layout1018,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline10109 = device10.createComputePipeline({
        label: "compute_pipeline10109",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline10110 = device10.createComputePipeline({
        label: "compute_pipeline10110",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    const compute_pipeline10111 = device10.createComputePipeline({
        label: "compute_pipeline10111",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device50.pushErrorScope("out-of-memory");
    
    const compute_pipeline10112 = device10.createComputePipeline({
        label: "compute_pipeline10112",
        layout: pipeline_layout1018,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline10113 = device10.createComputePipeline({
        label: "compute_pipeline10113",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline10114 = device10.createComputePipeline({
        label: "compute_pipeline10114",
        layout: pipeline_layout1018,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
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
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group103);
    const pipeline_layout1026 = device10.createPipelineLayout({ 
        label: "pipeline_layout1026",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline10115 = device10.createComputePipeline({
        label: "compute_pipeline10115",
        layout: pipeline_layout107,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline10116 = device10.createComputePipeline({
        label: "compute_pipeline10116",
        layout: pipeline_layout1016,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    query104.destroy()
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline10117 = device10.createComputePipeline({
        label: "compute_pipeline10117",
        layout: pipeline_layout1021,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const compute_pipeline10118 = device10.createComputePipeline({
        label: "compute_pipeline10118",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const texture_view4003 = texture400.createView({ label: "texture_view4003" });
    const pipeline_layout1027 = device10.createPipelineLayout({ 
        label: "pipeline_layout1027",
        bindGroupLayouts: [bind_group_layout107]
    });
    render_pass_encoder1040.executeBundles([])
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline10119 = device10.createComputePipeline({
        label: "compute_pipeline10119",
        layout: pipeline_layout1019,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline10120 = device10.createComputePipeline({
        label: "compute_pipeline10120",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query102.destroy()
    render_pass_encoder1040.insertDebugMarker("marker");
    const compute_pipeline10121 = device10.createComputePipeline({
        label: "compute_pipeline10121",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pipeline10122 = device10.createComputePipeline({
        label: "compute_pipeline10122",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline10123 = device10.createComputePipeline({
        label: "compute_pipeline10123",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline10124 = device10.createComputePipeline({
        label: "compute_pipeline10124",
        layout: pipeline_layout108,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    texture401.destroy();
    render_pass_encoder1040.insertDebugMarker("marker");
    
    buffer109.destroy()
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline10125 = device10.createComputePipeline({
        label: "compute_pipeline10125",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query104.destroy()
    const compute_pipeline10126 = device10.createComputePipeline({
        label: "compute_pipeline10126",
        layout: pipeline_layout1020,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline10127 = device10.createComputePipeline({
        label: "compute_pipeline10127",
        layout: pipeline_layout1024,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.setPipeline(render_pipeline101);
    const compute_pipeline10128 = device10.createComputePipeline({
        label: "compute_pipeline10128",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group104);
    const pipeline_layout1028 = device10.createPipelineLayout({ 
        label: "pipeline_layout1028",
        bindGroupLayouts: [bind_group_layout101]
    });
    query103.destroy()
    const compute_pipeline10129 = device10.createComputePipeline({
        label: "compute_pipeline10129",
        layout: pipeline_layout1019,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline10130 = device10.createComputePipeline({
        label: "compute_pipeline10130",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline10131 = device10.createComputePipeline({
        label: "compute_pipeline10131",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline10132 = device10.createComputePipeline({
        label: "compute_pipeline10132",
        layout: pipeline_layout1017,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline10133 = device10.createComputePipeline({
        label: "compute_pipeline10133",
        layout: pipeline_layout1027,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline10134 = device10.createComputePipeline({
        label: "compute_pipeline10134",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    query100.destroy()
    const compute_pipeline10135 = device10.createComputePipeline({
        label: "compute_pipeline10135",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const compute_pipeline10136 = device10.createComputePipeline({
        label: "compute_pipeline10136",
        layout: pipeline_layout1024,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const compute_pipeline10137 = device10.createComputePipeline({
        label: "compute_pipeline10137",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    query103.destroy()
    const compute_pipeline10138 = device10.createComputePipeline({
        label: "compute_pipeline10138",
        layout: pipeline_layout105,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    buffer500.destroy()
    
    const compute_pipeline10139 = device10.createComputePipeline({
        label: "compute_pipeline10139",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline10140 = device10.createComputePipeline({
        label: "compute_pipeline10140",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline10141 = device10.createComputePipeline({
        label: "compute_pipeline10141",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline10142 = device10.createComputePipeline({
        label: "compute_pipeline10142",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const pipeline_layout1029 = device10.createPipelineLayout({ 
        label: "pipeline_layout1029",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const compute_pipeline10143 = device10.createComputePipeline({
        label: "compute_pipeline10143",
        layout: pipeline_layout1017,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline10144 = device10.createComputePipeline({
        label: "compute_pipeline10144",
        layout: pipeline_layout1021,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1040.setStencilReference(1);
    const compute_pipeline10145 = device10.createComputePipeline({
        label: "compute_pipeline10145",
        layout: pipeline_layout1021,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const pipeline_layout1030 = device10.createPipelineLayout({ 
        label: "pipeline_layout1030",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline10146 = device10.createComputePipeline({
        label: "compute_pipeline10146",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline10147 = device10.createComputePipeline({
        label: "compute_pipeline10147",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.insertDebugMarker("marker");
    const compute_pipeline10148 = device10.createComputePipeline({
        label: "compute_pipeline10148",
        layout: pipeline_layout108,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.popDebugGroup();
    const compute_pipeline10149 = device10.createComputePipeline({
        label: "compute_pipeline10149",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline10150 = device10.createComputePipeline({
        label: "compute_pipeline10150",
        layout: pipeline_layout1024,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    buffer1014.destroy()
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
    const compute_pipeline10151 = device10.createComputePipeline({
        label: "compute_pipeline10151",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline10152 = device10.createComputePipeline({
        label: "compute_pipeline10152",
        layout: pipeline_layout1022,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const compute_pipeline10153 = device10.createComputePipeline({
        label: "compute_pipeline10153",
        layout: pipeline_layout1016,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline10154 = device10.createComputePipeline({
        label: "compute_pipeline10154",
        layout: pipeline_layout109,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline10155 = device10.createComputePipeline({
        label: "compute_pipeline10155",
        layout: pipeline_layout1023,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setVertexBuffer(0, buffer102);
    const compute_pipeline10156 = device10.createComputePipeline({
        label: "compute_pipeline10156",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline10157 = device10.createComputePipeline({
        label: "compute_pipeline10157",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline10158 = device10.createComputePipeline({
        label: "compute_pipeline10158",
        layout: pipeline_layout1029,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline10159 = device10.createComputePipeline({
        label: "compute_pipeline10159",
        layout: pipeline_layout109,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const compute_pipeline10160 = device10.createComputePipeline({
        label: "compute_pipeline10160",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline10161 = device10.createComputePipeline({
        label: "compute_pipeline10161",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline10162 = device10.createComputePipeline({
        label: "compute_pipeline10162",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline10163 = device10.createComputePipeline({
        label: "compute_pipeline10163",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pipeline10164 = device10.createComputePipeline({
        label: "compute_pipeline10164",
        layout: pipeline_layout1019,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline10165 = device10.createComputePipeline({
        label: "compute_pipeline10165",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline10166 = device10.createComputePipeline({
        label: "compute_pipeline10166",
        layout: pipeline_layout1028,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query102.destroy()
    render_pass_encoder1040.setPipeline(render_pipeline100);
    render_pass_encoder1030.setVertexBuffer(0, buffer102);
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
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
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group105);
    render_pass_encoder1030.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1030.draw(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.setVertexBuffer(0, buffer102);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group106);
    render_pass_encoder1040.setVertexBuffer(0, buffer102);
    render_pass_encoder1040.drawIndirect(buffer100, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1000.end();
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1020.setVertexBuffer(0, buffer102);
    render_pass_encoder1020.draw(3);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1020.end();
    render_pass_encoder1040.end();
    render_pass_encoder1030.end();
    const command_buffer103 = command_encoder103.finish();
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    const command_buffer102 = command_encoder102.finish();
}