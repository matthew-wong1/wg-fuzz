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
    const array0 = new Float32Array([0.75, 0.75, 0.0, -0.75, -0.5, 0.5, 0.0, 0.25, -1.0, -0.25, -0.5, 0.25, -0.75, 0.25, -0.5, 0.75, -0.75, 0.25, -0.5, 0.25, 0.75, -1.0, -1.0, 0.0, 0.75, 0.5, -0.75, -1.0, 0.0, -0.75, 0.0, 0.0, 1.0, 0.75, -0.75, -0.75, 0.0, 1.0, -0.5, 0.0, 0.5, -0.5, 0.75, 0.5, 0.0, 0.0, 0.5, 0.75, 0.25, 1.0, 0.75, 1.0, 0.75, 0.5, -0.5, 1.0, -0.5, 0.0, -0.75, 1.0, -0.25, 1.0, -0.75, 0.0, 0.25, 0.0, -0.5, 0.5, -1.0, -0.75, 0.0, -0.25, 0.0, 0.0, -0.5, -0.25, -0.25, -0.75, -1.0, -1.0, 0.25, 0.25, 0.5, 1.0, 0.75, -0.75, -0.5, 1.0, 0.75, 1.0, 0.0, -0.75, 0.75, 0.75, 0.25, 0.25, -0.75, 1.0, 0.25, -0.5, ]);
    const array1 = new Float32Array([-0.75, 0.25, 0.5, -0.75, 0.0, -0.75, -0.5, -0.25, 0.5, 0.5, -0.5, 0.5, 0.75, -1.0, 1.0, 0.75, -1.0, -1.0, 1.0, 0.5, 1.0, 0.0, 0.75, -0.5, 1.0, -1.0, 0.0, -0.5, 0.5, -1.0, 0.75, 0.25, -0.5, 0.5, 0.75, -0.25, 0.75, 0.75, 1.0, -0.25, -0.75, 0.0, -0.75, 0.75, -0.75, 0.25, -1.0, 0.5, -1.0, -0.25, -0.5, 1.0, 0.25, -1.0, -0.5, 0.75, -0.75, 1.0, -0.25, 0.25, -0.25, 1.0, -0.75, 0.25, -0.75, 0.0, -0.75, -0.25, 1.0, -0.25, -0.75, 1.0, 0.5, 0.5, -0.5, 0.75, 0.0, 0.25, 0.5, -0.5, 0.0, -0.25, -0.25, 1.0, 0.0, -0.5, 0.5, -1.0, -0.25, -0.25, 0.5, 0.0, 1.0, -0.25, 0.25, -0.5, -1.0, 1.0, 0.5, -0.75, ]);
    const array2 = new Float32Array([-0.5, -0.75, 0.75, 0.5, 1.0, -0.25, -0.75, -0.75, 0.5, -0.5, -1.0, 1.0, 0.25, 0.5, 1.0, 1.0, 0.0, 0.25, -0.75, 0.5, -1.0, 0.5, -0.75, -0.5, 0.25, -1.0, -0.25, -0.25, 0.25, -0.75, -0.5, 0.5, 0.75, -0.75, 0.5, -0.75, 1.0, 0.0, -0.25, 0.0, -0.75, 0.5, -1.0, -0.75, 0.0, 1.0, 0.5, 1.0, 0.75, -0.75, 0.5, 0.75, 0.0, 1.0, -0.5, 0.0, 0.0, 0.0, -0.5, 0.5, -0.25, 0.25, 0.0, -0.75, -1.0, 0.0, 0.75, 0.75, 1.0, -0.75, -1.0, -0.5, -0.75, -0.25, 0.75, 1.0, 0.25, 1.0, 0.5, -0.75, 0.0, -0.75, -0.25, -0.5, -1.0, 0.5, -0.25, -0.5, -0.5, -1.0, -1.0, -0.75, 0.25, -0.5, 0.75, -0.25, 0.0, -1.0, -0.75, -0.5, ]);
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
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([-0.75, -0.75, -0.25, -1.0, -1.0, 0.5, -0.75, -1.0, 0.5, 1.0, 0.0, 0.5, 0.0, -0.75, 1.0, -0.75, -0.25, 1.0, 0.25, 1.0, -0.5, -0.5, 0.5, 0.5, 0.0, 0.75, 0.0, 0.25, -1.0, 0.0, -0.25, 0.0, -0.25, 1.0, -0.75, 0.25, -1.0, 0.75, -0.5, 0.25, 0.0, 0.5, 0.5, 0.5, -0.5, 0.25, 0.75, -1.0, 0.0, 0.75, 0.0, -1.0, -0.5, 0.0, -0.5, 0.75, -0.5, -0.25, 0.25, 1.0, 0.0, 0.75, 0.5, -0.5, 0.0, 0.5, 0.5, 0.0, 0.75, 0.0, 0.75, 0.25, 0.5, 1.0, 0.5, 1.0, 0.75, -1.0, -0.75, -0.75, -0.75, 0.5, 0.75, 0.5, 0.5, 0.5, -0.5, -1.0, -0.5, 1.0, 0.0, -0.5, 0.25, -0.25, 0.0, -0.25, 0.0, 0.5, 0.0, 1.0, ]);
    device00.destroy();
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([0.0, -0.5, -0.75, 0.75, -1.0, 0.5, 0.5, 1.0, 1.0, 0.75, 0.0, -0.75, 0.25, -0.25, -0.75, -0.25, -0.5, -1.0, 0.5, -0.75, 0.5, 0.25, 0.0, 0.5, 0.75, -1.0, 0.5, -0.5, -0.25, 1.0, 0.0, -0.75, 0.5, -0.5, 1.0, 0.75, -0.25, 1.0, 0.5, -0.75, 0.25, -0.5, -0.25, 0.75, 0.75, 1.0, -0.5, 0.75, 0.0, -0.25, 0.5, -1.0, -0.5, 1.0, 0.5, 0.25, -1.0, 1.0, -0.75, 0.5, -0.5, 0.75, 0.5, -1.0, -1.0, 0.75, 0.5, 0.25, 0.5, 0.0, 0.75, 0.5, 0.0, -1.0, 0.75, -0.5, 0.5, -1.0, 0.5, 1.0, -1.0, -0.5, 0.0, -0.25, 0.0, 0.25, 1.0, 0.0, 0.25, 0.0, 0.25, -0.5, 0.25, 1.0, -0.75, 1.0, -0.75, 0.25, 0.5, 0.75, ]);
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const array5 = new Float32Array([0.75, 1.0, -0.75, -0.25, -0.75, -1.0, 0.75, -1.0, -0.5, 0.5, -0.5, 0.25, -0.75, 0.75, -0.75, -0.75, 1.0, 1.0, 0.5, 0.5, 0.75, 1.0, -0.25, -0.5, -0.75, 0.0, 0.25, -0.5, -1.0, 0.5, -0.75, -0.25, 1.0, -0.75, 0.5, -0.5, 0.25, -0.5, 0.5, 1.0, -0.75, 1.0, -0.25, -0.5, -0.75, 0.5, -1.0, -0.5, 0.5, 1.0, -1.0, 0.5, -0.25, -0.75, -0.75, -1.0, 0.25, 0.75, 0.0, -0.75, 0.25, -0.75, -0.5, -0.25, 0.5, 0.75, 0.75, 1.0, 0.5, 1.0, 0.25, 0.5, -0.5, 1.0, -0.75, 0.75, 1.0, -0.5, 0.0, 0.5, 1.0, 0.25, 0.25, 0.5, 0.75, 0.5, -0.75, -0.25, -0.25, 0.25, -0.25, -1.0, 0.25, 0.75, 0.25, -0.75, 0.0, 0.75, -1.0, 1.0, ]);
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    query102.destroy()
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
        occlusionQuerySet: query102
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query101
    });
    query100.destroy()
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder1010.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    render_pass_encoder1000.executeBundles([])
    
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query101.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query100.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query102.destroy()
    render_pass_encoder1010.setStencilReference(1);
    
    
    render_pass_encoder1010.popDebugGroup();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder200.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    query200.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1000.insertDebugMarker("marker");
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
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    texture200.destroy();
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    texture100.destroy();
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query201.destroy()
    
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const texture_view1014 = texture101.createView({ label: "texture_view1014" });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
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
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_pass_encoder2000.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1010.executeBundles([])
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.setStencilReference(1);
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1014,
            },
        ],
        occlusionQuerySet: query103
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query100.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    buffer201.destroy()
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
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
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
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    texture202.destroy();
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer200.destroy()
    
    render_pass_encoder1020.executeBundles([])
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1000.popDebugGroup();
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const array6 = new Float32Array([0.5, -1.0, -0.25, 0.5, -0.75, -1.0, -0.5, -1.0, 0.0, 0.75, -1.0, 1.0, -1.0, 1.0, 0.0, 0.25, -0.75, -1.0, 1.0, -0.75, 0.75, -0.5, 0.0, 0.75, -0.75, -0.75, 0.75, -0.25, -0.75, -0.75, 0.75, 0.5, -0.5, -0.5, 0.25, 1.0, 0.5, 0.25, -0.75, -0.25, 0.25, 0.75, -0.5, -0.25, 0.75, -1.0, 1.0, 0.5, 0.0, 0.75, 1.0, -0.75, 0.75, -0.25, -1.0, 1.0, -0.75, -0.75, -1.0, -0.5, 0.75, 0.0, 0.5, -1.0, 0.5, -0.25, -0.25, -0.25, 0.5, -0.75, -0.25, 0.5, -1.0, -0.25, 0.25, -0.25, 0.75, -0.25, -0.5, 1.0, 1.0, 0.75, 0.5, 0.75, 0.25, -0.25, -1.0, 0.25, -0.25, -0.25, -0.75, 0.5, 0.75, 0.25, -0.75, 0.75, -1.0, 0.25, -0.25, 0.0, ]);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder2000.insertDebugMarker("marker");
    
    
    
    
    query200.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    texture101.destroy();
    
    
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    query203.destroy()
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    query203.destroy()
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    query200.destroy()
    query200.destroy()
    render_pass_encoder2000.executeBundles([])
    
    render_pass_encoder1020.setStencilReference(1);
    query100.destroy()
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder1010.setStencilReference(1);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    texture500.destroy();
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query202.destroy()
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_pass_encoder1010.insertDebugMarker("marker");
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
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
    query201.destroy()
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
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder1000.pushDebugGroup("group_marker");
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
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
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
    buffer203.destroy()
    render_bundle_encoder800.insertDebugMarker("marker");
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1000.popDebugGroup();
    
    
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2000.setStencilReference(1);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    buffer202.destroy()
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    command_encoder201.pushDebugGroup("mygroupmarker")
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
        occlusionQuerySet: query202
    });
    device70.destroy();
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
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
    render_pass_encoder2030.insertDebugMarker("marker");
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query205
    });
    query104.destroy()
    render_pass_encoder2030.setStencilReference(1);
    query202.destroy()
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
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder2010.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder2020.executeBundles([])
    
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_pass_encoder1020.popDebugGroup();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm",
        dimension: "2d"
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    texture203.destroy();
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    query104.destroy()
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_bundle_encoder800.pushDebugGroup("group_marker");
    render_pass_encoder1000.executeBundles([])
    device50.destroy();
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    query201.destroy()
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    query203.destroy()
    render_pass_encoder1010.setStencilReference(1);
    query102.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder1010.pushDebugGroup("group_marker");
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    query104.destroy()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    query200.destroy()
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    query203.destroy()
    render_pass_encoder1020.popDebugGroup();
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_bundle_encoder800.insertDebugMarker("marker");
    render_pass_encoder2010.setStencilReference(1);
    
    render_pass_encoder2030.setStencilReference(1);
    
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    query101.destroy()
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_bundle_encoder800.insertDebugMarker("marker");
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    query103.destroy()
    
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    render_pass_encoder2000.executeBundles([])
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder2000.insertDebugMarker("marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query205.destroy()
    
    
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.popDebugGroup();
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    query207.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array7 = new Float32Array([0.5, 0.75, -1.0, -1.0, 0.5, -0.25, 0.25, 1.0, -0.25, -1.0, -0.75, -0.5, 0.25, -1.0, 0.75, 0.75, 0.5, -1.0, 0.75, -0.75, 0.0, 0.75, 0.5, 0.5, -0.25, -0.25, -0.25, 0.75, -0.25, 0.0, -0.25, -0.25, -0.75, 1.0, -0.25, -0.75, -1.0, 0.25, 0.75, -0.75, -0.5, 1.0, -0.5, -0.25, -0.75, 0.0, -0.25, 0.75, -0.75, -0.25, -1.0, 0.25, 0.0, 0.75, -0.5, 0.25, 1.0, 1.0, 0.75, -1.0, -1.0, 0.25, 0.75, 0.75, -1.0, 0.25, 0.25, 0.75, -1.0, -0.25, -0.25, 0.0, -0.5, -0.5, -0.5, -0.75, -0.25, -0.25, -0.5, 0.25, -0.25, 0.75, 0.0, 1.0, -1.0, -0.75, 0.75, 0.0, 1.0, 0.0, 0.0, -0.5, 0.25, 1.0, 0.25, 0.5, -0.25, -0.75, 0.5, 0.25, ]);
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer102.destroy()
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2020.executeBundles([])
    buffer100.destroy()
    
    
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1020.executeBundles([])
    query102.destroy()
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2010.executeBundles([])
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    texture201.destroy();
    render_pass_encoder1020.setStencilReference(1);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder2010.insertDebugMarker("marker");
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.setStencilReference(1);
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    buffer101.destroy()
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1030.setStencilReference(1);
    query105.destroy()
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    
    
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1030.insertDebugMarker("marker");
    query201.destroy()
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1010.setStencilReference(1);
    
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    
    query207.destroy()
    const sampler804 = device80.createSampler( { label: "sampler804" } );
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.executeBundles([])
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    texture801.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
    const array8 = new Float32Array([-0.25, -0.5, 0.5, 0.5, 0.0, -0.5, 1.0, -1.0, 0.5, 0.75, 1.0, 0.75, 0.25, 0.0, 0.25, 1.0, -0.5, 0.25, -0.75, -1.0, 1.0, -0.75, 0.5, -0.25, -0.25, 1.0, 1.0, 0.0, 0.0, 0.75, 0.75, 0.25, 1.0, 0.5, 0.5, 0.0, -0.25, 0.75, -1.0, -0.25, 1.0, -1.0, -0.5, 0.5, -0.25, 0.5, 1.0, 0.5, 0.75, -0.25, 0.25, 1.0, 0.25, 0.75, 0.75, 0.25, 0.0, 0.5, 0.75, 0.75, 1.0, -0.75, 0.5, 0.25, 0.25, 0.5, 0.5, 0.25, 0.25, -0.5, -1.0, 0.75, -0.25, 0.5, 0.5, 0.0, -0.5, -1.0, 1.0, 0.75, 0.0, 0.0, 0.0, -1.0, 0.25, -0.5, -0.5, 1.0, 0.75, -0.75, 0.25, 0.75, 0.75, 0.25, -0.25, 1.0, 0.25, -0.5, -0.75, 1.0, ]);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler805 = device80.createSampler( { label: "sampler805" } );
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1020.popDebugGroup();
    
    render_pass_encoder2000.insertDebugMarker("marker");
    query202.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_pass_encoder1030.setStencilReference(1);
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1000.setStencilReference(1);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    texture800.destroy();
    device20.queue.writeBuffer(buffer204, 0, array5, 0, array5.length);
    
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_bundle_encoder801.pushDebugGroup("group_marker");
    render_pass_encoder1030.executeBundles([])
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    render_pass_encoder2000.executeBundles([])
    query104.destroy()
    
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query205.destroy()
    query205.destroy()
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder2030.pushDebugGroup("group_marker");
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2020.executeBundles([])
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
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const sampler806 = device80.createSampler( { label: "sampler806" } );
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    command_encoder600.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    render_pass_encoder2020.setStencilReference(1);
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
    render_pass_encoder1010.insertDebugMarker("marker");
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query203
    });
    texture204.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder6010.popDebugGroup()
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    
    render_pass_encoder2010.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    query202.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
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
    render_bundle_encoder202.insertDebugMarker("marker");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_pass_encoder1000.insertDebugMarker("marker");
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder2030.setStencilReference(1);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    render_pass_encoder2000.insertDebugMarker("marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query103.destroy()
    compute_pass_encoder6000.popDebugGroup()
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module806_code = "";
    try {
        shader_module806_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module806 = await device80.createShaderModule({ label: "shader_module806", code: shader_module806_code })
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
}