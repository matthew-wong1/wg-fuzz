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
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    buffer100.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    texture101.destroy();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    device10.pushErrorScope("out-of-memory");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    texture102.destroy();
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder101.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("internal");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
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
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    command_encoder100.insertDebugMarker("mymarker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    texture103.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_buffer200 = command_encoder200.finish();
    const command_buffer101 = command_encoder101.finish();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    render_bundle_encoder102.insertDebugMarker("marker");
    device20.queue.submit([command_buffer200, ]);
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout103]
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout102]
    });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    render_bundle_encoder100.popDebugGroup();
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    
    render_pass_encoder1000.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1020.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    
    texture105.destroy();
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
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
    render_pass_encoder1000.executeBundles([])
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    render_bundle_encoder101.insertDebugMarker("marker");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    command_encoder201.insertDebugMarker("mymarker");
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder1020.setStencilReference(1);
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
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout203]
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_pass_encoder1000.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    render_pass_encoder1000.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    command_encoder103.popDebugGroup()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    command_encoder103.insertDebugMarker("mymarker");
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
        occlusionQuerySet: undefined
    });
    render_bundle_encoder201.popDebugGroup();
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    device10.queue.submit([command_buffer101, ]);
    
    render_pass_encoder1000.setStencilReference(1);
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    render_pass_encoder1030.setStencilReference(1);
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    command_encoder201.popDebugGroup()
    texture200.destroy();
    render_pass_encoder1030.setStencilReference(1);
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder101.popDebugGroup();
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder1030.setStencilReference(1);
    render_bundle_encoder200.popDebugGroup();
    command_encoder104.insertDebugMarker("mymarker");
    const command_buffer201 = command_encoder201.finish();
    const texture_view2013 = texture201.createView({ label: "texture_view2013" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    buffer204.destroy()
    
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    device20.queue.submit([command_buffer201, ]);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    buffer201.destroy()
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1000.setStencilReference(1);
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1060,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    buffer200.destroy()
    render_pass_encoder1000.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.executeBundles([])
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder102.popDebugGroup();
    
    const pipeline_layout1024 = device10.createPipelineLayout({ 
        label: "pipeline_layout1024",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1050.setStencilReference(1);
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    {
        await buffer203.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer203.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer203.unmap();
        console.log(new Float32Array(data));
    }
    
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    buffer203.destroy()
    render_pass_encoder1030.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture201.destroy();
    render_pass_encoder1000.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    buffer101.destroy()
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder1000.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
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
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_pass_encoder1030.executeBundles([])
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    texture104.destroy();
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1020.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder1050.executeBundles([])
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1000.popDebugGroup();
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
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
    render_pass_encoder1050.executeBundles([])
    const bind_group_layout108 = device10.createBindGroupLayout({ 
        label: "bind_group_layout108",
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
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    
    texture106.destroy();
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.setScissorRect(0, 0, texture106.width / 2, texture106.height / 2);
    render_bundle_encoder101.popDebugGroup();
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer205.destroy()
    
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1000.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    render_pass_encoder1020.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    buffer103.destroy()
    const pipeline_layout1025 = device10.createPipelineLayout({ 
        label: "pipeline_layout1025",
        bindGroupLayouts: [bind_group_layout107]
    });
    const pipeline_layout1026 = device10.createPipelineLayout({ 
        label: "pipeline_layout1026",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1050.executeBundles([])
    render_pass_encoder1000.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    const pipeline_layout1027 = device10.createPipelineLayout({ 
        label: "pipeline_layout1027",
        bindGroupLayouts: [bind_group_layout108]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout204]
    });
    render_pass_encoder1050.setScissorRect(0, 0, texture106.width / 2, texture106.height / 2);
    render_pass_encoder1000.executeBundles([])
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder1050.setScissorRect(0, 0, texture106.width / 2, texture106.height / 2);
    render_pass_encoder1020.setStencilReference(1);
    
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout1028 = device10.createPipelineLayout({ 
        label: "pipeline_layout1028",
        bindGroupLayouts: [bind_group_layout102]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    buffer207.destroy()
    buffer202.destroy()
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    
    buffer206.destroy()
    texture107.destroy();
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1070,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder201.popDebugGroup();
    
    render_pass_encoder1060.setStencilReference(1);
    render_pass_encoder1050.pushDebugGroup("group_marker");
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    render_pass_encoder1060.executeBundles([])
    render_pass_encoder1000.pushDebugGroup("group_marker");
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_pass_encoder1060.setScissorRect(0, 0, texture107.width / 2, texture107.height / 2);
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const pipeline_layout1029 = device10.createPipelineLayout({ 
        label: "pipeline_layout1029",
        bindGroupLayouts: [bind_group_layout103]
    });
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
    const pipeline_layout1030 = device10.createPipelineLayout({ 
        label: "pipeline_layout1030",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder1000.executeBundles([])
    const pipeline_layout1031 = device10.createPipelineLayout({ 
        label: "pipeline_layout1031",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1000.executeBundles([])
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout204]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1050.setViewport(0, 0, texture106.width / 2, texture106.height / 2, 0, 1);
    render_bundle_encoder202.popDebugGroup();
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
    render_pass_encoder1000.popDebugGroup();
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder1030.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder1050.executeBundles([])
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.destroy();
    render_pass_encoder1020.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    render_pass_encoder1050.popDebugGroup();
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1070,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder200.popDebugGroup();
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1000.popDebugGroup();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1020.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    
    
    render_pass_encoder1060.executeBundles([])
    render_pass_encoder1050.setScissorRect(0, 0, texture106.width / 2, texture106.height / 2);
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_pass_encoder1020.setStencilReference(1);
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1080 = texture108.createView({ label: "texture_view1080" });
    texture108.destroy();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder1000.executeBundles([])
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout204]
    });
    const pipeline_layout2017 = device20.createPipelineLayout({ 
        label: "pipeline_layout2017",
        bindGroupLayouts: [bind_group_layout206]
    });
    render_pass_encoder1030.setStencilReference(1);
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1030.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    render_pass_encoder1060.setStencilReference(1);
    const pipeline_layout1032 = device10.createPipelineLayout({ 
        label: "pipeline_layout1032",
        bindGroupLayouts: [bind_group_layout104]
    });
    buffer208.destroy()
    const pipeline_layout2018 = device20.createPipelineLayout({ 
        label: "pipeline_layout2018",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1060.pushDebugGroup("group_marker");
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1070.setScissorRect(0, 0, texture107.width / 2, texture107.height / 2);
    render_pass_encoder1070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout2019 = device20.createPipelineLayout({ 
        label: "pipeline_layout2019",
        bindGroupLayouts: [bind_group_layout201]
    });
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout1033 = device10.createPipelineLayout({ 
        label: "pipeline_layout1033",
        bindGroupLayouts: [bind_group_layout108]
    });
    const pipeline_layout1034 = device10.createPipelineLayout({ 
        label: "pipeline_layout1034",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout1035 = device10.createPipelineLayout({ 
        label: "pipeline_layout1035",
        bindGroupLayouts: [bind_group_layout105]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const pipeline_layout2020 = device20.createPipelineLayout({ 
        label: "pipeline_layout2020",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const pipeline_layout2021 = device20.createPipelineLayout({ 
        label: "pipeline_layout2021",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder1050.setViewport(0, 0, texture106.width / 2, texture106.height / 2, 0, 1);
    const pipeline_layout1036 = device10.createPipelineLayout({ 
        label: "pipeline_layout1036",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const pipeline_layout2022 = device20.createPipelineLayout({ 
        label: "pipeline_layout2022",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder1020.setStencilReference(1);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1060.setStencilReference(1);
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder1000.executeBundles([])
    render_bundle_encoder202.insertDebugMarker("marker");
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    render_pass_encoder1000.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder1050.setViewport(0, 0, texture106.width / 2, texture106.height / 2, 0, 1);
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    const pipeline_layout2023 = device20.createPipelineLayout({ 
        label: "pipeline_layout2023",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1050.setStencilReference(1);
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
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setStencilReference(1);
    
    render_pass_encoder1060.executeBundles([])
    render_pass_encoder1060.setScissorRect(0, 0, texture107.width / 2, texture107.height / 2);
    render_bundle_encoder201.popDebugGroup();
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder1030.popDebugGroup();
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device50.destroy();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
}