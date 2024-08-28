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
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const array0 = new Float32Array([1.0, -0.25, 0.75, 0.75, 1.0, -1.0, 1.0, -0.75, 0.75, -0.75, -0.25, 0.5, 0.5, -0.25, -0.75, -1.0, -0.5, 0.0, 0.0, -0.25, 0.25, 0.75, -1.0, 1.0, 0.0, -0.25, -0.75, -0.5, 0.75, 0.0, 0.75, -0.5, -1.0, -0.25, 0.75, -0.25, 0.75, 0.25, -0.5, 1.0, -0.75, 0.5, -0.25, 1.0, 0.25, 0.75, 0.0, -0.25, -0.5, -0.75, -0.25, 0.75, 0.0, 1.0, 1.0, -0.5, 0.25, -1.0, 1.0, 0.25, -1.0, -1.0, 0.75, -1.0, -0.5, -0.75, -0.25, 0.0, 1.0, -0.25, -0.5, 0.5, -0.5, -0.25, 0.25, -0.75, 1.0, -0.25, 1.0, 1.0, -0.5, 0.75, 0.25, -1.0, -0.5, 0.5, 0.0, -0.5, -0.25, 0.0, 0.75, 1.0, -0.25, 0.75, -0.75, -1.0, 1.0, 0.0, -0.75, -0.5, ]);
    const array1 = new Float32Array([1.0, 1.0, -0.25, -0.75, 0.0, 0.75, -0.25, -0.5, 0.5, 0.0, 0.75, 0.75, -0.25, -0.75, 0.5, -1.0, 0.5, 0.0, -0.25, -0.5, 0.0, 0.75, 0.25, 0.25, -1.0, 0.5, 1.0, -0.5, -0.5, 0.75, 0.75, 0.5, -0.5, -0.75, -0.5, -0.75, 0.5, -0.5, 0.75, 1.0, -0.5, -1.0, 1.0, 0.75, -1.0, -0.25, -0.25, 0.75, 0.25, 0.75, -0.75, -0.5, 0.25, -1.0, 0.25, -0.5, 0.25, -0.75, 1.0, -1.0, 1.0, 0.75, 0.5, -1.0, 1.0, -0.25, 0.5, 0.75, 0.0, -0.75, 0.75, 0.0, 0.25, -0.5, -1.0, 1.0, 0.75, -0.25, -0.5, -0.75, 0.25, 0.25, -0.5, 0.5, 0.75, 0.25, 0.5, -0.25, 0.5, 1.0, 0.25, -1.0, 0.0, -1.0, 0.0, 0.25, 0.0, -0.75, -0.25, -1.0, ]);
    const array2 = new Float32Array([1.0, -0.25, -0.75, 0.25, 0.0, -1.0, -1.0, 0.0, 0.0, 0.25, 0.0, -0.5, -1.0, 0.25, -1.0, -0.5, -1.0, 0.75, 0.75, 0.5, -1.0, 0.0, 0.5, 1.0, 1.0, 0.75, -0.25, 0.0, 0.75, -1.0, -0.25, 1.0, -0.5, -1.0, 1.0, 0.25, 1.0, -0.5, -1.0, -0.75, 0.0, -0.75, -1.0, -0.75, 0.25, -0.5, 0.75, -0.5, -0.75, 0.0, 1.0, 0.5, -0.75, -1.0, 0.75, 0.0, -1.0, -0.5, 0.0, 1.0, -0.75, 0.0, -1.0, -0.5, 0.75, 0.0, -0.75, -0.25, -0.5, -0.5, 0.0, -1.0, 0.25, 0.75, -0.75, 0.25, -0.25, 0.75, -0.5, 0.25, 0.75, -1.0, -0.5, 0.75, 0.75, -0.5, -0.25, 0.0, -1.0, -1.0, -1.0, -0.5, 0.0, -0.5, 0.75, 0.25, 1.0, 1.0, 0.25, 1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    
    const array3 = new Float32Array([-0.5, 0.5, 0.0, 0.0, 1.0, -0.25, 0.0, 0.25, -1.0, 0.5, -0.5, -0.25, -0.25, 0.25, 0.75, 1.0, 0.0, -0.25, 0.0, 0.5, -0.75, 1.0, 0.0, -0.75, -0.25, -0.25, 0.75, -0.5, 0.0, -0.25, -1.0, 0.0, -0.75, -0.75, -0.75, -0.75, -0.25, 0.5, -0.5, 0.75, 0.0, 1.0, -0.25, 0.0, -0.5, -0.5, 0.0, -0.5, 0.75, 0.25, -0.25, -0.5, 1.0, -0.75, -1.0, -0.5, 0.25, -1.0, 0.75, 0.75, -0.5, 0.75, -0.5, -0.5, 0.25, -1.0, -0.75, 0.75, -0.75, -0.5, -0.5, -0.75, -0.25, -0.75, 0.25, -0.25, 0.25, -0.25, -0.75, 0.5, -0.25, 0.0, 1.0, 0.5, -1.0, 0.25, 1.0, 0.5, 0.5, 0.25, 1.0, -0.5, 1.0, -1.0, 0.25, 1.0, 0.0, -0.75, 0.0, 0.5, ]);
    
    const array4 = new Float32Array([-0.75, -1.0, 0.5, 0.5, 1.0, -0.25, -0.5, -0.75, 0.25, 0.5, -0.25, -0.75, -0.25, 0.75, -0.5, -0.5, 0.5, -1.0, 0.75, -0.75, 0.75, 1.0, 0.25, 1.0, 0.5, 1.0, -0.5, 0.75, 0.75, -0.5, -1.0, -0.75, -0.75, 0.75, 0.75, 0.5, -0.75, 0.5, 1.0, 1.0, 0.0, 0.5, 0.75, -0.5, 0.5, 0.0, -0.25, 0.5, -0.75, 0.5, -1.0, 0.75, 1.0, -0.5, 0.25, -0.75, 0.25, -0.5, 0.0, 0.25, -0.75, -0.25, 1.0, -1.0, 0.75, -0.25, 0.5, 1.0, 1.0, -0.75, 0.75, 0.5, 0.0, 0.25, -0.75, 0.75, -0.75, 0.25, 1.0, -1.0, -1.0, 0.75, -1.0, 0.5, 1.0, 0.25, 0.0, -0.25, 1.0, -1.0, 0.75, 0.5, -0.25, 0.5, 0.0, -0.25, -0.25, -0.75, 1.0, -0.5, ]);
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32sint",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    device30.destroy();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture201.destroy();
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
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
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    device40.destroy();
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device20.pushErrorScope("validation");
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    const array5 = new Float32Array([0.5, -0.75, 0.0, 0.0, -1.0, -0.75, -0.25, -0.25, -1.0, 0.75, 0.75, 0.25, -0.75, 0.5, 0.5, 0.25, -0.25, -0.75, 0.25, -0.75, -0.5, -0.75, -0.5, 1.0, -0.5, 0.75, -0.5, 0.0, 0.75, -1.0, 0.25, -0.25, -1.0, 1.0, 0.5, -0.5, 0.75, -0.75, -0.25, 0.25, -0.75, 1.0, 0.75, -1.0, -1.0, 0.5, 0.75, 0.75, 0.75, 0.75, 0.75, 0.0, -1.0, -1.0, -0.25, -0.5, 0.75, -0.5, -1.0, 0.0, -1.0, 0.75, 0.5, 0.25, -0.5, -0.75, -0.5, 1.0, -1.0, -1.0, 0.25, -1.0, 0.25, -0.5, 0.75, 1.0, -0.75, -1.0, 0.25, 0.5, -0.25, -0.25, 0.75, 0.0, -0.75, 0.75, -0.25, 0.25, -0.5, 0.25, -0.5, -0.75, 0.75, 0.5, 0.25, 1.0, 1.0, -0.75, 0.75, -1.0, ]);
    
    command_encoder201.insertDebugMarker("mymarker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    
    command_encoder202.insertDebugMarker("mymarker");
    const command_buffer202 = command_encoder202.finish();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    texture200.destroy();
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
        occlusionQuerySet: undefined
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    render_pass_encoder2010.executeBundles([])
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    buffer200.destroy()
    
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    buffer201.destroy()
    device50.destroy();
    const array6 = new Float32Array([-1.0, 0.25, 0.25, 0.5, 0.5, 0.0, 0.25, 0.0, -0.5, 0.0, -1.0, 0.75, 0.25, 0.0, -0.75, 0.75, 1.0, 0.75, -0.5, -0.25, 0.0, 0.75, -1.0, -0.25, 0.5, 0.0, -0.75, -1.0, -1.0, -0.75, 0.75, -0.25, -0.25, 0.0, 1.0, -0.25, 0.0, -1.0, -1.0, 0.75, -0.5, 0.75, -1.0, -0.25, 0.25, -0.25, 0.75, -0.75, 0.75, -0.75, -0.5, -0.25, 0.25, 1.0, -0.75, -1.0, 0.25, -0.5, 0.5, -0.5, -0.5, -0.25, 0.75, 0.0, 0.5, -1.0, -0.75, 1.0, -1.0, 0.0, 0.25, 0.0, 0.0, -0.25, -1.0, -0.25, 0.75, 0.5, 0.25, 0.0, -0.25, -0.25, 0.5, 0.0, -0.5, 0.75, 0.0, 0.75, 0.0, -0.25, -0.5, 0.0, 0.75, 0.0, 0.0, 0.0, 0.5, 0.25, 0.0, -0.75, ]);
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    texture202.destroy();
    
    
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
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const array7 = new Float32Array([0.75, 0.75, -0.5, 0.5, 0.0, 0.25, 1.0, -1.0, 0.25, 0.75, 0.75, 0.25, 1.0, -1.0, -0.75, 0.5, -1.0, 0.25, -0.25, -0.75, -0.75, 0.5, -0.5, -0.25, -0.75, 0.5, 0.0, -1.0, 0.75, 0.0, -1.0, 0.25, -0.75, 0.0, 1.0, -0.5, 0.25, 0.75, 0.5, 0.5, -0.75, -1.0, -1.0, -1.0, -0.75, -1.0, -0.25, 1.0, -0.75, -0.25, 1.0, -0.5, 0.0, 0.25, -1.0, 1.0, -0.75, -0.75, 0.5, -0.25, 0.0, 1.0, 0.0, -0.5, 0.75, 0.0, 0.0, 0.5, 0.5, -1.0, -0.75, 0.5, -0.75, 0.75, 0.0, 1.0, -1.0, -0.75, 1.0, -1.0, -0.25, 0.25, -1.0, -1.0, 0.5, 0.75, 0.5, -1.0, -0.5, 0.0, -1.0, 0.75, -0.75, 0.0, 0.0, -1.0, 0.25, 0.25, -0.25, -0.75, ]);
    render_pass_encoder2010.setStencilReference(1);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
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
    device60.pushErrorScope("validation");
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device70.pushErrorScope("internal");
    
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
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    command_encoder600.insertDebugMarker("mymarker");
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    command_encoder700.pushDebugGroup("mygroupmarker")
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16uint",
        dimension: "2d"
    });
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder2010.executeBundles([])
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    command_encoder700.popDebugGroup()
    
    
    command_encoder600.insertDebugMarker("mymarker");
    const command_buffer700 = command_encoder700.finish();
    command_encoder600.insertDebugMarker("mymarker");
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    texture702.destroy();
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
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
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    buffer600.destroy()
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device20.pushErrorScope("validation");
    
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture701.destroy();
    command_encoder600.insertDebugMarker("mymarker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    command_encoder701.pushDebugGroup("mygroupmarker")
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    
    buffer700.destroy()
    
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const command_buffer702 = command_encoder702.finish();
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const command_buffer203 = command_encoder203.finish();
    
    
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    command_encoder600.pushDebugGroup("mygroupmarker")
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    
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
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const texture_view7030 = texture703.createView({ label: "texture_view7030" });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    
    const command_buffer204 = command_encoder204.finish();
    device70.queue.submit([command_buffer700, ]);
    
    
    const array8 = new Float32Array([0.5, -1.0, 1.0, -0.75, 0.75, 0.75, 0.0, -0.5, 1.0, 0.0, -1.0, -1.0, 0.25, 0.0, 0.75, 0.25, 1.0, 0.25, 0.25, -0.25, 1.0, -0.75, 0.25, -0.5, -0.75, 0.75, -0.25, -0.75, 0.0, 0.75, -0.5, -0.5, -1.0, -1.0, 0.5, 1.0, 0.25, -0.75, 0.25, 0.0, 0.25, -1.0, -0.5, 1.0, 1.0, 0.25, 0.5, 0.5, 1.0, -0.75, 1.0, -0.25, -0.5, 0.5, 0.5, -1.0, 0.75, -0.75, -1.0, -0.5, -0.25, 0.75, 0.25, 0.75, 0.25, -0.25, 0.5, 0.0, -1.0, 0.5, 1.0, 0.25, 0.0, 0.0, 0.75, 0.5, -0.25, -0.5, 0.25, -0.75, -0.25, 1.0, 0.75, -0.75, 1.0, 0.0, -0.25, 1.0, 1.0, 0.75, -0.75, 1.0, -1.0, 1.0, -0.75, 0.5, 0.5, 0.25, 0.0, -0.75, ]);
    texture703.destroy();
    
    
    command_encoder601.insertDebugMarker("mymarker");
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    texture203.destroy();
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    const command_buffer602 = command_encoder602.finish();
    
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder601.pushDebugGroup("mygroupmarker")
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device60.pushErrorScope("validation");
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout203]
    });
    texture603.destroy();
    const command_buffer603 = command_encoder603.finish();
    const texture_view7002 = texture700.createView({ label: "texture_view7002" });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    const command_buffer703 = command_encoder703.finish();
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    device20.queue.submit([command_buffer202, ]);
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    compute_pass_encoder6010.insertDebugMarker("marker")
    const array9 = new Float32Array([0.25, 0.5, 0.25, 1.0, -1.0, -1.0, -0.75, -1.0, 0.5, 1.0, -0.25, -0.75, 0.75, 0.5, -0.25, -1.0, 0.0, -0.25, -1.0, -0.25, 0.75, 0.25, -0.25, 0.0, -0.5, -0.75, -0.75, 0.5, 1.0, 0.75, -0.75, -0.25, 1.0, -0.75, 1.0, -0.75, 0.25, 0.0, -1.0, 0.25, 0.25, 0.0, 1.0, 1.0, 0.0, 0.5, -1.0, -0.25, 0.5, 1.0, 0.5, -0.75, -0.75, 0.0, -0.5, 0.25, 1.0, -1.0, -0.25, 1.0, -0.75, 1.0, -0.75, -0.5, 1.0, 1.0, 0.75, 0.0, 0.0, 0.25, 0.0, -1.0, 0.75, -0.5, 0.25, 1.0, -1.0, 0.0, -0.5, -1.0, -0.75, 1.0, -0.5, 0.0, 0.5, -0.25, -1.0, -1.0, 0.25, 0.0, 1.0, 0.0, 1.0, -0.25, -1.0, 1.0, 0.0, 0.5, 1.0, 1.0, ]);
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    command_encoder600.popDebugGroup()
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    device20.queue.submit([command_buffer204, ]);
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout602]
    });
    command_encoder205.pushDebugGroup("mygroupmarker")
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder205.insertDebugMarker("mymarker");
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture601 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    buffer203.destroy()
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder6010.setPipeline(compute_pipeline600);
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2050.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const texture_view7003 = texture700.createView({ label: "texture_view7003" });
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    texture600.destroy();
    
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout604,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6010.insertDebugMarker("marker")
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device70.queue.submit([command_buffer702, ]);
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device60.queue.writeTexture({ texture: texture601 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    
    device60.pushErrorScope("out-of-memory");
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout703]
    });
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder7010.insertDebugMarker("marker")
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer207, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer207, 0);
    
    texture204.destroy();
    device20.queue.writeTexture({ texture: texture206 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    buffer204.destroy()
    
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
    device70.queue.submit([command_buffer703, ]);
    
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    
    
    buffer205.destroy()
    buffer701.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture601.destroy();
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    compute_pass_encoder7010.insertDebugMarker("marker")
    
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout205,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2044 = device20.createComputePipeline({
        label: "compute_pipeline2044",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2045 = device20.createComputePipeline({
        label: "compute_pipeline2045",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    texture602.destroy();
    
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline2046 = device20.createComputePipeline({
        label: "compute_pipeline2046",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer601,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer602,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group600);
    
    const compute_pipeline2047 = device20.createComputePipeline({
        label: "compute_pipeline2047",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2048 = device20.createComputePipeline({
        label: "compute_pipeline2048",
        layout: pipeline_layout204,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2049 = device20.createComputePipeline({
        label: "compute_pipeline2049",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer207, 0, array1, 0, array1.length);
    render_pass_encoder2050.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device20.queue.writeTexture({ texture: texture206 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.queue.writeTexture({ texture: texture206 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture206.destroy();
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile(__dirname + '/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    const compute_pipeline2050 = device20.createComputePipeline({
        label: "compute_pipeline2050",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2051 = device20.createComputePipeline({
        label: "compute_pipeline2051",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    command_encoder600.insertDebugMarker("mymarker");
    compute_pass_encoder6010.dispatchWorkgroups(100);
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    const compute_pipeline2052 = device20.createComputePipeline({
        label: "compute_pipeline2052",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline2053 = device20.createComputePipeline({
        label: "compute_pipeline2053",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2054 = device20.createComputePipeline({
        label: "compute_pipeline2054",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2055 = device20.createComputePipeline({
        label: "compute_pipeline2055",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2056 = device20.createComputePipeline({
        label: "compute_pipeline2056",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2057 = device20.createComputePipeline({
        label: "compute_pipeline2057",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2058 = device20.createComputePipeline({
        label: "compute_pipeline2058",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2059 = device20.createComputePipeline({
        label: "compute_pipeline2059",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7010.insertDebugMarker("marker")
    const compute_pipeline2060 = device20.createComputePipeline({
        label: "compute_pipeline2060",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    device20.queue.writeBuffer(buffer207, 0, array7, 0, array7.length);
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    const compute_pipeline2061 = device20.createComputePipeline({
        label: "compute_pipeline2061",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const bind_group_layout704 = device70.createBindGroupLayout({ 
        label: "bind_group_layout704",
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
    const compute_pipeline2062 = device20.createComputePipeline({
        label: "compute_pipeline2062",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2063 = device20.createComputePipeline({
        label: "compute_pipeline2063",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    const compute_pipeline2064 = device20.createComputePipeline({
        label: "compute_pipeline2064",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2065 = device20.createComputePipeline({
        label: "compute_pipeline2065",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2066 = device20.createComputePipeline({
        label: "compute_pipeline2066",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device60.queue.submit([command_buffer603, ]);
    const array10 = new Float32Array([-1.0, 0.75, 0.5, 0.75, 1.0, 0.0, -0.75, 1.0, 0.0, 0.0, -0.75, 0.0, 0.25, 0.5, -0.75, -0.75, 0.25, 0.0, 0.5, 1.0, -1.0, 0.5, -0.75, 0.5, -1.0, -1.0, -0.25, -0.25, 1.0, -0.5, -0.5, -0.5, -0.25, -1.0, 0.0, -1.0, -0.25, -0.25, -1.0, 1.0, 0.5, 0.0, 0.5, -1.0, -0.75, -0.75, 0.5, 1.0, -0.25, 1.0, -0.5, 0.25, 0.25, -0.25, 0.75, 0.5, -0.5, 0.0, 0.25, 0.75, -0.25, 0.75, 1.0, 1.0, -0.75, 0.5, 0.5, -1.0, 0.5, 0.75, 1.0, 0.5, 0.0, -0.5, 0.75, 0.75, -0.25, 0.5, 0.5, -0.25, 0.25, 0.25, 0.75, -0.25, -0.5, -0.5, -0.5, 1.0, -0.75, 1.0, -0.5, 0.5, -0.75, -0.75, 0.5, 1.0, -0.75, 0.25, 0.75, -1.0, ]);
    const compute_pipeline2067 = device20.createComputePipeline({
        label: "compute_pipeline2067",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2050.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6020,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const compute_pipeline2068 = device20.createComputePipeline({
        label: "compute_pipeline2068",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout700,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    render_pass_encoder6000.executeBundles([])
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
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
    buffer202.destroy()
    buffer703.destroy()
    const compute_pipeline2069 = device20.createComputePipeline({
        label: "compute_pipeline2069",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    buffer206.destroy()
    
    
    const compute_pipeline2070 = device20.createComputePipeline({
        label: "compute_pipeline2070",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2071 = device20.createComputePipeline({
        label: "compute_pipeline2071",
        layout: pipeline_layout201,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline2072 = device20.createComputePipeline({
        label: "compute_pipeline2072",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    const array11 = new Float32Array([-0.25, 0.5, 0.0, 0.0, -0.5, -0.25, -1.0, -0.75, 0.75, -0.75, 0.0, -0.5, -1.0, -0.5, 0.0, -0.25, 0.0, -0.5, -0.25, 0.25, -1.0, -0.75, 0.75, -0.75, 0.5, -0.75, 0.75, -0.25, 0.75, 0.25, -0.25, 0.0, -0.25, -0.5, 0.75, 0.25, -1.0, 0.25, -0.25, -0.25, 1.0, 1.0, 0.75, -0.25, 0.5, 0.25, -0.75, -0.75, -1.0, 0.0, 0.75, -0.5, 0.5, 1.0, 0.0, -0.5, 1.0, -1.0, 0.5, -0.5, 0.0, -0.25, 1.0, -1.0, 0.0, 0.0, -0.5, 0.25, 0.75, 0.75, 0.75, -0.25, -0.5, -0.75, 0.25, -0.25, 1.0, 1.0, 0.5, 1.0, 0.0, 0.25, -0.75, 1.0, -1.0, 1.0, 1.0, -0.5, 0.0, 0.5, -0.5, 0.25, 1.0, -0.5, -0.75, 0.25, -0.5, -0.5, -0.5, -1.0, ]);
    buffer207.destroy()
    const compute_pipeline2073 = device20.createComputePipeline({
        label: "compute_pipeline2073",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2074 = device20.createComputePipeline({
        label: "compute_pipeline2074",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout204]
    });
    device20.pushErrorScope("validation");
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline2075 = device20.createComputePipeline({
        label: "compute_pipeline2075",
        layout: pipeline_layout206,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout700]
    });
    const compute_pipeline2076 = device20.createComputePipeline({
        label: "compute_pipeline2076",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7010.setPipeline(compute_pipeline701);
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: compute_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer704,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer705,
                },
            },
        ],
    });

    compute_pass_encoder7010.setBindGroup(0, bind_group700);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer203, ]);
    const uint32_7010 = new Uint32Array(3);

    uint32_7010[0] = 100;
    uint32_7010[1] = 1;
    uint32_7010[2] = 1;

    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer706, 0, uint32_7010, 0, uint32_7010.length);

    compute_pass_encoder7010.dispatchWorkgroupsIndirect(buffer706, 0);
}