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
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const array0 = new Float32Array([0.25, 0.25, -0.25, -0.25, 0.5, -0.5, 0.5, -0.75, -0.25, -0.25, -0.75, -1.0, -0.25, 0.25, 0.75, -0.25, -0.25, 1.0, -0.75, -1.0, -0.25, -0.75, -1.0, 0.0, -0.75, -1.0, 0.75, 0.0, -0.75, -1.0, -0.5, -0.25, 0.25, 0.75, -1.0, 0.5, -0.75, -0.5, 0.5, -0.5, 0.25, 0.75, 0.5, -0.25, 0.75, -0.5, -0.5, 0.75, 0.0, 0.0, -0.25, -0.5, -0.25, 1.0, 0.0, 0.0, 0.75, -0.25, 1.0, -1.0, 0.5, -0.75, 0.5, 1.0, 0.0, -1.0, 0.0, -1.0, 0.0, 0.75, 0.5, -0.25, -1.0, 0.0, 0.5, 0.0, 1.0, 0.5, -0.75, -0.5, -0.75, -0.75, 0.5, -0.75, 0.5, 1.0, 0.5, 0.0, 1.0, -0.5, -0.5, 0.0, -0.5, -0.5, -0.75, 0.75, -0.25, 0.75, -0.5, -0.5, ]);
    
    query101.destroy()
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query101.destroy()
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query100.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_buffer200 = command_encoder200.finish();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    query101.destroy()
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    buffer101.destroy()
    
    
    command_encoder201.insertDebugMarker("mymarker");
    buffer100.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    command_encoder100.insertDebugMarker("mymarker");
    query100.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder202.insertDebugMarker("mymarker");
    const command_buffer000 = command_encoder000.finish();
    
    
    command_encoder202.insertDebugMarker("mymarker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder202.pushDebugGroup("mygroupmarker")
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
        occlusionQuerySet: query200
    });
    
    const command_buffer100 = command_encoder100.finish();
    device20.queue.submit([command_buffer200, ]);
    query102.destroy()
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
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
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_pass_encoder2010.setStencilReference(1);
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
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder2020.executeBundles([])
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
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    query102.destroy()
    query200.destroy()
    command_encoder400.pushDebugGroup("mygroupmarker")
    device00.queue.submit([command_buffer000, ]);
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_pass_encoder2010.insertDebugMarker("marker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2010.setStencilReference(1);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    texture200.destroy();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8snorm",
        dimension: "2d"
    });
    render_pass_encoder2010.executeBundles([])
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    buffer102.destroy()
    command_encoder001.pushDebugGroup("mygroupmarker")
    const command_buffer101 = command_encoder101.finish();
    command_encoder500.insertDebugMarker("mymarker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_buffer401 = command_encoder401.finish();
    const array1 = new Float32Array([-1.0, -0.5, 1.0, -0.5, 1.0, 1.0, -0.5, 0.5, 0.0, -0.25, 0.5, 0.75, 0.0, 0.0, 0.0, 0.5, -0.75, -0.25, -0.5, 0.0, 0.25, -0.25, 0.75, 0.5, 0.75, -0.75, -0.5, 0.75, -0.75, -0.5, 0.75, 0.25, -0.5, 0.25, 1.0, -0.75, 0.75, 1.0, -0.75, -0.5, -0.75, 0.75, -0.75, 1.0, -0.5, 0.5, -1.0, 0.0, 0.5, 1.0, 1.0, -1.0, 0.0, 0.25, -0.25, 1.0, 0.5, 0.5, 0.75, 0.5, -0.75, -0.25, 0.25, 0.5, 0.75, 0.5, -0.25, -0.5, -0.5, 0.0, -0.25, 0.0, 0.25, 1.0, -0.75, 1.0, 0.25, 0.75, -0.5, -0.25, -1.0, -0.25, 0.5, -0.5, -0.25, -0.75, 0.25, 0.75, 1.0, 0.0, -0.5, 0.0, -0.5, 1.0, -0.5, 0.5, 1.0, -1.0, 0.75, -0.25, ]);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device40.queue.submit([command_buffer401, ]);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
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
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    query502.destroy()
    render_pass_encoder2020.executeBundles([])
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    command_encoder102.pushDebugGroup("mygroupmarker")
    query101.destroy()
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
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
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    
    query101.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    query200.destroy()
    command_encoder500.clearBuffer(buffer500);
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
    command_encoder501.insertDebugMarker("mymarker");
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    query201.destroy()
    command_encoder002.pushDebugGroup("mygroupmarker")
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer500.destroy()
    
    command_encoder003.insertDebugMarker("mymarker");
    const array2 = new Float32Array([1.0, 0.25, -0.75, 0.75, -1.0, -0.75, -0.5, 0.5, 0.75, -0.75, 0.5, 0.0, -0.5, 0.25, -0.25, 0.0, 0.5, 0.0, 0.0, -0.75, 0.75, -1.0, 0.5, -0.75, -0.75, 0.0, 1.0, -0.5, 0.0, -0.75, 1.0, -0.5, 0.25, -1.0, 0.75, 1.0, -0.75, 0.25, -0.25, 0.5, -1.0, 1.0, 0.0, -0.5, 0.5, -0.75, -0.25, -0.5, 0.5, -1.0, 1.0, -0.5, 0.75, 0.0, 0.0, -0.75, -0.5, 0.25, -0.5, -0.5, 0.0, 0.75, 0.0, -0.25, 0.0, -0.25, 0.5, 0.5, -0.75, -1.0, -0.75, 0.25, -0.5, 0.75, 0.75, 1.0, -1.0, -0.25, 1.0, -0.75, 0.0, -1.0, 0.0, -1.0, 0.0, -1.0, 0.5, 0.25, -0.75, -1.0, -0.25, -0.25, 0.75, 0.25, -0.75, 0.75, 0.75, 0.5, -1.0, -1.0, ]);
    query100.destroy()
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    
    
    
    
    
    
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    render_pass_encoder2020.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    query502.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    query503.destroy()
    query200.destroy()
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    
    query401.destroy()
    texture402.destroy();
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query503.destroy()
    query101.destroy()
    query101.destroy()
    render_pass_encoder2010.executeBundles([])
    buffer400.destroy()
    query202.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const command_buffer501 = command_encoder501.finish();
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    query502.destroy()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
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
    command_encoder001.popDebugGroup()
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    query501.destroy()
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder2010.setStencilReference(1);
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    render_pass_encoder0030.insertDebugMarker("marker");
    texture000.destroy();
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder2010.insertDebugMarker("marker");
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0030.insertDebugMarker("marker");
    command_encoder102.clearBuffer(buffer103);
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder0030.insertDebugMarker("marker");
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
    
    query401.destroy()
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    query501.destroy()
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    command_encoder502.pushDebugGroup("mygroupmarker")
    const command_buffer001 = command_encoder001.finish();
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder102.clearBuffer(buffer103);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    texture100.destroy();
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder2030.setStencilReference(1);
    query103.destroy()
    
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
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    
    
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer103.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    texture403.destroy();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture400.destroy();
    render_pass_encoder2030.insertDebugMarker("marker");
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    render_pass_encoder0040.executeBundles([])
    texture601.destroy();
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    query100.destroy()
    render_pass_encoder0040.insertDebugMarker("marker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    command_encoder102.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    render_pass_encoder0020.insertDebugMarker("marker");
    query102.destroy()
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    command_encoder102.popDebugGroup()
    render_pass_encoder2030.executeBundles([])
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    
    
    query103.destroy()
    render_pass_encoder2030.insertDebugMarker("marker");
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setStencilReference(1);
    command_encoder102.pushDebugGroup("mygroupmarker")
    command_encoder103.insertDebugMarker("mymarker");
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    render_pass_encoder4020.pushDebugGroup("group_marker");
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2030.executeBundles([])
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    command_encoder104.insertDebugMarker("mymarker");
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder4000.executeBundles([])
    render_pass_encoder0030.insertDebugMarker("marker");
    const command_buffer600 = command_encoder600.finish();
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    command_encoder104.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    command_encoder102.insertDebugMarker("mymarker");
    
    render_pass_encoder0020.insertDebugMarker("marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8sint",
        dimension: "2d"
    });
    command_encoder103.resolveQuerySet(
        query104,
        0,
        32,
        buffer102,
        0
    )
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder103.insertDebugMarker("mymarker");
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    device00.queue.submit([command_buffer001, ]);
    command_encoder103.insertDebugMarker("mymarker");
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder2030.pushDebugGroup("group_marker");
    command_encoder102.insertDebugMarker("mymarker");
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    texture401.destroy();
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    command_encoder104.pushDebugGroup("mygroupmarker")
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    
    query102.destroy()
    
    query000.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer202.destroy()
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query104.destroy()
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0040.executeBundles([])
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view6030 = texture603.createView({ label: "texture_view6030" });
    render_pass_encoder4000.insertDebugMarker("marker");
    query201.destroy()
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    command_encoder104.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    render_pass_encoder4000.setStencilReference(1);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture500.destroy();
    
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    device60.queue.writeTexture({ texture: texture602 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
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
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    render_pass_encoder2030.executeBundles([])
    command_encoder502.popDebugGroup()
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const array3 = new Float32Array([0.0, 0.25, 0.75, 0.25, 1.0, -0.5, 1.0, -1.0, 0.5, -0.5, -1.0, -0.25, 0.75, -1.0, -1.0, -0.5, -0.5, 0.25, -0.75, -0.25, -0.75, 0.25, 0.25, 0.5, 0.25, -0.25, -1.0, 0.5, -0.25, 0.0, 0.75, -0.25, 1.0, -0.25, 0.25, 1.0, 0.0, -0.25, -0.5, -0.75, -1.0, 0.75, -1.0, -1.0, 0.0, -0.25, 0.75, 0.5, 0.75, 0.5, 0.5, -0.5, -1.0, -0.5, 0.5, 0.5, 0.25, 1.0, 0.0, 0.0, 0.75, -0.5, 1.0, -0.5, -1.0, 0.75, 0.0, -1.0, 0.75, -0.5, 1.0, -0.5, 0.25, 0.25, 1.0, -0.25, -1.0, -0.75, -0.25, -0.75, 0.25, -1.0, 0.0, 1.0, 0.0, 0.5, -1.0, 0.75, 0.5, 0.5, 1.0, -0.25, -0.5, -0.25, -0.5, -0.75, -1.0, -1.0, 0.25, -0.5, ]);
    texture101.destroy();
    const command_buffer103 = command_encoder103.finish();
    
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
    texture002.destroy();
    
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    query400.destroy()
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    query101.destroy()
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    
    buffer201.destroy()
    render_pass_encoder4020.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query400.destroy()
    query503.destroy()
    
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
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
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
    query000.destroy()
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.executeBundles([])
    
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    query201.destroy()
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    buffer300.destroy()
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device60.queue.submit([command_buffer600, ]);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    const command_buffer502 = command_encoder502.finish();
    device50.queue.submit([command_buffer500, command_buffer501, command_buffer502, ]);
    const command_buffer601 = command_encoder601.finish();
    device60.queue.submit([command_buffer601, ]);
    const command_buffer602 = command_encoder602.finish();
    command_encoder104.popDebugGroup()
    const command_buffer104 = command_encoder104.finish();
    device60.queue.submit([command_buffer602, ]);
    command_encoder102.popDebugGroup()
    const command_buffer102 = command_encoder102.finish();
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer104, ]);
}